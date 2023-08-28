; ModuleID = '../bcout/drivers/usb/host/xhci-pci.llvm.bc'
source_filename = "drivers/usb/host/xhci-pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xhci_pci_init6:\09\09\09"
module asm ".long\09xhci_pci_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.poll_table_struct = type opaque
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.31, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.31 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_host_bos = type { %struct.usb_bos_descriptor*, %struct.usb_ext_cap_descriptor*, %struct.usb_ss_cap_descriptor*, %struct.usb_ssp_cap_descriptor*, %struct.usb_ss_container_id_descriptor*, %struct.usb_ptm_cap_descriptor* }
%struct.usb_bos_descriptor = type <{ i8, i8, i16, i8 }>
%struct.usb_ext_cap_descriptor = type <{ i8, i8, i8, i32 }>
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_ssp_cap_descriptor = type { i8, i8, i8, i8, i32, i16, i16, [1 x i32] }
%struct.usb_ss_container_id_descriptor = type { i8, i8, i8, i8, [16 x i8] }
%struct.usb_ptm_cap_descriptor = type { i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, i8*, [16 x %struct.usb_interface_assoc_descriptor*], [32 x %struct.usb_interface*], [32 x %struct.usb_interface_cache*], i8*, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface*, i32, %struct.usb_interface_assoc_descriptor*, i32, i32, i8, %struct.device, %struct.device*, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, i8*, %struct.usb_host_endpoint*, i8* }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }
%struct.wusb_dev = type opaque
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type { i64, i32, i32, i64, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.67, i64 }
%union.anon.67 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque
%struct.xhci_driver_overrides = type { i64, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)* }
%struct.guid_t = type { [16 x i8] }
%struct.xhci_driver_data = type { i64, i8* }
%struct.xhci_hcd = type { %struct.usb_hcd*, %struct.usb_hcd*, %struct.xhci_cap_regs*, %struct.xhci_op_regs*, %struct.xhci_run_regs*, %struct.xhci_doorbell_array*, %struct.xhci_intr_reg*, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.clk*, %struct.clk*, %struct.reset_control*, %struct.xhci_device_context_array*, %struct.xhci_ring*, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, %struct.xhci_command*, %struct.xhci_ring*, %struct.xhci_erst, %struct.xhci_scratchpad*, %struct.list_head, %struct.mutex, %struct.xhci_command*, [256 x %struct.xhci_virt_device*], %struct.xhci_root_port_bw_info*, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, %struct.dma_pool*, i32, i32, %struct.s3_save, i64, i32, i32, %struct.xhci_port*, %struct.xhci_hub, %struct.xhci_hub, i8, i32*, i32, %struct.xhci_port_cap*, i32, %struct.timer_list, i32, i16, %struct.dentry*, %struct.dentry*, %struct.list_head, i8*, [0 x i64] }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_op_regs = type { i32, i32, i32, i32, i32, i32, i64, [4 x i32], i64, i32, [241 x i32], i32, i32, i32, i32, [1016 x i32] }
%struct.xhci_run_regs = type { i32, [7 x i32], [128 x %struct.xhci_intr_reg] }
%struct.xhci_intr_reg = type { i32, i32, i32, i32, i64, i64 }
%struct.xhci_doorbell_array = type { [256 x i32] }
%struct.clk = type opaque
%struct.reset_control = type opaque
%struct.xhci_device_context_array = type { [256 x i64], i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.xhci_ring = type { %struct.xhci_segment*, %struct.xhci_segment*, %union.xhci_trb*, %struct.xhci_segment*, %union.xhci_trb*, %struct.xhci_segment*, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xarray* }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.xhci_segment = type { %union.xhci_trb*, %struct.xhci_segment*, i64, i64, i8*, i32, i32 }
%struct.xhci_erst = type { %struct.xhci_erst_entry*, i32, i64, i32 }
%struct.xhci_erst_entry = type { i64, i32, i32 }
%struct.xhci_scratchpad = type { i64*, i64, i8** }
%struct.xhci_command = type { %struct.xhci_container_ctx*, i32, i32, %struct.completion*, %union.xhci_trb*, %struct.list_head }
%struct.xhci_container_ctx = type { i32, i32, i8*, i64 }
%struct.xhci_virt_device = type { %struct.usb_device*, %struct.xhci_container_ctx*, %struct.xhci_container_ctx*, [31 x %struct.xhci_virt_ep], i8, i8, %struct.xhci_interval_bw_table*, %struct.xhci_tt_bw_info*, i64, i16, i8* }
%struct.xhci_virt_ep = type { %struct.xhci_ring*, %struct.xhci_stream_info*, %struct.xhci_ring*, i32, %struct.list_head, %struct.timer_list, %struct.xhci_hcd*, %struct.xhci_segment*, %union.xhci_trb*, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_stream_info = type { %struct.xhci_ring**, i32, %struct.xhci_stream_ctx*, i32, i64, %struct.xarray, %struct.xhci_command* }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.xhci_interval_bw_table = type { i32, [16 x %struct.xhci_interval_bw], i32, i32, i32 }
%struct.xhci_interval_bw = type { i32, %struct.list_head, [3 x i32] }
%struct.xhci_tt_bw_info = type { %struct.list_head, i32, i32, %struct.xhci_interval_bw_table, i32 }
%struct.xhci_root_port_bw_info = type { %struct.list_head, i32, %struct.xhci_interval_bw_table }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_port = type { i32*, i32, i32, %struct.xhci_hub*, %struct.xhci_port_cap* }
%struct.xhci_hub = type { %struct.xhci_port**, i32, %struct.usb_hcd*, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i64, i64, i32, i32, i32, [31 x i64], i64, i64, [31 x %struct.completion], [31 x %struct.completion] }
%struct.xhci_port_cap = type { i32*, i8, i8, i8, i8 }
%union.acpi_object = type { %struct.anon.73 }
%struct.anon.73 = type { i32, i32, i64, i32 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.75, i32, i32, %struct.list_head }
%struct.anon.75 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.76, i8, i8, i32 }
%struct.anon.76 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.va_format = type { i8*, [1 x %struct.__va_list_tag]* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__UNIQUE_ID_firmware256 = internal constant [37 x i8] c"xhci_pci.firmware=renesas_usb_fw.mem\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID___addressable_xhci_pci_init257 = internal global i8* bitcast (i32 ()* @xhci_pci_init to i8*), section ".discard.addressable", align 8, !dbg !5816
@xhci_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @hcd_name, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([4 x %struct.pci_device_id], [4 x %struct.pci_device_id]* @pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @xhci_pci_probe, void (%struct.pci_dev*)* @xhci_pci_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* @usb_hcd_pci_shutdown, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver { i8* null, %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @usb_hcd_pci_pm_ops, void (%struct.device*)* null, %struct.driver_private* null }, %struct.pci_dynids zeroinitializer }, align 8, !dbg !5855
@__exitcall_xhci_pci_exit = internal global void ()* @xhci_pci_exit, section ".exitcall.exit", align 8, !dbg !5818
@__UNIQUE_ID_description258 = internal constant [53 x i8] c"xhci_pci.description=xHCI PCI Host Controller Driver\00", section ".modinfo", align 1, !dbg !5823
@__UNIQUE_ID_file259 = internal constant [40 x i8] c"xhci_pci.file=drivers/usb/host/xhci-pci\00", section ".modinfo", align 1, !dbg !5828
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"xhci_pci.license=GPL\00", section ".modinfo", align 1, !dbg !5831
@xhci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 8, !dbg !5836
@xhci_pci_overrides = internal constant %struct.xhci_driver_overrides { i64 0, i32 (%struct.usb_hcd*)* @xhci_pci_setup, i32 (%struct.usb_hcd*)* null }, section ".init.rodata", align 8, !dbg !5838
@.str = private unnamed_addr constant [9 x i8] c"xhci_pci\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"QUIRK: Fresco Logic xHC revision %umust be suspended extra slowly\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"QUIRK: Fresco Logic revision %u has broken MSI implementation\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"QUIRK: Resetting on resume\00", align 1
@xhci_pme_acpi_rtd3_enable.intel_dsm_guid = internal constant %struct.guid_t { [16 x i8] c"\B7\0C4\AC\01\E9\BFE\B7\E6+4\EC\93\1E#" }, align 1, !dbg !5846
@hcd_name = internal constant [9 x i8] c"xhci_hcd\00", align 1, !dbg !5857
@pci_ids = internal constant [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6418, i32 20, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.xhci_driver_data* @reneses_data to i64) }, %struct.pci_device_id { i32 6418, i32 21, i32 -1, i32 -1, i32 0, i32 0, i64 ptrtoint (%struct.xhci_driver_data* @reneses_data to i64) }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787248, i32 -1, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5860
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 8
@reneses_data = internal constant %struct.xhci_driver_data { i64 68719476736, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0) }, align 8, !dbg !5863
@.str.5 = private unnamed_addr constant [19 x i8] c"renesas_usb_fw.mem\00", align 1
@llvm.used = appending global [7 x i8*] [i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_firmware256, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_xhci_pci_init257 to i8*), i8* bitcast (void ()* @xhci_pci_exit to i8*), i8* bitcast (void ()** @__exitcall_xhci_pci_exit to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_description258, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_file259, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license260, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_init() #0 section ".init.text" !dbg !5874 {
entry:
  call void @xhci_init_driver(%struct.hc_driver* @xhci_pci_hc_driver, %struct.xhci_driver_overrides* @xhci_pci_overrides) #4, !dbg !5877
  store i32 (%struct.usb_hcd*, i1)* @xhci_pci_suspend, i32 (%struct.usb_hcd*, i1)** getelementptr inbounds (%struct.hc_driver, %struct.hc_driver* @xhci_pci_hc_driver, i32 0, i32 7), align 8, !dbg !5878
  store i32 (%struct.usb_hcd*, i1)* @xhci_pci_resume, i32 (%struct.usb_hcd*, i1)** getelementptr inbounds (%struct.hc_driver, %struct.hc_driver* @xhci_pci_hc_driver, i32 0, i32 8), align 8, !dbg !5879
  store void (%struct.usb_hcd*)* @xhci_pci_shutdown, void (%struct.usb_hcd*)** getelementptr inbounds (%struct.hc_driver, %struct.hc_driver* @xhci_pci_hc_driver, i32 0, i32 10), align 8, !dbg !5880
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @xhci_pci_driver, %struct.module* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #4, !dbg !5881
  ret i32 %call, !dbg !5882
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pci_exit() #0 section ".exit.text" !dbg !5883 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @xhci_pci_driver) #4, !dbg !5884
  ret void, !dbg !5885
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local void @xhci_init_driver(%struct.hc_driver*, %struct.xhci_driver_overrides*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_suspend(%struct.usb_hcd* %hcd, i1 zeroext %do_wakeup) #2 !dbg !5886 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %do_wakeup.addr = alloca i8, align 1
  %xhci = alloca %struct.xhci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %ret = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  %frombool = zext i1 %do_wakeup to i8
  store i8 %frombool, i8* %do_wakeup.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %do_wakeup.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !5891, metadata !DIExpression()), !dbg !5892
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5893
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #4, !dbg !5894
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !5892
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5895, metadata !DIExpression()), !dbg !5896
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5897, metadata !DIExpression()), !dbg !5899
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5899
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %1, i32 0, i32 0, !dbg !5899
  %controller = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 0, !dbg !5899
  %2 = load %struct.device*, %struct.device** %controller, align 8, !dbg !5899
  %3 = bitcast %struct.device* %2 to i8*, !dbg !5899
  store i8* %3, i8** %__mptr, align 8, !dbg !5899
  br label %do.body, !dbg !5899

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5900

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5899
  %add.ptr = getelementptr i8, i8* %4, i64 -176, !dbg !5899
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5899
  store %struct.pci_dev* %5, %struct.pci_dev** %tmp, align 8, !dbg !5900
  %6 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5899
  store %struct.pci_dev* %6, %struct.pci_dev** %pdev, align 8, !dbg !5896
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5902, metadata !DIExpression()), !dbg !5903
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5904
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 50, !dbg !5906
  %8 = load i64, i64* %quirks, align 8, !dbg !5906
  %and = and i64 %8, 16384, !dbg !5907
  %tobool = icmp ne i64 %and, 0, !dbg !5907
  br i1 %tobool, label %if.then, label %if.end, !dbg !5908

if.then:                                          ; preds = %do.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5909
  call void @pci_d3cold_disable(%struct.pci_dev* %9) #4, !dbg !5910
  br label %if.end, !dbg !5910

if.end:                                           ; preds = %if.then, %do.end
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5911
  %quirks1 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 50, !dbg !5913
  %11 = load i64, i64* %quirks1, align 8, !dbg !5913
  %and2 = and i64 %11, 1048576, !dbg !5914
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5914
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5915

if.then4:                                         ; preds = %if.end
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5916
  call void @xhci_pme_quirk(%struct.usb_hcd* %12) #4, !dbg !5917
  br label %if.end5, !dbg !5917

if.end5:                                          ; preds = %if.then4, %if.end
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5918
  %quirks6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %13, i32 0, i32 50, !dbg !5920
  %14 = load i64, i64* %quirks6, align 8, !dbg !5920
  %and7 = and i64 %14, 4194304, !dbg !5921
  %tobool8 = icmp ne i64 %and7, 0, !dbg !5921
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5922

if.then9:                                         ; preds = %if.end5
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5923
  call void @xhci_ssic_port_unused_quirk(%struct.usb_hcd* %15, i1 zeroext true) #4, !dbg !5924
  br label %if.end10, !dbg !5924

if.end10:                                         ; preds = %if.then9, %if.end5
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5925
  %quirks11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 50, !dbg !5927
  %17 = load i64, i64* %quirks11, align 8, !dbg !5927
  %and12 = and i64 %17, 274877906944, !dbg !5928
  %tobool13 = icmp ne i64 %and12, 0, !dbg !5928
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5929

if.then14:                                        ; preds = %if.end10
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5930
  call void @xhci_sparse_control_quirk(%struct.usb_hcd* %18) #4, !dbg !5931
  br label %if.end15, !dbg !5931

if.end15:                                         ; preds = %if.then14, %if.end10
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5932
  %20 = load i8, i8* %do_wakeup.addr, align 1, !dbg !5933
  %tobool16 = trunc i8 %20 to i1, !dbg !5933
  %call17 = call i32 @xhci_suspend(%struct.xhci_hcd* %19, i1 zeroext %tobool16) #4, !dbg !5934
  store i32 %call17, i32* %ret, align 4, !dbg !5935
  %21 = load i32, i32* %ret, align 4, !dbg !5936
  %tobool18 = icmp ne i32 %21, 0, !dbg !5936
  br i1 %tobool18, label %land.lhs.true, label %if.end23, !dbg !5938

land.lhs.true:                                    ; preds = %if.end15
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5939
  %quirks19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 50, !dbg !5940
  %23 = load i64, i64* %quirks19, align 8, !dbg !5940
  %and20 = and i64 %23, 4194304, !dbg !5941
  %tobool21 = icmp ne i64 %and20, 0, !dbg !5941
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5942

if.then22:                                        ; preds = %land.lhs.true
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5943
  call void @xhci_ssic_port_unused_quirk(%struct.usb_hcd* %24, i1 zeroext false) #4, !dbg !5944
  br label %if.end23, !dbg !5944

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %if.end15
  %25 = load i32, i32* %ret, align 4, !dbg !5945
  ret i32 %25, !dbg !5946
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_resume(%struct.usb_hcd* %hcd, i1 zeroext %hibernated) #2 !dbg !5947 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %hibernated.addr = alloca i8, align 1
  %xhci = alloca %struct.xhci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %retval1 = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  %frombool = zext i1 %hibernated to i8
  store i8 %frombool, i8* %hibernated.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hibernated.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !5952, metadata !DIExpression()), !dbg !5953
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5954
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #4, !dbg !5955
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !5953
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !5956, metadata !DIExpression()), !dbg !5957
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5958, metadata !DIExpression()), !dbg !5960
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5960
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %1, i32 0, i32 0, !dbg !5960
  %controller = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 0, !dbg !5960
  %2 = load %struct.device*, %struct.device** %controller, align 8, !dbg !5960
  %3 = bitcast %struct.device* %2 to i8*, !dbg !5960
  store i8* %3, i8** %__mptr, align 8, !dbg !5960
  br label %do.body, !dbg !5960

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5961

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5960
  %add.ptr = getelementptr i8, i8* %4, i64 -176, !dbg !5960
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5960
  store %struct.pci_dev* %5, %struct.pci_dev** %tmp, align 8, !dbg !5961
  %6 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5960
  store %struct.pci_dev* %6, %struct.pci_dev** %pdev, align 8, !dbg !5957
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5963, metadata !DIExpression()), !dbg !5964
  store i32 0, i32* %retval1, align 4, !dbg !5964
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5965
  %reset = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 26, !dbg !5966
  %8 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !5966
  %call2 = call i32 @reset_control_reset(%struct.reset_control* %8) #4, !dbg !5967
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5968
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 7, !dbg !5970
  %10 = load i16, i16* %vendor, align 4, !dbg !5970
  %conv = zext i16 %10 to i32, !dbg !5968
  %cmp = icmp eq i32 %conv, 32902, !dbg !5971
  br i1 %cmp, label %if.then, label %if.end, !dbg !5972

if.then:                                          ; preds = %do.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5973
  call void @usb_enable_intel_xhci_ports(%struct.pci_dev* %11) #4, !dbg !5974
  br label %if.end, !dbg !5974

if.end:                                           ; preds = %if.then, %do.end
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5975
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 50, !dbg !5977
  %13 = load i64, i64* %quirks, align 8, !dbg !5977
  %and = and i64 %13, 4194304, !dbg !5978
  %tobool = icmp ne i64 %and, 0, !dbg !5978
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5979

if.then4:                                         ; preds = %if.end
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5980
  call void @xhci_ssic_port_unused_quirk(%struct.usb_hcd* %14, i1 zeroext false) #4, !dbg !5981
  br label %if.end5, !dbg !5981

if.end5:                                          ; preds = %if.then4, %if.end
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5982
  %quirks6 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 50, !dbg !5984
  %16 = load i64, i64* %quirks6, align 8, !dbg !5984
  %and7 = and i64 %16, 1048576, !dbg !5985
  %tobool8 = icmp ne i64 %and7, 0, !dbg !5985
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5986

if.then9:                                         ; preds = %if.end5
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !5987
  call void @xhci_pme_quirk(%struct.usb_hcd* %17) #4, !dbg !5988
  br label %if.end10, !dbg !5988

if.end10:                                         ; preds = %if.then9, %if.end5
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !5989
  %19 = load i8, i8* %hibernated.addr, align 1, !dbg !5990
  %tobool11 = trunc i8 %19 to i1, !dbg !5990
  %call12 = call i32 @xhci_resume(%struct.xhci_hcd* %18, i1 zeroext %tobool11) #4, !dbg !5991
  store i32 %call12, i32* %retval1, align 4, !dbg !5992
  %20 = load i32, i32* %retval1, align 4, !dbg !5993
  ret i32 %20, !dbg !5994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pci_shutdown(%struct.usb_hcd* %hcd) #2 !dbg !5995 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !5996, metadata !DIExpression()), !dbg !5997
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !5998, metadata !DIExpression()), !dbg !5999
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6000
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #4, !dbg !6001
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !5999
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6004, metadata !DIExpression()), !dbg !6006
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6006
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %1, i32 0, i32 0, !dbg !6006
  %controller = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 0, !dbg !6006
  %2 = load %struct.device*, %struct.device** %controller, align 8, !dbg !6006
  %3 = bitcast %struct.device* %2 to i8*, !dbg !6006
  store i8* %3, i8** %__mptr, align 8, !dbg !6006
  br label %do.body, !dbg !6006

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6007

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !6006
  %add.ptr = getelementptr i8, i8* %4, i64 -176, !dbg !6006
  %5 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6006
  store %struct.pci_dev* %5, %struct.pci_dev** %tmp, align 8, !dbg !6007
  %6 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6006
  store %struct.pci_dev* %6, %struct.pci_dev** %pdev, align 8, !dbg !6003
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6009
  call void @xhci_shutdown(%struct.usb_hcd* %7) #4, !dbg !6010
  %8 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6011
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %8, i32 0, i32 50, !dbg !6013
  %9 = load i64, i64* %quirks, align 8, !dbg !6013
  %and = and i64 %9, 262144, !dbg !6014
  %tobool = icmp ne i64 %and, 0, !dbg !6014
  br i1 %tobool, label %if.then, label %if.end, !dbg !6015

if.then:                                          ; preds = %do.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6016
  %call1 = call i32 @pci_set_power_state(%struct.pci_dev* %10, i32 3) #4, !dbg !6017
  br label %if.end, !dbg !6017

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !6018
}

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_setup(%struct.usb_hcd* %hcd) #2 !dbg !6019 {
entry:
  %retval = alloca i32, align 4
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %retval1 = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6020, metadata !DIExpression()), !dbg !6021
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6022, metadata !DIExpression()), !dbg !6023
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6024, metadata !DIExpression()), !dbg !6025
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6026, metadata !DIExpression()), !dbg !6028
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6028
  %self = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %0, i32 0, i32 0, !dbg !6028
  %controller = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %self, i32 0, i32 0, !dbg !6028
  %1 = load %struct.device*, %struct.device** %controller, align 8, !dbg !6028
  %2 = bitcast %struct.device* %1 to i8*, !dbg !6028
  store i8* %2, i8** %__mptr, align 8, !dbg !6028
  br label %do.body, !dbg !6028

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6029

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !6028
  %add.ptr = getelementptr i8, i8* %3, i64 -176, !dbg !6028
  %4 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6028
  store %struct.pci_dev* %4, %struct.pci_dev** %tmp, align 8, !dbg !6029
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6028
  store %struct.pci_dev* %5, %struct.pci_dev** %pdev, align 8, !dbg !6025
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6031, metadata !DIExpression()), !dbg !6032
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6033
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %6) #4, !dbg !6034
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !6035
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6036
  %sbrn = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 13, !dbg !6038
  %8 = load i8, i8* %sbrn, align 4, !dbg !6038
  %tobool = icmp ne i8 %8, 0, !dbg !6036
  br i1 %tobool, label %if.end, label %if.then, !dbg !6039

if.then:                                          ; preds = %do.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6040
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6041
  %sbrn2 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 13, !dbg !6042
  %call3 = call i32 @pci_read_config_byte(%struct.pci_dev* %9, i32 96, i8* %sbrn2) #4, !dbg !6043
  br label %if.end, !dbg !6043

if.end:                                           ; preds = %if.then, %do.end
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6044
  %imod_interval = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 19, !dbg !6045
  store i32 40000, i32* %imod_interval, align 4, !dbg !6046
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6047
  %call4 = call i32 @xhci_gen_setup(%struct.usb_hcd* %12, void (%struct.device*, %struct.xhci_hcd*)* @xhci_pci_quirks) #4, !dbg !6048
  store i32 %call4, i32* %retval1, align 4, !dbg !6049
  %13 = load i32, i32* %retval1, align 4, !dbg !6050
  %tobool5 = icmp ne i32 %13, 0, !dbg !6050
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6052

if.then6:                                         ; preds = %if.end
  %14 = load i32, i32* %retval1, align 4, !dbg !6053
  store i32 %14, i32* %retval, align 4, !dbg !6054
  br label %return, !dbg !6054

if.end7:                                          ; preds = %if.end
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6055
  %call8 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %15) #4, !dbg !6057
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6057
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6058

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* %retval, align 4, !dbg !6059
  br label %return, !dbg !6059

if.end11:                                         ; preds = %if.end7
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6060
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 50, !dbg !6062
  %17 = load i64, i64* %quirks, align 8, !dbg !6062
  %and = and i64 %17, 1048576, !dbg !6063
  %tobool12 = icmp ne i64 %and, 0, !dbg !6063
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6064

if.then13:                                        ; preds = %if.end11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6065
  call void @xhci_pme_acpi_rtd3_enable(%struct.pci_dev* %18) #4, !dbg !6066
  br label %if.end14, !dbg !6066

if.end14:                                         ; preds = %if.then13, %if.end11
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6067
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6068
  %call15 = call i32 @xhci_pci_reinit(%struct.xhci_hcd* %19, %struct.pci_dev* %20) #4, !dbg !6069
  store i32 %call15, i32* %retval, align 4, !dbg !6070
  br label %return, !dbg !6070

return:                                           ; preds = %if.end14, %if.then10, %if.then6
  %21 = load i32, i32* %retval, align 4, !dbg !6071
  ret i32 %21, !dbg !6071
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %hcd) #2 !dbg !6072 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %primary_hcd = alloca %struct.usb_hcd*, align 8
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6075, metadata !DIExpression()), !dbg !6076
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %primary_hcd, metadata !6077, metadata !DIExpression()), !dbg !6078
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6079
  %call = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %0) #4, !dbg !6081
  %tobool = icmp ne i32 %call, 0, !dbg !6081
  br i1 %tobool, label %if.then, label %if.else, !dbg !6082

if.then:                                          ; preds = %entry
  %1 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6083
  store %struct.usb_hcd* %1, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6084
  br label %if.end, !dbg !6085

if.else:                                          ; preds = %entry
  %2 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6086
  %primary_hcd1 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %2, i32 0, i32 25, !dbg !6087
  %3 = load %struct.usb_hcd*, %struct.usb_hcd** %primary_hcd1, align 8, !dbg !6087
  store %struct.usb_hcd* %3, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6088
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %primary_hcd, align 8, !dbg !6089
  %hcd_priv = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 29, !dbg !6090
  %arraydecay = getelementptr inbounds [0 x i64], [0 x i64]* %hcd_priv, i64 0, i64 0, !dbg !6091
  %5 = bitcast i64* %arraydecay to %struct.xhci_hcd*, !dbg !6092
  ret %struct.xhci_hcd* %5, !dbg !6093
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @xhci_gen_setup(%struct.usb_hcd*, void (%struct.device*, %struct.xhci_hcd*)*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pci_quirks(%struct.device* %dev, %struct.xhci_hcd* %xhci) #2 !dbg !6094 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %xhci.addr = alloca %struct.xhci_hcd*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %driver_data = alloca %struct.xhci_driver_data*, align 8
  %id = alloca %struct.pci_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  store %struct.xhci_hcd* %xhci, %struct.xhci_hcd** %xhci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci.addr, metadata !6099, metadata !DIExpression()), !dbg !6100
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !6101, metadata !DIExpression()), !dbg !6102
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6103, metadata !DIExpression()), !dbg !6105
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6105
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6105
  store i8* %1, i8** %__mptr, align 8, !dbg !6105
  br label %do.body, !dbg !6105

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6106

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6105
  %add.ptr = getelementptr i8, i8* %2, i64 -176, !dbg !6105
  %3 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !6105
  store %struct.pci_dev* %3, %struct.pci_dev** %tmp, align 8, !dbg !6106
  %4 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !6105
  store %struct.pci_dev* %4, %struct.pci_dev** %pdev, align 8, !dbg !6102
  call void @llvm.dbg.declare(metadata %struct.xhci_driver_data** %driver_data, metadata !6108, metadata !DIExpression()), !dbg !6109
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id, metadata !6110, metadata !DIExpression()), !dbg !6111
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6112
  %driver = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 23, !dbg !6113
  %6 = load %struct.pci_driver*, %struct.pci_driver** %driver, align 8, !dbg !6113
  %id_table = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %6, i32 0, i32 2, !dbg !6114
  %7 = load %struct.pci_device_id*, %struct.pci_device_id** %id_table, align 8, !dbg !6114
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6115
  %call = call %struct.pci_device_id* @pci_match_id(%struct.pci_device_id* %7, %struct.pci_dev* %8) #4, !dbg !6116
  store %struct.pci_device_id* %call, %struct.pci_device_id** %id, align 8, !dbg !6117
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %id, align 8, !dbg !6118
  %tobool = icmp ne %struct.pci_device_id* %9, null, !dbg !6118
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6120

land.lhs.true:                                    ; preds = %do.end
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %id, align 8, !dbg !6121
  %driver_data1 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 6, !dbg !6122
  %11 = load i64, i64* %driver_data1, align 8, !dbg !6122
  %tobool2 = icmp ne i64 %11, 0, !dbg !6121
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6123

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %id, align 8, !dbg !6124
  %driver_data3 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 6, !dbg !6126
  %13 = load i64, i64* %driver_data3, align 8, !dbg !6126
  %14 = inttoptr i64 %13 to %struct.xhci_driver_data*, !dbg !6127
  store %struct.xhci_driver_data* %14, %struct.xhci_driver_data** %driver_data, align 8, !dbg !6128
  %15 = load %struct.xhci_driver_data*, %struct.xhci_driver_data** %driver_data, align 8, !dbg !6129
  %quirks = getelementptr inbounds %struct.xhci_driver_data, %struct.xhci_driver_data* %15, i32 0, i32 0, !dbg !6130
  %16 = load i64, i64* %quirks, align 8, !dbg !6130
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6131
  %quirks4 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 50, !dbg !6132
  %18 = load i64, i64* %quirks4, align 8, !dbg !6133
  %or = or i64 %18, %16, !dbg !6133
  store i64 %or, i64* %quirks4, align 8, !dbg !6133
  br label %if.end, !dbg !6134

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6135
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 7, !dbg !6137
  %20 = load i16, i16* %vendor, align 4, !dbg !6137
  %conv = zext i16 %20 to i32, !dbg !6135
  %cmp = icmp eq i32 %conv, 7027, !dbg !6138
  br i1 %cmp, label %land.lhs.true6, label %if.end56, !dbg !6139

land.lhs.true6:                                   ; preds = %if.end
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6140
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 8, !dbg !6141
  %22 = load i16, i16* %device, align 2, !dbg !6141
  %conv7 = zext i16 %22 to i32, !dbg !6140
  %cmp8 = icmp eq i32 %conv7, 4096, !dbg !6142
  br i1 %cmp8, label %if.then14, label %lor.lhs.false, !dbg !6143

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6144
  %device10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 8, !dbg !6145
  %24 = load i16, i16* %device10, align 2, !dbg !6145
  %conv11 = zext i16 %24 to i32, !dbg !6144
  %cmp12 = icmp eq i32 %conv11, 5120, !dbg !6146
  br i1 %cmp12, label %if.then14, label %if.end56, !dbg !6147

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true6
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6148
  %device15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 8, !dbg !6151
  %26 = load i16, i16* %device15, align 2, !dbg !6151
  %conv16 = zext i16 %26 to i32, !dbg !6148
  %cmp17 = icmp eq i32 %conv16, 4096, !dbg !6152
  br i1 %cmp17, label %land.lhs.true19, label %if.end26, !dbg !6153

land.lhs.true19:                                  ; preds = %if.then14
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6154
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 12, !dbg !6155
  %28 = load i8, i8* %revision, align 8, !dbg !6155
  %conv20 = zext i8 %28 to i32, !dbg !6154
  %cmp21 = icmp eq i32 %conv20, 0, !dbg !6156
  br i1 %cmp21, label %if.then23, label %if.end26, !dbg !6157

if.then23:                                        ; preds = %land.lhs.true19
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6158
  %quirks24 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 50, !dbg !6160
  %30 = load i64, i64* %quirks24, align 8, !dbg !6161
  %or25 = or i64 %30, 2, !dbg !6161
  store i64 %or25, i64* %quirks24, align 8, !dbg !6161
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6162
  call void (%struct.xhci_hcd*, void (%struct.va_format*)*, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %31, void (%struct.va_format*)* @trace_xhci_dbg_quirks, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !6163
  br label %if.end26, !dbg !6164

if.end26:                                         ; preds = %if.then23, %land.lhs.true19, %if.then14
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6165
  %device27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 8, !dbg !6167
  %33 = load i16, i16* %device27, align 2, !dbg !6167
  %conv28 = zext i16 %33 to i32, !dbg !6165
  %cmp29 = icmp eq i32 %conv28, 4096, !dbg !6168
  br i1 %cmp29, label %land.lhs.true31, label %if.end41, !dbg !6169

land.lhs.true31:                                  ; preds = %if.end26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6170
  %revision32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 12, !dbg !6171
  %35 = load i8, i8* %revision32, align 8, !dbg !6171
  %conv33 = zext i8 %35 to i32, !dbg !6170
  %cmp34 = icmp eq i32 %conv33, 4, !dbg !6172
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !6173

if.then36:                                        ; preds = %land.lhs.true31
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6174
  %quirks37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 50, !dbg !6176
  %37 = load i64, i64* %quirks37, align 8, !dbg !6177
  %or38 = or i64 %37, 131072, !dbg !6177
  store i64 %or38, i64* %quirks37, align 8, !dbg !6177
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6178
  %39 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6179
  %revision39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 12, !dbg !6180
  %40 = load i8, i8* %revision39, align 8, !dbg !6180
  %conv40 = zext i8 %40 to i32, !dbg !6179
  call void (%struct.xhci_hcd*, void (%struct.va_format*)*, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %38, void (%struct.va_format*)* @trace_xhci_dbg_quirks, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %conv40) #4, !dbg !6181
  br label %if.end41, !dbg !6182

if.end41:                                         ; preds = %if.then36, %land.lhs.true31, %if.end26
  %41 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6183
  %device42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 8, !dbg !6185
  %42 = load i16, i16* %device42, align 2, !dbg !6185
  %conv43 = zext i16 %42 to i32, !dbg !6183
  %cmp44 = icmp eq i32 %conv43, 4096, !dbg !6186
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !6187

if.then46:                                        ; preds = %if.end41
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6188
  %quirks47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %43, i32 0, i32 50, !dbg !6189
  %44 = load i64, i64* %quirks47, align 8, !dbg !6190
  %or48 = or i64 %44, 524288, !dbg !6190
  store i64 %or48, i64* %quirks47, align 8, !dbg !6190
  br label %if.end49, !dbg !6188

if.end49:                                         ; preds = %if.then46, %if.end41
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6191
  %quirks50 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 50, !dbg !6192
  %46 = load i64, i64* %quirks50, align 8, !dbg !6193
  %or51 = or i64 %46, 64, !dbg !6193
  store i64 %or51, i64* %quirks50, align 8, !dbg !6193
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6194
  %48 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6195
  %revision52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 12, !dbg !6196
  %49 = load i8, i8* %revision52, align 8, !dbg !6196
  %conv53 = zext i8 %49 to i32, !dbg !6195
  call void (%struct.xhci_hcd*, void (%struct.va_format*)*, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %47, void (%struct.va_format*)* @trace_xhci_dbg_quirks, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %conv53) #4, !dbg !6197
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6198
  %quirks54 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %50, i32 0, i32 50, !dbg !6199
  %51 = load i64, i64* %quirks54, align 8, !dbg !6200
  %or55 = or i64 %51, 1024, !dbg !6200
  store i64 %or55, i64* %quirks54, align 8, !dbg !6200
  br label %if.end56, !dbg !6201

if.end56:                                         ; preds = %if.end49, %lor.lhs.false, %if.end
  %52 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6202
  %vendor57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 7, !dbg !6204
  %53 = load i16, i16* %vendor57, align 4, !dbg !6204
  %conv58 = zext i16 %53 to i32, !dbg !6202
  %cmp59 = icmp eq i32 %conv58, 7027, !dbg !6205
  br i1 %cmp59, label %land.lhs.true61, label %if.end69, !dbg !6206

land.lhs.true61:                                  ; preds = %if.end56
  %54 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6207
  %device62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 8, !dbg !6208
  %55 = load i16, i16* %device62, align 2, !dbg !6208
  %conv63 = zext i16 %55 to i32, !dbg !6207
  %cmp64 = icmp eq i32 %conv63, 4105, !dbg !6209
  br i1 %cmp64, label %if.then66, label %if.end69, !dbg !6210

if.then66:                                        ; preds = %land.lhs.true61
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6211
  %quirks67 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 50, !dbg !6212
  %57 = load i64, i64* %quirks67, align 8, !dbg !6213
  %or68 = or i64 %57, 524288, !dbg !6213
  store i64 %or68, i64* %quirks67, align 8, !dbg !6213
  br label %if.end69, !dbg !6211

if.end69:                                         ; preds = %if.then66, %land.lhs.true61, %if.end56
  %58 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6214
  %vendor70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 7, !dbg !6216
  %59 = load i16, i16* %vendor70, align 4, !dbg !6216
  %conv71 = zext i16 %59 to i32, !dbg !6214
  %cmp72 = icmp eq i32 %conv71, 4147, !dbg !6217
  br i1 %cmp72, label %if.then74, label %if.end77, !dbg !6218

if.then74:                                        ; preds = %if.end69
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6219
  %quirks75 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %60, i32 0, i32 50, !dbg !6220
  %61 = load i64, i64* %quirks75, align 8, !dbg !6221
  %or76 = or i64 %61, 4, !dbg !6221
  store i64 %or76, i64* %quirks75, align 8, !dbg !6221
  br label %if.end77, !dbg !6219

if.end77:                                         ; preds = %if.then74, %if.end69
  %62 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6222
  %vendor78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 7, !dbg !6224
  %63 = load i16, i16* %vendor78, align 4, !dbg !6224
  %conv79 = zext i16 %63 to i32, !dbg !6222
  %cmp80 = icmp eq i32 %conv79, 4130, !dbg !6225
  br i1 %cmp80, label %land.lhs.true82, label %if.end89, !dbg !6226

land.lhs.true82:                                  ; preds = %if.end77
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6227
  %hci_version = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %64, i32 0, i32 14, !dbg !6228
  %65 = load i16, i16* %hci_version, align 2, !dbg !6228
  %conv83 = zext i16 %65 to i32, !dbg !6227
  %cmp84 = icmp eq i32 %conv83, 150, !dbg !6229
  br i1 %cmp84, label %if.then86, label %if.end89, !dbg !6230

if.then86:                                        ; preds = %land.lhs.true82
  %66 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6231
  %quirks87 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %66, i32 0, i32 50, !dbg !6232
  %67 = load i64, i64* %quirks87, align 8, !dbg !6233
  %or88 = or i64 %67, 512, !dbg !6233
  store i64 %or88, i64* %quirks87, align 8, !dbg !6233
  br label %if.end89, !dbg !6231

if.end89:                                         ; preds = %if.then86, %land.lhs.true82, %if.end77
  %68 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6234
  %vendor90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 7, !dbg !6236
  %69 = load i16, i16* %vendor90, align 4, !dbg !6236
  %conv91 = zext i16 %69 to i32, !dbg !6234
  %cmp92 = icmp eq i32 %conv91, 4130, !dbg !6237
  br i1 %cmp92, label %land.lhs.true94, label %if.end100, !dbg !6238

land.lhs.true94:                                  ; preds = %if.end89
  %call95 = call zeroext i1 @usb_amd_quirk_pll_check() #4, !dbg !6239
  br i1 %call95, label %if.then97, label %if.end100, !dbg !6240

if.then97:                                        ; preds = %land.lhs.true94
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6241
  %quirks98 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %70, i32 0, i32 50, !dbg !6242
  %71 = load i64, i64* %quirks98, align 8, !dbg !6243
  %or99 = or i64 %71, 8, !dbg !6243
  store i64 %or99, i64* %quirks98, align 8, !dbg !6243
  br label %if.end100, !dbg !6241

if.end100:                                        ; preds = %if.then97, %land.lhs.true94, %if.end89
  %72 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6244
  %vendor101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 7, !dbg !6246
  %73 = load i16, i16* %vendor101, align 4, !dbg !6246
  %conv102 = zext i16 %73 to i32, !dbg !6244
  %cmp103 = icmp eq i32 %conv102, 4130, !dbg !6247
  br i1 %cmp103, label %land.lhs.true105, label %if.end128, !dbg !6248

land.lhs.true105:                                 ; preds = %if.end100
  %74 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6249
  %device106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 8, !dbg !6250
  %75 = load i16, i16* %device106, align 2, !dbg !6250
  %conv107 = zext i16 %75 to i32, !dbg !6249
  %cmp108 = icmp eq i32 %conv107, 5212, !dbg !6251
  br i1 %cmp108, label %if.then125, label %lor.lhs.false110, !dbg !6252

lor.lhs.false110:                                 ; preds = %land.lhs.true105
  %76 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6253
  %device111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 8, !dbg !6254
  %77 = load i16, i16* %device111, align 2, !dbg !6254
  %conv112 = zext i16 %77 to i32, !dbg !6253
  %cmp113 = icmp eq i32 %conv112, 5600, !dbg !6255
  br i1 %cmp113, label %if.then125, label %lor.lhs.false115, !dbg !6256

lor.lhs.false115:                                 ; preds = %lor.lhs.false110
  %78 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6257
  %device116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 8, !dbg !6258
  %79 = load i16, i16* %device116, align 2, !dbg !6258
  %conv117 = zext i16 %79 to i32, !dbg !6257
  %cmp118 = icmp eq i32 %conv117, 5601, !dbg !6259
  br i1 %cmp118, label %if.then125, label %lor.lhs.false120, !dbg !6260

lor.lhs.false120:                                 ; preds = %lor.lhs.false115
  %80 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6261
  %device121 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 8, !dbg !6262
  %81 = load i16, i16* %device121, align 2, !dbg !6262
  %conv122 = zext i16 %81 to i32, !dbg !6261
  %cmp123 = icmp eq i32 %conv122, 17339, !dbg !6263
  br i1 %cmp123, label %if.then125, label %if.end128, !dbg !6264

if.then125:                                       ; preds = %lor.lhs.false120, %lor.lhs.false115, %lor.lhs.false110, %land.lhs.true105
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6265
  %quirks126 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %82, i32 0, i32 50, !dbg !6266
  %83 = load i64, i64* %quirks126, align 8, !dbg !6267
  %or127 = or i64 %83, 1073741824, !dbg !6267
  store i64 %or127, i64* %quirks126, align 8, !dbg !6267
  br label %if.end128, !dbg !6265

if.end128:                                        ; preds = %if.then125, %lor.lhs.false120, %if.end100
  %84 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6268
  %vendor129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 7, !dbg !6270
  %85 = load i16, i16* %vendor129, align 4, !dbg !6270
  %conv130 = zext i16 %85 to i32, !dbg !6268
  %cmp131 = icmp eq i32 %conv130, 4130, !dbg !6271
  br i1 %cmp131, label %land.lhs.true133, label %if.end146, !dbg !6272

land.lhs.true133:                                 ; preds = %if.end128
  %86 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6273
  %device134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 8, !dbg !6274
  %87 = load i16, i16* %device134, align 2, !dbg !6274
  %conv135 = zext i16 %87 to i32, !dbg !6273
  %cmp136 = icmp eq i32 %conv135, 5600, !dbg !6275
  br i1 %cmp136, label %if.then143, label %lor.lhs.false138, !dbg !6276

lor.lhs.false138:                                 ; preds = %land.lhs.true133
  %88 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6277
  %device139 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 8, !dbg !6278
  %89 = load i16, i16* %device139, align 2, !dbg !6278
  %conv140 = zext i16 %89 to i32, !dbg !6277
  %cmp141 = icmp eq i32 %conv140, 5601, !dbg !6279
  br i1 %cmp141, label %if.then143, label %if.end146, !dbg !6280

if.then143:                                       ; preds = %lor.lhs.false138, %land.lhs.true133
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6281
  %quirks144 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %90, i32 0, i32 50, !dbg !6282
  %91 = load i64, i64* %quirks144, align 8, !dbg !6283
  %or145 = or i64 %91, 34359738368, !dbg !6283
  store i64 %or145, i64* %quirks144, align 8, !dbg !6283
  br label %if.end146, !dbg !6281

if.end146:                                        ; preds = %if.then143, %lor.lhs.false138, %if.end128
  %92 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6284
  %vendor147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 7, !dbg !6286
  %93 = load i16, i16* %vendor147, align 4, !dbg !6286
  %conv148 = zext i16 %93 to i32, !dbg !6284
  %cmp149 = icmp eq i32 %conv148, 4130, !dbg !6287
  br i1 %cmp149, label %land.lhs.true151, label %if.end159, !dbg !6288

land.lhs.true151:                                 ; preds = %if.end146
  %94 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6289
  %device152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 8, !dbg !6290
  %95 = load i16, i16* %device152, align 2, !dbg !6290
  %conv153 = zext i16 %95 to i32, !dbg !6289
  %cmp154 = icmp eq i32 %conv153, 5605, !dbg !6291
  br i1 %cmp154, label %if.then156, label %if.end159, !dbg !6292

if.then156:                                       ; preds = %land.lhs.true151
  %96 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6293
  %quirks157 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %96, i32 0, i32 50, !dbg !6294
  %97 = load i64, i64* %quirks157, align 8, !dbg !6295
  %or158 = or i64 %97, 274877906944, !dbg !6295
  store i64 %or158, i64* %quirks157, align 8, !dbg !6295
  br label %if.end159, !dbg !6293

if.end159:                                        ; preds = %if.then156, %land.lhs.true151, %if.end146
  %98 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6296
  %vendor160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 7, !dbg !6298
  %99 = load i16, i16* %vendor160, align 4, !dbg !6298
  %conv161 = zext i16 %99 to i32, !dbg !6296
  %cmp162 = icmp eq i32 %conv161, 4130, !dbg !6299
  br i1 %cmp162, label %if.then164, label %if.end167, !dbg !6300

if.then164:                                       ; preds = %if.end159
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6301
  %quirks165 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %100, i32 0, i32 50, !dbg !6302
  %101 = load i64, i64* %quirks165, align 8, !dbg !6303
  %or166 = or i64 %101, 1024, !dbg !6303
  store i64 %or166, i64* %quirks165, align 8, !dbg !6303
  br label %if.end167, !dbg !6301

if.end167:                                        ; preds = %if.then164, %if.end159
  %102 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6304
  %vendor168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 7, !dbg !6306
  %103 = load i16, i16* %vendor168, align 4, !dbg !6306
  %conv169 = zext i16 %103 to i32, !dbg !6304
  %cmp170 = icmp eq i32 %conv169, 4130, !dbg !6307
  br i1 %cmp170, label %land.lhs.true172, label %if.end195, !dbg !6308

land.lhs.true172:                                 ; preds = %if.end167
  %104 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6309
  %device173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 8, !dbg !6310
  %105 = load i16, i16* %device173, align 2, !dbg !6310
  %conv174 = zext i16 %105 to i32, !dbg !6309
  %cmp175 = icmp eq i32 %conv174, 17337, !dbg !6311
  br i1 %cmp175, label %if.then192, label %lor.lhs.false177, !dbg !6312

lor.lhs.false177:                                 ; preds = %land.lhs.true172
  %106 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6313
  %device178 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 8, !dbg !6314
  %107 = load i16, i16* %device178, align 2, !dbg !6314
  %conv179 = zext i16 %107 to i32, !dbg !6313
  %cmp180 = icmp eq i32 %conv179, 17338, !dbg !6315
  br i1 %cmp180, label %if.then192, label %lor.lhs.false182, !dbg !6316

lor.lhs.false182:                                 ; preds = %lor.lhs.false177
  %108 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6317
  %device183 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 8, !dbg !6318
  %109 = load i16, i16* %device183, align 2, !dbg !6318
  %conv184 = zext i16 %109 to i32, !dbg !6317
  %cmp185 = icmp eq i32 %conv184, 17339, !dbg !6319
  br i1 %cmp185, label %if.then192, label %lor.lhs.false187, !dbg !6320

lor.lhs.false187:                                 ; preds = %lor.lhs.false182
  %110 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6321
  %device188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 8, !dbg !6322
  %111 = load i16, i16* %device188, align 2, !dbg !6322
  %conv189 = zext i16 %111 to i32, !dbg !6321
  %cmp190 = icmp eq i32 %conv189, 17340, !dbg !6323
  br i1 %cmp190, label %if.then192, label %if.end195, !dbg !6324

if.then192:                                       ; preds = %lor.lhs.false187, %lor.lhs.false182, %lor.lhs.false177, %land.lhs.true172
  %112 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6325
  %quirks193 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %112, i32 0, i32 50, !dbg !6326
  %113 = load i64, i64* %quirks193, align 8, !dbg !6327
  %or194 = or i64 %113, 134217728, !dbg !6327
  store i64 %or194, i64* %quirks193, align 8, !dbg !6327
  br label %if.end195, !dbg !6325

if.end195:                                        ; preds = %if.then192, %lor.lhs.false187, %if.end167
  %114 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6328
  %vendor196 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 7, !dbg !6330
  %115 = load i16, i16* %vendor196, align 4, !dbg !6330
  %conv197 = zext i16 %115 to i32, !dbg !6328
  %cmp198 = icmp eq i32 %conv197, 32902, !dbg !6331
  br i1 %cmp198, label %if.then200, label %if.end207, !dbg !6332

if.then200:                                       ; preds = %if.end195
  %116 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6333
  %quirks201 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %116, i32 0, i32 50, !dbg !6335
  %117 = load i64, i64* %quirks201, align 8, !dbg !6336
  %or202 = or i64 %117, 2048, !dbg !6336
  store i64 %or202, i64* %quirks201, align 8, !dbg !6336
  %118 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6337
  %quirks203 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %118, i32 0, i32 50, !dbg !6338
  %119 = load i64, i64* %quirks203, align 8, !dbg !6339
  %or204 = or i64 %119, 4096, !dbg !6339
  store i64 %or204, i64* %quirks203, align 8, !dbg !6339
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6340
  %quirks205 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %120, i32 0, i32 50, !dbg !6341
  %121 = load i64, i64* %quirks205, align 8, !dbg !6342
  %or206 = or i64 %121, 32768, !dbg !6342
  store i64 %or206, i64* %quirks205, align 8, !dbg !6342
  br label %if.end207, !dbg !6343

if.end207:                                        ; preds = %if.then200, %if.end195
  %122 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6344
  %vendor208 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 7, !dbg !6346
  %123 = load i16, i16* %vendor208, align 4, !dbg !6346
  %conv209 = zext i16 %123 to i32, !dbg !6344
  %cmp210 = icmp eq i32 %conv209, 32902, !dbg !6347
  br i1 %cmp210, label %land.lhs.true212, label %if.end224, !dbg !6348

land.lhs.true212:                                 ; preds = %if.end207
  %124 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6349
  %device213 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 8, !dbg !6350
  %125 = load i16, i16* %device213, align 2, !dbg !6350
  %conv214 = zext i16 %125 to i32, !dbg !6349
  %cmp215 = icmp eq i32 %conv214, 7729, !dbg !6351
  br i1 %cmp215, label %if.then217, label %if.end224, !dbg !6352

if.then217:                                       ; preds = %land.lhs.true212
  %126 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6353
  %quirks218 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %126, i32 0, i32 50, !dbg !6355
  %127 = load i64, i64* %quirks218, align 8, !dbg !6356
  %or219 = or i64 %127, 32, !dbg !6356
  store i64 %or219, i64* %quirks218, align 8, !dbg !6356
  %128 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6357
  %limit_active_eps = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %128, i32 0, i32 52, !dbg !6358
  store i32 64, i32* %limit_active_eps, align 4, !dbg !6359
  %129 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6360
  %quirks220 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %129, i32 0, i32 50, !dbg !6361
  %130 = load i64, i64* %quirks220, align 8, !dbg !6362
  %or221 = or i64 %130, 256, !dbg !6362
  store i64 %or221, i64* %quirks220, align 8, !dbg !6362
  %131 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6363
  %quirks222 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %131, i32 0, i32 50, !dbg !6364
  %132 = load i64, i64* %quirks222, align 8, !dbg !6365
  %or223 = or i64 %132, 8192, !dbg !6365
  store i64 %or223, i64* %quirks222, align 8, !dbg !6365
  br label %if.end224, !dbg !6366

if.end224:                                        ; preds = %if.then217, %land.lhs.true212, %if.end207
  %133 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6367
  %vendor225 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 7, !dbg !6369
  %134 = load i16, i16* %vendor225, align 4, !dbg !6369
  %conv226 = zext i16 %134 to i32, !dbg !6367
  %cmp227 = icmp eq i32 %conv226, 32902, !dbg !6370
  br i1 %cmp227, label %land.lhs.true229, label %if.end244, !dbg !6371

land.lhs.true229:                                 ; preds = %if.end224
  %135 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6372
  %device230 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 8, !dbg !6373
  %136 = load i16, i16* %device230, align 2, !dbg !6373
  %conv231 = zext i16 %136 to i32, !dbg !6372
  %cmp232 = icmp eq i32 %conv231, 39985, !dbg !6374
  br i1 %cmp232, label %if.then239, label %lor.lhs.false234, !dbg !6375

lor.lhs.false234:                                 ; preds = %land.lhs.true229
  %137 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6376
  %device235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 8, !dbg !6377
  %138 = load i16, i16* %device235, align 2, !dbg !6377
  %conv236 = zext i16 %138 to i32, !dbg !6376
  %cmp237 = icmp eq i32 %conv236, 40113, !dbg !6378
  br i1 %cmp237, label %if.then239, label %if.end244, !dbg !6379

if.then239:                                       ; preds = %lor.lhs.false234, %land.lhs.true229
  %139 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6380
  %quirks240 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %139, i32 0, i32 50, !dbg !6382
  %140 = load i64, i64* %quirks240, align 8, !dbg !6383
  %or241 = or i64 %140, 8192, !dbg !6383
  store i64 %or241, i64* %quirks240, align 8, !dbg !6383
  %141 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6384
  %quirks242 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %141, i32 0, i32 50, !dbg !6385
  %142 = load i64, i64* %quirks242, align 8, !dbg !6386
  %or243 = or i64 %142, 262144, !dbg !6386
  store i64 %or243, i64* %quirks242, align 8, !dbg !6386
  br label %if.end244, !dbg !6387

if.end244:                                        ; preds = %if.then239, %lor.lhs.false234, %if.end224
  %143 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6388
  %vendor245 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 7, !dbg !6390
  %144 = load i16, i16* %vendor245, align 4, !dbg !6390
  %conv246 = zext i16 %144 to i32, !dbg !6388
  %cmp247 = icmp eq i32 %conv246, 32902, !dbg !6391
  br i1 %cmp247, label %land.lhs.true249, label %if.end292, !dbg !6392

land.lhs.true249:                                 ; preds = %if.end244
  %145 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6393
  %device250 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 8, !dbg !6394
  %146 = load i16, i16* %device250, align 2, !dbg !6394
  %conv251 = zext i16 %146 to i32, !dbg !6393
  %cmp252 = icmp eq i32 %conv251, 40239, !dbg !6395
  br i1 %cmp252, label %if.then289, label %lor.lhs.false254, !dbg !6396

lor.lhs.false254:                                 ; preds = %land.lhs.true249
  %147 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6397
  %device255 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 8, !dbg !6398
  %148 = load i16, i16* %device255, align 2, !dbg !6398
  %conv256 = zext i16 %148 to i32, !dbg !6397
  %cmp257 = icmp eq i32 %conv256, 41263, !dbg !6399
  br i1 %cmp257, label %if.then289, label %lor.lhs.false259, !dbg !6400

lor.lhs.false259:                                 ; preds = %lor.lhs.false254
  %149 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6401
  %device260 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 8, !dbg !6402
  %150 = load i16, i16* %device260, align 2, !dbg !6402
  %conv261 = zext i16 %150 to i32, !dbg !6401
  %cmp262 = icmp eq i32 %conv261, 8885, !dbg !6403
  br i1 %cmp262, label %if.then289, label %lor.lhs.false264, !dbg !6404

lor.lhs.false264:                                 ; preds = %lor.lhs.false259
  %151 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6405
  %device265 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 8, !dbg !6406
  %152 = load i16, i16* %device265, align 2, !dbg !6406
  %conv266 = zext i16 %152 to i32, !dbg !6405
  %cmp267 = icmp eq i32 %conv266, 2728, !dbg !6407
  br i1 %cmp267, label %if.then289, label %lor.lhs.false269, !dbg !6408

lor.lhs.false269:                                 ; preds = %lor.lhs.false264
  %153 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6409
  %device270 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %153, i32 0, i32 8, !dbg !6410
  %154 = load i16, i16* %device270, align 2, !dbg !6410
  %conv271 = zext i16 %154 to i32, !dbg !6409
  %cmp272 = icmp eq i32 %conv271, 6824, !dbg !6411
  br i1 %cmp272, label %if.then289, label %lor.lhs.false274, !dbg !6412

lor.lhs.false274:                                 ; preds = %lor.lhs.false269
  %155 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6413
  %device275 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 8, !dbg !6414
  %156 = load i16, i16* %device275, align 2, !dbg !6414
  %conv276 = zext i16 %156 to i32, !dbg !6413
  %cmp277 = icmp eq i32 %conv276, 23208, !dbg !6415
  br i1 %cmp277, label %if.then289, label %lor.lhs.false279, !dbg !6416

lor.lhs.false279:                                 ; preds = %lor.lhs.false274
  %157 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6417
  %device280 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 8, !dbg !6418
  %158 = load i16, i16* %device280, align 2, !dbg !6418
  %conv281 = zext i16 %158 to i32, !dbg !6417
  %cmp282 = icmp eq i32 %conv281, 6608, !dbg !6419
  br i1 %cmp282, label %if.then289, label %lor.lhs.false284, !dbg !6420

lor.lhs.false284:                                 ; preds = %lor.lhs.false279
  %159 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6421
  %device285 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 8, !dbg !6422
  %160 = load i16, i16* %device285, align 2, !dbg !6422
  %conv286 = zext i16 %160 to i32, !dbg !6421
  %cmp287 = icmp eq i32 %conv286, 41903, !dbg !6423
  br i1 %cmp287, label %if.then289, label %if.end292, !dbg !6424

if.then289:                                       ; preds = %lor.lhs.false284, %lor.lhs.false279, %lor.lhs.false274, %lor.lhs.false269, %lor.lhs.false264, %lor.lhs.false259, %lor.lhs.false254, %land.lhs.true249
  %161 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6425
  %quirks290 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %161, i32 0, i32 50, !dbg !6427
  %162 = load i64, i64* %quirks290, align 8, !dbg !6428
  %or291 = or i64 %162, 1048576, !dbg !6428
  store i64 %or291, i64* %quirks290, align 8, !dbg !6428
  br label %if.end292, !dbg !6429

if.end292:                                        ; preds = %if.then289, %lor.lhs.false284, %if.end244
  %163 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6430
  %vendor293 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %163, i32 0, i32 7, !dbg !6432
  %164 = load i16, i16* %vendor293, align 4, !dbg !6432
  %conv294 = zext i16 %164 to i32, !dbg !6430
  %cmp295 = icmp eq i32 %conv294, 32902, !dbg !6433
  br i1 %cmp295, label %land.lhs.true297, label %if.end305, !dbg !6434

land.lhs.true297:                                 ; preds = %if.end292
  %165 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6435
  %device298 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 8, !dbg !6436
  %166 = load i16, i16* %device298, align 2, !dbg !6436
  %conv299 = zext i16 %166 to i32, !dbg !6435
  %cmp300 = icmp eq i32 %conv299, 8885, !dbg !6437
  br i1 %cmp300, label %if.then302, label %if.end305, !dbg !6438

if.then302:                                       ; preds = %land.lhs.true297
  %167 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6439
  %quirks303 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %167, i32 0, i32 50, !dbg !6440
  %168 = load i64, i64* %quirks303, align 8, !dbg !6441
  %or304 = or i64 %168, 4194304, !dbg !6441
  store i64 %or304, i64* %quirks303, align 8, !dbg !6441
  br label %if.end305, !dbg !6439

if.end305:                                        ; preds = %if.then302, %land.lhs.true297, %if.end292
  %169 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6442
  %vendor306 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 7, !dbg !6444
  %170 = load i16, i16* %vendor306, align 4, !dbg !6444
  %conv307 = zext i16 %170 to i32, !dbg !6442
  %cmp308 = icmp eq i32 %conv307, 32902, !dbg !6445
  br i1 %cmp308, label %land.lhs.true310, label %if.end328, !dbg !6446

land.lhs.true310:                                 ; preds = %if.end305
  %171 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6447
  %device311 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 8, !dbg !6448
  %172 = load i16, i16* %device311, align 2, !dbg !6448
  %conv312 = zext i16 %172 to i32, !dbg !6447
  %cmp313 = icmp eq i32 %conv312, 8885, !dbg !6449
  br i1 %cmp313, label %if.then325, label %lor.lhs.false315, !dbg !6450

lor.lhs.false315:                                 ; preds = %land.lhs.true310
  %173 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6451
  %device316 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %173, i32 0, i32 8, !dbg !6452
  %174 = load i16, i16* %device316, align 2, !dbg !6452
  %conv317 = zext i16 %174 to i32, !dbg !6451
  %cmp318 = icmp eq i32 %conv317, 40239, !dbg !6453
  br i1 %cmp318, label %if.then325, label %lor.lhs.false320, !dbg !6454

lor.lhs.false320:                                 ; preds = %lor.lhs.false315
  %175 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6455
  %device321 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 8, !dbg !6456
  %176 = load i16, i16* %device321, align 2, !dbg !6456
  %conv322 = zext i16 %176 to i32, !dbg !6455
  %cmp323 = icmp eq i32 %conv322, 23208, !dbg !6457
  br i1 %cmp323, label %if.then325, label %if.end328, !dbg !6458

if.then325:                                       ; preds = %lor.lhs.false320, %lor.lhs.false315, %land.lhs.true310
  %177 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6459
  %quirks326 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %177, i32 0, i32 50, !dbg !6460
  %178 = load i64, i64* %quirks326, align 8, !dbg !6461
  %or327 = or i64 %178, 2147483648, !dbg !6461
  store i64 %or327, i64* %quirks326, align 8, !dbg !6461
  br label %if.end328, !dbg !6459

if.end328:                                        ; preds = %if.then325, %lor.lhs.false320, %if.end305
  %179 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6462
  %vendor329 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %179, i32 0, i32 7, !dbg !6464
  %180 = load i16, i16* %vendor329, align 4, !dbg !6464
  %conv330 = zext i16 %180 to i32, !dbg !6462
  %cmp331 = icmp eq i32 %conv330, 32902, !dbg !6465
  br i1 %cmp331, label %land.lhs.true333, label %if.end361, !dbg !6466

land.lhs.true333:                                 ; preds = %if.end328
  %181 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6467
  %device334 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %181, i32 0, i32 8, !dbg !6468
  %182 = load i16, i16* %device334, align 2, !dbg !6468
  %conv335 = zext i16 %182 to i32, !dbg !6467
  %cmp336 = icmp eq i32 %conv335, 8885, !dbg !6469
  br i1 %cmp336, label %if.then358, label %lor.lhs.false338, !dbg !6470

lor.lhs.false338:                                 ; preds = %land.lhs.true333
  %183 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6471
  %device339 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %183, i32 0, i32 8, !dbg !6472
  %184 = load i16, i16* %device339, align 2, !dbg !6472
  %conv340 = zext i16 %184 to i32, !dbg !6471
  %cmp341 = icmp eq i32 %conv340, 40239, !dbg !6473
  br i1 %cmp341, label %if.then358, label %lor.lhs.false343, !dbg !6474

lor.lhs.false343:                                 ; preds = %lor.lhs.false338
  %185 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6475
  %device344 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 8, !dbg !6476
  %186 = load i16, i16* %device344, align 2, !dbg !6476
  %conv345 = zext i16 %186 to i32, !dbg !6475
  %cmp346 = icmp eq i32 %conv345, 41263, !dbg !6477
  br i1 %cmp346, label %if.then358, label %lor.lhs.false348, !dbg !6478

lor.lhs.false348:                                 ; preds = %lor.lhs.false343
  %187 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6479
  %device349 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 8, !dbg !6480
  %188 = load i16, i16* %device349, align 2, !dbg !6480
  %conv350 = zext i16 %188 to i32, !dbg !6479
  %cmp351 = icmp eq i32 %conv350, 23208, !dbg !6481
  br i1 %cmp351, label %if.then358, label %lor.lhs.false353, !dbg !6482

lor.lhs.false353:                                 ; preds = %lor.lhs.false348
  %189 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6483
  %device354 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 8, !dbg !6484
  %190 = load i16, i16* %device354, align 2, !dbg !6484
  %conv355 = zext i16 %190 to i32, !dbg !6483
  %cmp356 = icmp eq i32 %conv355, 6608, !dbg !6485
  br i1 %cmp356, label %if.then358, label %if.end361, !dbg !6486

if.then358:                                       ; preds = %lor.lhs.false353, %lor.lhs.false348, %lor.lhs.false343, %lor.lhs.false338, %land.lhs.true333
  %191 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6487
  %quirks359 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %191, i32 0, i32 50, !dbg !6488
  %192 = load i64, i64* %quirks359, align 8, !dbg !6489
  %or360 = or i64 %192, 16777216, !dbg !6489
  store i64 %or360, i64* %quirks359, align 8, !dbg !6489
  br label %if.end361, !dbg !6487

if.end361:                                        ; preds = %if.then358, %lor.lhs.false353, %if.end328
  %193 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6490
  %vendor362 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 7, !dbg !6492
  %194 = load i16, i16* %vendor362, align 4, !dbg !6492
  %conv363 = zext i16 %194 to i32, !dbg !6490
  %cmp364 = icmp eq i32 %conv363, 32902, !dbg !6493
  br i1 %cmp364, label %land.lhs.true366, label %if.end414, !dbg !6494

land.lhs.true366:                                 ; preds = %if.end361
  %195 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6495
  %device367 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %195, i32 0, i32 8, !dbg !6496
  %196 = load i16, i16* %device367, align 2, !dbg !6496
  %conv368 = zext i16 %196 to i32, !dbg !6495
  %cmp369 = icmp eq i32 %conv368, 5557, !dbg !6497
  br i1 %cmp369, label %if.then411, label %lor.lhs.false371, !dbg !6498

lor.lhs.false371:                                 ; preds = %land.lhs.true366
  %197 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6499
  %device372 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %197, i32 0, i32 8, !dbg !6500
  %198 = load i16, i16* %device372, align 2, !dbg !6500
  %conv373 = zext i16 %198 to i32, !dbg !6499
  %cmp374 = icmp eq i32 %conv373, 5558, !dbg !6501
  br i1 %cmp374, label %if.then411, label %lor.lhs.false376, !dbg !6502

lor.lhs.false376:                                 ; preds = %lor.lhs.false371
  %199 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6503
  %device377 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 8, !dbg !6504
  %200 = load i16, i16* %device377, align 2, !dbg !6504
  %conv378 = zext i16 %200 to i32, !dbg !6503
  %cmp379 = icmp eq i32 %conv378, 5595, !dbg !6505
  br i1 %cmp379, label %if.then411, label %lor.lhs.false381, !dbg !6506

lor.lhs.false381:                                 ; preds = %lor.lhs.false376
  %201 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6507
  %device382 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %201, i32 0, i32 8, !dbg !6508
  %202 = load i16, i16* %device382, align 2, !dbg !6508
  %conv383 = zext i16 %202 to i32, !dbg !6507
  %cmp384 = icmp eq i32 %conv383, 5588, !dbg !6509
  br i1 %cmp384, label %if.then411, label %lor.lhs.false386, !dbg !6510

lor.lhs.false386:                                 ; preds = %lor.lhs.false381
  %203 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6511
  %device387 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %203, i32 0, i32 8, !dbg !6512
  %204 = load i16, i16* %device387, align 2, !dbg !6512
  %conv388 = zext i16 %204 to i32, !dbg !6511
  %cmp389 = icmp eq i32 %conv388, 5609, !dbg !6513
  br i1 %cmp389, label %if.then411, label %lor.lhs.false391, !dbg !6514

lor.lhs.false391:                                 ; preds = %lor.lhs.false386
  %205 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6515
  %device392 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %205, i32 0, i32 8, !dbg !6516
  %206 = load i16, i16* %device392, align 2, !dbg !6516
  %conv393 = zext i16 %206 to i32, !dbg !6515
  %cmp394 = icmp eq i32 %conv393, 5612, !dbg !6517
  br i1 %cmp394, label %if.then411, label %lor.lhs.false396, !dbg !6518

lor.lhs.false396:                                 ; preds = %lor.lhs.false391
  %207 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6519
  %device397 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %207, i32 0, i32 8, !dbg !6520
  %208 = load i16, i16* %device397, align 2, !dbg !6520
  %conv398 = zext i16 %208 to i32, !dbg !6519
  %cmp399 = icmp eq i32 %conv398, 5616, !dbg !6521
  br i1 %cmp399, label %if.then411, label %lor.lhs.false401, !dbg !6522

lor.lhs.false401:                                 ; preds = %lor.lhs.false396
  %209 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6523
  %device402 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %209, i32 0, i32 8, !dbg !6524
  %210 = load i16, i16* %device402, align 2, !dbg !6524
  %conv403 = zext i16 %210 to i32, !dbg !6523
  %cmp404 = icmp eq i32 %conv403, 35347, !dbg !6525
  br i1 %cmp404, label %if.then411, label %lor.lhs.false406, !dbg !6526

lor.lhs.false406:                                 ; preds = %lor.lhs.false401
  %211 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6527
  %device407 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %211, i32 0, i32 8, !dbg !6528
  %212 = load i16, i16* %device407, align 2, !dbg !6528
  %conv408 = zext i16 %212 to i32, !dbg !6527
  %cmp409 = icmp eq i32 %conv408, 39443, !dbg !6529
  br i1 %cmp409, label %if.then411, label %if.end414, !dbg !6530

if.then411:                                       ; preds = %lor.lhs.false406, %lor.lhs.false401, %lor.lhs.false396, %lor.lhs.false391, %lor.lhs.false386, %lor.lhs.false381, %lor.lhs.false376, %lor.lhs.false371, %land.lhs.true366
  %213 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6531
  %quirks412 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %213, i32 0, i32 50, !dbg !6532
  %214 = load i64, i64* %quirks412, align 8, !dbg !6533
  %or413 = or i64 %214, 8589934592, !dbg !6533
  store i64 %or413, i64* %quirks412, align 8, !dbg !6533
  br label %if.end414, !dbg !6531

if.end414:                                        ; preds = %if.then411, %lor.lhs.false406, %if.end361
  %215 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6534
  %vendor415 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %215, i32 0, i32 7, !dbg !6536
  %216 = load i16, i16* %vendor415, align 4, !dbg !6536
  %conv416 = zext i16 %216 to i32, !dbg !6534
  %cmp417 = icmp eq i32 %conv416, 7023, !dbg !6537
  br i1 %cmp417, label %land.lhs.true419, label %if.end431, !dbg !6538

land.lhs.true419:                                 ; preds = %if.end414
  %217 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6539
  %device420 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %217, i32 0, i32 8, !dbg !6540
  %218 = load i16, i16* %device420, align 2, !dbg !6540
  %conv421 = zext i16 %218 to i32, !dbg !6539
  %cmp422 = icmp eq i32 %conv421, 28707, !dbg !6541
  br i1 %cmp422, label %if.then424, label %if.end431, !dbg !6542

if.then424:                                       ; preds = %land.lhs.true419
  %219 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6543
  %quirks425 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %219, i32 0, i32 50, !dbg !6545
  %220 = load i64, i64* %quirks425, align 8, !dbg !6546
  %or426 = or i64 %220, 128, !dbg !6546
  store i64 %or426, i64* %quirks425, align 8, !dbg !6546
  %221 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6547
  %quirks427 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %221, i32 0, i32 50, !dbg !6548
  %222 = load i64, i64* %quirks427, align 8, !dbg !6549
  %or428 = or i64 %222, 1024, !dbg !6549
  store i64 %or428, i64* %quirks427, align 8, !dbg !6549
  %223 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6550
  %quirks429 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %223, i32 0, i32 50, !dbg !6551
  %224 = load i64, i64* %quirks429, align 8, !dbg !6552
  %or430 = or i64 %224, 524288, !dbg !6552
  store i64 %or430, i64* %quirks429, align 8, !dbg !6552
  br label %if.end431, !dbg !6553

if.end431:                                        ; preds = %if.then424, %land.lhs.true419, %if.end414
  %225 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6554
  %vendor432 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %225, i32 0, i32 7, !dbg !6556
  %226 = load i16, i16* %vendor432, align 4, !dbg !6556
  %conv433 = zext i16 %226 to i32, !dbg !6554
  %cmp434 = icmp eq i32 %conv433, 6418, !dbg !6557
  br i1 %cmp434, label %land.lhs.true436, label %if.end446, !dbg !6558

land.lhs.true436:                                 ; preds = %if.end431
  %227 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6559
  %device437 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 8, !dbg !6560
  %228 = load i16, i16* %device437, align 2, !dbg !6560
  %conv438 = zext i16 %228 to i32, !dbg !6559
  %cmp439 = icmp eq i32 %conv438, 20, !dbg !6561
  br i1 %cmp439, label %if.then441, label %if.end446, !dbg !6562

if.then441:                                       ; preds = %land.lhs.true436
  %229 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6563
  %quirks442 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %229, i32 0, i32 50, !dbg !6565
  %230 = load i64, i64* %quirks442, align 8, !dbg !6566
  %or443 = or i64 %230, 1024, !dbg !6566
  store i64 %or443, i64* %quirks442, align 8, !dbg !6566
  %231 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6567
  %quirks444 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %231, i32 0, i32 50, !dbg !6568
  %232 = load i64, i64* %quirks444, align 8, !dbg !6569
  %or445 = or i64 %232, 4294967296, !dbg !6569
  store i64 %or445, i64* %quirks444, align 8, !dbg !6569
  br label %if.end446, !dbg !6570

if.end446:                                        ; preds = %if.then441, %land.lhs.true436, %if.end431
  %233 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6571
  %vendor447 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %233, i32 0, i32 7, !dbg !6573
  %234 = load i16, i16* %vendor447, align 4, !dbg !6573
  %conv448 = zext i16 %234 to i32, !dbg !6571
  %cmp449 = icmp eq i32 %conv448, 6418, !dbg !6574
  br i1 %cmp449, label %land.lhs.true451, label %if.end461, !dbg !6575

land.lhs.true451:                                 ; preds = %if.end446
  %235 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6576
  %device452 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 8, !dbg !6577
  %236 = load i16, i16* %device452, align 2, !dbg !6577
  %conv453 = zext i16 %236 to i32, !dbg !6576
  %cmp454 = icmp eq i32 %conv453, 21, !dbg !6578
  br i1 %cmp454, label %if.then456, label %if.end461, !dbg !6579

if.then456:                                       ; preds = %land.lhs.true451
  %237 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6580
  %quirks457 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %237, i32 0, i32 50, !dbg !6582
  %238 = load i64, i64* %quirks457, align 8, !dbg !6583
  %or458 = or i64 %238, 128, !dbg !6583
  store i64 %or458, i64* %quirks457, align 8, !dbg !6583
  %239 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6584
  %quirks459 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %239, i32 0, i32 50, !dbg !6585
  %240 = load i64, i64* %quirks459, align 8, !dbg !6586
  %or460 = or i64 %240, 4294967296, !dbg !6586
  store i64 %or460, i64* %quirks459, align 8, !dbg !6586
  br label %if.end461, !dbg !6587

if.end461:                                        ; preds = %if.then456, %land.lhs.true451, %if.end446
  %241 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6588
  %vendor462 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %241, i32 0, i32 7, !dbg !6590
  %242 = load i16, i16* %vendor462, align 4, !dbg !6590
  %conv463 = zext i16 %242 to i32, !dbg !6588
  %cmp464 = icmp eq i32 %conv463, 4358, !dbg !6591
  br i1 %cmp464, label %if.then466, label %if.end469, !dbg !6592

if.then466:                                       ; preds = %if.end461
  %243 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6593
  %quirks467 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %243, i32 0, i32 50, !dbg !6594
  %244 = load i64, i64* %quirks467, align 8, !dbg !6595
  %or468 = or i64 %244, 128, !dbg !6595
  store i64 %or468, i64* %quirks467, align 8, !dbg !6595
  br label %if.end469, !dbg !6593

if.end469:                                        ; preds = %if.then466, %if.end461
  %245 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6596
  %vendor470 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %245, i32 0, i32 7, !dbg !6598
  %246 = load i16, i16* %vendor470, align 4, !dbg !6598
  %conv471 = zext i16 %246 to i32, !dbg !6596
  %cmp472 = icmp eq i32 %conv471, 4358, !dbg !6599
  br i1 %cmp472, label %land.lhs.true474, label %if.end482, !dbg !6600

land.lhs.true474:                                 ; preds = %if.end469
  %247 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6601
  %device475 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %247, i32 0, i32 8, !dbg !6602
  %248 = load i16, i16* %device475, align 2, !dbg !6602
  %conv476 = zext i16 %248 to i32, !dbg !6601
  %cmp477 = icmp eq i32 %conv476, 13362, !dbg !6603
  br i1 %cmp477, label %if.then479, label %if.end482, !dbg !6604

if.then479:                                       ; preds = %land.lhs.true474
  %249 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6605
  %quirks480 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %249, i32 0, i32 50, !dbg !6606
  %250 = load i64, i64* %quirks480, align 8, !dbg !6607
  %or481 = or i64 %250, 524288, !dbg !6607
  store i64 %or481, i64* %quirks480, align 8, !dbg !6607
  br label %if.end482, !dbg !6605

if.end482:                                        ; preds = %if.then479, %land.lhs.true474, %if.end469
  %251 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6608
  %vendor483 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %251, i32 0, i32 7, !dbg !6610
  %252 = load i16, i16* %vendor483, align 4, !dbg !6610
  %conv484 = zext i16 %252 to i32, !dbg !6608
  %cmp485 = icmp eq i32 %conv484, 4358, !dbg !6611
  br i1 %cmp485, label %land.lhs.true487, label %if.end495, !dbg !6612

land.lhs.true487:                                 ; preds = %if.end482
  %253 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6613
  %device488 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %253, i32 0, i32 8, !dbg !6614
  %254 = load i16, i16* %device488, align 2, !dbg !6614
  %conv489 = zext i16 %254 to i32, !dbg !6613
  %cmp490 = icmp eq i32 %conv489, 13443, !dbg !6615
  br i1 %cmp490, label %if.then492, label %if.end495, !dbg !6616

if.then492:                                       ; preds = %land.lhs.true487
  %255 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6617
  %quirks493 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %255, i32 0, i32 50, !dbg !6618
  %256 = load i64, i64* %quirks493, align 8, !dbg !6619
  %or494 = or i64 %256, 2048, !dbg !6619
  store i64 %or494, i64* %quirks493, align 8, !dbg !6619
  br label %if.end495, !dbg !6617

if.end495:                                        ; preds = %if.then492, %land.lhs.true487, %if.end482
  %257 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6620
  %vendor496 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %257, i32 0, i32 7, !dbg !6622
  %258 = load i16, i16* %vendor496, align 4, !dbg !6622
  %conv497 = zext i16 %258 to i32, !dbg !6620
  %cmp498 = icmp eq i32 %conv497, 6945, !dbg !6623
  br i1 %cmp498, label %land.lhs.true500, label %if.end508, !dbg !6624

land.lhs.true500:                                 ; preds = %if.end495
  %259 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6625
  %device501 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %259, i32 0, i32 8, !dbg !6626
  %260 = load i16, i16* %device501, align 2, !dbg !6626
  %conv502 = zext i16 %260 to i32, !dbg !6625
  %cmp503 = icmp eq i32 %conv502, 4162, !dbg !6627
  br i1 %cmp503, label %if.then505, label %if.end508, !dbg !6628

if.then505:                                       ; preds = %land.lhs.true500
  %261 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6629
  %quirks506 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %261, i32 0, i32 50, !dbg !6630
  %262 = load i64, i64* %quirks506, align 8, !dbg !6631
  %or507 = or i64 %262, 524288, !dbg !6631
  store i64 %or507, i64* %quirks506, align 8, !dbg !6631
  br label %if.end508, !dbg !6629

if.end508:                                        ; preds = %if.then505, %land.lhs.true500, %if.end495
  %263 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6632
  %vendor509 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %263, i32 0, i32 7, !dbg !6634
  %264 = load i16, i16* %vendor509, align 4, !dbg !6634
  %conv510 = zext i16 %264 to i32, !dbg !6632
  %cmp511 = icmp eq i32 %conv510, 6945, !dbg !6635
  br i1 %cmp511, label %land.lhs.true513, label %if.end521, !dbg !6636

land.lhs.true513:                                 ; preds = %if.end508
  %265 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6637
  %device514 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %265, i32 0, i32 8, !dbg !6638
  %266 = load i16, i16* %device514, align 2, !dbg !6638
  %conv515 = zext i16 %266 to i32, !dbg !6637
  %cmp516 = icmp eq i32 %conv515, 4418, !dbg !6639
  br i1 %cmp516, label %if.then518, label %if.end521, !dbg !6640

if.then518:                                       ; preds = %land.lhs.true513
  %267 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6641
  %quirks519 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %267, i32 0, i32 50, !dbg !6642
  %268 = load i64, i64* %quirks519, align 8, !dbg !6643
  %or520 = or i64 %268, 1024, !dbg !6643
  store i64 %or520, i64* %quirks519, align 8, !dbg !6643
  br label %if.end521, !dbg !6641

if.end521:                                        ; preds = %if.then518, %land.lhs.true513, %if.end508
  %269 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6644
  %vendor522 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %269, i32 0, i32 7, !dbg !6646
  %270 = load i16, i16* %vendor522, align 4, !dbg !6646
  %conv523 = zext i16 %270 to i32, !dbg !6644
  %cmp524 = icmp eq i32 %conv523, 6945, !dbg !6647
  br i1 %cmp524, label %land.lhs.true526, label %if.end539, !dbg !6648

land.lhs.true526:                                 ; preds = %if.end521
  %271 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6649
  %device527 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %271, i32 0, i32 8, !dbg !6650
  %272 = load i16, i16* %device527, align 2, !dbg !6650
  %conv528 = zext i16 %272 to i32, !dbg !6649
  %cmp529 = icmp eq i32 %conv528, 4674, !dbg !6651
  br i1 %cmp529, label %if.then536, label %lor.lhs.false531, !dbg !6652

lor.lhs.false531:                                 ; preds = %land.lhs.true526
  %273 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6653
  %device532 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %273, i32 0, i32 8, !dbg !6654
  %274 = load i16, i16* %device532, align 2, !dbg !6654
  %conv533 = zext i16 %274 to i32, !dbg !6653
  %cmp534 = icmp eq i32 %conv533, 8514, !dbg !6655
  br i1 %cmp534, label %if.then536, label %if.end539, !dbg !6656

if.then536:                                       ; preds = %lor.lhs.false531, %land.lhs.true526
  %275 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6657
  %quirks537 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %275, i32 0, i32 50, !dbg !6658
  %276 = load i64, i64* %quirks537, align 8, !dbg !6659
  %or538 = or i64 %276, 8388608, !dbg !6659
  store i64 %or538, i64* %quirks537, align 8, !dbg !6659
  br label %if.end539, !dbg !6657

if.end539:                                        ; preds = %if.then536, %lor.lhs.false531, %if.end521
  %277 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6660
  %vendor540 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %277, i32 0, i32 7, !dbg !6662
  %278 = load i16, i16* %vendor540, align 4, !dbg !6662
  %conv541 = zext i16 %278 to i32, !dbg !6660
  %cmp542 = icmp eq i32 %conv541, 6945, !dbg !6663
  br i1 %cmp542, label %land.lhs.true544, label %if.end552, !dbg !6664

land.lhs.true544:                                 ; preds = %if.end539
  %279 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6665
  %device545 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %279, i32 0, i32 8, !dbg !6666
  %280 = load i16, i16* %device545, align 2, !dbg !6666
  %conv546 = zext i16 %280 to i32, !dbg !6665
  %cmp547 = icmp eq i32 %conv546, 4418, !dbg !6667
  br i1 %cmp547, label %if.then549, label %if.end552, !dbg !6668

if.then549:                                       ; preds = %land.lhs.true544
  %281 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6669
  %quirks550 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %281, i32 0, i32 50, !dbg !6670
  %282 = load i64, i64* %quirks550, align 8, !dbg !6671
  %or551 = or i64 %282, 268435456, !dbg !6671
  store i64 %or551, i64* %quirks550, align 8, !dbg !6671
  br label %if.end552, !dbg !6669

if.end552:                                        ; preds = %if.then549, %land.lhs.true544, %if.end539
  %283 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6672
  %vendor553 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %283, i32 0, i32 7, !dbg !6674
  %284 = load i16, i16* %vendor553, align 4, !dbg !6674
  %conv554 = zext i16 %284 to i32, !dbg !6672
  %cmp555 = icmp eq i32 %conv554, 4172, !dbg !6675
  br i1 %cmp555, label %land.lhs.true557, label %if.end565, !dbg !6676

land.lhs.true557:                                 ; preds = %if.end552
  %285 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6677
  %device558 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %285, i32 0, i32 8, !dbg !6678
  %286 = load i16, i16* %device558, align 2, !dbg !6678
  %conv559 = zext i16 %286 to i32, !dbg !6677
  %cmp560 = icmp eq i32 %conv559, 33345, !dbg !6679
  br i1 %cmp560, label %if.then562, label %if.end565, !dbg !6680

if.then562:                                       ; preds = %land.lhs.true557
  %287 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6681
  %quirks563 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %287, i32 0, i32 50, !dbg !6682
  %288 = load i64, i64* %quirks563, align 8, !dbg !6683
  %or564 = or i64 %288, 67108864, !dbg !6683
  store i64 %or564, i64* %quirks563, align 8, !dbg !6683
  br label %if.end565, !dbg !6681

if.end565:                                        ; preds = %if.then562, %land.lhs.true557, %if.end552
  %289 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6684
  %vendor566 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %289, i32 0, i32 7, !dbg !6686
  %290 = load i16, i16* %vendor566, align 4, !dbg !6686
  %conv567 = zext i16 %290 to i32, !dbg !6684
  %cmp568 = icmp eq i32 %conv567, 5348, !dbg !6687
  br i1 %cmp568, label %land.lhs.true575, label %lor.lhs.false570, !dbg !6688

lor.lhs.false570:                                 ; preds = %if.end565
  %291 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6689
  %vendor571 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %291, i32 0, i32 7, !dbg !6690
  %292 = load i16, i16* %vendor571, align 4, !dbg !6690
  %conv572 = zext i16 %292 to i32, !dbg !6689
  %cmp573 = icmp eq i32 %conv572, 6013, !dbg !6691
  br i1 %cmp573, label %land.lhs.true575, label %if.end583, !dbg !6692

land.lhs.true575:                                 ; preds = %lor.lhs.false570, %if.end565
  %293 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !6693
  %device576 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %293, i32 0, i32 8, !dbg !6694
  %294 = load i16, i16* %device576, align 2, !dbg !6694
  %conv577 = zext i16 %294 to i32, !dbg !6693
  %cmp578 = icmp eq i32 %conv577, 36902, !dbg !6695
  br i1 %cmp578, label %if.then580, label %if.end583, !dbg !6696

if.then580:                                       ; preds = %land.lhs.true575
  %295 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6697
  %quirks581 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %295, i32 0, i32 50, !dbg !6698
  %296 = load i64, i64* %quirks581, align 8, !dbg !6699
  %or582 = or i64 %296, 17179869184, !dbg !6699
  store i64 %or582, i64* %quirks581, align 8, !dbg !6699
  br label %if.end583, !dbg !6697

if.end583:                                        ; preds = %if.then580, %land.lhs.true575, %lor.lhs.false570
  %297 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6700
  %quirks584 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %297, i32 0, i32 50, !dbg !6702
  %298 = load i64, i64* %quirks584, align 8, !dbg !6702
  %and = and i64 %298, 128, !dbg !6703
  %tobool585 = icmp ne i64 %and, 0, !dbg !6703
  br i1 %tobool585, label %if.then586, label %if.end587, !dbg !6704

if.then586:                                       ; preds = %if.end583
  %299 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci.addr, align 8, !dbg !6705
  call void (%struct.xhci_hcd*, void (%struct.va_format*)*, i8*, ...) @xhci_dbg_trace(%struct.xhci_hcd* %299, void (%struct.va_format*)* @trace_xhci_dbg_quirks, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !6706
  br label %if.end587, !dbg !6706

if.end587:                                        ; preds = %if.then586, %if.end583
  ret void, !dbg !6707
}

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pme_acpi_rtd3_enable(%struct.pci_dev* %dev) #2 !dbg !5848 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %obj = alloca %union.acpi_object*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_device*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6708, metadata !DIExpression()), !dbg !6709
  call void @llvm.dbg.declare(metadata %union.acpi_object** %obj, metadata !6710, metadata !DIExpression()), !dbg !6711
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !6712, metadata !DIExpression()), !dbg !6714
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6714
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6714
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 24, !dbg !6714
  %1 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !6714
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6714
  %2 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6714
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %2) #4, !dbg !6714
  br i1 %call, label %cond.true, label %cond.false, !dbg !6714

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6715, metadata !DIExpression()), !dbg !6717
  %3 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !6717
  %4 = bitcast %struct.fwnode_handle* %3 to i8*, !dbg !6717
  store i8* %4, i8** %__mptr, align 8, !dbg !6717
  br label %do.body, !dbg !6717

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6718

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6717
  %add.ptr = getelementptr i8, i8* %5, i64 -16, !dbg !6717
  %6 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !6717
  store %struct.acpi_device* %6, %struct.acpi_device** %tmp2, align 8, !dbg !6718
  %7 = load %struct.acpi_device*, %struct.acpi_device** %tmp2, align 8, !dbg !6717
  br label %cond.end, !dbg !6714

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6714

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %7, %do.end ], [ null, %cond.false ], !dbg !6714
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !6714
  %8 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !6714
  %call3 = call i8* @acpi_device_handle(%struct.acpi_device* %8) #4, !dbg !6720
  %call4 = call %union.acpi_object* @acpi_evaluate_dsm(i8* %call3, %struct.guid_t* @xhci_pme_acpi_rtd3_enable.intel_dsm_guid, i64 3, i64 1, %union.acpi_object* null) #4, !dbg !6721
  store %union.acpi_object* %call4, %union.acpi_object** %obj, align 8, !dbg !6722
  %9 = load %union.acpi_object*, %union.acpi_object** %obj, align 8, !dbg !6723
  %10 = bitcast %union.acpi_object* %9 to i8*, !dbg !6723
  call void @acpi_os_free(i8* %10) #4, !dbg !6723
  ret void, !dbg !6724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_reinit(%struct.xhci_hcd* %xhci, %struct.pci_dev* %pdev) #2 !dbg !6725 {
entry:
  %xhci.addr = alloca %struct.xhci_hcd*, align 8
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.xhci_hcd* %xhci, %struct.xhci_hcd** %xhci.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci.addr, metadata !6728, metadata !DIExpression()), !dbg !6729
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6730, metadata !DIExpression()), !dbg !6731
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6732
  %call = call i32 @pci_set_mwi(%struct.pci_dev* %0) #4, !dbg !6734
  %tobool = icmp ne i32 %call, 0, !dbg !6734
  br i1 %tobool, label %if.end, label %if.then, !dbg !6735

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !6736

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !6737
}

; Function Attrs: noredzone
declare dso_local %struct.pci_device_id* @pci_match_id(%struct.pci_device_id*, %struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local void @xhci_dbg_trace(%struct.xhci_hcd*, void (%struct.va_format*)*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @trace_xhci_dbg_quirks(%struct.va_format* %vaf) #2 !dbg !6738 {
entry:
  %vaf.addr = alloca %struct.va_format*, align 8
  store %struct.va_format* %vaf, %struct.va_format** %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.va_format** %vaf.addr, metadata !6760, metadata !DIExpression()), !dbg !6761
  ret void, !dbg !6761
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() #1

; Function Attrs: noredzone
declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i8*, %struct.guid_t*, i64, i64, %union.acpi_object*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_device_handle(%struct.acpi_device* %adev) #2 !dbg !6762 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !6766, metadata !DIExpression()), !dbg !6767
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6768
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !6768
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6768

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !6769
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !6770
  %2 = load i8*, i8** %handle, align 8, !dbg !6770
  br label %cond.end, !dbg !6768

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6768

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ], !dbg !6768
  ret i8* %cond, !dbg !6771
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #2 !dbg !6772 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !6774, metadata !DIExpression()), !dbg !6775
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !6776
  call void @kfree(i8* %0) #4, !dbg !6777
  ret void, !dbg !6778
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_set_mwi(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local void @pci_d3cold_disable(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pme_quirk(%struct.usb_hcd* %hcd) #2 !dbg !6779 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  %reg = alloca i8*, align 8
  %val = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6780, metadata !DIExpression()), !dbg !6781
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6784
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #4, !dbg !6785
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !6783
  call void @llvm.dbg.declare(metadata i8** %reg, metadata !6786, metadata !DIExpression()), !dbg !6787
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6788, metadata !DIExpression()), !dbg !6789
  %1 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6790
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %1, i32 0, i32 2, !dbg !6791
  %2 = load %struct.xhci_cap_regs*, %struct.xhci_cap_regs** %cap_regs, align 8, !dbg !6791
  %3 = bitcast %struct.xhci_cap_regs* %2 to i8*, !dbg !6792
  %add.ptr = getelementptr i8, i8* %3, i64 32932, !dbg !6793
  store i8* %add.ptr, i8** %reg, align 8, !dbg !6794
  %4 = load i8*, i8** %reg, align 8, !dbg !6795
  %call1 = call i32 @readl(i8* %4) #4, !dbg !6796
  store i32 %call1, i32* %val, align 4, !dbg !6797
  %5 = load i32, i32* %val, align 4, !dbg !6798
  %conv = zext i32 %5 to i64, !dbg !6798
  %or = or i64 %conv, 268435456, !dbg !6799
  %conv2 = trunc i64 %or to i32, !dbg !6798
  %6 = load i8*, i8** %reg, align 8, !dbg !6800
  call void @writel(i32 %conv2, i8* %6) #4, !dbg !6801
  %7 = load i8*, i8** %reg, align 8, !dbg !6802
  %call3 = call i32 @readl(i8* %7) #4, !dbg !6803
  ret void, !dbg !6804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_ssic_port_unused_quirk(%struct.usb_hcd* %hcd, i1 zeroext %suspend) #2 !dbg !6805 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %suspend.addr = alloca i8, align 1
  %xhci = alloca %struct.xhci_hcd*, align 8
  %val = alloca i32, align 4
  %reg = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6808, metadata !DIExpression()), !dbg !6809
  %frombool = zext i1 %suspend to i8
  store i8 %frombool, i8* %suspend.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %suspend.addr, metadata !6810, metadata !DIExpression()), !dbg !6811
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6812, metadata !DIExpression()), !dbg !6813
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6814
  %call = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %0) #4, !dbg !6815
  store %struct.xhci_hcd* %call, %struct.xhci_hcd** %xhci, align 8, !dbg !6813
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6816, metadata !DIExpression()), !dbg !6817
  call void @llvm.dbg.declare(metadata i8** %reg, metadata !6818, metadata !DIExpression()), !dbg !6819
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6820, metadata !DIExpression()), !dbg !6821
  store i32 0, i32* %i, align 4, !dbg !6822
  br label %for.cond, !dbg !6824

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6825
  %cmp = icmp slt i32 %1, 2, !dbg !6827
  br i1 %cmp, label %for.body, label %for.end, !dbg !6828

for.body:                                         ; preds = %for.cond
  %2 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6829
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %2, i32 0, i32 2, !dbg !6831
  %3 = load %struct.xhci_cap_regs*, %struct.xhci_cap_regs** %cap_regs, align 8, !dbg !6831
  %4 = bitcast %struct.xhci_cap_regs* %3 to i8*, !dbg !6832
  %add.ptr = getelementptr i8, i8* %4, i64 34828, !dbg !6833
  %5 = load i32, i32* %i, align 4, !dbg !6834
  %mul = mul i32 %5, 48, !dbg !6835
  %idx.ext = sext i32 %mul to i64, !dbg !6836
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 %idx.ext, !dbg !6836
  store i8* %add.ptr1, i8** %reg, align 8, !dbg !6837
  %6 = load i8*, i8** %reg, align 8, !dbg !6838
  %call2 = call i32 @readl(i8* %6) #4, !dbg !6839
  %and = and i32 %call2, -1073741825, !dbg !6840
  store i32 %and, i32* %val, align 4, !dbg !6841
  %7 = load i32, i32* %val, align 4, !dbg !6842
  %8 = load i8*, i8** %reg, align 8, !dbg !6843
  call void @writel(i32 %7, i8* %8) #4, !dbg !6844
  %9 = load i8*, i8** %reg, align 8, !dbg !6845
  %call3 = call i32 @readl(i8* %9) #4, !dbg !6846
  store i32 %call3, i32* %val, align 4, !dbg !6847
  %10 = load i8, i8* %suspend.addr, align 1, !dbg !6848
  %tobool = trunc i8 %10 to i1, !dbg !6848
  br i1 %tobool, label %if.then, label %if.else, !dbg !6850

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %val, align 4, !dbg !6851
  %or = or i32 %11, -2147483648, !dbg !6851
  store i32 %or, i32* %val, align 4, !dbg !6851
  br label %if.end, !dbg !6852

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %val, align 4, !dbg !6853
  %and4 = and i32 %12, 2147483647, !dbg !6853
  store i32 %and4, i32* %val, align 4, !dbg !6853
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %val, align 4, !dbg !6854
  %14 = load i8*, i8** %reg, align 8, !dbg !6855
  call void @writel(i32 %13, i8* %14) #4, !dbg !6856
  %15 = load i8*, i8** %reg, align 8, !dbg !6857
  %call5 = call i32 @readl(i8* %15) #4, !dbg !6858
  %or6 = or i32 %call5, 1073741824, !dbg !6859
  store i32 %or6, i32* %val, align 4, !dbg !6860
  %16 = load i32, i32* %val, align 4, !dbg !6861
  %17 = load i8*, i8** %reg, align 8, !dbg !6862
  call void @writel(i32 %16, i8* %17) #4, !dbg !6863
  %18 = load i8*, i8** %reg, align 8, !dbg !6864
  %call7 = call i32 @readl(i8* %18) #4, !dbg !6865
  br label %for.inc, !dbg !6866

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !6867
  %inc = add i32 %19, 1, !dbg !6867
  store i32 %inc, i32* %i, align 4, !dbg !6867
  br label %for.cond, !dbg !6868, !llvm.loop !6869

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_sparse_control_quirk(%struct.usb_hcd* %hcd) #2 !dbg !6872 {
entry:
  %hcd.addr = alloca %struct.usb_hcd*, align 8
  %reg = alloca i32, align 4
  store %struct.usb_hcd* %hcd, %struct.usb_hcd** %hcd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd.addr, metadata !6873, metadata !DIExpression()), !dbg !6874
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !6875, metadata !DIExpression()), !dbg !6876
  %0 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6877
  %regs = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %0, i32 0, i32 16, !dbg !6878
  %1 = load i8*, i8** %regs, align 8, !dbg !6878
  %add.ptr = getelementptr i8, i8* %1, i64 49452, !dbg !6879
  %call = call i32 @readl(i8* %add.ptr) #4, !dbg !6880
  store i32 %call, i32* %reg, align 4, !dbg !6881
  %2 = load i32, i32* %reg, align 4, !dbg !6882
  %conv = zext i32 %2 to i64, !dbg !6882
  %and = and i64 %conv, -131073, !dbg !6882
  %conv1 = trunc i64 %and to i32, !dbg !6882
  store i32 %conv1, i32* %reg, align 4, !dbg !6882
  %3 = load i32, i32* %reg, align 4, !dbg !6883
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd.addr, align 8, !dbg !6884
  %regs2 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 16, !dbg !6885
  %5 = load i8*, i8** %regs2, align 8, !dbg !6885
  %add.ptr3 = getelementptr i8, i8* %5, i64 49452, !dbg !6886
  call void @writel(i32 %3, i8* %add.ptr3) #4, !dbg !6887
  ret void, !dbg !6888
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_suspend(%struct.xhci_hcd*, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #2 !dbg !6889 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6896, metadata !DIExpression()), !dbg !6897
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6898, metadata !DIExpression()), !dbg !6897
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6897
  %1 = bitcast i8* %0 to i32*, !dbg !6897
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #5, !dbg !6897, !srcloc !6899
  store i32 %2, i32* %ret, align 4, !dbg !6897
  %3 = load i32, i32* %ret, align 4, !dbg !6897
  ret i32 %3, !dbg !6897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !6900 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6904, metadata !DIExpression()), !dbg !6905
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6906, metadata !DIExpression()), !dbg !6905
  %0 = load i32, i32* %val.addr, align 4, !dbg !6905
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6905
  %2 = bitcast i8* %1 to i32*, !dbg !6905
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #5, !dbg !6905, !srcloc !6907
  ret void, !dbg !6905
}

; Function Attrs: noredzone
declare dso_local i32 @reset_control_reset(%struct.reset_control*) #1

; Function Attrs: noredzone
declare dso_local void @usb_enable_intel_xhci_ports(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @xhci_resume(%struct.xhci_hcd*, i1 zeroext) #1

; Function Attrs: noredzone
declare dso_local void @xhci_shutdown(%struct.usb_hcd*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xhci_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !6908 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %retval1 = alloca i32, align 4
  %xhci = alloca %struct.xhci_hcd*, align 8
  %hcd = alloca %struct.usb_hcd*, align 8
  %driver_data = alloca %struct.xhci_driver_data*, align 8
  %reset = alloca %struct.reset_control*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !6909, metadata !DIExpression()), !dbg !6910
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !6911, metadata !DIExpression()), !dbg !6912
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !6913, metadata !DIExpression()), !dbg !6914
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !6915, metadata !DIExpression()), !dbg !6916
  call void @llvm.dbg.declare(metadata %struct.usb_hcd** %hcd, metadata !6917, metadata !DIExpression()), !dbg !6918
  call void @llvm.dbg.declare(metadata %struct.xhci_driver_data** %driver_data, metadata !6919, metadata !DIExpression()), !dbg !6920
  call void @llvm.dbg.declare(metadata %struct.reset_control** %reset, metadata !6921, metadata !DIExpression()), !dbg !6922
  %0 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6923
  %driver_data2 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %0, i32 0, i32 6, !dbg !6924
  %1 = load i64, i64* %driver_data2, align 8, !dbg !6924
  %2 = inttoptr i64 %1 to %struct.xhci_driver_data*, !dbg !6925
  store %struct.xhci_driver_data* %2, %struct.xhci_driver_data** %driver_data, align 8, !dbg !6926
  %3 = load %struct.xhci_driver_data*, %struct.xhci_driver_data** %driver_data, align 8, !dbg !6927
  %tobool = icmp ne %struct.xhci_driver_data* %3, null, !dbg !6927
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !6929

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.xhci_driver_data*, %struct.xhci_driver_data** %driver_data, align 8, !dbg !6930
  %quirks = getelementptr inbounds %struct.xhci_driver_data, %struct.xhci_driver_data* %4, i32 0, i32 0, !dbg !6931
  %5 = load i64, i64* %quirks, align 8, !dbg !6931
  %and = and i64 %5, 68719476736, !dbg !6932
  %tobool3 = icmp ne i64 %and, 0, !dbg !6932
  br i1 %tobool3, label %if.then, label %if.end6, !dbg !6933

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6934
  %7 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6936
  %call = call i32 @renesas_xhci_check_request_fw(%struct.pci_dev* %6, %struct.pci_device_id* %7) #4, !dbg !6937
  store i32 %call, i32* %retval1, align 4, !dbg !6938
  %8 = load i32, i32* %retval1, align 4, !dbg !6939
  %tobool4 = icmp ne i32 %8, 0, !dbg !6939
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !6941

if.then5:                                         ; preds = %if.then
  %9 = load i32, i32* %retval1, align 4, !dbg !6942
  store i32 %9, i32* %retval, align 4, !dbg !6943
  br label %return, !dbg !6943

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !6944

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6945
  %dev7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !6946
  %call8 = call %struct.reset_control* @devm_reset_control_get_optional_exclusive(%struct.device* %dev7, i8* null) #4, !dbg !6947
  store %struct.reset_control* %call8, %struct.reset_control** %reset, align 8, !dbg !6948
  %11 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6949
  %12 = bitcast %struct.reset_control* %11 to i8*, !dbg !6949
  %call9 = call zeroext i1 @IS_ERR(i8* %12) #4, !dbg !6951
  br i1 %call9, label %if.then10, label %if.end12, !dbg !6952

if.then10:                                        ; preds = %if.end6
  %13 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6953
  %14 = bitcast %struct.reset_control* %13 to i8*, !dbg !6953
  %call11 = call i64 @PTR_ERR(i8* %14) #4, !dbg !6954
  %conv = trunc i64 %call11 to i32, !dbg !6954
  store i32 %conv, i32* %retval, align 4, !dbg !6955
  br label %return, !dbg !6955

if.end12:                                         ; preds = %if.end6
  %15 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6956
  %call13 = call i32 @reset_control_reset(%struct.reset_control* %15) #4, !dbg !6957
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6958
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 41, !dbg !6959
  call void @pm_runtime_get_noresume(%struct.device* %dev14) #4, !dbg !6960
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6961
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %id.addr, align 8, !dbg !6962
  %call15 = call i32 @usb_hcd_pci_probe(%struct.pci_dev* %17, %struct.pci_device_id* %18, %struct.hc_driver* @xhci_pci_hc_driver) #4, !dbg !6963
  store i32 %call15, i32* %retval1, align 4, !dbg !6964
  %19 = load i32, i32* %retval1, align 4, !dbg !6965
  %tobool16 = icmp ne i32 %19, 0, !dbg !6965
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6967

if.then17:                                        ; preds = %if.end12
  br label %put_runtime_pm, !dbg !6968

if.end18:                                         ; preds = %if.end12
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6969
  %dev19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !6970
  %call20 = call i8* @dev_get_drvdata(%struct.device* %dev19) #4, !dbg !6971
  %21 = bitcast i8* %call20 to %struct.usb_hcd*, !dbg !6971
  store %struct.usb_hcd* %21, %struct.usb_hcd** %hcd, align 8, !dbg !6972
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6973
  %call21 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %22) #4, !dbg !6974
  store %struct.xhci_hcd* %call21, %struct.xhci_hcd** %xhci, align 8, !dbg !6975
  %23 = load %struct.reset_control*, %struct.reset_control** %reset, align 8, !dbg !6976
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6977
  %reset22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %24, i32 0, i32 26, !dbg !6978
  store %struct.reset_control* %23, %struct.reset_control** %reset22, align 8, !dbg !6979
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6980
  %dev23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 41, !dbg !6981
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !6982
  %call24 = call i8* @pci_name(%struct.pci_dev* %26) #4, !dbg !6983
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %hcd, align 8, !dbg !6984
  %call25 = call %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver* @xhci_pci_hc_driver, %struct.device* %dev23, i8* %call24, %struct.usb_hcd* %27) #4, !dbg !6985
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6986
  %shared_hcd = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 1, !dbg !6987
  store %struct.usb_hcd* %call25, %struct.usb_hcd** %shared_hcd, align 8, !dbg !6988
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6989
  %shared_hcd26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %29, i32 0, i32 1, !dbg !6991
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd26, align 8, !dbg !6991
  %tobool27 = icmp ne %struct.usb_hcd* %30, null, !dbg !6989
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6992

if.then28:                                        ; preds = %if.end18
  store i32 -12, i32* %retval1, align 4, !dbg !6993
  br label %dealloc_usb2_hcd, !dbg !6995

if.end29:                                         ; preds = %if.end18
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !6996
  %call30 = call i32 @xhci_ext_cap_init(%struct.xhci_hcd* %31) #4, !dbg !6997
  store i32 %call30, i32* %retval1, align 4, !dbg !6998
  %32 = load i32, i32* %retval1, align 4, !dbg !6999
  %tobool31 = icmp ne i32 %32, 0, !dbg !6999
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !7001

if.then32:                                        ; preds = %if.end29
  br label %put_usb3_hcd, !dbg !7002

if.end33:                                         ; preds = %if.end29
  %33 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7003
  %shared_hcd34 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %33, i32 0, i32 1, !dbg !7004
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd34, align 8, !dbg !7004
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7005
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 43, !dbg !7006
  %36 = load i32, i32* %irq, align 4, !dbg !7006
  %call35 = call i32 @usb_add_hcd(%struct.usb_hcd* %34, i32 %36, i64 128) #4, !dbg !7007
  store i32 %call35, i32* %retval1, align 4, !dbg !7008
  %37 = load i32, i32* %retval1, align 4, !dbg !7009
  %tobool36 = icmp ne i32 %37, 0, !dbg !7009
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !7011

if.then37:                                        ; preds = %if.end33
  br label %put_usb3_hcd, !dbg !7012

if.end38:                                         ; preds = %if.end33
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7013
  %quirks39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 50, !dbg !7015
  %39 = load i64, i64* %quirks39, align 8, !dbg !7015
  %and40 = and i64 %39, 524288, !dbg !7016
  %tobool41 = icmp ne i64 %and40, 0, !dbg !7016
  br i1 %tobool41, label %if.end47, label %land.lhs.true42, !dbg !7017

land.lhs.true42:                                  ; preds = %if.end38
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7018
  %hcc_params = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %40, i32 0, i32 10, !dbg !7018
  %41 = load i32, i32* %hcc_params, align 4, !dbg !7018
  %shr = lshr i32 %41, 12, !dbg !7018
  %and43 = and i32 %shr, 15, !dbg !7018
  %add = add i32 %and43, 1, !dbg !7018
  %shl = shl i32 1, %add, !dbg !7018
  %cmp = icmp sge i32 %shl, 4, !dbg !7019
  br i1 %cmp, label %if.then45, label %if.end47, !dbg !7020

if.then45:                                        ; preds = %land.lhs.true42
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7021
  %shared_hcd46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 1, !dbg !7022
  %43 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd46, align 8, !dbg !7022
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %43, i32 0, i32 14, !dbg !7023
  %bf.load = load i16, i16* %can_do_streams, align 4, !dbg !7024
  %bf.clear = and i16 %bf.load, -513, !dbg !7024
  %bf.set = or i16 %bf.clear, 512, !dbg !7024
  store i16 %bf.set, i16* %can_do_streams, align 4, !dbg !7024
  br label %if.end47, !dbg !7021

if.end47:                                         ; preds = %if.then45, %land.lhs.true42, %if.end38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7025
  %dev48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 41, !dbg !7026
  call void @pm_runtime_put_noidle(%struct.device* %dev48) #4, !dbg !7027
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7028
  %quirks49 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 50, !dbg !7030
  %46 = load i64, i64* %quirks49, align 8, !dbg !7030
  %and50 = and i64 %46, 8589934592, !dbg !7031
  %tobool51 = icmp ne i64 %and50, 0, !dbg !7031
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !7032

if.then52:                                        ; preds = %if.end47
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7033
  %dev53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 41, !dbg !7034
  call void @pm_runtime_allow(%struct.device* %dev53) #4, !dbg !7035
  br label %if.end54, !dbg !7035

if.end54:                                         ; preds = %if.then52, %if.end47
  store i32 0, i32* %retval, align 4, !dbg !7036
  br label %return, !dbg !7036

put_usb3_hcd:                                     ; preds = %if.then37, %if.then32
  call void @llvm.dbg.label(metadata !7037), !dbg !7038
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7039
  %shared_hcd55 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %48, i32 0, i32 1, !dbg !7040
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd55, align 8, !dbg !7040
  call void @usb_put_hcd(%struct.usb_hcd* %49) #4, !dbg !7041
  br label %dealloc_usb2_hcd, !dbg !7041

dealloc_usb2_hcd:                                 ; preds = %put_usb3_hcd, %if.then28
  call void @llvm.dbg.label(metadata !7042), !dbg !7043
  %50 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7044
  call void @usb_hcd_pci_remove(%struct.pci_dev* %50) #4, !dbg !7045
  br label %put_runtime_pm, !dbg !7045

put_runtime_pm:                                   ; preds = %dealloc_usb2_hcd, %if.then17
  call void @llvm.dbg.label(metadata !7046), !dbg !7047
  %51 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7048
  %dev56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 41, !dbg !7049
  call void @pm_runtime_put_noidle(%struct.device* %dev56) #4, !dbg !7050
  %52 = load i32, i32* %retval1, align 4, !dbg !7051
  store i32 %52, i32* %retval, align 4, !dbg !7052
  br label %return, !dbg !7052

return:                                           ; preds = %put_runtime_pm, %if.end54, %if.then10, %if.then5
  %53 = load i32, i32* %retval, align 4, !dbg !7053
  ret i32 %53, !dbg !7053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xhci_pci_remove(%struct.pci_dev* %dev) #2 !dbg !7054 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %xhci = alloca %struct.xhci_hcd*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !7055, metadata !DIExpression()), !dbg !7056
  call void @llvm.dbg.declare(metadata %struct.xhci_hcd** %xhci, metadata !7057, metadata !DIExpression()), !dbg !7058
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7059
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #4, !dbg !7060
  %1 = bitcast i8* %call to %struct.usb_hcd*, !dbg !7060
  %call1 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %1) #4, !dbg !7061
  store %struct.xhci_hcd* %call1, %struct.xhci_hcd** %xhci, align 8, !dbg !7062
  %2 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7063
  %quirks = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %2, i32 0, i32 50, !dbg !7065
  %3 = load i64, i64* %quirks, align 8, !dbg !7065
  %and = and i64 %3, 68719476736, !dbg !7066
  %tobool = icmp ne i64 %and, 0, !dbg !7066
  br i1 %tobool, label %if.then, label %if.end, !dbg !7067

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7068
  call void @renesas_xhci_pci_exit(%struct.pci_dev* %4) #4, !dbg !7069
  br label %if.end, !dbg !7069

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7070
  %xhc_state = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %5, i32 0, i32 47, !dbg !7071
  %6 = load i32, i32* %xhc_state, align 8, !dbg !7072
  %or = or i32 %6, 4, !dbg !7072
  store i32 %or, i32* %xhc_state, align 8, !dbg !7072
  %7 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7073
  %quirks2 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %7, i32 0, i32 50, !dbg !7075
  %8 = load i64, i64* %quirks2, align 8, !dbg !7075
  %and3 = and i64 %8, 8589934592, !dbg !7076
  %tobool4 = icmp ne i64 %and3, 0, !dbg !7076
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !7077

if.then5:                                         ; preds = %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7078
  %dev6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !7079
  call void @pm_runtime_forbid(%struct.device* %dev6) #4, !dbg !7080
  br label %if.end7, !dbg !7080

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7081
  %shared_hcd = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %10, i32 0, i32 1, !dbg !7083
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd, align 8, !dbg !7083
  %tobool8 = icmp ne %struct.usb_hcd* %11, null, !dbg !7081
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !7084

if.then9:                                         ; preds = %if.end7
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7085
  %shared_hcd10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 1, !dbg !7087
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd10, align 8, !dbg !7087
  call void @usb_remove_hcd(%struct.usb_hcd* %13) #4, !dbg !7088
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7089
  %shared_hcd11 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 1, !dbg !7090
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %shared_hcd11, align 8, !dbg !7090
  call void @usb_put_hcd(%struct.usb_hcd* %15) #4, !dbg !7091
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7092
  %shared_hcd12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %16, i32 0, i32 1, !dbg !7093
  store %struct.usb_hcd* null, %struct.usb_hcd** %shared_hcd12, align 8, !dbg !7094
  br label %if.end13, !dbg !7095

if.end13:                                         ; preds = %if.then9, %if.end7
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %xhci, align 8, !dbg !7096
  %quirks14 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %17, i32 0, i32 50, !dbg !7098
  %18 = load i64, i64* %quirks14, align 8, !dbg !7098
  %and15 = and i64 %18, 262144, !dbg !7099
  %tobool16 = icmp ne i64 %and15, 0, !dbg !7099
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !7100

if.then17:                                        ; preds = %if.end13
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7101
  %call18 = call i32 @pci_set_power_state(%struct.pci_dev* %19, i32 3) #4, !dbg !7102
  br label %if.end19, !dbg !7102

if.end19:                                         ; preds = %if.then17, %if.end13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !7103
  call void @usb_hcd_pci_remove(%struct.pci_dev* %20) #4, !dbg !7104
  ret void, !dbg !7105
}

; Function Attrs: noredzone
declare dso_local void @usb_hcd_pci_shutdown(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @renesas_xhci_check_request_fw(%struct.pci_dev*, %struct.pci_device_id*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.reset_control* @devm_reset_control_get_optional_exclusive(%struct.device* %dev, i8* %id) #2 !dbg !7106 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7109, metadata !DIExpression()), !dbg !7110
  store i8* %id, i8** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %id.addr, metadata !7111, metadata !DIExpression()), !dbg !7112
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7113
  %1 = load i8*, i8** %id.addr, align 8, !dbg !7114
  %call = call %struct.reset_control* @__devm_reset_control_get(%struct.device* %0, i8* %1, i32 0, i1 zeroext false, i1 zeroext true, i1 zeroext true) #4, !dbg !7115
  ret %struct.reset_control* %call, !dbg !7116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !7117 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7121, metadata !DIExpression()), !dbg !7122
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !7123
  %1 = ptrtoint i8* %0 to i64, !dbg !7123
  %2 = inttoptr i64 %1 to i8*, !dbg !7123
  %3 = ptrtoint i8* %2 to i64, !dbg !7123
  %cmp = icmp uge i64 %3, -4095, !dbg !7123
  %lnot = xor i1 %cmp, true, !dbg !7123
  %lnot1 = xor i1 %lnot, true, !dbg !7123
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7123
  %conv = sext i32 %lnot.ext to i64, !dbg !7123
  %tobool = icmp ne i64 %conv, 0, !dbg !7123
  ret i1 %tobool, !dbg !7124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !7125 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7128, metadata !DIExpression()), !dbg !7129
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !7130
  %1 = ptrtoint i8* %0 to i64, !dbg !7131
  ret i64 %1, !dbg !7132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #2 !dbg !7133 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !7135, metadata !DIExpression()), !dbg !7141
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !7146, metadata !DIExpression()), !dbg !7151
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !7153, metadata !DIExpression()), !dbg !7154
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7155, metadata !DIExpression()), !dbg !7156
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7157, metadata !DIExpression()), !dbg !7158
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7159
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7160
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !7161
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7162
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !7162
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7163
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !7164
  %conv.i.i = trunc i64 %4 to i32, !dbg !7164
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #6, !dbg !7165
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7166
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !7166
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #6, !dbg !7166
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7167
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !7168
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !7169
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #5, !dbg !7170, !srcloc !7171
  ret void, !dbg !7172
}

; Function Attrs: noredzone
declare dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev*, %struct.pci_device_id*, %struct.hc_driver*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !7173 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7176, metadata !DIExpression()), !dbg !7177
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7178
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !7179
  %1 = load i8*, i8** %driver_data, align 8, !dbg !7179
  ret i8* %1, !dbg !7180
}

; Function Attrs: noredzone
declare dso_local %struct.usb_hcd* @usb_create_shared_hcd(%struct.hc_driver*, %struct.device*, i8*, %struct.usb_hcd*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #2 !dbg !7181 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !7186, metadata !DIExpression()), !dbg !7187
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !7188
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !7189
  %call = call i8* @dev_name(%struct.device* %dev) #4, !dbg !7190
  ret i8* %call, !dbg !7191
}

; Function Attrs: noredzone
declare dso_local i32 @xhci_ext_cap_init(%struct.xhci_hcd*) #1

; Function Attrs: noredzone
declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #2 !dbg !7192 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !7193, metadata !DIExpression()), !dbg !7197
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !7210, metadata !DIExpression()), !dbg !7211
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !7212, metadata !DIExpression()), !dbg !7213
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !7214, metadata !DIExpression()), !dbg !7216
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !7217, metadata !DIExpression()), !dbg !7216
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !7218, metadata !DIExpression()), !dbg !7216
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !7219, metadata !DIExpression()), !dbg !7216
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !7220, metadata !DIExpression()), !dbg !7216
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !7221, metadata !DIExpression()), !dbg !7227
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !7229, metadata !DIExpression()), !dbg !7230
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !7231, metadata !DIExpression()), !dbg !7232
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !7233, metadata !DIExpression()), !dbg !7234
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !7235, metadata !DIExpression()), !dbg !7236
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !7237, metadata !DIExpression()), !dbg !7238
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !7239, metadata !DIExpression()), !dbg !7240
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !7241, metadata !DIExpression()), !dbg !7242
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !7146, metadata !DIExpression()), !dbg !7243
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !7153, metadata !DIExpression()), !dbg !7245
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !7246, metadata !DIExpression()), !dbg !7247
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !7248, metadata !DIExpression()), !dbg !7249
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !7250, metadata !DIExpression()), !dbg !7251
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7252, metadata !DIExpression()), !dbg !7253
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7254
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !7255
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !7256
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7257
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !7257
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7258
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !7259
  %conv.i.i = trunc i64 %4 to i32, !dbg !7259
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #6, !dbg !7260
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !7261
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !7261
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #6, !dbg !7261
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !7262
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !7263
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !7264
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !7265
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !7266
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !7267
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !7268
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !7269
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !7269
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !7269
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !7236
  br label %do.body.i.i.i, !dbg !7270

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !7271
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !7271
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !7271
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !7271
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !7271
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !7271
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !7274

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !7275

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !7276
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !7277
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !7278
  %add.i.i.i = add i32 %19, %20, !dbg !7279
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !7216
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !7216
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !7216
  %23 = load i32, i32* %22, align 4, !dbg !7216
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !7216
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !7216
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !7216
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !7216
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !7216
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !7216
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !7216
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !7216
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !7216
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #5, !dbg !7216, !srcloc !7280
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !7216
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !7216
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !7216
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !7216
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !7281
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !7281
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !7281
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !7281
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !7281
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !7281
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !7216

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !7281
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !7281
  store i32 %31, i32* %32, align 4, !dbg !7281
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !7281

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !7216
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !7216
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !7216
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !7216
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !7216
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !7281
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !7216
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !7283
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !7284
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !7285, !llvm.loop !7286

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !7288
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !7289
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !7290
  ret void, !dbg !7291
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_allow(%struct.device*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @usb_put_hcd(%struct.usb_hcd*) #1

; Function Attrs: noredzone
declare dso_local void @usb_hcd_pci_remove(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local %struct.reset_control* @__devm_reset_control_get(%struct.device*, i8*, i32, i1 zeroext, i1 zeroext, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !7292 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !7296, metadata !DIExpression()), !dbg !7297
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !7298, metadata !DIExpression()), !dbg !7299
  ret i1 true, !dbg !7300
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !7301 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !7305, metadata !DIExpression()), !dbg !7306
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !7307, metadata !DIExpression()), !dbg !7308
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  ret void, !dbg !7311
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !7312 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !7315, metadata !DIExpression()), !dbg !7316
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7317
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !7319
  %1 = load i8*, i8** %init_name, align 8, !dbg !7319
  %tobool = icmp ne i8* %1, null, !dbg !7317
  br i1 %tobool, label %if.then, label %if.end, !dbg !7320

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7321
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !7322
  %3 = load i8*, i8** %init_name1, align 8, !dbg !7322
  store i8* %3, i8** %retval, align 8, !dbg !7323
  br label %return, !dbg !7323

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !7324
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !7325
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #4, !dbg !7326
  store i8* %call, i8** %retval, align 8, !dbg !7327
  br label %return, !dbg !7327

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !7328
  ret i8* %5, !dbg !7328
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !7329 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !7334, metadata !DIExpression()), !dbg !7335
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !7336
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !7337
  %1 = load i8*, i8** %name, align 8, !dbg !7337
  ret i8* %1, !dbg !7338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #2 !dbg !7339 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !7342, metadata !DIExpression()), !dbg !7343
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !7344
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !7345
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #4, !dbg !7346
  ret i8* %call, !dbg !7347
}

; Function Attrs: noredzone
declare dso_local void @renesas_xhci_pci_exit(%struct.pci_dev*) #1

; Function Attrs: noredzone
declare dso_local void @pm_runtime_forbid(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local void @usb_remove_hcd(%struct.usb_hcd*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5869, !5870, !5871, !5872}
!llvm.ident = !{!5873}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_firmware256", scope: !2, file: !3, line: 617, type: !5866, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !173, globals: !5815, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/host/xhci-pci.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !25, !30, !36, !43, !49, !58, !66, !72, !78, !85, !93, !99, !113, !125, !134, !141, !146, !152, !158, !168}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !20, line: 546, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !26, line: 65, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !31, line: 16, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !37, line: 59, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42}
!39 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !44, line: 54, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !50, line: 296, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!56 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!57 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !59, line: 9, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!64 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!65 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !67, line: 26, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !73, line: 44, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !79, line: 343, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !86, line: 524, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !86, line: 502, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !100, line: 76, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!102 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!105 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!106 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!107 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!108 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!109 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!110 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!111 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!112 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !114, line: 1156, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124}
!116 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!120 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!121 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!123 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !114, line: 1146, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133}
!127 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!129 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!130 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!131 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !135, line: 96, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !135, line: 476, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !147, line: 75, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !114, line: 1181, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!157 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xhci_ring_type", file: !159, line: 1562, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "drivers/usb/host/xhci.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "TYPE_CTRL", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "TYPE_ISOC", value: 1, isUnsigned: true)
!163 = !DIEnumerator(name: "TYPE_BULK", value: 2, isUnsigned: true)
!164 = !DIEnumerator(name: "TYPE_INTR", value: 3, isUnsigned: true)
!165 = !DIEnumerator(name: "TYPE_STREAM", value: 4, isUnsigned: true)
!166 = !DIEnumerator(name: "TYPE_COMMAND", value: 5, isUnsigned: true)
!167 = !DIEnumerator(name: "TYPE_EVENT", value: 6, isUnsigned: true)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 10, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!170 = !{!171, !172}
!171 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!173 = !{!174, !177, !178, !4564, !5525, !5531, !5808, !4465, !219, !371, !5810, !757, !5813}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !176, line: 189, flags: DIFlagFwdDecl)
!176 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !180, line: 309, size: 19264, elements: !181)
!180 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!181 = !{!182, !189, !4367, !4368, !4369, !4370, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4462, !4463, !4464, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4538, !4539, !4540, !4541, !4542, !4543, !4545, !4546, !4547, !4550, !4557, !4558, !4559, !4560, !4561, !4562, !4563}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !179, file: !180, line: 310, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !184, line: 178, size: 128, elements: !185)
!184 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !184, line: 179, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !183, file: !184, line: 179, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !179, file: !180, line: 311, baseType: !190, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !180, line: 605, size: 8064, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !226, !227, !228, !256, !259, !260, !264, !266, !267, !268, !269, !273, !275, !277, !4363, !4364, !4365, !4366}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !180, line: 606, baseType: !183, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !180, line: 607, baseType: !190, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !191, file: !180, line: 608, baseType: !183, size: 128, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !191, file: !180, line: 609, baseType: !183, size: 128, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !191, file: !180, line: 610, baseType: !178, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !191, file: !180, line: 611, baseType: !183, size: 128, offset: 512)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !191, file: !180, line: 613, baseType: !200, size: 256, offset: 640)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !224)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !203, line: 20, size: 512, elements: !204)
!203 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!204 = !{!205, !213, !214, !218, !220, !221, !222, !223}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !202, file: !203, line: 21, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !184, line: 158, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !184, line: 153, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !209, line: 23, baseType: !210)
!209 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !211, line: 31, baseType: !212)
!211 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!212 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !202, file: !203, line: 22, baseType: !206, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !203, line: 23, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !203, line: 24, baseType: !219, size: 64, offset: 192)
!219 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !202, file: !203, line: 25, baseType: !219, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !202, file: !203, line: 26, baseType: !201, size: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !202, file: !203, line: 26, baseType: !201, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !202, file: !203, line: 26, baseType: !201, size: 64, offset: 448)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !191, file: !180, line: 614, baseType: !183, size: 128, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !191, file: !180, line: 615, baseType: !202, size: 512, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !191, file: !180, line: 617, baseType: !229, size: 64, offset: 1536)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !180, line: 731, size: 320, elements: !231)
!231 = !{!232, !237, !241, !245, !252}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !230, file: !180, line: 732, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !190}
!236 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !230, file: !180, line: 733, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !190}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !230, file: !180, line: 734, baseType: !242, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!177, !190, !7, !236}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !230, file: !180, line: 735, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!236, !190, !7, !236, !236, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !209, line: 21, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !211, line: 27, baseType: !7)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !230, file: !180, line: 736, baseType: !253, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!236, !190, !7, !236, !236, !250}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !191, file: !180, line: 618, baseType: !257, size: 64, offset: 1600)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !180, line: 537, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !191, file: !180, line: 619, baseType: !177, size: 64, offset: 1664)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !191, file: !180, line: 620, baseType: !261, size: 64, offset: 1728)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !263, line: 123, flags: DIFlagFwdDecl)
!263 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !191, file: !180, line: 622, baseType: !265, size: 8, offset: 1792)
!265 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !191, file: !180, line: 623, baseType: !265, size: 8, offset: 1800)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !191, file: !180, line: 624, baseType: !265, size: 8, offset: 1808)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !191, file: !180, line: 625, baseType: !265, size: 8, offset: 1816)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !180, line: 630, baseType: !270, size: 384, offset: 1824)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !191, file: !180, line: 632, baseType: !274, size: 16, offset: 2208)
!274 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !191, file: !180, line: 633, baseType: !276, size: 16, offset: 2224)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !180, line: 237, baseType: !274)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !191, file: !180, line: 634, baseType: !278, size: 64, offset: 2240)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !79, line: 461, size: 5568, elements: !280)
!280 = !{!281, !3817, !3818, !3821, !3822, !3873, !3964, !3965, !3966, !3967, !3968, !3977, !4082, !4095, !4290, !4291, !4295, !4297, !4298, !4299, !4303, !4309, !4310, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4351, !4352, !4353, !4356, !4359, !4360, !4361, !4362}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !279, file: !79, line: 462, baseType: !282, size: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !283, line: 64, size: 512, elements: !284)
!283 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !287, !289, !349, !3684, !3811, !3812, !3813, !3814, !3815, !3816}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !283, line: 65, baseType: !215, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 66, baseType: !183, size: 128, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !282, file: !283, line: 67, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !282, file: !283, line: 68, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !283, line: 192, size: 704, elements: !292)
!292 = !{!293, !294, !310, !311}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !291, file: !283, line: 193, baseType: !183, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !291, file: !283, line: 194, baseType: !295, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !296, line: 83, baseType: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !296, line: 71, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !296, line: 72, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !296, line: 72, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !300, file: !296, line: 73, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !296, line: 20, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !303, file: !296, line: 21, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !307, line: 25, baseType: !308)
!307 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 25, elements: !309)
!309 = !{}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !283, line: 195, baseType: !282, size: 512, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !291, file: !283, line: 196, baseType: !312, size: 64, offset: 640)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !283, line: 156, size: 192, elements: !315)
!315 = !{!316, !321, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !314, file: !283, line: 157, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!236, !290, !288}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !283, line: 158, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!215, !290, !288}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !314, file: !283, line: 159, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!236, !290, !288, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !283, line: 148, size: 20736, elements: !333)
!333 = !{!334, !339, !343, !344, !348}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !332, file: !283, line: 149, baseType: !335, size: 192)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 192, elements: !337)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!337 = !{!338}
!338 = !DISubrange(count: 3)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !332, file: !283, line: 150, baseType: !340, size: 4096, offset: 192)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 4096, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !332, file: !283, line: 151, baseType: !236, size: 32, offset: 4288)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !332, file: !283, line: 152, baseType: !345, size: 16384, offset: 4320)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 16384, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 2048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !332, file: !283, line: 153, baseType: !236, size: 32, offset: 20704)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !282, file: !283, line: 69, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !283, line: 138, size: 448, elements: !352)
!352 = !{!353, !357, !385, !387, !3646, !3674, !3678}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !351, file: !283, line: 139, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !288}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !351, file: !283, line: 140, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !361, line: 230, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !378}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !360, file: !361, line: 231, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !288, !372, !336}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !184, line: 60, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !369, line: 73, baseType: !370)
!369 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !369, line: 15, baseType: !371)
!371 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !361, line: 30, size: 128, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !373, file: !361, line: 31, baseType: !215, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !373, file: !361, line: 32, baseType: !377, size: 16, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !184, line: 19, baseType: !274)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !360, file: !361, line: 232, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!367, !288, !372, !215, !382}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 55, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !369, line: 72, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !369, line: 16, baseType: !219)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !351, file: !283, line: 141, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !351, file: !283, line: 142, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !361, line: 84, size: 320, elements: !392)
!392 = !{!393, !394, !398, !3643, !3644}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !361, line: 85, baseType: !215, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !391, file: !361, line: 86, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!377, !288, !372, !236}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !391, file: !361, line: 88, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!377, !288, !402, !236}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !361, line: 168, size: 448, elements: !404)
!404 = !{!405, !406, !407, !408, !3638, !3639}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !403, file: !361, line: 169, baseType: !373, size: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !403, file: !361, line: 170, baseType: !382, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !403, file: !361, line: 171, baseType: !177, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !403, file: !361, line: 172, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!367, !412, !288, !402, !336, !583, !382}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !50, line: 916, size: 1856, align: 32, elements: !414)
!414 = !{!415, !433, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3621, !3622, !3631, !3632, !3633, !3634, !3635, !3636, !3637}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !413, file: !50, line: 920, baseType: !416, size: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !50, line: 917, size: 128, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !416, file: !50, line: 918, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !420, line: 58, size: 64, elements: !421)
!420 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !420, line: 59, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !416, file: !50, line: 919, baseType: !425, size: 128, align: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !184, line: 216, size: 128, align: 64, elements: !426)
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !184, line: 217, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !425, file: !184, line: 218, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !428}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !413, file: !50, line: 921, baseType: !434, size: 128, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !435, line: 8, size: 128, elements: !436)
!435 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !434, file: !435, line: 9, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !440, line: 18, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !434, file: !435, line: 10, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !440, line: 89, size: 1536, elements: !444)
!444 = !{!445, !446, !456, !464, !465, !480, !3571, !3573, !3585, !3586, !3587, !3588, !3589, !3595, !3596, !3597}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !443, file: !440, line: 91, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !443, file: !440, line: 92, baseType: !447, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !448, line: 277, baseType: !449)
!448 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !448, line: 277, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !449, file: !448, line: 277, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !448, line: 70, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !448, line: 65, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !453, file: !448, line: 66, baseType: !7, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !440, line: 93, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !458, line: 38, size: 128, elements: !459)
!458 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !458, line: 39, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !457, file: !458, line: 39, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !443, file: !440, line: 94, baseType: !442, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !443, file: !440, line: 95, baseType: !466, size: 128, offset: 256)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !440, line: 47, size: 128, elements: !467)
!467 = !{!468, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !440, line: 48, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !440, line: 48, size: 64, elements: !470)
!470 = !{!471, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, scope: !469, file: !440, line: 49, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !469, file: !440, line: 49, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !472, file: !440, line: 50, baseType: !250, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !472, file: !440, line: 50, baseType: !250, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !469, file: !440, line: 52, baseType: !208, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !466, file: !440, line: 54, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !443, file: !440, line: 96, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !50, line: 610, size: 4224, elements: !483)
!483 = !{!484, !485, !486, !494, !501, !502, !650, !3506, !3507, !3508, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3549, !3557, !3558, !3559, !3567, !3568, !3569, !3570}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !482, file: !50, line: 611, baseType: !377, size: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !482, file: !50, line: 612, baseType: !274, size: 16, offset: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !482, file: !50, line: 613, baseType: !487, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !488, line: 23, baseType: !489)
!488 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 21, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !489, file: !488, line: 22, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 32, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !369, line: 49, baseType: !7)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !482, file: !50, line: 614, baseType: !495, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !488, line: 28, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 26, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !496, file: !488, line: 27, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 33, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !369, line: 50, baseType: !7)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !482, file: !50, line: 615, baseType: !7, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !482, file: !50, line: 622, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !50, line: 1864, size: 1536, align: 512, elements: !506)
!506 = !{!507, !511, !524, !528, !534, !538, !544, !548, !552, !556, !560, !561, !567, !571, !597, !626, !630, !636, !641, !645, !646}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !505, file: !50, line: 1865, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!442, !481, !442, !7}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !505, file: !50, line: 1866, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!215, !442, !481, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !517, line: 10, size: 128, elements: !518)
!517 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !516, file: !517, line: 11, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !177}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !516, file: !517, line: 12, baseType: !177, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !505, file: !50, line: 1867, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!236, !481, !236}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !505, file: !50, line: 1868, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !481, !236}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !50, line: 581, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !505, file: !50, line: 1870, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!236, !442, !336, !236}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !505, file: !50, line: 1872, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!236, !481, !442, !377, !542}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !184, line: 30, baseType: !543)
!543 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !505, file: !50, line: 1873, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!236, !442, !481, !442}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !505, file: !50, line: 1874, baseType: !549, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!236, !481, !442}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !505, file: !50, line: 1875, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!236, !481, !442, !215}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !505, file: !50, line: 1876, baseType: !557, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!236, !481, !442, !377}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !505, file: !50, line: 1877, baseType: !549, size: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !505, file: !50, line: 1878, baseType: !562, size: 64, offset: 704)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!236, !481, !442, !377, !565}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !184, line: 16, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !184, line: 13, baseType: !250)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !505, file: !50, line: 1879, baseType: !568, size: 64, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!236, !481, !442, !481, !442, !7}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !505, file: !50, line: 1881, baseType: !572, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!236, !442, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !50, line: 219, size: 640, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !586, !594, !595, !596}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !576, file: !50, line: 220, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !576, file: !50, line: 221, baseType: !377, size: 16, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !576, file: !50, line: 222, baseType: !487, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !576, file: !50, line: 223, baseType: !495, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !576, file: !50, line: 224, baseType: !583, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !184, line: 46, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !369, line: 88, baseType: !585)
!585 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !576, file: !50, line: 225, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !588, line: 13, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !587, file: !588, line: 14, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !588, line: 8, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !211, line: 30, baseType: !585)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !587, file: !588, line: 15, baseType: !371, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !576, file: !50, line: 226, baseType: !587, size: 128, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !576, file: !50, line: 227, baseType: !587, size: 128, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !576, file: !50, line: 234, baseType: !412, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !505, file: !50, line: 1882, baseType: !598, size: 64, offset: 896)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!236, !601, !603, !250, !7}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !605, line: 22, size: 1152, elements: !606)
!605 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !608, !609, !610, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !604, file: !605, line: 23, baseType: !250, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !604, file: !605, line: 24, baseType: !377, size: 16, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !604, file: !605, line: 25, baseType: !7, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !604, file: !605, line: 26, baseType: !611, size: 32, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !184, line: 104, baseType: !250)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !604, file: !605, line: 27, baseType: !208, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !604, file: !605, line: 28, baseType: !208, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !604, file: !605, line: 37, baseType: !208, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !604, file: !605, line: 38, baseType: !565, size: 32, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !604, file: !605, line: 39, baseType: !565, size: 32, offset: 352)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !604, file: !605, line: 40, baseType: !487, size: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !604, file: !605, line: 41, baseType: !495, size: 32, offset: 416)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !604, file: !605, line: 42, baseType: !583, size: 64, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !604, file: !605, line: 43, baseType: !587, size: 128, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !604, file: !605, line: 44, baseType: !587, size: 128, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !604, file: !605, line: 45, baseType: !587, size: 128, offset: 768)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !604, file: !605, line: 46, baseType: !587, size: 128, offset: 896)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !604, file: !605, line: 47, baseType: !208, size: 64, offset: 1024)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !604, file: !605, line: 48, baseType: !208, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !505, file: !50, line: 1883, baseType: !627, size: 64, offset: 960)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!367, !442, !336, !382}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !505, file: !50, line: 1884, baseType: !631, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!236, !481, !634, !208, !208}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !50, line: 50, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !505, file: !50, line: 1886, baseType: !637, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!236, !481, !640, !236}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !505, file: !50, line: 1887, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!236, !481, !442, !412, !7, !377}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !505, file: !50, line: 1890, baseType: !557, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !505, file: !50, line: 1891, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!236, !481, !532, !236}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !482, file: !50, line: 623, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !50, line: 1416, size: 9472, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !706, !3113, !3195, !3278, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3294, !3298, !3299, !3302, !3303, !3306, !3307, !3308, !3349, !3376, !3377, !3378, !3379, !3380, !3381, !3384, !3386, !3393, !3394, !3396, !3397, !3398, !3457, !3458, !3473, !3474, !3475, !3476, !3477, !3480, !3481, !3482, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !652, file: !50, line: 1417, baseType: !183, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !652, file: !50, line: 1418, baseType: !565, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !652, file: !50, line: 1419, baseType: !265, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !652, file: !50, line: 1420, baseType: !219, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !652, file: !50, line: 1421, baseType: !583, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !652, file: !50, line: 1422, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !50, line: 2228, size: 576, elements: !662)
!662 = !{!663, !664, !665, !672, !676, !680, !684, !685, !686, !696, !699, !700, !701, !703, !704, !705}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !50, line: 2229, baseType: !215, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !661, file: !50, line: 2230, baseType: !236, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !661, file: !50, line: 2238, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!236, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !671, line: 28, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !661, file: !50, line: 2239, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !50, line: 70, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !661, file: !50, line: 2240, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!442, !660, !236, !215, !177}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !661, file: !50, line: 2242, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !651}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !50, line: 2243, baseType: !174, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !50, line: 2244, baseType: !660, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !661, file: !50, line: 2245, baseType: !687, size: 64, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !184, line: 182, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !184, line: 183, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !184, line: 186, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !184, line: 187, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !184, line: 187, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !661, file: !50, line: 2247, baseType: !697, offset: 576)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !698, line: 187, elements: !309)
!698 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !661, file: !50, line: 2248, baseType: !697, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !661, file: !50, line: 2249, baseType: !697, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !661, file: !50, line: 2250, baseType: !702, offset: 576)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !337)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !661, file: !50, line: 2252, baseType: !697, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !661, file: !50, line: 2253, baseType: !697, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !661, file: !50, line: 2254, baseType: !697, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !652, file: !50, line: 1423, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !50, line: 1935, size: 1472, elements: !710)
!710 = !{!711, !715, !719, !720, !724, !730, !734, !735, !736, !740, !744, !745, !746, !747, !753, !758, !759, !815, !816, !817, !818, !3097, !3112}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !709, file: !50, line: 1936, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!481, !651}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !709, file: !50, line: 1937, baseType: !716, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !481}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !709, file: !50, line: 1938, baseType: !716, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !709, file: !50, line: 1940, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !481, !236}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !709, file: !50, line: 1941, baseType: !725, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!236, !481, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 40, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !709, file: !50, line: 1942, baseType: !731, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!236, !481}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !709, file: !50, line: 1943, baseType: !716, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !709, file: !50, line: 1944, baseType: !681, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !709, file: !50, line: 1945, baseType: !737, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!236, !651, !236}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !709, file: !50, line: 1946, baseType: !741, size: 64, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!236, !651}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !709, file: !50, line: 1947, baseType: !741, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !709, file: !50, line: 1948, baseType: !741, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !709, file: !50, line: 1949, baseType: !741, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !709, file: !50, line: 1950, baseType: !748, size: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!236, !442, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !50, line: 57, flags: DIFlagFwdDecl)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !709, file: !50, line: 1951, baseType: !754, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!236, !651, !757, !336}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !709, file: !50, line: 1952, baseType: !681, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !709, file: !50, line: 1954, baseType: !760, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!236, !763, !442}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !765, line: 16, size: 896, elements: !766)
!765 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !788, !810, !811, !814}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !764, file: !765, line: 17, baseType: !336, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !764, file: !765, line: 18, baseType: !382, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !764, file: !765, line: 19, baseType: !382, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 20, baseType: !382, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !764, file: !765, line: 21, baseType: !382, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !764, file: !765, line: 22, baseType: !583, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !764, file: !765, line: 23, baseType: !583, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !764, file: !765, line: 24, baseType: !775, size: 192, offset: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !776, line: 53, size: 192, elements: !777)
!776 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!777 = !{!778, !786, !787}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !775, file: !776, line: 54, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !780, line: 13, baseType: !781)
!780 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !184, line: 175, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 173, size: 64, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !782, file: !184, line: 174, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !209, line: 22, baseType: !592)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !775, file: !776, line: 55, baseType: !295, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !775, file: !776, line: 59, baseType: !183, size: 128, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !764, file: !765, line: 25, baseType: !789, size: 64, offset: 640)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !765, line: 31, size: 256, elements: !792)
!792 = !{!793, !798, !802, !806}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !791, file: !765, line: 32, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!177, !763, !797}
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !791, file: !765, line: 33, baseType: !799, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !763, !177}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !765, line: 34, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!177, !763, !177, !797}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !791, file: !765, line: 35, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!236, !763, !177}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !764, file: !765, line: 26, baseType: !236, size: 32, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !764, file: !765, line: 27, baseType: !812, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !764, file: !765, line: 28, baseType: !177, size: 64, offset: 832)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !709, file: !50, line: 1955, baseType: !760, size: 64, offset: 1088)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !709, file: !50, line: 1956, baseType: !760, size: 64, offset: 1152)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !709, file: !50, line: 1957, baseType: !760, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !709, file: !50, line: 1963, baseType: !819, size: 64, offset: 1280)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!236, !651, !822, !845}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !824, line: 68, size: 512, align: 128, elements: !825)
!824 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827, !3089, !3096}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !824, line: 69, baseType: !219, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !824, line: 77, baseType: !828, size: 320, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !824, line: 77, size: 320, elements: !829)
!829 = !{!830, !1011, !1016, !1044, !1052, !1058, !3020, !3088}
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 78, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 78, size: 320, elements: !832)
!832 = !{!833, !834, !1009, !1010}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !831, file: !824, line: 84, baseType: !183, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !831, file: !824, line: 86, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !50, line: 451, size: 1216, align: 64, elements: !837)
!837 = !{!838, !839, !847, !848, !853, !868, !877, !878, !879, !880, !1002, !1003, !1006, !1007, !1008}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !836, file: !50, line: 452, baseType: !481, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !836, file: !50, line: 453, baseType: !840, size: 128, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !841, line: 292, size: 128, elements: !842)
!841 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !844, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !840, file: !841, line: 293, baseType: !295)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !840, file: !841, line: 295, baseType: !845, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !184, line: 148, baseType: !7)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !840, file: !841, line: 296, baseType: !177, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !836, file: !50, line: 454, baseType: !845, size: 32, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !836, file: !50, line: 455, baseType: !849, size: 32, offset: 224)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !184, line: 168, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 166, size: 32, elements: !851)
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !850, file: !184, line: 167, baseType: !236, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !836, file: !50, line: 460, baseType: !854, size: 128, offset: 256)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !855, line: 125, size: 128, elements: !856)
!855 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!856 = !{!857, !867}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !854, file: !855, line: 126, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !855, line: 31, size: 64, elements: !859)
!859 = !{!860}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !858, file: !855, line: 32, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !855, line: 24, size: 192, align: 64, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !862, file: !855, line: 25, baseType: !219, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !862, file: !855, line: 26, baseType: !861, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !862, file: !855, line: 27, baseType: !861, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !854, file: !855, line: 127, baseType: !861, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !836, file: !50, line: 461, baseType: !869, size: 256, offset: 384)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !870, line: 35, size: 256, elements: !871)
!870 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !873, !874, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !869, file: !870, line: 36, baseType: !779, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !869, file: !870, line: 42, baseType: !779, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !869, file: !870, line: 46, baseType: !875, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !296, line: 29, baseType: !303)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !869, file: !870, line: 47, baseType: !183, size: 128, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !836, file: !50, line: 462, baseType: !219, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !836, file: !50, line: 463, baseType: !219, size: 64, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !836, file: !50, line: 464, baseType: !219, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !836, file: !50, line: 465, baseType: !881, size: 64, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !50, line: 367, size: 1408, elements: !884)
!884 = !{!885, !889, !893, !897, !901, !905, !911, !917, !921, !926, !930, !934, !938, !966, !970, !976, !977, !978, !982, !987, !991, !998}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !883, file: !50, line: 368, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!236, !822, !728}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !883, file: !50, line: 369, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!236, !412, !822}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !883, file: !50, line: 372, baseType: !894, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!236, !835, !728}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !883, file: !50, line: 375, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!236, !822}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !883, file: !50, line: 381, baseType: !902, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!236, !412, !835, !187, !7}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !883, file: !50, line: 383, baseType: !906, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !50, line: 290, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !883, file: !50, line: 385, baseType: !912, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!236, !412, !835, !583, !7, !7, !915, !916}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !883, file: !50, line: 388, baseType: !918, size: 64, offset: 448)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!236, !412, !835, !583, !7, !7, !822, !177}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !883, file: !50, line: 393, baseType: !922, size: 64, offset: 512)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!925, !835, !925}
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !184, line: 125, baseType: !208)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !883, file: !50, line: 394, baseType: !927, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !822, !7, !7}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !883, file: !50, line: 395, baseType: !931, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!236, !822, !845}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !883, file: !50, line: 396, baseType: !935, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !822}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !883, file: !50, line: 397, baseType: !939, size: 64, offset: 768)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!367, !942, !964}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !50, line: 320, size: 384, elements: !944)
!944 = !{!945, !946, !947, !951, !952, !953, !956, !957}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !943, file: !50, line: 321, baseType: !412, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !943, file: !50, line: 326, baseType: !583, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !943, file: !50, line: 327, baseType: !948, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !942, !371, !371}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !943, file: !50, line: 328, baseType: !177, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !943, file: !50, line: 329, baseType: !236, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !943, file: !50, line: 330, baseType: !954, size: 16, offset: 288)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !209, line: 19, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !211, line: 24, baseType: !274)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !943, file: !50, line: 331, baseType: !954, size: 16, offset: 304)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !50, line: 332, baseType: !958, size: 64, offset: 320)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !50, line: 332, size: 64, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !958, file: !50, line: 333, baseType: !7, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !958, file: !50, line: 334, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !50, line: 334, flags: DIFlagFwdDecl)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !50, line: 64, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !883, file: !50, line: 402, baseType: !967, size: 64, offset: 832)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!236, !835, !822, !822, !12}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !883, file: !50, line: 404, baseType: !971, size: 64, offset: 896)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!542, !822, !974}
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !975, line: 305, baseType: !7)
!975 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!976 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !883, file: !50, line: 405, baseType: !935, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !883, file: !50, line: 406, baseType: !898, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !883, file: !50, line: 407, baseType: !979, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!236, !822, !219, !219}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !883, file: !50, line: 409, baseType: !983, size: 64, offset: 1152)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !822, !986, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !883, file: !50, line: 410, baseType: !988, size: 64, offset: 1216)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!236, !835, !822}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !883, file: !50, line: 413, baseType: !992, size: 64, offset: 1280)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!236, !995, !412, !997}
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !50, line: 61, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !883, file: !50, line: 415, baseType: !999, size: 64, offset: 1344)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !412}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !50, line: 466, baseType: !219, size: 64, offset: 896)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !836, file: !50, line: 467, baseType: !1004, size: 32, offset: 960)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1005, line: 8, baseType: !250)
!1005 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !836, file: !50, line: 468, baseType: !295, offset: 992)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !836, file: !50, line: 469, baseType: !183, size: 128, offset: 1024)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !836, file: !50, line: 470, baseType: !177, size: 64, offset: 1152)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !831, file: !824, line: 87, baseType: !219, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !831, file: !824, line: 94, baseType: !219, size: 64, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 96, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 96, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1012, file: !824, line: 101, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !184, line: 143, baseType: !208)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 103, baseType: !1017, size: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 103, size: 320, elements: !1018)
!1018 = !{!1019, !1029, !1032, !1033}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !824, line: 104, baseType: !1020, size: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !824, line: 104, size: 128, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1020, file: !824, line: 105, baseType: !183, size: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, scope: !1020, file: !824, line: 106, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1020, file: !824, line: 106, size: 128, elements: !1025)
!1025 = !{!1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1024, file: !824, line: 107, baseType: !822, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1024, file: !824, line: 109, baseType: !236, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1024, file: !824, line: 110, baseType: !236, size: 32, offset: 96)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1017, file: !824, line: 117, baseType: !1030, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !824, line: 117, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1017, file: !824, line: 119, baseType: !177, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !824, line: 120, baseType: !1034, size: 64, offset: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !824, line: 120, size: 64, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1034, file: !824, line: 121, baseType: !177, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1034, file: !824, line: 122, baseType: !219, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !1034, file: !824, line: 123, baseType: !1039, size: 32)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1034, file: !824, line: 123, size: 32, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1039, file: !824, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1039, file: !824, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1039, file: !824, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 130, baseType: !1045, size: 192)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 130, size: 192, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1045, file: !824, line: 131, baseType: !219, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1045, file: !824, line: 134, baseType: !265, size: 8, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1045, file: !824, line: 135, baseType: !265, size: 8, offset: 72)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1045, file: !824, line: 136, baseType: !849, size: 32, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1045, file: !824, line: 137, baseType: !7, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 139, baseType: !1053, size: 256)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 139, size: 256, elements: !1054)
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1053, file: !824, line: 140, baseType: !219, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1053, file: !824, line: 141, baseType: !849, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1053, file: !824, line: 143, baseType: !183, size: 128, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 145, baseType: !1059, size: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 145, size: 256, elements: !1060)
!1060 = !{!1061, !1062, !1065, !1066, !3019}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1059, file: !824, line: 146, baseType: !219, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1059, file: !824, line: 147, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1064, line: 509, baseType: !822)
!1064 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1059, file: !824, line: 148, baseType: !219, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !824, line: 149, baseType: !1067, size: 64, offset: 192)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !824, line: 149, size: 64, elements: !1068)
!1068 = !{!1069, !3018}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1067, file: !824, line: 150, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !824, line: 388, size: 7296, elements: !1072)
!1072 = !{!1073, !3017}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !824, line: 389, baseType: !1074, size: 7296)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !824, line: 389, size: 7296, elements: !1075)
!1075 = !{!1076, !1194, !1195, !1196, !1200, !1201, !1202, !1203, !1204, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1245, !1251, !1254, !1294, !1295, !3001, !3002, !3005, !3006, !3007, !3010, !3011, !3012, !3015, !3016}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1074, file: !824, line: 390, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !824, line: 305, size: 1472, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1094, !1095, !1100, !1101, !1104, !1188, !1189, !1190, !1191, !1192}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1078, file: !824, line: 308, baseType: !219, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1078, file: !824, line: 309, baseType: !219, size: 64, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1078, file: !824, line: 313, baseType: !1077, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1078, file: !824, line: 313, baseType: !1077, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1078, file: !824, line: 315, baseType: !862, size: 192, align: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1078, file: !824, line: 323, baseType: !219, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1078, file: !824, line: 327, baseType: !1070, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1078, file: !824, line: 333, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1064, line: 284, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1064, line: 284, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1089, file: !1064, line: 284, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1093, line: 19, baseType: !219)
!1093 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1078, file: !824, line: 334, baseType: !219, size: 64, offset: 640)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1078, file: !824, line: 343, baseType: !1096, size: 256, offset: 704)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1078, file: !824, line: 340, size: 256, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1096, file: !824, line: 341, baseType: !862, size: 192, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1096, file: !824, line: 342, baseType: !219, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1078, file: !824, line: 351, baseType: !183, size: 128, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1078, file: !824, line: 353, baseType: !1102, size: 64, offset: 1088)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !824, line: 353, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1078, file: !824, line: 356, baseType: !1105, size: 64, offset: 1152)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1107)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !20, line: 557, size: 832, elements: !1108)
!1108 = !{!1109, !1113, !1114, !1118, !1122, !1162, !1166, !1170, !1174, !1175, !1176, !1180, !1184}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1107, file: !20, line: 558, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1077}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1107, file: !20, line: 559, baseType: !1110, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1107, file: !20, line: 560, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!236, !1077, !219}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1107, file: !20, line: 561, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!236, !1077}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1107, file: !20, line: 562, baseType: !1123, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !824, line: 682, baseType: !7)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !20, line: 508, size: 768, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1142, !1149, !1155, !1156, !1157, !1159, !1161}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1128, file: !20, line: 509, baseType: !1077, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1128, file: !20, line: 510, baseType: !7, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1128, file: !20, line: 511, baseType: !845, size: 32, offset: 96)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1128, file: !20, line: 512, baseType: !219, size: 64, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1128, file: !20, line: 513, baseType: !219, size: 64, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1128, file: !20, line: 514, baseType: !1136, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1064, line: 385, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1064, line: 385, size: 64, elements: !1139)
!1139 = !{!1140}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1138, file: !1064, line: 385, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1093, line: 15, baseType: !219)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1128, file: !20, line: 516, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1064, line: 359, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1064, line: 359, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1145, file: !1064, line: 359, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1093, line: 16, baseType: !219)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1128, file: !20, line: 519, baseType: !1150, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1093, line: 21, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1093, line: 21, size: 64, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1151, file: !1093, line: 21, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1093, line: 14, baseType: !219)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1128, file: !20, line: 521, baseType: !822, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1128, file: !20, line: 522, baseType: !822, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1128, file: !20, line: 528, baseType: !1158, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1128, file: !20, line: 532, baseType: !1160, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1128, file: !20, line: 536, baseType: !1063, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1107, file: !20, line: 563, baseType: !1163, size: 64, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!1126, !1127, !19}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1107, file: !20, line: 565, baseType: !1167, size: 64, offset: 384)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !1127, !219, !219}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1107, file: !20, line: 567, baseType: !1171, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!219, !1077}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1107, file: !20, line: 571, baseType: !1123, size: 64, offset: 512)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1107, file: !20, line: 574, baseType: !1123, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1107, file: !20, line: 579, baseType: !1177, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!236, !1077, !219, !177, !236, !236}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1107, file: !20, line: 585, baseType: !1181, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!215, !1077}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1107, file: !20, line: 615, baseType: !1185, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!822, !1077, !219}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1078, file: !824, line: 359, baseType: !219, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1078, file: !824, line: 361, baseType: !412, size: 64, offset: 1280)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1078, file: !824, line: 362, baseType: !177, size: 64, offset: 1344)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1078, file: !824, line: 365, baseType: !779, size: 64, offset: 1408)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1078, file: !824, line: 373, baseType: !1193, offset: 1472)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !824, line: 296, elements: !309)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1074, file: !824, line: 391, baseType: !858, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1074, file: !824, line: 392, baseType: !208, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1074, file: !824, line: 394, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!219, !412, !219, !219, !219, !219}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1074, file: !824, line: 398, baseType: !219, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1074, file: !824, line: 399, baseType: !219, size: 64, offset: 320)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1074, file: !824, line: 405, baseType: !219, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1074, file: !824, line: 406, baseType: !219, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1074, file: !824, line: 407, baseType: !1205, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1064, line: 286, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1064, line: 286, size: 64, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1207, file: !1064, line: 286, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1093, line: 18, baseType: !219)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1074, file: !824, line: 416, baseType: !849, size: 32, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1074, file: !824, line: 428, baseType: !849, size: 32, offset: 608)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1074, file: !824, line: 437, baseType: !849, size: 32, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1074, file: !824, line: 447, baseType: !849, size: 32, offset: 672)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1074, file: !824, line: 450, baseType: !779, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1074, file: !824, line: 452, baseType: !236, size: 32, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1074, file: !824, line: 454, baseType: !295, offset: 800)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1074, file: !824, line: 457, baseType: !869, size: 256, offset: 832)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1074, file: !824, line: 459, baseType: !183, size: 128, offset: 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1074, file: !824, line: 466, baseType: !219, size: 64, offset: 1216)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1074, file: !824, line: 467, baseType: !219, size: 64, offset: 1280)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1074, file: !824, line: 469, baseType: !219, size: 64, offset: 1344)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1074, file: !824, line: 470, baseType: !219, size: 64, offset: 1408)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1074, file: !824, line: 471, baseType: !781, size: 64, offset: 1472)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1074, file: !824, line: 472, baseType: !219, size: 64, offset: 1536)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1074, file: !824, line: 473, baseType: !219, size: 64, offset: 1600)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1074, file: !824, line: 474, baseType: !219, size: 64, offset: 1664)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1074, file: !824, line: 475, baseType: !219, size: 64, offset: 1728)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1074, file: !824, line: 477, baseType: !295, offset: 1792)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1074, file: !824, line: 478, baseType: !219, size: 64, offset: 1792)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1074, file: !824, line: 478, baseType: !219, size: 64, offset: 1856)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1074, file: !824, line: 478, baseType: !219, size: 64, offset: 1920)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1074, file: !824, line: 478, baseType: !219, size: 64, offset: 1984)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1074, file: !824, line: 479, baseType: !219, size: 64, offset: 2048)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1074, file: !824, line: 479, baseType: !219, size: 64, offset: 2112)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1074, file: !824, line: 479, baseType: !219, size: 64, offset: 2176)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1074, file: !824, line: 480, baseType: !219, size: 64, offset: 2240)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1074, file: !824, line: 480, baseType: !219, size: 64, offset: 2304)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1074, file: !824, line: 480, baseType: !219, size: 64, offset: 2368)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1074, file: !824, line: 480, baseType: !219, size: 64, offset: 2432)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1074, file: !824, line: 482, baseType: !1242, size: 2816, offset: 2496)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2816, elements: !1243)
!1243 = !{!1244}
!1244 = !DISubrange(count: 44)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1074, file: !824, line: 488, baseType: !1246, size: 256, offset: 5312)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1247, line: 60, size: 256, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1248 = !{!1249}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1246, file: !1247, line: 61, baseType: !1250, size: 256)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 256, elements: !224)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1074, file: !824, line: 490, baseType: !1252, size: 64, offset: 5568)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !824, line: 490, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1074, file: !824, line: 493, baseType: !1255, size: 896, offset: 5632)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1256, line: 53, baseType: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1256, line: 13, size: 896, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1265, !1266, !1267, !1268, !1288, !1289, !1290}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1257, file: !1256, line: 18, baseType: !208, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1257, file: !1256, line: 28, baseType: !781, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1257, file: !1256, line: 31, baseType: !869, size: 256, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1257, file: !1256, line: 32, baseType: !1263, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1256, line: 32, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1257, file: !1256, line: 37, baseType: !274, size: 16, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1257, file: !1256, line: 40, baseType: !775, size: 192, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1257, file: !1256, line: 41, baseType: !177, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1257, file: !1256, line: 42, baseType: !1269, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1272, line: 13, size: 896, elements: !1273)
!1272 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1271, file: !1272, line: 14, baseType: !177, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !1272, line: 15, baseType: !219, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1271, file: !1272, line: 17, baseType: !219, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1271, file: !1272, line: 17, baseType: !219, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1271, file: !1272, line: 19, baseType: !371, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1271, file: !1272, line: 21, baseType: !371, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1271, file: !1272, line: 22, baseType: !371, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1271, file: !1272, line: 23, baseType: !371, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1271, file: !1272, line: 24, baseType: !371, size: 64, offset: 512)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1271, file: !1272, line: 25, baseType: !371, size: 64, offset: 576)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1271, file: !1272, line: 26, baseType: !371, size: 64, offset: 640)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1271, file: !1272, line: 27, baseType: !371, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1271, file: !1272, line: 28, baseType: !371, size: 64, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1271, file: !1272, line: 29, baseType: !371, size: 64, offset: 832)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1257, file: !1256, line: 44, baseType: !849, size: 32, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1257, file: !1256, line: 50, baseType: !954, size: 16, offset: 864)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1257, file: !1256, line: 51, baseType: !1291, size: 16, offset: 880)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !209, line: 18, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !211, line: 23, baseType: !1293)
!1293 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !824, line: 495, baseType: !219, size: 64, offset: 6528)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1074, file: !824, line: 497, baseType: !1296, size: 64, offset: 6592)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !824, line: 381, size: 384, elements: !1298)
!1298 = !{!1299, !1300, !3000}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1297, file: !824, line: 382, baseType: !849, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1297, file: !824, line: 383, baseType: !1301, size: 128, offset: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !824, line: 376, size: 128, elements: !1302)
!1302 = !{!1303, !2998}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1301, file: !824, line: 377, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1306, line: 640, size: 48640, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308, !1314, !1316, !1317, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1334, !1352, !1363, !1448, !1449, !1450, !1461, !1462, !1464, !1465, !1466, !1467, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1545, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1583, !1585, !1586, !1587, !1599, !1600, !1601, !1602, !1603, !1604, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1628, !1633, !1817, !1818, !1819, !1820, !1824, !1827, !1830, !1833, !1836, !1839, !2554, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2600, !2601, !2602, !2603, !2604, !2609, !2610, !2611, !2614, !2615, !2618, !2621, !2624, !2627, !2659, !2662, !2663, !2742, !2743, !2746, !2747, !2750, !2751, !2752, !2756, !2757, !2758, !2771, !2772, !2773, !2783, !2788, !2789, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1305, file: !1306, line: 646, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1310, line: 56, size: 128, elements: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1309, file: !1310, line: 57, baseType: !219, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1309, file: !1310, line: 58, baseType: !250, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1305, file: !1306, line: 649, baseType: !1315, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !371)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1305, file: !1306, line: 657, baseType: !177, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1305, file: !1306, line: 658, baseType: !1318, size: 32, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1319, line: 113, baseType: !1320)
!1319 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1319, line: 111, size: 32, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1320, file: !1319, line: 112, baseType: !849, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1305, file: !1306, line: 660, baseType: !7, size: 32, offset: 288)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1305, file: !1306, line: 661, baseType: !7, size: 32, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1305, file: !1306, line: 684, baseType: !236, size: 32, offset: 352)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1305, file: !1306, line: 686, baseType: !236, size: 32, offset: 384)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1305, file: !1306, line: 687, baseType: !236, size: 32, offset: 416)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1305, file: !1306, line: 688, baseType: !236, size: 32, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1305, file: !1306, line: 689, baseType: !7, size: 32, offset: 480)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1305, file: !1306, line: 691, baseType: !1331, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1306, line: 691, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1305, file: !1306, line: 692, baseType: !1335, size: 832, offset: 576)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1306, line: 451, size: 832, elements: !1336)
!1336 = !{!1337, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1335, file: !1306, line: 453, baseType: !1338, size: 128)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1306, line: 325, size: 128, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1338, file: !1306, line: 326, baseType: !219, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1338, file: !1306, line: 327, baseType: !250, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1335, file: !1306, line: 454, baseType: !862, size: 192, align: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1335, file: !1306, line: 455, baseType: !183, size: 128, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1335, file: !1306, line: 456, baseType: !7, size: 32, offset: 448)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1335, file: !1306, line: 458, baseType: !208, size: 64, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1335, file: !1306, line: 459, baseType: !208, size: 64, offset: 576)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1335, file: !1306, line: 460, baseType: !208, size: 64, offset: 640)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1335, file: !1306, line: 461, baseType: !208, size: 64, offset: 704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1335, file: !1306, line: 463, baseType: !208, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1335, file: !1306, line: 465, baseType: !1351, offset: 832)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1306, line: 415, elements: !309)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1305, file: !1306, line: 693, baseType: !1353, size: 384, offset: 1408)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1306, line: 489, size: 384, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1353, file: !1306, line: 490, baseType: !183, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1353, file: !1306, line: 491, baseType: !219, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1353, file: !1306, line: 492, baseType: !219, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1353, file: !1306, line: 493, baseType: !7, size: 32, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1353, file: !1306, line: 494, baseType: !274, size: 16, offset: 288)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1353, file: !1306, line: 495, baseType: !274, size: 16, offset: 304)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1353, file: !1306, line: 497, baseType: !1362, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1305, file: !1306, line: 697, baseType: !1364, size: 1792, offset: 1792)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1306, line: 507, size: 1792, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1445, !1446}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1364, file: !1306, line: 508, baseType: !862, size: 192, align: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1364, file: !1306, line: 515, baseType: !208, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1364, file: !1306, line: 516, baseType: !208, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1364, file: !1306, line: 517, baseType: !208, size: 64, offset: 320)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1364, file: !1306, line: 518, baseType: !208, size: 64, offset: 384)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1364, file: !1306, line: 519, baseType: !208, size: 64, offset: 448)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1364, file: !1306, line: 526, baseType: !785, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1364, file: !1306, line: 527, baseType: !208, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1306, line: 528, baseType: !7, size: 32, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1364, file: !1306, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1364, file: !1306, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1364, file: !1306, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1364, file: !1306, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1364, file: !1306, line: 563, baseType: !1380, size: 512, offset: 704)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !26, line: 118, size: 512, elements: !1381)
!1381 = !{!1382, !1390, !1391, !1396, !1439, !1442, !1443, !1444}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1380, file: !26, line: 119, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1384, line: 9, size: 256, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1383, file: !1384, line: 10, baseType: !862, size: 192, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1383, file: !1384, line: 11, baseType: !1388, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1389, line: 29, baseType: !785)
!1389 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1380, file: !26, line: 120, baseType: !1388, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1380, file: !26, line: 121, baseType: !1392, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!25, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1380, file: !26, line: 122, baseType: !1397, size: 64, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !26, line: 159, size: 512, align: 512, elements: !1399)
!1399 = !{!1400, !1420, !1421, !1424, !1429, !1430, !1434, !1438}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1398, file: !26, line: 160, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !26, line: 214, size: 4608, align: 512, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !26, line: 215, baseType: !875)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1402, file: !26, line: 216, baseType: !7, size: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1402, file: !26, line: 217, baseType: !7, size: 32, offset: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1402, file: !26, line: 218, baseType: !7, size: 32, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1402, file: !26, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1402, file: !26, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1402, file: !26, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1402, file: !26, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1402, file: !26, line: 233, baseType: !1388, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1402, file: !26, line: 234, baseType: !1395, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1402, file: !26, line: 235, baseType: !1388, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1402, file: !26, line: 236, baseType: !1395, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1402, file: !26, line: 237, baseType: !1417, size: 4096, offset: 512)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 4096, elements: !1418)
!1418 = !{!1419}
!1419 = !DISubrange(count: 8)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1398, file: !26, line: 161, baseType: !7, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1398, file: !26, line: 162, baseType: !1422, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !184, line: 27, baseType: !1423)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !369, line: 96, baseType: !236)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1398, file: !26, line: 163, baseType: !1425, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !448, line: 276, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !448, line: 276, size: 32, elements: !1427)
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1426, file: !448, line: 276, baseType: !452, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1398, file: !26, line: 164, baseType: !1395, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1398, file: !26, line: 165, baseType: !1431, size: 128, offset: 256)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1384, line: 14, size: 128, elements: !1432)
!1432 = !{!1433}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1431, file: !1384, line: 15, baseType: !854, size: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1398, file: !26, line: 166, baseType: !1435, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!1388}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1398, file: !26, line: 167, baseType: !1388, size: 64, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1380, file: !26, line: 123, baseType: !1440, size: 8, offset: 448)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !209, line: 17, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !211, line: 21, baseType: !265)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1380, file: !26, line: 124, baseType: !1440, size: 8, offset: 456)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1380, file: !26, line: 125, baseType: !1440, size: 8, offset: 464)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1380, file: !26, line: 126, baseType: !1440, size: 8, offset: 472)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1364, file: !1306, line: 572, baseType: !1380, size: 512, offset: 1216)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1364, file: !1306, line: 580, baseType: !1447, size: 64, offset: 1728)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1305, file: !1306, line: 721, baseType: !7, size: 32, offset: 3584)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1305, file: !1306, line: 722, baseType: !236, size: 32, offset: 3616)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1305, file: !1306, line: 723, baseType: !1451, size: 64, offset: 3648)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1454, line: 17, baseType: !1455)
!1454 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1454, line: 17, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1455, file: !1454, line: 17, baseType: !1458, size: 64)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 1)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1305, file: !1306, line: 724, baseType: !1453, size: 64, offset: 3712)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1305, file: !1306, line: 749, baseType: !1463, offset: 3776)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1306, line: 290, elements: !309)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1305, file: !1306, line: 751, baseType: !183, size: 128, offset: 3776)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1305, file: !1306, line: 757, baseType: !1070, size: 64, offset: 3904)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1305, file: !1306, line: 758, baseType: !1070, size: 64, offset: 3968)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1305, file: !1306, line: 761, baseType: !1468, size: 320, offset: 4032)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1247, line: 34, size: 320, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1468, file: !1247, line: 35, baseType: !208, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1468, file: !1247, line: 36, baseType: !1472, size: 256, offset: 64)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 256, elements: !224)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1305, file: !1306, line: 766, baseType: !236, size: 32, offset: 4352)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1305, file: !1306, line: 767, baseType: !236, size: 32, offset: 4384)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1305, file: !1306, line: 768, baseType: !236, size: 32, offset: 4416)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1305, file: !1306, line: 770, baseType: !236, size: 32, offset: 4448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1305, file: !1306, line: 772, baseType: !219, size: 64, offset: 4480)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1305, file: !1306, line: 775, baseType: !7, size: 32, offset: 4544)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1305, file: !1306, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1305, file: !1306, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1305, file: !1306, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1305, file: !1306, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1305, file: !1306, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1305, file: !1306, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1305, file: !1306, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1305, file: !1306, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1305, file: !1306, line: 831, baseType: !219, size: 64, offset: 4672)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1305, file: !1306, line: 833, baseType: !1489, size: 384, offset: 4736)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !31, line: 25, size: 384, elements: !1490)
!1490 = !{!1491, !1496}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1489, file: !31, line: 26, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!371, !1495}
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !31, line: 27, baseType: !1497, size: 320, offset: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !31, line: 27, size: 320, elements: !1498)
!1498 = !{!1499, !1508, !1535}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1497, file: !31, line: 36, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !31, line: 29, size: 320, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1500, file: !31, line: 30, baseType: !249, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1500, file: !31, line: 31, baseType: !250, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !31, line: 32, baseType: !250, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1500, file: !31, line: 33, baseType: !250, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1500, file: !31, line: 34, baseType: !208, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1500, file: !31, line: 35, baseType: !249, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1497, file: !31, line: 46, baseType: !1509, size: 192)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !31, line: 38, size: 192, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1534}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1509, file: !31, line: 39, baseType: !1422, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1509, file: !31, line: 40, baseType: !30, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !31, line: 41, baseType: !1514, size: 64, offset: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1509, file: !31, line: 41, size: 64, elements: !1515)
!1515 = !{!1516, !1524}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1514, file: !31, line: 42, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1519, line: 7, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1518, file: !1519, line: 8, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !369, line: 93, baseType: !585)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1518, file: !1519, line: 9, baseType: !585, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1514, file: !31, line: 43, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1527, line: 7, size: 64, elements: !1528)
!1527 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1528 = !{!1529, !1533}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1526, file: !1527, line: 8, baseType: !1530, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1527, line: 5, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !209, line: 20, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !211, line: 26, baseType: !236)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1526, file: !1527, line: 9, baseType: !1531, size: 32, offset: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1509, file: !31, line: 45, baseType: !208, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1497, file: !31, line: 54, baseType: !1536, size: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !31, line: 48, size: 256, elements: !1537)
!1537 = !{!1538, !1541, !1542, !1543, !1544}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1536, file: !31, line: 49, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !31, line: 14, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1536, file: !31, line: 50, baseType: !236, size: 32, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1536, file: !31, line: 51, baseType: !236, size: 32, offset: 96)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1536, file: !31, line: 52, baseType: !219, size: 64, offset: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1536, file: !31, line: 53, baseType: !219, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1305, file: !1306, line: 835, baseType: !1546, size: 32, offset: 5120)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 22, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !369, line: 28, baseType: !236)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1305, file: !1306, line: 836, baseType: !1546, size: 32, offset: 5152)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1305, file: !1306, line: 840, baseType: !219, size: 64, offset: 5184)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1305, file: !1306, line: 849, baseType: !1304, size: 64, offset: 5248)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1305, file: !1306, line: 852, baseType: !1304, size: 64, offset: 5312)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1305, file: !1306, line: 857, baseType: !183, size: 128, offset: 5376)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1305, file: !1306, line: 858, baseType: !183, size: 128, offset: 5504)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1305, file: !1306, line: 859, baseType: !1304, size: 64, offset: 5632)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1305, file: !1306, line: 867, baseType: !183, size: 128, offset: 5696)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1305, file: !1306, line: 868, baseType: !183, size: 128, offset: 5824)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1305, file: !1306, line: 871, baseType: !1558, size: 64, offset: 5952)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !59, line: 59, size: 768, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1566, !1567, !1574, !1575}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1559, file: !59, line: 61, baseType: !1318, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1559, file: !59, line: 62, baseType: !7, size: 32, offset: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1559, file: !59, line: 63, baseType: !295, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1559, file: !59, line: 65, baseType: !1565, size: 256, offset: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !224)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1559, file: !59, line: 66, baseType: !687, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1559, file: !59, line: 68, baseType: !1568, size: 128, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1569, line: 40, baseType: !1570)
!1569 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1569, line: 36, size: 128, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1570, file: !1569, line: 37, baseType: !295)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1570, file: !1569, line: 38, baseType: !183, size: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1559, file: !59, line: 69, baseType: !425, size: 128, align: 64, offset: 512)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1559, file: !59, line: 70, baseType: !1576, size: 128, offset: 640)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 128, elements: !1459)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !59, line: 54, size: 128, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1577, file: !59, line: 55, baseType: !236, size: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1577, file: !59, line: 56, baseType: !1581, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !59, line: 56, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1305, file: !1306, line: 872, baseType: !1584, size: 512, offset: 6016)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !224)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1305, file: !1306, line: 873, baseType: !183, size: 128, offset: 6528)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1305, file: !1306, line: 874, baseType: !183, size: 128, offset: 6656)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1305, file: !1306, line: 876, baseType: !1588, size: 64, offset: 6784)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1590, line: 26, size: 192, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1589, file: !1590, line: 27, baseType: !7, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1589, file: !1590, line: 28, baseType: !1594, size: 128, offset: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1595, line: 43, size: 128, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1598}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1594, file: !1595, line: 44, baseType: !875)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1594, file: !1595, line: 45, baseType: !183, size: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1305, file: !1306, line: 879, baseType: !757, size: 64, offset: 6848)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1305, file: !1306, line: 882, baseType: !757, size: 64, offset: 6912)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1305, file: !1306, line: 884, baseType: !208, size: 64, offset: 6976)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1305, file: !1306, line: 885, baseType: !208, size: 64, offset: 7040)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1305, file: !1306, line: 890, baseType: !208, size: 64, offset: 7104)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1305, file: !1306, line: 891, baseType: !1605, size: 128, offset: 7168)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1306, line: 242, size: 128, elements: !1606)
!1606 = !{!1607, !1608, !1609}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1605, file: !1306, line: 244, baseType: !208, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1605, file: !1306, line: 245, baseType: !208, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !1306, line: 246, baseType: !875, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1305, file: !1306, line: 900, baseType: !219, size: 64, offset: 7296)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1305, file: !1306, line: 901, baseType: !219, size: 64, offset: 7360)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1305, file: !1306, line: 904, baseType: !208, size: 64, offset: 7424)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1305, file: !1306, line: 907, baseType: !208, size: 64, offset: 7488)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1305, file: !1306, line: 910, baseType: !219, size: 64, offset: 7552)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1305, file: !1306, line: 911, baseType: !219, size: 64, offset: 7616)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1305, file: !1306, line: 914, baseType: !1617, size: 640, offset: 7680)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1618, line: 123, size: 640, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1626, !1627}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1617, file: !1618, line: 124, baseType: !1621, size: 576)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1622, size: 576, elements: !337)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1618, line: 108, size: 192, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1622, file: !1618, line: 109, baseType: !208, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1622, file: !1618, line: 110, baseType: !1431, size: 128, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1617, file: !1618, line: 125, baseType: !7, size: 32, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1617, file: !1618, line: 126, baseType: !7, size: 32, offset: 608)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1305, file: !1306, line: 917, baseType: !1629, size: 192, offset: 8320)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1618, line: 134, size: 192, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1629, file: !1618, line: 135, baseType: !425, size: 128, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1629, file: !1618, line: 136, baseType: !7, size: 32, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1305, file: !1306, line: 923, baseType: !1634, size: 64, offset: 8512)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1637, line: 111, size: 1280, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1658, !1659, !1660, !1661, !1662, !1663, !1770, !1771, !1772, !1773, !1799, !1802, !1812}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1637, line: 112, baseType: !849, size: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1636, file: !1637, line: 120, baseType: !487, size: 32, offset: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1637, line: 121, baseType: !495, size: 32, offset: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1636, file: !1637, line: 122, baseType: !487, size: 32, offset: 96)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1636, file: !1637, line: 123, baseType: !495, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1636, file: !1637, line: 124, baseType: !487, size: 32, offset: 160)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1636, file: !1637, line: 125, baseType: !495, size: 32, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1636, file: !1637, line: 126, baseType: !487, size: 32, offset: 224)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1636, file: !1637, line: 127, baseType: !495, size: 32, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1636, file: !1637, line: 128, baseType: !7, size: 32, offset: 288)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1636, file: !1637, line: 129, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1651, line: 26, baseType: !1652)
!1651 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1651, line: 24, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1652, file: !1651, line: 25, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: 2)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1636, file: !1637, line: 130, baseType: !1650, size: 64, offset: 384)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1636, file: !1637, line: 131, baseType: !1650, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1636, file: !1637, line: 132, baseType: !1650, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1636, file: !1637, line: 133, baseType: !1650, size: 64, offset: 576)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1636, file: !1637, line: 135, baseType: !265, size: 8, offset: 640)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1636, file: !1637, line: 137, baseType: !1664, size: 64, offset: 704)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1666, line: 189, size: 1664, elements: !1667)
!1666 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !{!1668, !1669, !1672, !1677, !1678, !1681, !1682, !1687, !1688, !1689, !1690, !1692, !1693, !1694, !1695, !1696, !1734, !1755}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1665, file: !1666, line: 190, baseType: !1318, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1665, file: !1666, line: 191, baseType: !1670, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1666, line: 28, baseType: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !184, line: 98, baseType: !1531)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1666, line: 192, baseType: !1673, size: 192, offset: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1666, line: 192, size: 192, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1673, file: !1666, line: 193, baseType: !183, size: 128)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1673, file: !1666, line: 194, baseType: !862, size: 192, align: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1665, file: !1666, line: 199, baseType: !869, size: 256, offset: 256)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1665, file: !1666, line: 200, baseType: !1679, size: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1666, line: 200, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1665, file: !1666, line: 201, baseType: !177, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1666, line: 202, baseType: !1683, size: 64, offset: 640)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1666, line: 202, size: 64, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1683, file: !1666, line: 203, baseType: !591, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1683, file: !1666, line: 204, baseType: !591, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1665, file: !1666, line: 206, baseType: !591, size: 64, offset: 704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1665, file: !1666, line: 207, baseType: !487, size: 32, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1665, file: !1666, line: 208, baseType: !495, size: 32, offset: 800)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1665, file: !1666, line: 209, baseType: !1691, size: 32, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1666, line: 31, baseType: !611)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1665, file: !1666, line: 210, baseType: !274, size: 16, offset: 864)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1665, file: !1666, line: 211, baseType: !274, size: 16, offset: 880)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1665, file: !1666, line: 215, baseType: !1293, size: 16, offset: 896)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1665, file: !1666, line: 222, baseType: !219, size: 64, offset: 960)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1666, line: 239, baseType: !1697, size: 320, offset: 1024)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1666, line: 239, size: 320, elements: !1698)
!1698 = !{!1699, !1726}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1697, file: !1666, line: 240, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1666, line: 108, size: 320, elements: !1701)
!1701 = !{!1702, !1703, !1715, !1718, !1725}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1700, file: !1666, line: 110, baseType: !219, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1666, line: 111, baseType: !1704, size: 64, offset: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1666, line: 111, size: 64, elements: !1705)
!1705 = !{!1706, !1714}
!1706 = !DIDerivedType(tag: DW_TAG_member, scope: !1704, file: !1666, line: 112, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !1666, line: 112, size: 64, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1707, file: !1666, line: 114, baseType: !954, size: 16)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1707, file: !1666, line: 115, baseType: !1711, size: 48, offset: 16)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 6)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1704, file: !1666, line: 121, baseType: !219, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1700, file: !1666, line: 123, baseType: !1716, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1666, line: 96, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1700, file: !1666, line: 124, baseType: !1719, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1666, line: 102, size: 192, elements: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1720, file: !1666, line: 103, baseType: !425, size: 128, align: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1720, file: !1666, line: 104, baseType: !1318, size: 32, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1720, file: !1666, line: 105, baseType: !542, size: 8, offset: 160)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1700, file: !1666, line: 125, baseType: !215, size: 64, offset: 256)
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1666, line: 241, baseType: !1727, size: 320)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1666, line: 241, size: 320, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1727, file: !1666, line: 242, baseType: !219, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1727, file: !1666, line: 243, baseType: !219, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1727, file: !1666, line: 244, baseType: !1716, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1727, file: !1666, line: 245, baseType: !1719, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1727, file: !1666, line: 246, baseType: !336, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !1666, line: 254, baseType: !1735, size: 256, offset: 1344)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !1666, line: 254, size: 256, elements: !1736)
!1736 = !{!1737, !1743}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1735, file: !1666, line: 255, baseType: !1738, size: 256)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1666, line: 128, size: 256, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1738, file: !1666, line: 129, baseType: !177, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1738, file: !1666, line: 130, baseType: !1742, size: 256)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !224)
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !1666, line: 256, baseType: !1744, size: 256)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !1666, line: 256, size: 256, elements: !1745)
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1744, file: !1666, line: 258, baseType: !183, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1744, file: !1666, line: 259, baseType: !1748, size: 128, offset: 128)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1749, line: 22, size: 128, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1754}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1748, file: !1749, line: 23, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1749, line: 23, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1748, file: !1749, line: 24, baseType: !219, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1665, file: !1666, line: 274, baseType: !1756, size: 64, offset: 1600)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1666, line: 170, size: 192, elements: !1758)
!1758 = !{!1759, !1768, !1769}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1757, file: !1666, line: 171, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1666, line: 165, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!236, !1664, !1764, !1766, !1664}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1757, file: !1666, line: 172, baseType: !1664, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1757, file: !1666, line: 173, baseType: !1716, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1636, file: !1637, line: 138, baseType: !1664, size: 64, offset: 768)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1636, file: !1637, line: 139, baseType: !1664, size: 64, offset: 832)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1636, file: !1637, line: 140, baseType: !1664, size: 64, offset: 896)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1636, file: !1637, line: 145, baseType: !1774, size: 64, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1776, line: 13, size: 896, elements: !1777)
!1776 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1775, file: !1776, line: 14, baseType: !1318, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1775, file: !1776, line: 15, baseType: !849, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1775, file: !1776, line: 16, baseType: !849, size: 32, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1775, file: !1776, line: 21, baseType: !779, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1775, file: !1776, line: 27, baseType: !219, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1775, file: !1776, line: 28, baseType: !219, size: 64, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1775, file: !1776, line: 29, baseType: !779, size: 64, offset: 320)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1775, file: !1776, line: 32, baseType: !691, size: 128, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1775, file: !1776, line: 33, baseType: !487, size: 32, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1775, file: !1776, line: 37, baseType: !779, size: 64, offset: 576)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1775, file: !1776, line: 44, baseType: !1789, size: 256, offset: 640)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1790, line: 15, size: 256, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1789, file: !1790, line: 16, baseType: !875)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1789, file: !1790, line: 18, baseType: !236, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1789, file: !1790, line: 19, baseType: !236, size: 32, offset: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1789, file: !1790, line: 20, baseType: !236, size: 32, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1789, file: !1790, line: 21, baseType: !236, size: 32, offset: 96)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1789, file: !1790, line: 22, baseType: !219, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1789, file: !1790, line: 23, baseType: !219, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1636, file: !1637, line: 146, baseType: !1800, size: 64, offset: 1024)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !824, line: 516, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1636, file: !1637, line: 147, baseType: !1803, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1637, line: 25, size: 64, elements: !1805)
!1805 = !{!1806, !1807, !1808}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1804, file: !1637, line: 26, baseType: !849, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1804, file: !1637, line: 27, baseType: !236, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1804, file: !1637, line: 28, baseType: !1809, offset: 64)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, elements: !1810)
!1810 = !{!1811}
!1811 = !DISubrange(count: 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1637, line: 149, baseType: !1813, size: 128, offset: 1152)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1636, file: !1637, line: 149, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1813, file: !1637, line: 150, baseType: !236, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1813, file: !1637, line: 151, baseType: !425, size: 128, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1305, file: !1306, line: 926, baseType: !1634, size: 64, offset: 8576)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1305, file: !1306, line: 929, baseType: !1634, size: 64, offset: 8640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1305, file: !1306, line: 933, baseType: !1664, size: 64, offset: 8704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1305, file: !1306, line: 943, baseType: !1821, size: 128, offset: 8768)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 16)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1305, file: !1306, line: 945, baseType: !1825, size: 64, offset: 8896)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1306, line: 49, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1305, file: !1306, line: 956, baseType: !1828, size: 64, offset: 8960)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1306, line: 45, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1305, file: !1306, line: 959, baseType: !1831, size: 64, offset: 9024)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1306, line: 959, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1305, file: !1306, line: 962, baseType: !1834, size: 64, offset: 9088)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1306, line: 66, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1305, file: !1306, line: 966, baseType: !1837, size: 64, offset: 9152)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1306, line: 50, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1305, file: !1306, line: 969, baseType: !1840, size: 64, offset: 9216)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1842, line: 82, size: 7296, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1879, !1888, !1889, !1891, !1892, !1893, !2510, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2540, !2541, !2548, !2549, !2550, !2551, !2552, !2553}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1841, file: !1842, line: 83, baseType: !1318, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1841, file: !1842, line: 84, baseType: !849, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1841, file: !1842, line: 85, baseType: !236, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1841, file: !1842, line: 86, baseType: !183, size: 128, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1841, file: !1842, line: 88, baseType: !1568, size: 128, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1841, file: !1842, line: 91, baseType: !1304, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1841, file: !1842, line: 94, baseType: !1851, size: 192, offset: 448)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1852, line: 30, size: 192, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1851, file: !1852, line: 31, baseType: !183, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1851, file: !1852, line: 32, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1857, line: 25, baseType: !1858)
!1857 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1857, line: 23, size: 64, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1858, file: !1857, line: 24, baseType: !1458, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1841, file: !1842, line: 97, baseType: !687, size: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1841, file: !1842, line: 100, baseType: !236, size: 32, offset: 704)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1841, file: !1842, line: 106, baseType: !236, size: 32, offset: 736)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1841, file: !1842, line: 107, baseType: !1304, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1841, file: !1842, line: 110, baseType: !236, size: 32, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 111, baseType: !7, size: 32, offset: 864)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1841, file: !1842, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1841, file: !1842, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1841, file: !1842, line: 128, baseType: !236, size: 32, offset: 928)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1841, file: !1842, line: 129, baseType: !183, size: 128, offset: 960)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1841, file: !1842, line: 132, baseType: !1380, size: 512, offset: 1088)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1841, file: !1842, line: 133, baseType: !1388, size: 64, offset: 1600)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1841, file: !1842, line: 140, baseType: !1874, size: 256, offset: 1664)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1875, size: 256, elements: !1656)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1842, line: 38, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1875, file: !1842, line: 39, baseType: !208, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1875, file: !1842, line: 40, baseType: !208, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1841, file: !1842, line: 146, baseType: !1880, size: 192, offset: 1920)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1842, line: 66, size: 192, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1880, file: !1842, line: 67, baseType: !1883, size: 192)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1842, line: 47, size: 192, elements: !1884)
!1884 = !{!1885, !1886, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1883, file: !1842, line: 48, baseType: !781, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1883, file: !1842, line: 49, baseType: !781, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1883, file: !1842, line: 50, baseType: !781, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1841, file: !1842, line: 150, baseType: !1617, size: 640, offset: 2112)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1841, file: !1842, line: 153, baseType: !1890, size: 256, offset: 2752)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1558, size: 256, elements: !224)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1841, file: !1842, line: 159, baseType: !1558, size: 64, offset: 3008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1841, file: !1842, line: 162, baseType: !236, size: 32, offset: 3072)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1841, file: !1842, line: 164, baseType: !1894, size: 64, offset: 3136)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1896, line: 285, size: 5056, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1904, !1905, !2409, !2410, !2411, !2420, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1895, file: !1896, line: 286, baseType: !236, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1895, file: !1896, line: 287, baseType: !1900, size: 32, offset: 32)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1901, line: 19, size: 32, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1900, file: !1901, line: 20, baseType: !1318, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1895, file: !1896, line: 288, baseType: !278, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1895, file: !1896, line: 289, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !1908, line: 302, size: 1472, elements: !1909)
!1908 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1911, !1912, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2174, !2175, !2176, !2177, !2179, !2279, !2282, !2283, !2408}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1907, file: !1908, line: 303, baseType: !236, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1907, file: !1908, line: 304, baseType: !1900, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !1907, file: !1908, line: 305, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1916, line: 14, size: 832, elements: !1917)
!1916 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !{!1918, !1919, !1920, !2144, !2145, !2146}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1915, file: !1916, line: 15, baseType: !282, size: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1915, file: !1916, line: 16, baseType: !174, size: 64, offset: 512)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1915, file: !1916, line: 17, baseType: !1921, size: 64, offset: 576)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !50, line: 1822, size: 2048, elements: !1924)
!1924 = !{!1925, !1926, !1930, !1934, !1938, !1939, !1940, !1944, !1957, !1958, !1966, !1970, !1971, !1975, !1976, !1980, !1985, !1986, !1990, !1994, !2102, !2106, !2107, !2111, !2112, !2118, !2122, !2127, !2131, !2135, !2139, !2143}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1923, file: !50, line: 1823, baseType: !174, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1923, file: !50, line: 1824, baseType: !1927, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!583, !412, !583, !236}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1923, file: !50, line: 1825, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!367, !412, !336, !382, !797}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1923, file: !50, line: 1826, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!367, !412, !215, !382, !797}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1923, file: !50, line: 1827, baseType: !939, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1923, file: !50, line: 1828, baseType: !939, size: 64, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1923, file: !50, line: 1829, baseType: !1941, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!236, !942, !542}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1923, file: !50, line: 1830, baseType: !1945, size: 64, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!236, !412, !1948}
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !50, line: 1776, size: 128, elements: !1950)
!1950 = !{!1951, !1956}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1949, file: !50, line: 1777, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !50, line: 1773, baseType: !1953)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!236, !1948, !215, !236, !583, !208, !7}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1949, file: !50, line: 1778, baseType: !583, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1923, file: !50, line: 1831, baseType: !1945, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1923, file: !50, line: 1832, baseType: !1959, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1962, !412, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1963, line: 52, baseType: !7)
!1963 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 27, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1923, file: !50, line: 1833, baseType: !1967, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!371, !412, !7, !219}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1923, file: !50, line: 1834, baseType: !1967, size: 64, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1923, file: !50, line: 1835, baseType: !1972, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!236, !412, !1077}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1923, file: !50, line: 1836, baseType: !219, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1923, file: !50, line: 1837, baseType: !1977, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!236, !481, !412}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1923, file: !50, line: 1838, baseType: !1981, size: 64, offset: 960)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!236, !412, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !50, line: 1007, baseType: !177)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1923, file: !50, line: 1839, baseType: !1977, size: 64, offset: 1024)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1923, file: !50, line: 1840, baseType: !1987, size: 64, offset: 1088)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!236, !412, !583, !583, !236}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1923, file: !50, line: 1841, baseType: !1991, size: 64, offset: 1152)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!236, !236, !412, !236}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1923, file: !50, line: 1842, baseType: !1995, size: 64, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!236, !412, !236, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !50, line: 1062, size: 1664, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2032, !2033, !2034, !2047, !2078}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1999, file: !50, line: 1063, baseType: !1998, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1999, file: !50, line: 1064, baseType: !183, size: 128, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1999, file: !50, line: 1065, baseType: !691, size: 128, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1999, file: !50, line: 1066, baseType: !183, size: 128, offset: 320)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1999, file: !50, line: 1069, baseType: !183, size: 128, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1999, file: !50, line: 1072, baseType: !1984, size: 64, offset: 576)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1999, file: !50, line: 1073, baseType: !7, size: 32, offset: 640)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1999, file: !50, line: 1074, baseType: !265, size: 8, offset: 672)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1999, file: !50, line: 1075, baseType: !7, size: 32, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1999, file: !50, line: 1076, baseType: !236, size: 32, offset: 736)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1999, file: !50, line: 1077, baseType: !1568, size: 128, offset: 768)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1999, file: !50, line: 1078, baseType: !412, size: 64, offset: 896)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1999, file: !50, line: 1079, baseType: !583, size: 64, offset: 960)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1999, file: !50, line: 1080, baseType: !583, size: 64, offset: 1024)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1999, file: !50, line: 1082, baseType: !2016, size: 64, offset: 1088)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !50, line: 1314, size: 320, elements: !2018)
!2018 = !{!2019, !2027, !2028, !2029, !2030, !2031}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2017, file: !50, line: 1315, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2021, line: 20, baseType: !2022)
!2021 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2021, line: 11, elements: !2023)
!2023 = !{!2024}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2022, file: !2021, line: 12, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !307, line: 33, baseType: !2026)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 31, elements: !309)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2017, file: !50, line: 1316, baseType: !236, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2017, file: !50, line: 1317, baseType: !236, size: 32, offset: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2017, file: !50, line: 1318, baseType: !2016, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2017, file: !50, line: 1319, baseType: !412, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2017, file: !50, line: 1320, baseType: !425, size: 128, align: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1999, file: !50, line: 1084, baseType: !219, size: 64, offset: 1152)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1999, file: !50, line: 1085, baseType: !219, size: 64, offset: 1216)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1999, file: !50, line: 1087, baseType: !2035, size: 64, offset: 1280)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !50, line: 1011, size: 128, elements: !2038)
!2038 = !{!2039, !2043}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2037, file: !50, line: 1012, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1998, !1998}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2037, file: !50, line: 1013, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !1998}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1999, file: !50, line: 1088, baseType: !2048, size: 64, offset: 1344)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !50, line: 1016, size: 512, elements: !2051)
!2051 = !{!2052, !2056, !2060, !2061, !2065, !2069, !2073, !2077}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2050, file: !50, line: 1017, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!1984, !1984}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2050, file: !50, line: 1018, baseType: !2057, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1984}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2050, file: !50, line: 1019, baseType: !2044, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2050, file: !50, line: 1020, baseType: !2062, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!236, !1998, !236}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2050, file: !50, line: 1021, baseType: !2066, size: 64, offset: 256)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!542, !1998}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2050, file: !50, line: 1022, baseType: !2070, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!236, !1998, !236, !187}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2050, file: !50, line: 1023, baseType: !2074, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1998, !916}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2050, file: !50, line: 1024, baseType: !2066, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1999, file: !50, line: 1097, baseType: !2079, size: 256, offset: 1408)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1999, file: !50, line: 1089, size: 256, elements: !2080)
!2080 = !{!2081, !2090, !2096}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2079, file: !50, line: 1090, baseType: !2082, size: 256)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2083, line: 10, size: 256, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2084 = !{!2085, !2086, !2089}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2082, file: !2083, line: 11, baseType: !250, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2082, file: !2083, line: 12, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2083, line: 5, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2082, file: !2083, line: 13, baseType: !183, size: 128, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2079, file: !50, line: 1091, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2083, line: 17, size: 64, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2091, file: !2083, line: 18, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2083, line: 16, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2079, file: !50, line: 1096, baseType: !2097, size: 192)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2079, file: !50, line: 1092, size: 192, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2097, file: !50, line: 1093, baseType: !183, size: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2097, file: !50, line: 1094, baseType: !236, size: 32, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2097, file: !50, line: 1095, baseType: !7, size: 32, offset: 160)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1923, file: !50, line: 1843, baseType: !2103, size: 64, offset: 1280)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!367, !412, !822, !236, !382, !797, !236}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1923, file: !50, line: 1844, baseType: !1197, size: 64, offset: 1344)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1923, file: !50, line: 1845, baseType: !2108, size: 64, offset: 1408)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!236, !236}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1923, file: !50, line: 1846, baseType: !1995, size: 64, offset: 1472)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1923, file: !50, line: 1847, baseType: !2113, size: 64, offset: 1536)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!367, !2116, !412, !797, !382, !7}
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1306, line: 53, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1923, file: !50, line: 1848, baseType: !2119, size: 64, offset: 1600)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!367, !412, !797, !2116, !382, !7}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1923, file: !50, line: 1849, baseType: !2123, size: 64, offset: 1664)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!236, !412, !371, !2126, !916}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1923, file: !50, line: 1850, baseType: !2128, size: 64, offset: 1728)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!371, !412, !236, !583, !583}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1923, file: !50, line: 1852, baseType: !2132, size: 64, offset: 1792)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !763, !412}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1923, file: !50, line: 1856, baseType: !2136, size: 64, offset: 1856)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!367, !412, !583, !412, !583, !382, !7}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1923, file: !50, line: 1858, baseType: !2140, size: 64, offset: 1920)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!583, !412, !583, !412, !583, !583, !7}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1923, file: !50, line: 1861, baseType: !1987, size: 64, offset: 1984)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1915, file: !1916, line: 18, baseType: !183, size: 128, offset: 640)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1915, file: !1916, line: 19, baseType: !565, size: 32, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1915, file: !1916, line: 20, baseType: !7, size: 32, offset: 800)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1907, file: !1908, line: 306, baseType: !174, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !1907, file: !1908, line: 307, baseType: !215, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1907, file: !1908, line: 308, baseType: !215, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !1907, file: !1908, line: 309, baseType: !236, size: 32, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !1907, file: !1908, line: 310, baseType: !236, size: 32, offset: 352)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !1907, file: !1908, line: 311, baseType: !236, size: 32, offset: 384)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1907, file: !1908, line: 312, baseType: !7, size: 32, offset: 416)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !1908, line: 313, baseType: !1293, size: 16, offset: 448)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !1907, file: !1908, line: 314, baseType: !1293, size: 16, offset: 464)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !1907, file: !1908, line: 315, baseType: !2157, size: 352, offset: 480)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2158, line: 32, size: 352, elements: !2159)
!2158 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2162, !2163, !2164, !2165, !2167, !2171, !2173}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2157, file: !2158, line: 33, baseType: !2161, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2158, line: 9, baseType: !7)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2157, file: !2158, line: 34, baseType: !2161, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2157, file: !2158, line: 35, baseType: !2161, size: 32, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2157, file: !2158, line: 36, baseType: !2161, size: 32, offset: 96)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2157, file: !2158, line: 37, baseType: !2166, size: 8, offset: 128)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2158, line: 7, baseType: !265)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2157, file: !2158, line: 38, baseType: !2168, size: 152, offset: 136)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2166, size: 152, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 19)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2157, file: !2158, line: 39, baseType: !2172, size: 32, offset: 288)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2158, line: 8, baseType: !7)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2157, file: !2158, line: 40, baseType: !2172, size: 32, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1908, line: 316, baseType: !219, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !1907, file: !1908, line: 317, baseType: !261, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1907, file: !1908, line: 318, baseType: !1906, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !1907, file: !1908, line: 323, baseType: !2178, size: 64, offset: 1024)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !1907, file: !1908, line: 324, baseType: !2180, size: 64, offset: 1088)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !1896, line: 230, size: 2432, elements: !2183)
!2183 = !{!2184, !2227, !2228, !2229, !2251, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2274, !2275, !2276, !2277, !2278}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2182, file: !1896, line: 231, baseType: !2185, size: 1024)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !1896, line: 85, size: 1024, elements: !2186)
!2186 = !{!2187, !2205, !2217, !2218, !2219, !2220, !2224, !2225, !2226}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2185, file: !1896, line: 86, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !1896, line: 58, size: 256, elements: !2190)
!2190 = !{!2191, !2196, !2197, !2198, !2199, !2200, !2201}
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !1896, line: 59, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2189, file: !1896, line: 59, size: 64, elements: !2193)
!2193 = !{!2194, !2195}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2192, file: !1896, line: 60, baseType: !2188, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2192, file: !1896, line: 61, baseType: !419, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2189, file: !1896, line: 63, baseType: !236, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2189, file: !1896, line: 64, baseType: !236, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2189, file: !1896, line: 65, baseType: !236, size: 32, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2189, file: !1896, line: 66, baseType: !236, size: 32, offset: 160)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !1896, line: 67, baseType: !236, size: 32, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2189, file: !1896, line: 69, baseType: !2202, offset: 256)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: -1)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2185, file: !1896, line: 87, baseType: !2206, size: 256, offset: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2207, line: 102, size: 256, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2206, file: !2207, line: 103, baseType: !779, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2206, file: !2207, line: 104, baseType: !183, size: 128, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2206, file: !2207, line: 105, baseType: !2212, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2207, line: 21, baseType: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2185, file: !1896, line: 88, baseType: !775, size: 192, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2185, file: !1896, line: 89, baseType: !849, size: 32, offset: 512)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2185, file: !1896, line: 90, baseType: !2189, size: 256, offset: 576)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2185, file: !1896, line: 91, baseType: !2221, size: 64, offset: 832)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !420, line: 54, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2221, file: !420, line: 55, baseType: !423, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2185, file: !1896, line: 92, baseType: !849, size: 32, offset: 896)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2185, file: !1896, line: 93, baseType: !236, size: 32, offset: 928)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2185, file: !1896, line: 94, baseType: !2188, size: 64, offset: 960)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2182, file: !1896, line: 232, baseType: !1894, size: 64, offset: 1024)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2182, file: !1896, line: 233, baseType: !1894, size: 64, offset: 1088)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2182, file: !1896, line: 234, baseType: !2230, size: 64, offset: 1152)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !1896, line: 205, size: 320, elements: !2233)
!2233 = !{!2234, !2238, !2242, !2246, !2250}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2232, file: !1896, line: 207, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!236, !2181}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2232, file: !1896, line: 209, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2181, !236}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2232, file: !1896, line: 213, baseType: !2243, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2181}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2232, file: !1896, line: 218, baseType: !2247, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!236, !2181, !1894}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2232, file: !1896, line: 220, baseType: !2243, size: 64, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2182, file: !1896, line: 235, baseType: !2252, size: 64, offset: 1216)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2254)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !1896, line: 223, size: 128, elements: !2255)
!2255 = !{!2256, !2260}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2254, file: !1896, line: 224, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!236, !2181, !478, !478, !382}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2254, file: !1896, line: 225, baseType: !2243, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2182, file: !1896, line: 236, baseType: !295, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2182, file: !1896, line: 237, baseType: !236, size: 32, offset: 1280)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2182, file: !1896, line: 238, baseType: !236, size: 32, offset: 1312)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2182, file: !1896, line: 239, baseType: !1568, size: 128, offset: 1344)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2182, file: !1896, line: 240, baseType: !1568, size: 128, offset: 1472)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2182, file: !1896, line: 241, baseType: !219, size: 64, offset: 1600)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2182, file: !1896, line: 242, baseType: !219, size: 64, offset: 1664)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2182, file: !1896, line: 243, baseType: !265, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !2182, file: !1896, line: 244, baseType: !265, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2182, file: !1896, line: 245, baseType: !775, size: 192, offset: 1792)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2182, file: !1896, line: 246, baseType: !775, size: 192, offset: 1984)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2182, file: !1896, line: 247, baseType: !2273, size: 64, offset: 2176)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2182, file: !1896, line: 248, baseType: !7, size: 32, offset: 2240)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2182, file: !1896, line: 249, baseType: !7, size: 32, offset: 2272)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2182, file: !1896, line: 250, baseType: !236, size: 32, offset: 2304)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2182, file: !1896, line: 253, baseType: !1900, size: 32, offset: 2336)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2182, file: !1896, line: 254, baseType: !177, size: 64, offset: 2368)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1907, file: !1908, line: 325, baseType: !2280, size: 64, offset: 1152)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !1907, file: !1908, line: 326, baseType: !177, size: 64, offset: 1216)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1907, file: !1908, line: 332, baseType: !2284, size: 64, offset: 1280)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2286)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !1908, line: 254, size: 2176, elements: !2287)
!2287 = !{!2288, !2292, !2296, !2300, !2304, !2308, !2312, !2313, !2317, !2321, !2322, !2326, !2327, !2331, !2335, !2339, !2340, !2341, !2342, !2343, !2344, !2348, !2349, !2350, !2354, !2358, !2359, !2363, !2375, !2390, !2396, !2402, !2403, !2407}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2286, file: !1908, line: 255, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!1894, !1906, !412, !236}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !2286, file: !1908, line: 257, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!236, !1906, !1894}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2286, file: !1908, line: 258, baseType: !2297, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !1906, !1894}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2286, file: !1908, line: 259, baseType: !2301, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!236, !1894, !412}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2286, file: !1908, line: 260, baseType: !2305, size: 64, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !1894, !412}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2286, file: !1908, line: 261, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !1894}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2286, file: !1908, line: 262, baseType: !2309, size: 64, offset: 384)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2286, file: !1908, line: 263, baseType: !2314, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!236, !1894, !478, !236}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !2286, file: !1908, line: 265, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!236, !1894, !265}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !2286, file: !1908, line: 266, baseType: !2309, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !2286, file: !1908, line: 267, baseType: !2323, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!236, !1894}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !2286, file: !1908, line: 268, baseType: !2323, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2286, file: !1908, line: 269, baseType: !2328, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!236, !1894, !7, !219}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2286, file: !1908, line: 271, baseType: !2332, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!371, !1894, !7, !219}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2286, file: !1908, line: 273, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !1894, !2281}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !2286, file: !1908, line: 274, baseType: !2309, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !2286, file: !1908, line: 275, baseType: !2309, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2286, file: !1908, line: 276, baseType: !2309, size: 64, offset: 1088)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2286, file: !1908, line: 277, baseType: !2309, size: 64, offset: 1152)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2286, file: !1908, line: 278, baseType: !2309, size: 64, offset: 1216)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !2286, file: !1908, line: 279, baseType: !2345, size: 64, offset: 1280)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!236, !1894, !236}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2286, file: !1908, line: 280, baseType: !2309, size: 64, offset: 1344)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !2286, file: !1908, line: 281, baseType: !2309, size: 64, offset: 1408)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !2286, file: !1908, line: 282, baseType: !2351, size: 64, offset: 1472)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !1894, !236}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !2286, file: !1908, line: 283, baseType: !2355, size: 64, offset: 1536)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !1894, !217}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !2286, file: !1908, line: 284, baseType: !2323, size: 64, offset: 1600)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !2286, file: !1908, line: 285, baseType: !2360, size: 64, offset: 1664)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!236, !1894, !7, !7}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !2286, file: !1908, line: 287, baseType: !2364, size: 64, offset: 1728)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!236, !1894, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !2369, line: 15, size: 64, elements: !2370)
!2369 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !2368, file: !2369, line: 16, baseType: !274, size: 16)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !2368, file: !2369, line: 17, baseType: !274, size: 16, offset: 16)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !2368, file: !2369, line: 18, baseType: !274, size: 16, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !2368, file: !2369, line: 19, baseType: !274, size: 16, offset: 48)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !2286, file: !1908, line: 288, baseType: !2376, size: 64, offset: 1792)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!236, !1894, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !2381, line: 10, size: 128, elements: !2382)
!2381 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!2382 = !{!2383, !2384, !2385, !2389}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !2380, file: !2381, line: 12, baseType: !955, size: 16)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !2380, file: !2381, line: 13, baseType: !955, size: 16, offset: 16)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !2380, file: !2381, line: 14, baseType: !2386, size: 80, offset: 32)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 80, elements: !2387)
!2387 = !{!2388}
!2388 = !DISubrange(count: 5)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !2380, file: !2381, line: 15, baseType: !955, size: 16, offset: 112)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !2286, file: !1908, line: 289, baseType: !2391, size: 64, offset: 1856)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!236, !1894, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !1908, line: 251, flags: DIFlagFwdDecl)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !2286, file: !1908, line: 291, baseType: !2397, size: 64, offset: 1920)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!236, !1894, !2400}
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !1908, line: 252, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !2286, file: !1908, line: 292, baseType: !2397, size: 64, offset: 1984)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2286, file: !1908, line: 293, baseType: !2404, size: 64, offset: 2048)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !1894, !763}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !2286, file: !1908, line: 299, baseType: !807, size: 64, offset: 2112)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !1907, file: !1908, line: 333, baseType: !183, size: 128, offset: 1344)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1895, file: !1896, line: 290, baseType: !2284, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1895, file: !1896, line: 291, baseType: !236, size: 32, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !1895, file: !1896, line: 294, baseType: !2412, size: 384, offset: 320)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !2413, line: 133, size: 384, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416, !2417, !2418, !2419}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2412, file: !2413, line: 134, baseType: !779, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2412, file: !2413, line: 135, baseType: !875, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !2412, file: !2413, line: 136, baseType: !7, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2412, file: !2413, line: 137, baseType: !183, size: 128, offset: 128)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2412, file: !2413, line: 138, baseType: !183, size: 128, offset: 256)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !1895, file: !1896, line: 295, baseType: !2421, size: 64, offset: 704)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !2413, line: 215, size: 128, elements: !2423)
!2423 = !{!2424, !2469}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2422, file: !2413, line: 216, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !2413, line: 175, size: 1216, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2439, !2443, !2447, !2448, !2449, !2453, !2454, !2458, !2459, !2463, !2467, !2468}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2426, file: !2413, line: 176, baseType: !236, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2426, file: !2413, line: 177, baseType: !336, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2426, file: !2413, line: 178, baseType: !236, size: 32, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2426, file: !2413, line: 179, baseType: !236, size: 32, offset: 160)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2426, file: !2413, line: 184, baseType: !2323, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2426, file: !2413, line: 185, baseType: !2309, size: 64, offset: 256)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !2426, file: !2413, line: 186, baseType: !2309, size: 64, offset: 320)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2426, file: !2413, line: 187, baseType: !2436, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!367, !1894, !412, !2273, !382}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2426, file: !2413, line: 189, baseType: !2440, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!367, !1894, !412, !478, !382}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2426, file: !2413, line: 191, baseType: !2444, size: 64, offset: 512)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!236, !1894, !412, !7, !219}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2426, file: !2413, line: 193, baseType: !2444, size: 64, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !2426, file: !2413, line: 195, baseType: !2336, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2426, file: !2413, line: 196, baseType: !2450, size: 64, offset: 704)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!1962, !1894, !412, !1964}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !2426, file: !2413, line: 198, baseType: !2323, size: 64, offset: 768)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2426, file: !2413, line: 203, baseType: !2455, size: 64, offset: 832)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !1894, !478, !336, !236}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2426, file: !2413, line: 205, baseType: !2309, size: 64, offset: 896)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !2426, file: !2413, line: 206, baseType: !2460, size: 64, offset: 960)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !1894, !7}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !2426, file: !2413, line: 207, baseType: !2464, size: 64, offset: 1024)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!236, !1894, !478, !336, !236}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2426, file: !2413, line: 210, baseType: !174, size: 64, offset: 1088)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2426, file: !2413, line: 212, baseType: !236, size: 32, offset: 1152)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2422, file: !2413, line: 217, baseType: !1894, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !1895, file: !1896, line: 297, baseType: !775, size: 192, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !1895, file: !1896, line: 298, baseType: !775, size: 192, offset: 960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !1895, file: !1896, line: 299, baseType: !775, size: 192, offset: 1152)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !1895, file: !1896, line: 300, baseType: !869, size: 256, offset: 1344)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !1895, file: !1896, line: 301, baseType: !775, size: 192, offset: 1600)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !1895, file: !1896, line: 302, baseType: !295, offset: 1792)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !1895, file: !1896, line: 303, baseType: !295, offset: 1792)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !1895, file: !1896, line: 305, baseType: !2157, size: 352, offset: 1792)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !1895, file: !1896, line: 305, baseType: !2157, size: 352, offset: 2144)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !1895, file: !1896, line: 306, baseType: !2379, size: 64, offset: 2496)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 307, baseType: !2481, size: 512, offset: 2560)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 512, elements: !341)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !1895, file: !1896, line: 308, baseType: !1558, size: 64, offset: 3072)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1895, file: !1896, line: 313, baseType: !1558, size: 64, offset: 3136)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1895, file: !1896, line: 314, baseType: !219, size: 64, offset: 3200)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !1896, line: 315, baseType: !236, size: 32, offset: 3264)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !1895, file: !1896, line: 316, baseType: !2368, size: 64, offset: 3296)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !1895, file: !1896, line: 317, baseType: !219, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !1895, file: !1896, line: 318, baseType: !219, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1895, file: !1896, line: 319, baseType: !219, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !1895, file: !1896, line: 320, baseType: !236, size: 32, offset: 3456)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !1895, file: !1896, line: 321, baseType: !219, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !1895, file: !1896, line: 322, baseType: !219, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !1895, file: !1896, line: 323, baseType: !219, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !1895, file: !1896, line: 324, baseType: !7, size: 32, offset: 3584)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !1895, file: !1896, line: 325, baseType: !236, size: 32, offset: 3616)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1895, file: !1896, line: 327, baseType: !1894, size: 64, offset: 3648)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1895, file: !1896, line: 328, baseType: !2016, size: 64, offset: 3712)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !1895, file: !1896, line: 329, baseType: !1568, size: 128, offset: 3776)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !1895, file: !1896, line: 330, baseType: !1568, size: 128, offset: 3904)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !1895, file: !1896, line: 331, baseType: !2206, size: 256, offset: 4032)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !1895, file: !1896, line: 332, baseType: !177, size: 64, offset: 4288)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1895, file: !1896, line: 333, baseType: !177, size: 64, offset: 4352)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !1895, file: !1896, line: 334, baseType: !295, offset: 4416)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !1895, file: !1896, line: 335, baseType: !183, size: 128, offset: 4416)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !1895, file: !1896, line: 339, baseType: !236, size: 32, offset: 4544)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !1895, file: !1896, line: 340, baseType: !2273, size: 64, offset: 4608)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !1895, file: !1896, line: 341, baseType: !236, size: 32, offset: 4672)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !1895, file: !1896, line: 343, baseType: !2206, size: 256, offset: 4736)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1895, file: !1896, line: 344, baseType: !2181, size: 64, offset: 4992)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1841, file: !1842, line: 175, baseType: !2511, size: 32, offset: 3200)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !448, line: 805, baseType: !2512)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !448, line: 798, size: 32, elements: !2513)
!2513 = !{!2514, !2515}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2512, file: !448, line: 803, baseType: !447, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2512, file: !448, line: 804, baseType: !295, offset: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1841, file: !1842, line: 176, baseType: !208, size: 64, offset: 3264)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1841, file: !1842, line: 176, baseType: !208, size: 64, offset: 3328)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1841, file: !1842, line: 176, baseType: !208, size: 64, offset: 3392)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1841, file: !1842, line: 176, baseType: !208, size: 64, offset: 3456)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1841, file: !1842, line: 177, baseType: !208, size: 64, offset: 3520)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1841, file: !1842, line: 178, baseType: !208, size: 64, offset: 3584)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1841, file: !1842, line: 179, baseType: !1605, size: 128, offset: 3648)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1841, file: !1842, line: 180, baseType: !219, size: 64, offset: 3776)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1841, file: !1842, line: 180, baseType: !219, size: 64, offset: 3840)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1841, file: !1842, line: 180, baseType: !219, size: 64, offset: 3904)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1841, file: !1842, line: 180, baseType: !219, size: 64, offset: 3968)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1841, file: !1842, line: 181, baseType: !219, size: 64, offset: 4032)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1841, file: !1842, line: 181, baseType: !219, size: 64, offset: 4096)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1841, file: !1842, line: 181, baseType: !219, size: 64, offset: 4160)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1841, file: !1842, line: 181, baseType: !219, size: 64, offset: 4224)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1841, file: !1842, line: 182, baseType: !219, size: 64, offset: 4288)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1841, file: !1842, line: 182, baseType: !219, size: 64, offset: 4352)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1841, file: !1842, line: 182, baseType: !219, size: 64, offset: 4416)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1841, file: !1842, line: 182, baseType: !219, size: 64, offset: 4480)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1841, file: !1842, line: 183, baseType: !219, size: 64, offset: 4544)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1841, file: !1842, line: 183, baseType: !219, size: 64, offset: 4608)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1841, file: !1842, line: 184, baseType: !2538, offset: 4672)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2539, line: 12, elements: !309)
!2539 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1841, file: !1842, line: 192, baseType: !212, size: 64, offset: 4672)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1841, file: !1842, line: 203, baseType: !2542, size: 2048, offset: 4736)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2543, size: 2048, elements: !1822)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2544, line: 43, size: 128, elements: !2545)
!2544 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2543, file: !2544, line: 44, baseType: !384, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2543, file: !2544, line: 45, baseType: !384, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1841, file: !1842, line: 220, baseType: !542, size: 8, offset: 6784)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1841, file: !1842, line: 221, baseType: !1293, size: 16, offset: 6800)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1841, file: !1842, line: 222, baseType: !1293, size: 16, offset: 6816)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1841, file: !1842, line: 224, baseType: !1070, size: 64, offset: 6848)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1841, file: !1842, line: 227, baseType: !775, size: 192, offset: 6912)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1841, file: !1842, line: 233, baseType: !775, size: 192, offset: 7104)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1305, file: !1306, line: 970, baseType: !2555, size: 64, offset: 9280)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1842, line: 20, size: 16576, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2556, file: !1842, line: 21, baseType: !295)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2556, file: !1842, line: 22, baseType: !1318, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2556, file: !1842, line: 23, baseType: !1568, size: 128, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2556, file: !1842, line: 24, baseType: !2562, size: 16384, offset: 192)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 16384, elements: !341)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1852, line: 49, size: 256, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2563, file: !1852, line: 50, baseType: !2566, size: 256)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1852, line: 35, size: 256, elements: !2567)
!2567 = !{!2568, !2575, !2576, !2582}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2566, file: !1852, line: 37, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2570, line: 19, baseType: !2571)
!2570 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2570, line: 18, baseType: !2573)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !236}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2566, file: !1852, line: 38, baseType: !219, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2566, file: !1852, line: 44, baseType: !2577, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2570, line: 22, baseType: !2578)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2570, line: 21, baseType: !2580)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2566, file: !1852, line: 46, baseType: !1856, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1305, file: !1306, line: 971, baseType: !1856, size: 64, offset: 9344)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1305, file: !1306, line: 972, baseType: !1856, size: 64, offset: 9408)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1305, file: !1306, line: 974, baseType: !1856, size: 64, offset: 9472)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1305, file: !1306, line: 975, baseType: !1851, size: 192, offset: 9536)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1305, file: !1306, line: 976, baseType: !219, size: 64, offset: 9728)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1305, file: !1306, line: 977, baseType: !382, size: 64, offset: 9792)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1305, file: !1306, line: 978, baseType: !7, size: 32, offset: 9856)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1305, file: !1306, line: 980, baseType: !428, size: 64, offset: 9920)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1305, file: !1306, line: 989, baseType: !2592, size: 128, offset: 9984)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2593, line: 35, size: 128, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2596, !2597}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2592, file: !2593, line: 36, baseType: !236, size: 32)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2592, file: !2593, line: 37, baseType: !849, size: 32, offset: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2592, file: !2593, line: 38, baseType: !2598, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2593, line: 23, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1305, file: !1306, line: 992, baseType: !208, size: 64, offset: 10112)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1305, file: !1306, line: 993, baseType: !208, size: 64, offset: 10176)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1305, file: !1306, line: 996, baseType: !295, offset: 10240)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1305, file: !1306, line: 999, baseType: !875, offset: 10240)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1305, file: !1306, line: 1001, baseType: !2605, size: 64, offset: 10240)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1306, line: 636, size: 64, elements: !2606)
!2606 = !{!2607}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2605, file: !1306, line: 637, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1305, file: !1306, line: 1005, baseType: !854, size: 128, offset: 10304)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1305, file: !1306, line: 1007, baseType: !1304, size: 64, offset: 10432)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1305, file: !1306, line: 1009, baseType: !2612, size: 64, offset: 10496)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1306, line: 1009, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1305, file: !1306, line: 1043, baseType: !177, size: 64, offset: 10560)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1305, file: !1306, line: 1046, baseType: !2616, size: 64, offset: 10624)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1306, line: 41, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1305, file: !1306, line: 1050, baseType: !2619, size: 64, offset: 10688)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1306, line: 42, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1305, file: !1306, line: 1054, baseType: !2622, size: 64, offset: 10752)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1306, line: 55, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1305, file: !1306, line: 1056, baseType: !2625, size: 64, offset: 10816)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1306, line: 40, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1305, file: !1306, line: 1058, baseType: !2628, size: 64, offset: 10880)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2630, line: 99, size: 704, elements: !2631)
!2630 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2657, !2658}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2629, file: !2630, line: 100, baseType: !779, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2629, file: !2630, line: 101, baseType: !849, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2629, file: !2630, line: 102, baseType: !849, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2629, file: !2630, line: 105, baseType: !295, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2629, file: !2630, line: 107, baseType: !274, size: 16, offset: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2629, file: !2630, line: 109, baseType: !840, size: 128, offset: 192)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2629, file: !2630, line: 110, baseType: !2639, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2630, line: 73, size: 448, elements: !2641)
!2641 = !{!2642, !2645, !2646, !2651, !2656}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2640, file: !2630, line: 74, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2630, line: 74, flags: DIFlagFwdDecl)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2640, file: !2630, line: 75, baseType: !2628, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2640, file: !2630, line: 83, baseType: !2647, size: 128, offset: 128)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2640, file: !2630, line: 83, size: 128, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2647, file: !2630, line: 84, baseType: !183, size: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2647, file: !2630, line: 85, baseType: !1030, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, scope: !2640, file: !2630, line: 87, baseType: !2652, size: 128, offset: 256)
!2652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2640, file: !2630, line: 87, size: 128, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2652, file: !2630, line: 88, baseType: !691, size: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2652, file: !2630, line: 89, baseType: !425, size: 128, align: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !2630, line: 92, baseType: !7, size: 32, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2629, file: !2630, line: 111, baseType: !687, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2629, file: !2630, line: 113, baseType: !2206, size: 256, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1305, file: !1306, line: 1061, baseType: !2660, size: 64, offset: 10944)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1306, line: 43, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1305, file: !1306, line: 1064, baseType: !219, size: 64, offset: 11008)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1305, file: !1306, line: 1065, baseType: !2664, size: 64, offset: 11072)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1852, line: 14, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1852, line: 12, size: 384, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, scope: !2666, file: !1852, line: 13, baseType: !2669, size: 384)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2666, file: !1852, line: 13, size: 384, elements: !2670)
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2669, file: !1852, line: 13, baseType: !236, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2669, file: !1852, line: 13, baseType: !236, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2669, file: !1852, line: 13, baseType: !236, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2669, file: !1852, line: 13, baseType: !2675, size: 256, offset: 128)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2676, line: 32, size: 256, elements: !2677)
!2676 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2677 = !{!2678, !2683, !2696, !2702, !2711, !2731, !2736}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2675, file: !2676, line: 37, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 34, size: 64, elements: !2680)
!2680 = !{!2681, !2682}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2679, file: !2676, line: 35, baseType: !1547, size: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2679, file: !2676, line: 36, baseType: !493, size: 32, offset: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2675, file: !2676, line: 45, baseType: !2684, size: 192)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 40, size: 192, elements: !2685)
!2685 = !{!2686, !2688, !2689, !2695}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2684, file: !2676, line: 41, baseType: !2687, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !369, line: 95, baseType: !236)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2684, file: !2676, line: 42, baseType: !236, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2684, file: !2676, line: 43, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2676, line: 11, baseType: !2691)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2676, line: 8, size: 64, elements: !2692)
!2692 = !{!2693, !2694}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2691, file: !2676, line: 9, baseType: !236, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2691, file: !2676, line: 10, baseType: !177, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2684, file: !2676, line: 44, baseType: !236, size: 32, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2675, file: !2676, line: 52, baseType: !2697, size: 128)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 48, size: 128, elements: !2698)
!2698 = !{!2699, !2700, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2697, file: !2676, line: 49, baseType: !1547, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2697, file: !2676, line: 50, baseType: !493, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2697, file: !2676, line: 51, baseType: !2690, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2675, file: !2676, line: 61, baseType: !2703, size: 256)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 55, size: 256, elements: !2704)
!2704 = !{!2705, !2706, !2707, !2708, !2710}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2703, file: !2676, line: 56, baseType: !1547, size: 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2703, file: !2676, line: 57, baseType: !493, size: 32, offset: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2703, file: !2676, line: 58, baseType: !236, size: 32, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2703, file: !2676, line: 59, baseType: !2709, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !369, line: 94, baseType: !370)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2703, file: !2676, line: 60, baseType: !2709, size: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2675, file: !2676, line: 95, baseType: !2712, size: 256)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 64, size: 256, elements: !2713)
!2713 = !{!2714, !2715}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2712, file: !2676, line: 65, baseType: !177, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !2676, line: 77, baseType: !2716, size: 192, offset: 64)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2712, file: !2676, line: 77, size: 192, elements: !2717)
!2717 = !{!2718, !2719, !2726}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2716, file: !2676, line: 82, baseType: !1293, size: 16)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2716, file: !2676, line: 88, baseType: !2720, size: 192)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2716, file: !2676, line: 84, size: 192, elements: !2721)
!2721 = !{!2722, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2720, file: !2676, line: 85, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 64, elements: !1418)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2720, file: !2676, line: 86, baseType: !177, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2720, file: !2676, line: 87, baseType: !177, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2716, file: !2676, line: 93, baseType: !2727, size: 96)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2716, file: !2676, line: 90, size: 96, elements: !2728)
!2728 = !{!2729, !2730}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2727, file: !2676, line: 91, baseType: !2723, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2727, file: !2676, line: 92, baseType: !251, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2675, file: !2676, line: 101, baseType: !2732, size: 128)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 98, size: 128, elements: !2733)
!2733 = !{!2734, !2735}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2732, file: !2676, line: 99, baseType: !371, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2732, file: !2676, line: 100, baseType: !236, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2675, file: !2676, line: 108, baseType: !2737, size: 128)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2675, file: !2676, line: 104, size: 128, elements: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2737, file: !2676, line: 105, baseType: !177, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2737, file: !2676, line: 106, baseType: !236, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2737, file: !2676, line: 107, baseType: !7, size: 32, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1305, file: !1306, line: 1067, baseType: !2538, offset: 11136)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1305, file: !1306, line: 1099, baseType: !2744, size: 64, offset: 11136)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1306, line: 56, flags: DIFlagFwdDecl)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1305, file: !1306, line: 1103, baseType: !183, size: 128, offset: 11200)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1305, file: !1306, line: 1104, baseType: !2748, size: 64, offset: 11328)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1306, line: 46, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1305, file: !1306, line: 1105, baseType: !775, size: 192, offset: 11392)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1305, file: !1306, line: 1106, baseType: !7, size: 32, offset: 11584)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1305, file: !1306, line: 1109, baseType: !2753, size: 128, offset: 11648)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2754, size: 128, elements: !1656)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1306, line: 51, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1305, file: !1306, line: 1110, baseType: !775, size: 192, offset: 11776)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1305, file: !1306, line: 1111, baseType: !183, size: 128, offset: 11968)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1305, file: !1306, line: 1173, baseType: !2759, size: 64, offset: 12096)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2761, line: 62, size: 256, align: 256, elements: !2762)
!2761 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !{!2763, !2764, !2765, !2770}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2760, file: !2761, line: 75, baseType: !251, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2760, file: !2761, line: 90, baseType: !251, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2760, file: !2761, line: 124, baseType: !2766, size: 64, offset: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2760, file: !2761, line: 109, size: 64, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2766, file: !2761, line: 110, baseType: !210, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2766, file: !2761, line: 112, baseType: !210, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2760, file: !2761, line: 144, baseType: !251, size: 32, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1305, file: !1306, line: 1174, baseType: !250, size: 32, offset: 12160)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1305, file: !1306, line: 1179, baseType: !219, size: 64, offset: 12224)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1305, file: !1306, line: 1182, baseType: !2774, size: 128, offset: 12288)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1247, line: 76, size: 128, elements: !2775)
!2775 = !{!2776, !2781, !2782}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2774, file: !1247, line: 85, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2778, line: 7, size: 64, elements: !2779)
!2778 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2777, file: !2778, line: 12, baseType: !1455, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2774, file: !1247, line: 88, baseType: !542, size: 8, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2774, file: !1247, line: 95, baseType: !542, size: 8, offset: 72)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !1306, line: 1184, baseType: !2784, size: 128, offset: 12416)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !1306, line: 1184, size: 128, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2784, file: !1306, line: 1185, baseType: !1318, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2784, file: !1306, line: 1186, baseType: !425, size: 128, align: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1305, file: !1306, line: 1190, baseType: !2116, size: 64, offset: 12544)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1305, file: !1306, line: 1192, baseType: !2790, size: 128, offset: 12608)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1247, line: 64, size: 128, elements: !2791)
!2791 = !{!2792, !2793, !2794}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2790, file: !1247, line: 65, baseType: !822, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2790, file: !1247, line: 67, baseType: !251, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2790, file: !1247, line: 68, baseType: !251, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1305, file: !1306, line: 1206, baseType: !236, size: 32, offset: 12736)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1305, file: !1306, line: 1207, baseType: !236, size: 32, offset: 12768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1305, file: !1306, line: 1209, baseType: !219, size: 64, offset: 12800)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1305, file: !1306, line: 1219, baseType: !208, size: 64, offset: 12864)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1305, file: !1306, line: 1220, baseType: !208, size: 64, offset: 12928)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1305, file: !1306, line: 1317, baseType: !236, size: 32, offset: 12992)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1305, file: !1306, line: 1319, baseType: !1304, size: 64, offset: 13056)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1305, file: !1306, line: 1322, baseType: !2803, size: 64, offset: 13120)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2805, line: 56, size: 512, elements: !2806)
!2805 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2804, file: !2805, line: 57, baseType: !2803, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2804, file: !2805, line: 58, baseType: !177, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2804, file: !2805, line: 59, baseType: !219, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2804, file: !2805, line: 60, baseType: !219, size: 64, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2804, file: !2805, line: 61, baseType: !915, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2804, file: !2805, line: 62, baseType: !7, size: 32, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2804, file: !2805, line: 63, baseType: !207, size: 64, offset: 384)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2804, file: !2805, line: 64, baseType: !2815, size: 64, offset: 448)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1305, file: !1306, line: 1326, baseType: !1318, size: 32, offset: 13184)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1305, file: !1306, line: 1342, baseType: !177, size: 64, offset: 13248)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1305, file: !1306, line: 1343, baseType: !210, size: 64, offset: 13312)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1305, file: !1306, line: 1344, baseType: !208, size: 64, offset: 13376)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1305, file: !1306, line: 1345, baseType: !210, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1305, file: !1306, line: 1346, baseType: !210, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1305, file: !1306, line: 1347, baseType: !210, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1305, file: !1306, line: 1348, baseType: !425, size: 128, align: 64, offset: 13504)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1305, file: !1306, line: 1358, baseType: !2826, size: 34816, offset: 13824)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2827, line: 485, size: 34816, elements: !2828)
!2827 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2858, !2859, !2860, !2861, !2862, !2863, !2866, !2867, !2868}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2826, file: !2827, line: 487, baseType: !2830, size: 192)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2831, size: 192, elements: !337)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2832, line: 16, size: 64, elements: !2833)
!2832 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2833 = !{!2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2831, file: !2832, line: 17, baseType: !954, size: 16)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2831, file: !2832, line: 18, baseType: !954, size: 16, offset: 16)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2831, file: !2832, line: 19, baseType: !954, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2831, file: !2832, line: 19, baseType: !954, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2831, file: !2832, line: 19, baseType: !954, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2831, file: !2832, line: 19, baseType: !954, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2831, file: !2832, line: 19, baseType: !954, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2831, file: !2832, line: 20, baseType: !954, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2831, file: !2832, line: 20, baseType: !954, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2831, file: !2832, line: 20, baseType: !954, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2831, file: !2832, line: 20, baseType: !954, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2831, file: !2832, line: 20, baseType: !954, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2831, file: !2832, line: 20, baseType: !954, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2826, file: !2827, line: 491, baseType: !219, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2826, file: !2827, line: 495, baseType: !274, size: 16, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2826, file: !2827, line: 496, baseType: !274, size: 16, offset: 272)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2826, file: !2827, line: 497, baseType: !274, size: 16, offset: 288)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2826, file: !2827, line: 498, baseType: !274, size: 16, offset: 304)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2826, file: !2827, line: 502, baseType: !219, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2826, file: !2827, line: 503, baseType: !219, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2826, file: !2827, line: 514, baseType: !2855, size: 256, offset: 448)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2856, size: 256, elements: !224)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2827, line: 483, flags: DIFlagFwdDecl)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2826, file: !2827, line: 516, baseType: !219, size: 64, offset: 704)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2826, file: !2827, line: 518, baseType: !219, size: 64, offset: 768)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2826, file: !2827, line: 520, baseType: !219, size: 64, offset: 832)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2826, file: !2827, line: 521, baseType: !219, size: 64, offset: 896)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2826, file: !2827, line: 522, baseType: !219, size: 64, offset: 960)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2826, file: !2827, line: 528, baseType: !2864, size: 64, offset: 1024)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2827, line: 10, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2826, file: !2827, line: 535, baseType: !219, size: 64, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2826, file: !2827, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2826, file: !2827, line: 540, baseType: !2869, size: 33280, offset: 1536)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2870, line: 317, size: 33280, elements: !2871)
!2870 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2871 = !{!2872, !2873, !2874}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2869, file: !2870, line: 330, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2869, file: !2870, line: 337, baseType: !219, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2869, file: !2870, line: 348, baseType: !2875, size: 32768, offset: 512)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2870, line: 304, size: 32768, elements: !2876)
!2876 = !{!2877, !2892, !2931, !2981, !2994}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2875, file: !2870, line: 305, baseType: !2878, size: 896)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2870, line: 12, size: 896, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2891}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2878, file: !2870, line: 13, baseType: !250, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2878, file: !2870, line: 14, baseType: !250, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2878, file: !2870, line: 15, baseType: !250, size: 32, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2878, file: !2870, line: 16, baseType: !250, size: 32, offset: 96)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2878, file: !2870, line: 17, baseType: !250, size: 32, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2878, file: !2870, line: 18, baseType: !250, size: 32, offset: 160)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2878, file: !2870, line: 19, baseType: !250, size: 32, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2878, file: !2870, line: 22, baseType: !2888, size: 640, offset: 224)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 640, elements: !2889)
!2889 = !{!2890}
!2890 = !DISubrange(count: 20)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2878, file: !2870, line: 25, baseType: !250, size: 32, offset: 864)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2875, file: !2870, line: 306, baseType: !2893, size: 4096, align: 128)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2870, line: 34, size: 4096, align: 128, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898, !2899, !2914, !2915, !2916, !2920, !2922, !2926}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2893, file: !2870, line: 35, baseType: !954, size: 16)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2893, file: !2870, line: 36, baseType: !954, size: 16, offset: 16)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2893, file: !2870, line: 37, baseType: !954, size: 16, offset: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2893, file: !2870, line: 38, baseType: !954, size: 16, offset: 48)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !2870, line: 39, baseType: !2900, size: 128, offset: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !2870, line: 39, size: 128, elements: !2901)
!2901 = !{!2902, !2907}
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !2870, line: 40, baseType: !2903, size: 128)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !2870, line: 40, size: 128, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2903, file: !2870, line: 41, baseType: !208, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2903, file: !2870, line: 42, baseType: !208, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2900, file: !2870, line: 44, baseType: !2908, size: 128)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2900, file: !2870, line: 44, size: 128, elements: !2909)
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2908, file: !2870, line: 45, baseType: !250, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2908, file: !2870, line: 46, baseType: !250, size: 32, offset: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2908, file: !2870, line: 47, baseType: !250, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2908, file: !2870, line: 48, baseType: !250, size: 32, offset: 96)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2893, file: !2870, line: 51, baseType: !250, size: 32, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2893, file: !2870, line: 52, baseType: !250, size: 32, offset: 224)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2893, file: !2870, line: 55, baseType: !2917, size: 1024, offset: 256)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1024, elements: !2918)
!2918 = !{!2919}
!2919 = !DISubrange(count: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2893, file: !2870, line: 58, baseType: !2921, size: 2048, offset: 1280)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 2048, elements: !341)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2893, file: !2870, line: 60, baseType: !2923, size: 384, offset: 3328)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 384, elements: !2924)
!2924 = !{!2925}
!2925 = !DISubrange(count: 12)
!2926 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !2870, line: 62, baseType: !2927, size: 384, offset: 3712)
!2927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !2870, line: 62, size: 384, elements: !2928)
!2928 = !{!2929, !2930}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2927, file: !2870, line: 63, baseType: !2923, size: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2927, file: !2870, line: 64, baseType: !2923, size: 384)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2875, file: !2870, line: 307, baseType: !2932, size: 1088)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2870, line: 79, size: 1088, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2980}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2932, file: !2870, line: 80, baseType: !250, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2932, file: !2870, line: 81, baseType: !250, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2932, file: !2870, line: 82, baseType: !250, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2932, file: !2870, line: 83, baseType: !250, size: 32, offset: 96)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2932, file: !2870, line: 84, baseType: !250, size: 32, offset: 128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2932, file: !2870, line: 85, baseType: !250, size: 32, offset: 160)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2932, file: !2870, line: 86, baseType: !250, size: 32, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2932, file: !2870, line: 88, baseType: !2888, size: 640, offset: 224)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2932, file: !2870, line: 89, baseType: !1440, size: 8, offset: 864)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2932, file: !2870, line: 90, baseType: !1440, size: 8, offset: 872)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2932, file: !2870, line: 91, baseType: !1440, size: 8, offset: 880)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2932, file: !2870, line: 92, baseType: !1440, size: 8, offset: 888)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2932, file: !2870, line: 93, baseType: !1440, size: 8, offset: 896)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2932, file: !2870, line: 94, baseType: !1440, size: 8, offset: 904)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2932, file: !2870, line: 95, baseType: !2949, size: 64, offset: 960)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2951, line: 11, size: 128, elements: !2952)
!2951 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2950, file: !2951, line: 12, baseType: !371, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2950, file: !2951, line: 13, baseType: !2955, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2957, line: 56, size: 1344, elements: !2958)
!2957 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2956, file: !2957, line: 61, baseType: !219, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2956, file: !2957, line: 62, baseType: !219, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2956, file: !2957, line: 63, baseType: !219, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2956, file: !2957, line: 64, baseType: !219, size: 64, offset: 192)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2956, file: !2957, line: 65, baseType: !219, size: 64, offset: 256)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2956, file: !2957, line: 66, baseType: !219, size: 64, offset: 320)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2956, file: !2957, line: 68, baseType: !219, size: 64, offset: 384)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2956, file: !2957, line: 69, baseType: !219, size: 64, offset: 448)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2956, file: !2957, line: 70, baseType: !219, size: 64, offset: 512)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2956, file: !2957, line: 71, baseType: !219, size: 64, offset: 576)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2956, file: !2957, line: 72, baseType: !219, size: 64, offset: 640)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2956, file: !2957, line: 73, baseType: !219, size: 64, offset: 704)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2956, file: !2957, line: 74, baseType: !219, size: 64, offset: 768)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2956, file: !2957, line: 75, baseType: !219, size: 64, offset: 832)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2956, file: !2957, line: 76, baseType: !219, size: 64, offset: 896)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2956, file: !2957, line: 81, baseType: !219, size: 64, offset: 960)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2956, file: !2957, line: 83, baseType: !219, size: 64, offset: 1024)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2956, file: !2957, line: 84, baseType: !219, size: 64, offset: 1088)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2956, file: !2957, line: 85, baseType: !219, size: 64, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2956, file: !2957, line: 86, baseType: !219, size: 64, offset: 1216)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2956, file: !2957, line: 87, baseType: !219, size: 64, offset: 1280)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2932, file: !2870, line: 96, baseType: !250, size: 32, offset: 1024)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2875, file: !2870, line: 308, baseType: !2982, size: 4608, align: 512)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2870, line: 289, size: 4608, align: 512, elements: !2983)
!2983 = !{!2984, !2985, !2992}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2982, file: !2870, line: 290, baseType: !2893, size: 4096, align: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2982, file: !2870, line: 291, baseType: !2986, size: 512, offset: 4096)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2870, line: 268, size: 512, elements: !2987)
!2987 = !{!2988, !2989, !2990}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2986, file: !2870, line: 269, baseType: !208, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2986, file: !2870, line: 270, baseType: !208, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2986, file: !2870, line: 271, baseType: !2991, size: 384, offset: 128)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !1712)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2982, file: !2870, line: 292, baseType: !2993, offset: 4608)
!2993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, elements: !1810)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2875, file: !2870, line: 309, baseType: !2995, size: 32768)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 32768, elements: !2996)
!2996 = !{!2997}
!2997 = !DISubrange(count: 4096)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1301, file: !824, line: 378, baseType: !2999, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1297, file: !824, line: 384, baseType: !1589, size: 192, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1074, file: !824, line: 500, baseType: !295, offset: 6656)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1074, file: !824, line: 501, baseType: !3003, size: 64, offset: 6656)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !824, line: 387, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1074, file: !824, line: 516, baseType: !1800, size: 64, offset: 6720)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1074, file: !824, line: 519, baseType: !412, size: 64, offset: 6784)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1074, file: !824, line: 521, baseType: !3008, size: 64, offset: 6848)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !824, line: 521, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1074, file: !824, line: 545, baseType: !849, size: 32, offset: 6912)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1074, file: !824, line: 548, baseType: !542, size: 8, offset: 6944)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1074, file: !824, line: 550, baseType: !3013, offset: 6952)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !3014, line: 142, elements: !309)
!3014 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1074, file: !824, line: 554, baseType: !2206, size: 256, offset: 6976)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1074, file: !824, line: 557, baseType: !250, size: 32, offset: 7232)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1071, file: !824, line: 565, baseType: !2202, offset: 7296)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1067, file: !824, line: 151, baseType: !849, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1059, file: !824, line: 156, baseType: !295, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !824, line: 159, baseType: !3021, size: 128)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !828, file: !824, line: 159, size: 128, elements: !3022)
!3022 = !{!3023, !3087}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3021, file: !824, line: 161, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !37, line: 110, size: 1152, elements: !3026)
!3026 = !{!3027, !3037, !3058, !3059, !3060, !3061, !3062, !3074, !3075, !3076}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3025, file: !37, line: 111, baseType: !3028, size: 384)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !37, line: 19, size: 384, elements: !3029)
!3029 = !{!3030, !3032, !3033, !3034, !3035, !3036}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3028, file: !37, line: 20, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3028, file: !37, line: 21, baseType: !3031, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3028, file: !37, line: 22, baseType: !3031, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3028, file: !37, line: 23, baseType: !219, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3028, file: !37, line: 24, baseType: !219, size: 64, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3028, file: !37, line: 25, baseType: !219, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3025, file: !37, line: 112, baseType: !3038, size: 64, offset: 384)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3040, line: 105, size: 128, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3039, file: !3040, line: 110, baseType: !219, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3039, file: !3040, line: 118, baseType: !3044, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3040, line: 95, size: 448, elements: !3046)
!3046 = !{!3047, !3048, !3053, !3054, !3055, !3056, !3057}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3045, file: !3040, line: 96, baseType: !779, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3045, file: !3040, line: 97, baseType: !3049, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3040, line: 60, baseType: !3051)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{null, !3038}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3045, file: !3040, line: 98, baseType: !3049, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3045, file: !3040, line: 99, baseType: !542, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3045, file: !3040, line: 100, baseType: !542, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3045, file: !3040, line: 101, baseType: !425, size: 128, align: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3045, file: !3040, line: 102, baseType: !3038, size: 64, offset: 384)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !3025, file: !37, line: 113, baseType: !3039, size: 128, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3025, file: !37, line: 114, baseType: !1589, size: 192, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3025, file: !37, line: 115, baseType: !36, size: 32, offset: 768)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3025, file: !37, line: 116, baseType: !7, size: 32, offset: 800)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3025, file: !37, line: 117, baseType: !3063, size: 64, offset: 832)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3065)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !37, line: 67, size: 256, elements: !3066)
!3066 = !{!3067, !3068, !3072, !3073}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3065, file: !37, line: 73, baseType: !935, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !3065, file: !37, line: 78, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !3024}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3065, file: !37, line: 83, baseType: !3069, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3065, file: !37, line: 89, baseType: !1123, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3025, file: !37, line: 118, baseType: !177, size: 64, offset: 896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3025, file: !37, line: 119, baseType: !236, size: 32, offset: 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !37, line: 120, baseType: !3077, size: 128, offset: 1024)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3025, file: !37, line: 120, size: 128, elements: !3078)
!3078 = !{!3079, !3085}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3077, file: !37, line: 121, baseType: !3080, size: 128)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3081, line: 6, size: 128, elements: !3082)
!3081 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3080, file: !3081, line: 7, baseType: !208, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3080, file: !3081, line: 8, baseType: !208, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3077, file: !37, line: 122, baseType: !3086)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3080, elements: !1810)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3021, file: !824, line: 162, baseType: !177, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !828, file: !824, line: 176, baseType: !425, size: 128, align: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !824, line: 179, baseType: !3090, size: 32, offset: 384)
!3090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !824, line: 179, size: 32, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3090, file: !824, line: 184, baseType: !849, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3090, file: !824, line: 192, baseType: !7, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3090, file: !824, line: 194, baseType: !7, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3090, file: !824, line: 195, baseType: !236, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !823, file: !824, line: 199, baseType: !849, size: 32, offset: 416)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !709, file: !50, line: 1964, baseType: !3098, size: 64, offset: 1344)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!371, !651, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3103, line: 12, size: 256, elements: !3104)
!3103 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!3104 = !{!3105, !3106, !3107, !3108, !3109}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3102, file: !3103, line: 13, baseType: !845, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3102, file: !3103, line: 16, baseType: !236, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3102, file: !3103, line: 23, baseType: !219, size: 64, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3102, file: !3103, line: 30, baseType: !219, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3102, file: !3103, line: 33, baseType: !3110, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !824, line: 27, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !709, file: !50, line: 1966, baseType: !3098, size: 64, offset: 1408)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !652, file: !50, line: 1424, baseType: !3114, size: 64, offset: 448)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !44, line: 322, size: 704, elements: !3117)
!3117 = !{!3118, !3164, !3168, !3172, !3173, !3174, !3175, !3176, !3181, !3186, !3190}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3116, file: !44, line: 323, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!236, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !44, line: 294, size: 1600, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3149, !3150, !3151}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3123, file: !44, line: 295, baseType: !691, size: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3123, file: !44, line: 296, baseType: !183, size: 128, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3123, file: !44, line: 297, baseType: !183, size: 128, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3123, file: !44, line: 298, baseType: !183, size: 128, offset: 384)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3123, file: !44, line: 299, baseType: !775, size: 192, offset: 512)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3123, file: !44, line: 300, baseType: !295, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3123, file: !44, line: 301, baseType: !849, size: 32, offset: 704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3123, file: !44, line: 302, baseType: !651, size: 64, offset: 768)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3123, file: !44, line: 303, baseType: !3134, size: 64, offset: 832)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !44, line: 68, size: 64, elements: !3135)
!3135 = !{!3136, !3148}
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !44, line: 69, baseType: !3137, size: 32)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3134, file: !44, line: 69, size: 32, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3137, file: !44, line: 70, baseType: !487, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3137, file: !44, line: 71, baseType: !495, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3137, file: !44, line: 72, baseType: !3142, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3143, line: 24, baseType: !3144)
!3143 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3143, line: 22, size: 32, elements: !3145)
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3144, file: !3143, line: 23, baseType: !3147, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3143, line: 20, baseType: !493)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3134, file: !44, line: 74, baseType: !43, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3123, file: !44, line: 304, baseType: !583, size: 64, offset: 896)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3123, file: !44, line: 305, baseType: !219, size: 64, offset: 960)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3123, file: !44, line: 306, baseType: !3152, size: 576, offset: 1024)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !44, line: 205, size: 576, elements: !3153)
!3153 = !{!3154, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3152, file: !44, line: 206, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !44, line: 66, baseType: !585)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3152, file: !44, line: 207, baseType: !3155, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3152, file: !44, line: 208, baseType: !3155, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3152, file: !44, line: 209, baseType: !3155, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3152, file: !44, line: 210, baseType: !3155, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3152, file: !44, line: 211, baseType: !3155, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3152, file: !44, line: 212, baseType: !3155, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3152, file: !44, line: 213, baseType: !591, size: 64, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3152, file: !44, line: 214, baseType: !591, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3116, file: !44, line: 324, baseType: !3165, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!3122, !651, !236}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3116, file: !44, line: 325, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !3122}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3116, file: !44, line: 326, baseType: !3119, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3116, file: !44, line: 327, baseType: !3119, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3116, file: !44, line: 328, baseType: !3119, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3116, file: !44, line: 329, baseType: !737, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3116, file: !44, line: 332, baseType: !3177, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!3180, !481}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3116, file: !44, line: 333, baseType: !3182, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!236, !481, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3116, file: !44, line: 335, baseType: !3187, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!236, !481, !3180}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3116, file: !44, line: 337, baseType: !3191, size: 64, offset: 640)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!236, !651, !3194}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !652, file: !50, line: 1425, baseType: !3196, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !44, line: 428, size: 704, elements: !3199)
!3199 = !{!3200, !3204, !3205, !3209, !3210, !3211, !3226, !3249, !3253, !3254, !3277}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3198, file: !44, line: 429, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!236, !651, !236, !236, !601}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3198, file: !44, line: 430, baseType: !737, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3198, file: !44, line: 431, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!236, !651, !7}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3198, file: !44, line: 432, baseType: !3206, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3198, file: !44, line: 433, baseType: !737, size: 64, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3198, file: !44, line: 434, baseType: !3212, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!236, !651, !236, !3215}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !44, line: 415, size: 256, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3216, file: !44, line: 416, baseType: !236, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3216, file: !44, line: 417, baseType: !7, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3216, file: !44, line: 418, baseType: !7, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3216, file: !44, line: 420, baseType: !7, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3216, file: !44, line: 421, baseType: !7, size: 32, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3216, file: !44, line: 422, baseType: !7, size: 32, offset: 160)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3216, file: !44, line: 423, baseType: !7, size: 32, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3216, file: !44, line: 424, baseType: !7, size: 32, offset: 224)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3198, file: !44, line: 435, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!236, !651, !3134, !3230}
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !44, line: 343, size: 960, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3231, file: !44, line: 344, baseType: !236, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3231, file: !44, line: 345, baseType: !208, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3231, file: !44, line: 346, baseType: !208, size: 64, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3231, file: !44, line: 347, baseType: !208, size: 64, offset: 192)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3231, file: !44, line: 348, baseType: !208, size: 64, offset: 256)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3231, file: !44, line: 349, baseType: !208, size: 64, offset: 320)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3231, file: !44, line: 350, baseType: !208, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3231, file: !44, line: 351, baseType: !785, size: 64, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3231, file: !44, line: 353, baseType: !785, size: 64, offset: 512)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3231, file: !44, line: 354, baseType: !236, size: 32, offset: 576)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3231, file: !44, line: 355, baseType: !236, size: 32, offset: 608)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3231, file: !44, line: 356, baseType: !208, size: 64, offset: 640)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3231, file: !44, line: 357, baseType: !208, size: 64, offset: 704)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3231, file: !44, line: 358, baseType: !208, size: 64, offset: 768)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3231, file: !44, line: 359, baseType: !785, size: 64, offset: 832)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3231, file: !44, line: 360, baseType: !236, size: 32, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3198, file: !44, line: 436, baseType: !3250, size: 64, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!236, !651, !3194, !3230}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3198, file: !44, line: 438, baseType: !3227, size: 64, offset: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3198, file: !44, line: 439, baseType: !3255, size: 64, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!236, !651, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !44, line: 409, size: 1408, elements: !3260)
!3260 = !{!3261, !3262}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3259, file: !44, line: 410, baseType: !7, size: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3259, file: !44, line: 411, baseType: !3263, size: 1344, offset: 64)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3264, size: 1344, elements: !337)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !44, line: 395, size: 448, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !44, line: 396, baseType: !7, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3264, file: !44, line: 397, baseType: !7, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3264, file: !44, line: 399, baseType: !7, size: 32, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3264, file: !44, line: 400, baseType: !7, size: 32, offset: 96)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3264, file: !44, line: 401, baseType: !7, size: 32, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3264, file: !44, line: 402, baseType: !7, size: 32, offset: 160)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3264, file: !44, line: 403, baseType: !7, size: 32, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3264, file: !44, line: 404, baseType: !212, size: 64, offset: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3264, file: !44, line: 405, baseType: !3275, size: 64, offset: 320)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !184, line: 126, baseType: !208)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3264, file: !44, line: 406, baseType: !3275, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3198, file: !44, line: 440, baseType: !3206, size: 64, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !652, file: !50, line: 1426, baseType: !3279, size: 64, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3281)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !50, line: 49, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !652, file: !50, line: 1427, baseType: !219, size: 64, offset: 640)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !652, file: !50, line: 1428, baseType: !219, size: 64, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !652, file: !50, line: 1429, baseType: !219, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !652, file: !50, line: 1430, baseType: !442, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !652, file: !50, line: 1431, baseType: !869, size: 256, offset: 896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !652, file: !50, line: 1432, baseType: !236, size: 32, offset: 1152)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !652, file: !50, line: 1433, baseType: !849, size: 32, offset: 1184)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !652, file: !50, line: 1437, baseType: !3290, size: 64, offset: 1216)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !50, line: 1437, flags: DIFlagFwdDecl)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !652, file: !50, line: 1449, baseType: !3295, size: 64, offset: 1280)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !458, line: 34, size: 64, elements: !3296)
!3296 = !{!3297}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3295, file: !458, line: 35, baseType: !461, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !652, file: !50, line: 1450, baseType: !183, size: 128, offset: 1344)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !652, file: !50, line: 1451, baseType: !3300, size: 64, offset: 1472)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !50, line: 699, flags: DIFlagFwdDecl)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !652, file: !50, line: 1452, baseType: !2625, size: 64, offset: 1536)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !652, file: !50, line: 1453, baseType: !3304, size: 64, offset: 1600)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !50, line: 1453, flags: DIFlagFwdDecl)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !652, file: !50, line: 1454, baseType: !691, size: 128, offset: 1664)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !652, file: !50, line: 1455, baseType: !7, size: 32, offset: 1792)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !652, file: !50, line: 1456, baseType: !3309, size: 2432, offset: 1856)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !44, line: 518, size: 2432, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3315, !3347}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3309, file: !44, line: 519, baseType: !7, size: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3309, file: !44, line: 520, baseType: !869, size: 256, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3309, file: !44, line: 521, baseType: !3314, size: 192, offset: 320)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !337)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3309, file: !44, line: 522, baseType: !3316, size: 1728, offset: 512)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3317, size: 1728, elements: !337)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !44, line: 222, size: 576, elements: !3318)
!3318 = !{!3319, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3317, file: !44, line: 223, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !44, line: 443, size: 256, elements: !3322)
!3322 = !{!3323, !3324, !3337, !3338}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3321, file: !44, line: 444, baseType: !236, size: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3321, file: !44, line: 445, baseType: !3325, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !44, line: 310, size: 512, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3327, file: !44, line: 311, baseType: !737, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3327, file: !44, line: 312, baseType: !737, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3327, file: !44, line: 313, baseType: !737, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3327, file: !44, line: 314, baseType: !737, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3327, file: !44, line: 315, baseType: !3119, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3327, file: !44, line: 316, baseType: !3119, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3327, file: !44, line: 317, baseType: !3119, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3327, file: !44, line: 318, baseType: !3191, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3321, file: !44, line: 446, baseType: !174, size: 64, offset: 128)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3321, file: !44, line: 447, baseType: !3320, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3317, file: !44, line: 224, baseType: !236, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3317, file: !44, line: 226, baseType: !183, size: 128, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3317, file: !44, line: 227, baseType: !219, size: 64, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3317, file: !44, line: 228, baseType: !7, size: 32, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3317, file: !44, line: 229, baseType: !7, size: 32, offset: 352)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3317, file: !44, line: 230, baseType: !3155, size: 64, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3317, file: !44, line: 231, baseType: !3155, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3317, file: !44, line: 232, baseType: !177, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3309, file: !44, line: 523, baseType: !3348, size: 192, offset: 2240)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 192, elements: !337)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !652, file: !50, line: 1458, baseType: !3350, size: 2112, offset: 4288)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !50, line: 1410, size: 2112, elements: !3351)
!3351 = !{!3352, !3353, !3354}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3350, file: !50, line: 1411, baseType: !236, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !3350, file: !50, line: 1412, baseType: !1568, size: 128, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3350, file: !50, line: 1413, baseType: !3355, size: 1920, offset: 192)
!3355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3356, size: 1920, elements: !337)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3357, line: 12, size: 640, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3358 = !{!3359, !3367, !3369, !3374, !3375}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3356, file: !3357, line: 13, baseType: !3360, size: 320)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3361, line: 17, size: 320, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3362 = !{!3363, !3364, !3365, !3366}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3360, file: !3361, line: 18, baseType: !236, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3360, file: !3361, line: 19, baseType: !236, size: 32, offset: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3360, file: !3361, line: 20, baseType: !1568, size: 128, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3360, file: !3361, line: 22, baseType: !425, size: 128, align: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3356, file: !3357, line: 14, baseType: !3368, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3356, file: !3357, line: 15, baseType: !3370, size: 64, offset: 384)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3371, line: 16, size: 64, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3370, file: !3371, line: 17, baseType: !1304, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3356, file: !3357, line: 16, baseType: !1568, size: 128, offset: 448)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3356, file: !3357, line: 17, baseType: !849, size: 32, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !652, file: !50, line: 1465, baseType: !177, size: 64, offset: 6400)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !652, file: !50, line: 1468, baseType: !250, size: 32, offset: 6464)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !652, file: !50, line: 1470, baseType: !591, size: 64, offset: 6528)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !652, file: !50, line: 1471, baseType: !591, size: 64, offset: 6592)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !652, file: !50, line: 1473, baseType: !251, size: 32, offset: 6656)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !652, file: !50, line: 1474, baseType: !3382, size: 64, offset: 6720)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !50, line: 603, flags: DIFlagFwdDecl)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !652, file: !50, line: 1477, baseType: !3385, size: 256, offset: 6784)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !2918)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !652, file: !50, line: 1478, baseType: !3387, size: 128, offset: 7040)
!3387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3388, line: 18, baseType: !3389)
!3388 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3388, line: 16, size: 128, elements: !3390)
!3390 = !{!3391}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3389, file: !3388, line: 17, baseType: !3392, size: 128)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 128, elements: !1822)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !652, file: !50, line: 1480, baseType: !7, size: 32, offset: 7168)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !652, file: !50, line: 1481, baseType: !3395, size: 32, offset: 7200)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !184, line: 150, baseType: !7)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !652, file: !50, line: 1487, baseType: !775, size: 192, offset: 7232)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !652, file: !50, line: 1493, baseType: !215, size: 64, offset: 7424)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !652, file: !50, line: 1495, baseType: !3399, size: 64, offset: 7488)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !440, line: 135, size: 1024, align: 512, elements: !3402)
!3402 = !{!3403, !3407, !3408, !3415, !3421, !3425, !3429, !3433, !3434, !3438, !3442, !3447, !3451}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3401, file: !440, line: 136, baseType: !3404, size: 64)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!236, !442, !7}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3401, file: !440, line: 137, baseType: !3404, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3401, file: !440, line: 138, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!236, !3412, !3414}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3401, file: !440, line: 139, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!236, !3412, !7, !215, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3401, file: !440, line: 141, baseType: !3422, size: 64, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!236, !3412}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3401, file: !440, line: 142, baseType: !3426, size: 64, offset: 320)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!236, !442}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3401, file: !440, line: 143, baseType: !3430, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{null, !442}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3401, file: !440, line: 144, baseType: !3430, size: 64, offset: 448)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3401, file: !440, line: 145, baseType: !3435, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{null, !442, !481}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3401, file: !440, line: 146, baseType: !3439, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!336, !442, !336, !236}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3401, file: !440, line: 147, baseType: !3443, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!438, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3401, file: !440, line: 148, baseType: !3448, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!236, !601, !542}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3401, file: !440, line: 149, baseType: !3452, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!442, !442, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !652, file: !50, line: 1500, baseType: !236, size: 32, offset: 7552)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !652, file: !50, line: 1502, baseType: !3459, size: 448, offset: 7616)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3103, line: 60, size: 448, elements: !3460)
!3460 = !{!3461, !3466, !3467, !3468, !3469, !3470, !3471}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3459, file: !3103, line: 61, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!219, !3465, !3101}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3459, file: !3103, line: 63, baseType: !3462, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3459, file: !3103, line: 66, baseType: !371, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3459, file: !3103, line: 67, baseType: !236, size: 32, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3459, file: !3103, line: 68, baseType: !7, size: 32, offset: 224)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3459, file: !3103, line: 71, baseType: !183, size: 128, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3459, file: !3103, line: 77, baseType: !3472, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !652, file: !50, line: 1505, baseType: !779, size: 64, offset: 8064)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !652, file: !50, line: 1508, baseType: !779, size: 64, offset: 8128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !652, file: !50, line: 1511, baseType: !236, size: 32, offset: 8192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !652, file: !50, line: 1514, baseType: !1004, size: 32, offset: 8224)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !652, file: !50, line: 1517, baseType: !3478, size: 64, offset: 8256)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2207, line: 18, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !652, file: !50, line: 1518, baseType: !687, size: 64, offset: 8320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !652, file: !50, line: 1525, baseType: !1800, size: 64, offset: 8384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !652, file: !50, line: 1532, baseType: !3483, size: 64, offset: 8448)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3484, line: 52, size: 64, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3483, file: !3484, line: 53, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3484, line: 40, size: 256, elements: !3489)
!3489 = !{!3490, !3491, !3496}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3488, file: !3484, line: 42, baseType: !295)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3488, file: !3484, line: 44, baseType: !3492, size: 192)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3484, line: 28, size: 192, elements: !3493)
!3493 = !{!3494, !3495}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3492, file: !3484, line: 29, baseType: !183, size: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3492, file: !3484, line: 31, baseType: !371, size: 64, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3488, file: !3484, line: 49, baseType: !371, size: 64, offset: 192)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !652, file: !50, line: 1533, baseType: !3483, size: 64, offset: 8512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !652, file: !50, line: 1534, baseType: !425, size: 128, align: 64, offset: 8576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !652, file: !50, line: 1535, baseType: !2206, size: 256, offset: 8704)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !652, file: !50, line: 1537, baseType: !775, size: 192, offset: 8960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !652, file: !50, line: 1542, baseType: !236, size: 32, offset: 9152)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !652, file: !50, line: 1545, baseType: !295, offset: 9184)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !652, file: !50, line: 1546, baseType: !183, size: 128, offset: 9216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !652, file: !50, line: 1548, baseType: !295, offset: 9344)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !652, file: !50, line: 1549, baseType: !183, size: 128, offset: 9344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !482, file: !50, line: 624, baseType: !835, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !482, file: !50, line: 631, baseType: !219, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !50, line: 639, baseType: !3509, size: 32, offset: 384)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !50, line: 639, size: 32, elements: !3510)
!3510 = !{!3511, !3513}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3509, file: !50, line: 640, baseType: !3512, size: 32)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3509, file: !50, line: 641, baseType: !7, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !482, file: !50, line: 643, baseType: !565, size: 32, offset: 416)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !482, file: !50, line: 644, baseType: !583, size: 64, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !482, file: !50, line: 645, baseType: !587, size: 128, offset: 512)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !482, file: !50, line: 646, baseType: !587, size: 128, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !482, file: !50, line: 647, baseType: !587, size: 128, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !482, file: !50, line: 648, baseType: !295, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !482, file: !50, line: 649, baseType: !274, size: 16, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !482, file: !50, line: 650, baseType: !1440, size: 8, offset: 912)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !482, file: !50, line: 651, baseType: !1440, size: 8, offset: 920)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !482, file: !50, line: 652, baseType: !3275, size: 64, offset: 960)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !482, file: !50, line: 659, baseType: !219, size: 64, offset: 1024)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !482, file: !50, line: 660, baseType: !869, size: 256, offset: 1088)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !482, file: !50, line: 662, baseType: !219, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !482, file: !50, line: 663, baseType: !219, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !482, file: !50, line: 665, baseType: !691, size: 128, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !482, file: !50, line: 666, baseType: !183, size: 128, offset: 1600)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !482, file: !50, line: 675, baseType: !183, size: 128, offset: 1728)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !482, file: !50, line: 676, baseType: !183, size: 128, offset: 1856)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !482, file: !50, line: 677, baseType: !183, size: 128, offset: 1984)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !50, line: 678, baseType: !3534, size: 128, offset: 2112)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !50, line: 678, size: 128, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3534, file: !50, line: 679, baseType: !687, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3534, file: !50, line: 680, baseType: !425, size: 128, align: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !482, file: !50, line: 682, baseType: !781, size: 64, offset: 2240)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !482, file: !50, line: 683, baseType: !781, size: 64, offset: 2304)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !482, file: !50, line: 684, baseType: !849, size: 32, offset: 2368)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !482, file: !50, line: 685, baseType: !849, size: 32, offset: 2400)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !482, file: !50, line: 686, baseType: !849, size: 32, offset: 2432)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !482, file: !50, line: 688, baseType: !849, size: 32, offset: 2464)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !50, line: 690, baseType: !3545, size: 64, offset: 2496)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !50, line: 690, size: 64, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3545, file: !50, line: 691, baseType: !1921, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3545, file: !50, line: 692, baseType: !716, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !482, file: !50, line: 694, baseType: !3550, size: 64, offset: 2560)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !50, line: 1100, size: 384, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3551, file: !50, line: 1101, baseType: !295)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3551, file: !50, line: 1102, baseType: !183, size: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3551, file: !50, line: 1103, baseType: !183, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3551, file: !50, line: 1104, baseType: !183, size: 128, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !482, file: !50, line: 695, baseType: !836, size: 1216, align: 64, offset: 2624)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !482, file: !50, line: 696, baseType: !183, size: 128, offset: 3840)
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !50, line: 697, baseType: !3560, size: 64, offset: 3968)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !50, line: 697, size: 64, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3560, file: !50, line: 698, baseType: !2116, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3560, file: !50, line: 699, baseType: !3300, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3560, file: !50, line: 700, baseType: !1914, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3560, file: !50, line: 701, baseType: !336, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3560, file: !50, line: 702, baseType: !7, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !482, file: !50, line: 705, baseType: !251, size: 32, offset: 4032)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !482, file: !50, line: 708, baseType: !251, size: 32, offset: 4064)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !482, file: !50, line: 709, baseType: !3382, size: 64, offset: 4096)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !482, file: !50, line: 720, baseType: !177, size: 64, offset: 4160)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !443, file: !440, line: 98, baseType: !3572, size: 256, offset: 448)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !2918)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !443, file: !440, line: 101, baseType: !3574, size: 32, offset: 704)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3575, line: 25, size: 32, elements: !3576)
!3575 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3576 = !{!3577}
!3577 = !DIDerivedType(tag: DW_TAG_member, scope: !3574, file: !3575, line: 26, baseType: !3578, size: 32)
!3578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3574, file: !3575, line: 26, size: 32, elements: !3579)
!3579 = !{!3580}
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3578, file: !3575, line: 30, baseType: !3581, size: 32)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3578, file: !3575, line: 30, size: 32, elements: !3582)
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3581, file: !3575, line: 31, baseType: !295)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3581, file: !3575, line: 32, baseType: !236, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !443, file: !440, line: 102, baseType: !3399, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !443, file: !440, line: 103, baseType: !651, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !443, file: !440, line: 104, baseType: !219, size: 64, offset: 896)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !443, file: !440, line: 105, baseType: !177, size: 64, offset: 960)
!3589 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !440, line: 107, baseType: !3590, size: 128, offset: 1024)
!3590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 107, size: 128, elements: !3591)
!3591 = !{!3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3590, file: !440, line: 108, baseType: !183, size: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3590, file: !440, line: 109, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !443, file: !440, line: 111, baseType: !183, size: 128, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !443, file: !440, line: 112, baseType: !183, size: 128, offset: 1280)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !443, file: !440, line: 120, baseType: !3598, size: 128, offset: 1408)
!3598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !440, line: 116, size: 128, elements: !3599)
!3599 = !{!3600, !3601, !3602}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3598, file: !440, line: 117, baseType: !691, size: 128)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3598, file: !440, line: 118, baseType: !457, size: 128)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3598, file: !440, line: 119, baseType: !425, size: 128, align: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !413, file: !50, line: 922, baseType: !481, size: 64, offset: 256)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !413, file: !50, line: 923, baseType: !1921, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !413, file: !50, line: 929, baseType: !295, offset: 384)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !413, file: !50, line: 930, baseType: !49, size: 32, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !413, file: !50, line: 931, baseType: !779, size: 64, offset: 448)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !413, file: !50, line: 932, baseType: !7, size: 32, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !413, file: !50, line: 933, baseType: !3395, size: 32, offset: 544)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !413, file: !50, line: 934, baseType: !775, size: 192, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !413, file: !50, line: 935, baseType: !583, size: 64, offset: 768)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !413, file: !50, line: 936, baseType: !3613, size: 192, offset: 832)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !50, line: 885, size: 192, elements: !3614)
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3613, file: !50, line: 886, baseType: !2020)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3613, file: !50, line: 887, baseType: !1558, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3613, file: !50, line: 888, baseType: !58, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3613, file: !50, line: 889, baseType: !487, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3613, file: !50, line: 889, baseType: !487, size: 32, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3613, file: !50, line: 890, baseType: !236, size: 32, offset: 160)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !413, file: !50, line: 937, baseType: !1634, size: 64, offset: 1024)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !413, file: !50, line: 938, baseType: !3623, size: 256, offset: 1088)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !50, line: 896, size: 256, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3623, file: !50, line: 897, baseType: !219, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3623, file: !50, line: 898, baseType: !7, size: 32, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3623, file: !50, line: 899, baseType: !7, size: 32, offset: 96)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3623, file: !50, line: 902, baseType: !7, size: 32, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3623, file: !50, line: 903, baseType: !7, size: 32, offset: 160)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3623, file: !50, line: 904, baseType: !583, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !413, file: !50, line: 940, baseType: !208, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !413, file: !50, line: 945, baseType: !177, size: 64, offset: 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !413, file: !50, line: 949, baseType: !183, size: 128, offset: 1472)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !413, file: !50, line: 950, baseType: !183, size: 128, offset: 1600)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !413, file: !50, line: 952, baseType: !835, size: 64, offset: 1728)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !413, file: !50, line: 953, baseType: !1004, size: 32, offset: 1792)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !413, file: !50, line: 954, baseType: !1004, size: 32, offset: 1824)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !403, file: !361, line: 174, baseType: !409, size: 64, offset: 320)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !403, file: !361, line: 176, baseType: !3640, size: 64, offset: 384)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!236, !412, !288, !402, !1077}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !391, file: !361, line: 90, baseType: !386, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !391, file: !361, line: 91, baseType: !3645, size: 64, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !351, file: !283, line: 143, baseType: !3647, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!3650, !288}
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !67, line: 39, size: 384, elements: !3653)
!3653 = !{!3654, !3655, !3659, !3663, !3669, !3673}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3652, file: !67, line: 40, baseType: !66, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3652, file: !67, line: 41, baseType: !3656, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!542}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3652, file: !67, line: 42, baseType: !3660, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!177}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3652, file: !67, line: 43, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!2815, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !67, line: 19, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3652, file: !67, line: 44, baseType: !3670, size: 64, offset: 256)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!2815}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3652, file: !67, line: 45, baseType: !520, size: 64, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !351, file: !283, line: 144, baseType: !3675, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!2815, !288}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !351, file: !283, line: 145, baseType: !3679, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !288, !3682, !3683}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !282, file: !283, line: 70, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 123, size: 1024, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3804, !3805, !3806, !3807, !3808}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3686, file: !671, line: 124, baseType: !849, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3686, file: !671, line: 125, baseType: !849, size: 32, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3686, file: !671, line: 135, baseType: !3685, size: 64, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !671, line: 136, baseType: !215, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3686, file: !671, line: 138, baseType: !862, size: 192, align: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3686, file: !671, line: 140, baseType: !2815, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3686, file: !671, line: 141, baseType: !7, size: 32, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_member, scope: !3686, file: !671, line: 142, baseType: !3696, size: 256, offset: 512)
!3696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3686, file: !671, line: 142, size: 256, elements: !3697)
!3697 = !{!3698, !3744, !3748}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3696, file: !671, line: 143, baseType: !3699, size: 192)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 91, size: 192, elements: !3700)
!3700 = !{!3701, !3702, !3703}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3699, file: !671, line: 92, baseType: !219, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3699, file: !671, line: 94, baseType: !858, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3699, file: !671, line: 100, baseType: !3704, size: 64, offset: 128)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 180, size: 704, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3716, !3717, !3718, !3742, !3743}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3705, file: !671, line: 182, baseType: !3685, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3705, file: !671, line: 183, baseType: !7, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3705, file: !671, line: 186, baseType: !3710, size: 192, offset: 128)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3711, line: 19, size: 192, elements: !3712)
!3711 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3710, file: !3711, line: 20, baseType: !840, size: 128)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3710, file: !3711, line: 21, baseType: !7, size: 32, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3710, file: !3711, line: 22, baseType: !7, size: 32, offset: 160)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3705, file: !671, line: 187, baseType: !250, size: 32, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3705, file: !671, line: 188, baseType: !250, size: 32, offset: 352)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3705, file: !671, line: 189, baseType: !3719, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !671, line: 168, size: 320, elements: !3721)
!3721 = !{!3722, !3726, !3730, !3734, !3738}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3720, file: !671, line: 169, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!236, !763, !3704}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3720, file: !671, line: 171, baseType: !3727, size: 64, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!236, !3685, !215, !377}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3720, file: !671, line: 173, baseType: !3731, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!236, !3685}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3720, file: !671, line: 174, baseType: !3735, size: 64, offset: 192)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!236, !3685, !3685, !215}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3720, file: !671, line: 176, baseType: !3739, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!236, !763, !3685, !3704}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3705, file: !671, line: 192, baseType: !183, size: 128, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3705, file: !671, line: 194, baseType: !1568, size: 128, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3696, file: !671, line: 144, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 103, size: 64, elements: !3746)
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3745, file: !671, line: 104, baseType: !3685, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3696, file: !671, line: 145, baseType: !3749, size: 256)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 107, size: 256, elements: !3750)
!3750 = !{!3751, !3799, !3802, !3803}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3749, file: !671, line: 108, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3754)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 217, size: 768, elements: !3755)
!3755 = !{!3756, !3776, !3780, !3781, !3782, !3783, !3784, !3788, !3789, !3790, !3791, !3795}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3754, file: !671, line: 222, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!236, !3760}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 197, size: 1088, elements: !3762)
!3762 = !{!3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3761, file: !671, line: 199, baseType: !3685, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3761, file: !671, line: 200, baseType: !412, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3761, file: !671, line: 201, baseType: !763, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3761, file: !671, line: 202, baseType: !177, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3761, file: !671, line: 205, baseType: !775, size: 192, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3761, file: !671, line: 206, baseType: !775, size: 192, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3761, file: !671, line: 207, baseType: !236, size: 32, offset: 640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3761, file: !671, line: 208, baseType: !183, size: 128, offset: 704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3761, file: !671, line: 209, baseType: !336, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3761, file: !671, line: 211, baseType: !382, size: 64, offset: 896)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3761, file: !671, line: 212, baseType: !542, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3761, file: !671, line: 213, baseType: !542, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3761, file: !671, line: 214, baseType: !1105, size: 64, offset: 1024)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3754, file: !671, line: 223, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !3760}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3754, file: !671, line: 236, baseType: !807, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3754, file: !671, line: 238, baseType: !794, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3754, file: !671, line: 239, baseType: !803, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3754, file: !671, line: 240, baseType: !799, size: 64, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3754, file: !671, line: 242, baseType: !3785, size: 64, offset: 384)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!367, !3760, !336, !382, !583}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3754, file: !671, line: 252, baseType: !382, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3754, file: !671, line: 259, baseType: !542, size: 8, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3754, file: !671, line: 260, baseType: !3785, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3754, file: !671, line: 263, baseType: !3792, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!1962, !3760, !1964}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3754, file: !671, line: 266, baseType: !3796, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!236, !3760, !1077}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3749, file: !671, line: 109, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 31, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3749, file: !671, line: 110, baseType: !583, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3749, file: !671, line: 111, baseType: !3685, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3686, file: !671, line: 148, baseType: !177, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3686, file: !671, line: 154, baseType: !208, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3686, file: !671, line: 156, baseType: !274, size: 16, offset: 896)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3686, file: !671, line: 157, baseType: !377, size: 16, offset: 912)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3686, file: !671, line: 158, baseType: !3809, size: 64, offset: 960)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 32, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !282, file: !283, line: 71, baseType: !1900, size: 32, offset: 448)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !282, file: !283, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !282, file: !283, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !282, file: !283, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !282, file: !283, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !282, file: !283, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !279, file: !79, line: 463, baseType: !278, size: 64, offset: 512)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !279, file: !79, line: 465, baseType: !3819, size: 64, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !79, line: 36, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !279, file: !79, line: 467, baseType: !215, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !79, line: 468, baseType: !3823, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3825)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !79, line: 87, size: 384, elements: !3826)
!3826 = !{!3827, !3828, !3829, !3833, !3838, !3842}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3825, file: !79, line: 88, baseType: !215, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3825, file: !79, line: 89, baseType: !388, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3825, file: !79, line: 90, baseType: !3830, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!236, !278, !331}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3825, file: !79, line: 91, baseType: !3834, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!336, !278, !3837, !3682, !3683}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3825, file: !79, line: 93, baseType: !3839, size: 64, offset: 256)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !278}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3825, file: !79, line: 95, baseType: !3843, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3845)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !86, line: 278, size: 1472, elements: !3846)
!3846 = !{!3847, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3845, file: !86, line: 279, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!236, !278}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3845, file: !86, line: 280, baseType: !3839, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3845, file: !86, line: 281, baseType: !3848, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3845, file: !86, line: 282, baseType: !3848, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3845, file: !86, line: 283, baseType: !3848, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3845, file: !86, line: 284, baseType: !3848, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3845, file: !86, line: 285, baseType: !3848, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3845, file: !86, line: 286, baseType: !3848, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3845, file: !86, line: 287, baseType: !3848, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3845, file: !86, line: 288, baseType: !3848, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3845, file: !86, line: 289, baseType: !3848, size: 64, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3845, file: !86, line: 290, baseType: !3848, size: 64, offset: 704)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3845, file: !86, line: 291, baseType: !3848, size: 64, offset: 768)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3845, file: !86, line: 292, baseType: !3848, size: 64, offset: 832)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3845, file: !86, line: 293, baseType: !3848, size: 64, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3845, file: !86, line: 294, baseType: !3848, size: 64, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3845, file: !86, line: 295, baseType: !3848, size: 64, offset: 1024)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3845, file: !86, line: 296, baseType: !3848, size: 64, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3845, file: !86, line: 297, baseType: !3848, size: 64, offset: 1152)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3845, file: !86, line: 298, baseType: !3848, size: 64, offset: 1216)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3845, file: !86, line: 299, baseType: !3848, size: 64, offset: 1280)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3845, file: !86, line: 300, baseType: !3848, size: 64, offset: 1344)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3845, file: !86, line: 301, baseType: !3848, size: 64, offset: 1408)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !279, file: !79, line: 470, baseType: !3874, size: 64, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3876, line: 82, size: 1408, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3959, !3962, !3963}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3875, file: !3876, line: 83, baseType: !215, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3875, file: !3876, line: 84, baseType: !215, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3875, file: !3876, line: 85, baseType: !278, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3875, file: !3876, line: 86, baseType: !388, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3875, file: !3876, line: 87, baseType: !388, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3875, file: !3876, line: 88, baseType: !388, size: 64, offset: 320)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3875, file: !3876, line: 90, baseType: !3885, size: 64, offset: 384)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!236, !278, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !73, line: 95, size: 1152, elements: !3890)
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896, !3897, !3910, !3923, !3924, !3925, !3926, !3927, !3935, !3936, !3937, !3938, !3939, !3940}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3889, file: !73, line: 96, baseType: !215, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3889, file: !73, line: 97, baseType: !3874, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3889, file: !73, line: 99, baseType: !174, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3889, file: !73, line: 100, baseType: !215, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3889, file: !73, line: 102, baseType: !542, size: 8, offset: 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3889, file: !73, line: 103, baseType: !72, size: 32, offset: 288)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3889, file: !73, line: 105, baseType: !3898, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3900)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3901, line: 262, size: 1600, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3902 = !{!3903, !3904, !3905, !3909}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3900, file: !3901, line: 263, baseType: !3385, size: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3900, file: !3901, line: 264, baseType: !3385, size: 256, offset: 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3900, file: !3901, line: 265, baseType: !3906, size: 1024, offset: 512)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !3907)
!3907 = !{!3908}
!3908 = !DISubrange(count: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3900, file: !3901, line: 266, baseType: !2815, size: 64, offset: 1536)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3889, file: !73, line: 106, baseType: !3911, size: 64, offset: 384)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3901, line: 210, size: 256, elements: !3914)
!3914 = !{!3915, !3919, !3921, !3922}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3913, file: !3901, line: 211, baseType: !3916, size: 72)
!3916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 72, elements: !3917)
!3917 = !{!3918}
!3918 = !DISubrange(count: 9)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3913, file: !3901, line: 212, baseType: !3920, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3901, line: 14, baseType: !219)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3913, file: !3901, line: 213, baseType: !251, size: 32, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3913, file: !3901, line: 214, baseType: !251, size: 32, offset: 224)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3889, file: !73, line: 108, baseType: !3848, size: 64, offset: 448)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3889, file: !73, line: 109, baseType: !3839, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3889, file: !73, line: 110, baseType: !3848, size: 64, offset: 576)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3889, file: !73, line: 111, baseType: !3839, size: 64, offset: 640)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3889, file: !73, line: 112, baseType: !3928, size: 64, offset: 704)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!236, !278, !3931}
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !86, line: 52, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !86, line: 50, size: 32, elements: !3933)
!3933 = !{!3934}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3932, file: !86, line: 51, baseType: !236, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3889, file: !73, line: 113, baseType: !3848, size: 64, offset: 768)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3889, file: !73, line: 114, baseType: !388, size: 64, offset: 832)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3889, file: !73, line: 115, baseType: !388, size: 64, offset: 896)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3889, file: !73, line: 117, baseType: !3843, size: 64, offset: 960)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3889, file: !73, line: 118, baseType: !3839, size: 64, offset: 1024)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3889, file: !73, line: 120, baseType: !3941, size: 64, offset: 1088)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !73, line: 120, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3875, file: !3876, line: 91, baseType: !3830, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3875, file: !3876, line: 92, baseType: !3848, size: 64, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3875, file: !3876, line: 93, baseType: !3839, size: 64, offset: 576)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3875, file: !3876, line: 94, baseType: !3848, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3875, file: !3876, line: 95, baseType: !3839, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3875, file: !3876, line: 97, baseType: !3848, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3875, file: !3876, line: 98, baseType: !3848, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3875, file: !3876, line: 100, baseType: !3928, size: 64, offset: 896)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3875, file: !3876, line: 101, baseType: !3848, size: 64, offset: 960)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3875, file: !3876, line: 103, baseType: !3848, size: 64, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3875, file: !3876, line: 105, baseType: !3848, size: 64, offset: 1088)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3875, file: !3876, line: 107, baseType: !3843, size: 64, offset: 1152)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3875, file: !3876, line: 109, baseType: !3956, size: 64, offset: 1216)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3958)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3876, line: 109, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3875, file: !3876, line: 111, baseType: !3960, size: 64, offset: 1280)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3876, line: 111, flags: DIFlagFwdDecl)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3875, file: !3876, line: 112, baseType: !697, offset: 1344)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3875, file: !3876, line: 114, baseType: !542, size: 8, offset: 1344)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !279, file: !79, line: 471, baseType: !3888, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !279, file: !79, line: 473, baseType: !177, size: 64, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !279, file: !79, line: 475, baseType: !177, size: 64, offset: 960)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !279, file: !79, line: 480, baseType: !775, size: 192, offset: 1024)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !279, file: !79, line: 484, baseType: !3969, size: 576, offset: 1216)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !79, line: 361, size: 576, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3969, file: !79, line: 362, baseType: !183, size: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3969, file: !79, line: 363, baseType: !183, size: 128, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3969, file: !79, line: 364, baseType: !183, size: 128, offset: 256)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3969, file: !79, line: 365, baseType: !183, size: 128, offset: 384)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3969, file: !79, line: 366, baseType: !542, size: 8, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3969, file: !79, line: 367, baseType: !78, size: 32, offset: 544)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !279, file: !79, line: 485, baseType: !3978, size: 2304, offset: 1792)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !86, line: 565, size: 2304, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4075, !4079}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3978, file: !86, line: 566, baseType: !3931, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3978, file: !86, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3978, file: !86, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3978, file: !86, line: 569, baseType: !542, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3978, file: !86, line: 570, baseType: !542, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3978, file: !86, line: 571, baseType: !542, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3978, file: !86, line: 572, baseType: !542, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3978, file: !86, line: 573, baseType: !542, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3978, file: !86, line: 574, baseType: !542, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3978, file: !86, line: 575, baseType: !542, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3978, file: !86, line: 576, baseType: !542, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3978, file: !86, line: 577, baseType: !250, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3978, file: !86, line: 578, baseType: !295, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3978, file: !86, line: 580, baseType: !183, size: 128, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3978, file: !86, line: 581, baseType: !1589, size: 192, offset: 256)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3978, file: !86, line: 582, baseType: !3996, size: 64, offset: 448)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3998, line: 43, size: 1472, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3999 = !{!4000, !4001, !4002, !4003, !4004, !4007, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3997, file: !3998, line: 44, baseType: !215, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3997, file: !3998, line: 45, baseType: !236, size: 32, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3997, file: !3998, line: 46, baseType: !183, size: 128, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3997, file: !3998, line: 47, baseType: !295, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3997, file: !3998, line: 48, baseType: !4005, size: 64, offset: 256)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !86, line: 533, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3997, file: !3998, line: 49, baseType: !4008, size: 320, offset: 320)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !4009, line: 11, size: 320, elements: !4010)
!4009 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!4010 = !{!4011, !4012, !4013, !4018}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4008, file: !4009, line: 16, baseType: !691, size: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4008, file: !4009, line: 17, baseType: !219, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4008, file: !4009, line: 18, baseType: !4014, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4008, file: !4009, line: 19, baseType: !250, size: 32, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3997, file: !3998, line: 50, baseType: !219, size: 64, offset: 640)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3997, file: !3998, line: 51, baseType: !1388, size: 64, offset: 704)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3997, file: !3998, line: 52, baseType: !1388, size: 64, offset: 768)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3997, file: !3998, line: 53, baseType: !1388, size: 64, offset: 832)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3997, file: !3998, line: 54, baseType: !1388, size: 64, offset: 896)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3997, file: !3998, line: 55, baseType: !1388, size: 64, offset: 960)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3997, file: !3998, line: 56, baseType: !219, size: 64, offset: 1024)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3997, file: !3998, line: 57, baseType: !219, size: 64, offset: 1088)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3997, file: !3998, line: 58, baseType: !219, size: 64, offset: 1152)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3997, file: !3998, line: 59, baseType: !219, size: 64, offset: 1216)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3997, file: !3998, line: 60, baseType: !219, size: 64, offset: 1280)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3997, file: !3998, line: 61, baseType: !278, size: 64, offset: 1344)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3997, file: !3998, line: 62, baseType: !542, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3997, file: !3998, line: 63, baseType: !542, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3978, file: !86, line: 583, baseType: !542, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3978, file: !86, line: 584, baseType: !542, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3978, file: !86, line: 585, baseType: !542, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3978, file: !86, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3978, file: !86, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3978, file: !86, line: 592, baseType: !1380, size: 512, offset: 576)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3978, file: !86, line: 593, baseType: !208, size: 64, offset: 1088)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3978, file: !86, line: 594, baseType: !2206, size: 256, offset: 1152)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3978, file: !86, line: 595, baseType: !1568, size: 128, offset: 1408)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3978, file: !86, line: 596, baseType: !4005, size: 64, offset: 1536)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3978, file: !86, line: 597, baseType: !849, size: 32, offset: 1600)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3978, file: !86, line: 598, baseType: !849, size: 32, offset: 1632)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3978, file: !86, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3978, file: !86, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3978, file: !86, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3978, file: !86, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3978, file: !86, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3978, file: !86, line: 604, baseType: !542, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3978, file: !86, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3978, file: !86, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3978, file: !86, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3978, file: !86, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3978, file: !86, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3978, file: !86, line: 610, baseType: !7, size: 32, offset: 1696)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3978, file: !86, line: 611, baseType: !85, size: 32, offset: 1728)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3978, file: !86, line: 612, baseType: !93, size: 32, offset: 1760)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3978, file: !86, line: 613, baseType: !236, size: 32, offset: 1792)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3978, file: !86, line: 614, baseType: !236, size: 32, offset: 1824)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3978, file: !86, line: 615, baseType: !208, size: 64, offset: 1856)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3978, file: !86, line: 616, baseType: !208, size: 64, offset: 1920)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3978, file: !86, line: 617, baseType: !208, size: 64, offset: 1984)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3978, file: !86, line: 618, baseType: !208, size: 64, offset: 2048)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3978, file: !86, line: 620, baseType: !4066, size: 64, offset: 2112)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !86, line: 536, size: 256, elements: !4068)
!4068 = !{!4069, !4070, !4071, !4072}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4067, file: !86, line: 537, baseType: !295)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4067, file: !86, line: 538, baseType: !7, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !4067, file: !86, line: 540, baseType: !183, size: 128, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !4067, file: !86, line: 543, baseType: !4073, size: 64, offset: 192)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !86, line: 534, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3978, file: !86, line: 621, baseType: !4076, size: 64, offset: 2176)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !278, !1531}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3978, file: !86, line: 622, baseType: !4080, size: 64, offset: 2240)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !86, line: 622, flags: DIFlagFwdDecl)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !279, file: !79, line: 486, baseType: !4083, size: 64, offset: 4096)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !86, line: 642, size: 1792, elements: !4085)
!4085 = !{!4086, !4087, !4088, !4092, !4093, !4094}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4084, file: !86, line: 643, baseType: !3845, size: 1472)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4084, file: !86, line: 644, baseType: !3848, size: 64, offset: 1472)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4084, file: !86, line: 645, baseType: !4089, size: 64, offset: 1536)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !278, !542}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4084, file: !86, line: 646, baseType: !3848, size: 64, offset: 1600)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4084, file: !86, line: 647, baseType: !3839, size: 64, offset: 1664)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4084, file: !86, line: 648, baseType: !3839, size: 64, offset: 1728)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !279, file: !79, line: 493, baseType: !4096, size: 64, offset: 4160)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !100, line: 162, size: 1088, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4274, !4275, !4276, !4277, !4278, !4279, !4282, !4283, !4284, !4285, !4286, !4287, !4288}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4097, file: !100, line: 163, baseType: !183, size: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4097, file: !100, line: 164, baseType: !215, size: 64, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4097, file: !100, line: 165, baseType: !4102, size: 64, offset: 192)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4104)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !100, line: 105, size: 640, elements: !4105)
!4105 = !{!4106, !4224, !4235, !4240, !4244, !4251, !4255, !4259, !4266, !4270}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4104, file: !100, line: 106, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!236, !4096, !4110, !99}
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4112, line: 51, size: 1344, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4113 = !{!4114, !4115, !4117, !4118, !4208, !4217, !4218, !4219, !4220, !4221, !4222, !4223}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4111, file: !4112, line: 52, baseType: !215, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4111, file: !4112, line: 53, baseType: !4116, size: 32, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4112, line: 28, baseType: !250)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4111, file: !4112, line: 54, baseType: !215, size: 64, offset: 128)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4111, file: !4112, line: 55, baseType: !4119, size: 192, offset: 192)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4120, line: 17, size: 192, elements: !4121)
!4120 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4121 = !{!4122, !4124, !4207}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4119, file: !4120, line: 18, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4119, file: !4120, line: 19, baseType: !4125, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4127)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4120, line: 110, size: 1152, elements: !4128)
!4128 = !{!4129, !4133, !4137, !4143, !4149, !4153, !4157, !4162, !4166, !4167, !4171, !4175, !4179, !4190, !4191, !4192, !4193, !4203}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4127, file: !4120, line: 111, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!4123, !4123}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4127, file: !4120, line: 112, baseType: !4134, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{null, !4123}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4127, file: !4120, line: 113, baseType: !4138, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!542, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4119)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4127, file: !4120, line: 114, baseType: !4144, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!2815, !4141, !4147}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4127, file: !4120, line: 116, baseType: !4150, size: 64, offset: 256)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!542, !4141, !215}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4127, file: !4120, line: 118, baseType: !4154, size: 64, offset: 320)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!236, !4141, !215, !7, !177, !382}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4127, file: !4120, line: 123, baseType: !4158, size: 64, offset: 384)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!236, !4141, !215, !4161, !382}
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4127, file: !4120, line: 126, baseType: !4163, size: 64, offset: 448)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!215, !4141}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4127, file: !4120, line: 127, baseType: !4163, size: 64, offset: 512)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4127, file: !4120, line: 128, baseType: !4168, size: 64, offset: 576)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!4123, !4141}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4127, file: !4120, line: 130, baseType: !4172, size: 64, offset: 640)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!4123, !4141, !4123}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4127, file: !4120, line: 133, baseType: !4176, size: 64, offset: 704)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!4123, !4141, !215}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4127, file: !4120, line: 135, baseType: !4180, size: 64, offset: 768)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!236, !4141, !215, !215, !7, !7, !4183}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4120, line: 43, size: 640, elements: !4185)
!4185 = !{!4186, !4187, !4188}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4184, file: !4120, line: 44, baseType: !4123, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4184, file: !4120, line: 45, baseType: !7, size: 32, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4184, file: !4120, line: 46, baseType: !4189, size: 512, offset: 128)
!4189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !1418)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4127, file: !4120, line: 140, baseType: !4172, size: 64, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4127, file: !4120, line: 143, baseType: !4168, size: 64, offset: 896)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4127, file: !4120, line: 145, baseType: !4130, size: 64, offset: 960)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4127, file: !4120, line: 146, baseType: !4194, size: 64, offset: 1024)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!236, !4141, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4120, line: 29, size: 128, elements: !4199)
!4199 = !{!4200, !4201, !4202}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4198, file: !4120, line: 30, baseType: !7, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4198, file: !4120, line: 31, baseType: !7, size: 32, offset: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4198, file: !4120, line: 32, baseType: !4141, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4127, file: !4120, line: 148, baseType: !4204, size: 64, offset: 1088)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!236, !4141, !278}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4119, file: !4120, line: 20, baseType: !278, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4111, file: !4112, line: 57, baseType: !4209, size: 64, offset: 384)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4112, line: 31, size: 704, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4215, !4216}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4210, file: !4112, line: 32, baseType: !336, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4210, file: !4112, line: 33, baseType: !236, size: 32, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4210, file: !4112, line: 34, baseType: !177, size: 64, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4210, file: !4112, line: 35, baseType: !4209, size: 64, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4210, file: !4112, line: 43, baseType: !403, size: 448, offset: 256)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4111, file: !4112, line: 58, baseType: !4209, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4111, file: !4112, line: 59, baseType: !4110, size: 64, offset: 512)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4111, file: !4112, line: 60, baseType: !4110, size: 64, offset: 576)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4111, file: !4112, line: 61, baseType: !4110, size: 64, offset: 640)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4111, file: !4112, line: 63, baseType: !282, size: 512, offset: 704)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4111, file: !4112, line: 65, baseType: !219, size: 64, offset: 1216)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4111, file: !4112, line: 66, baseType: !177, size: 64, offset: 1280)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4104, file: !100, line: 108, baseType: !4225, size: 64, offset: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!236, !4096, !4228, !99}
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !100, line: 63, size: 640, elements: !4230)
!4230 = !{!4231, !4232, !4233}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4229, file: !100, line: 64, baseType: !4123, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4229, file: !100, line: 65, baseType: !236, size: 32, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4229, file: !100, line: 66, baseType: !4234, size: 512, offset: 96)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 512, elements: !1822)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4104, file: !100, line: 110, baseType: !4236, size: 64, offset: 128)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!236, !4096, !7, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !184, line: 164, baseType: !219)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4104, file: !100, line: 111, baseType: !4241, size: 64, offset: 192)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4096, !7}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4104, file: !100, line: 112, baseType: !4245, size: 64, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!236, !4096, !4110, !4248, !7, !4250, !3368}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4104, file: !100, line: 117, baseType: !4252, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!236, !4096, !7, !7, !177}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4104, file: !100, line: 119, baseType: !4256, size: 64, offset: 384)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4096, !7, !7}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4104, file: !100, line: 121, baseType: !4260, size: 64, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!236, !4096, !4263, !542}
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4265, line: 11, flags: DIFlagFwdDecl)
!4265 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4104, file: !100, line: 122, baseType: !4267, size: 64, offset: 512)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4096, !4263}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4104, file: !100, line: 123, baseType: !4271, size: 64, offset: 576)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!236, !4096, !4228, !4250, !3368}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4097, file: !100, line: 166, baseType: !177, size: 64, offset: 256)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4097, file: !100, line: 167, baseType: !7, size: 32, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4097, file: !100, line: 168, baseType: !7, size: 32, offset: 352)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4097, file: !100, line: 171, baseType: !4123, size: 64, offset: 384)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4097, file: !100, line: 172, baseType: !99, size: 32, offset: 448)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4097, file: !100, line: 173, baseType: !4280, size: 64, offset: 512)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !100, line: 134, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4097, file: !100, line: 175, baseType: !4096, size: 64, offset: 576)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4097, file: !100, line: 182, baseType: !4239, size: 64, offset: 640)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !4097, file: !100, line: 183, baseType: !7, size: 32, offset: 704)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4097, file: !100, line: 184, baseType: !7, size: 32, offset: 736)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4097, file: !100, line: 185, baseType: !840, size: 128, offset: 768)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !4097, file: !100, line: 186, baseType: !775, size: 192, offset: 896)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !4097, file: !100, line: 187, baseType: !4289, offset: 1088)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2203)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !279, file: !79, line: 499, baseType: !183, size: 128, offset: 4224)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !279, file: !79, line: 502, baseType: !4292, size: 64, offset: 4352)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4294)
!4294 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !79, line: 502, flags: DIFlagFwdDecl)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !279, file: !79, line: 504, baseType: !4296, size: 64, offset: 4416)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !279, file: !79, line: 505, baseType: !208, size: 64, offset: 4480)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !279, file: !79, line: 510, baseType: !208, size: 64, offset: 4544)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !279, file: !79, line: 511, baseType: !4300, size: 64, offset: 4608)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4302)
!4302 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !79, line: 511, flags: DIFlagFwdDecl)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !279, file: !79, line: 513, baseType: !4304, size: 64, offset: 4672)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !79, line: 288, size: 128, elements: !4306)
!4306 = !{!4307, !4308}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4305, file: !79, line: 293, baseType: !7, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4305, file: !79, line: 294, baseType: !219, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !279, file: !79, line: 515, baseType: !183, size: 128, offset: 4736)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !279, file: !79, line: 526, baseType: !4311, offset: 4864)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4312, line: 5, elements: !309)
!4312 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !279, file: !79, line: 528, baseType: !4110, size: 64, offset: 4864)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !279, file: !79, line: 529, baseType: !4123, size: 64, offset: 4928)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !279, file: !79, line: 534, baseType: !565, size: 32, offset: 4992)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !279, file: !79, line: 535, baseType: !250, size: 32, offset: 5024)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !279, file: !79, line: 537, baseType: !295, offset: 5056)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !279, file: !79, line: 538, baseType: !183, size: 128, offset: 5056)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !279, file: !79, line: 540, baseType: !4320, size: 64, offset: 5184)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4322, line: 54, size: 960, elements: !4323)
!4322 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4334, !4338, !4339, !4340, !4341, !4345, !4349, !4350}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4321, file: !4322, line: 55, baseType: !215, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4321, file: !4322, line: 56, baseType: !174, size: 64, offset: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4321, file: !4322, line: 58, baseType: !388, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4321, file: !4322, line: 59, baseType: !388, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4321, file: !4322, line: 60, baseType: !288, size: 64, offset: 256)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4321, file: !4322, line: 62, baseType: !3830, size: 64, offset: 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4321, file: !4322, line: 63, baseType: !4331, size: 64, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!336, !278, !3837}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4321, file: !4322, line: 65, baseType: !4335, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{null, !4320}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4321, file: !4322, line: 66, baseType: !3839, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4321, file: !4322, line: 68, baseType: !3848, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4321, file: !4322, line: 70, baseType: !3650, size: 64, offset: 640)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4321, file: !4322, line: 71, baseType: !4342, size: 64, offset: 704)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!2815, !278}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4321, file: !4322, line: 73, baseType: !4346, size: 64, offset: 768)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !278, !3682, !3683}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4321, file: !4322, line: 75, baseType: !3843, size: 64, offset: 832)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4321, file: !4322, line: 77, baseType: !3960, size: 64, offset: 896)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !279, file: !79, line: 541, baseType: !388, size: 64, offset: 5248)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !279, file: !79, line: 543, baseType: !3839, size: 64, offset: 5312)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !279, file: !79, line: 544, baseType: !4354, size: 64, offset: 5376)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !79, line: 45, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !279, file: !79, line: 545, baseType: !4357, size: 64, offset: 5440)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !79, line: 47, flags: DIFlagFwdDecl)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !279, file: !79, line: 547, baseType: !542, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !279, file: !79, line: 548, baseType: !542, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !279, file: !79, line: 549, baseType: !542, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !279, file: !79, line: 550, baseType: !542, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !191, file: !180, line: 635, baseType: !279, size: 5568, offset: 2304)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !191, file: !180, line: 636, baseType: !402, size: 64, offset: 7872)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !191, file: !180, line: 637, baseType: !402, size: 64, offset: 7936)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !191, file: !180, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !179, file: !180, line: 312, baseType: !190, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !179, file: !180, line: 314, baseType: !177, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !179, file: !180, line: 315, baseType: !261, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !179, file: !180, line: 316, baseType: !4371, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !180, line: 69, size: 832, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4379, !4380}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4372, file: !180, line: 70, baseType: !190, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4372, file: !180, line: 71, baseType: !183, size: 128, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4372, file: !180, line: 72, baseType: !4377, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !180, line: 72, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4372, file: !180, line: 73, baseType: !265, size: 8, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4372, file: !180, line: 74, baseType: !282, size: 512, offset: 320)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !179, file: !180, line: 318, baseType: !7, size: 32, offset: 448)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !179, file: !180, line: 319, baseType: !274, size: 16, offset: 480)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !179, file: !180, line: 320, baseType: !274, size: 16, offset: 496)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !179, file: !180, line: 321, baseType: !274, size: 16, offset: 512)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !179, file: !180, line: 322, baseType: !274, size: 16, offset: 528)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !179, file: !180, line: 323, baseType: !7, size: 32, offset: 544)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !179, file: !180, line: 324, baseType: !1440, size: 8, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !179, file: !180, line: 325, baseType: !1440, size: 8, offset: 584)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !179, file: !180, line: 330, baseType: !1440, size: 8, offset: 592)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !179, file: !180, line: 331, baseType: !1440, size: 8, offset: 600)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !179, file: !180, line: 332, baseType: !1440, size: 8, offset: 608)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !179, file: !180, line: 333, baseType: !1440, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !179, file: !180, line: 334, baseType: !1440, size: 8, offset: 624)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !179, file: !180, line: 335, baseType: !1440, size: 8, offset: 632)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !179, file: !180, line: 336, baseType: !954, size: 16, offset: 640)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !179, file: !180, line: 337, baseType: !4250, size: 64, offset: 704)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !179, file: !180, line: 339, baseType: !4398, size: 64, offset: 768)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !180, line: 858, size: 2048, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4415, !4419, !4423, !4427, !4431, !4432, !4436, !4455, !4456, !4457}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4399, file: !180, line: 859, baseType: !183, size: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4399, file: !180, line: 860, baseType: !215, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4399, file: !180, line: 861, baseType: !4404, size: 64, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4406)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3901, line: 38, size: 256, elements: !4407)
!4407 = !{!4408, !4409, !4410, !4411, !4412, !4413, !4414}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4406, file: !3901, line: 39, baseType: !251, size: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4406, file: !3901, line: 39, baseType: !251, size: 32, offset: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4406, file: !3901, line: 40, baseType: !251, size: 32, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4406, file: !3901, line: 40, baseType: !251, size: 32, offset: 96)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4406, file: !3901, line: 41, baseType: !251, size: 32, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4406, file: !3901, line: 41, baseType: !251, size: 32, offset: 160)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4406, file: !3901, line: 42, baseType: !3920, size: 64, offset: 192)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4399, file: !180, line: 862, baseType: !4416, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!236, !178, !4404}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4399, file: !180, line: 863, baseType: !4420, size: 64, offset: 320)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !178}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4399, file: !180, line: 864, baseType: !4424, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!236, !178, !3931}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4399, file: !180, line: 865, baseType: !4428, size: 64, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!236, !178}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4399, file: !180, line: 866, baseType: !4420, size: 64, offset: 512)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4399, file: !180, line: 867, baseType: !4433, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!236, !178, !236}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4399, file: !180, line: 868, baseType: !4437, size: 64, offset: 640)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4439)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !180, line: 795, size: 384, elements: !4440)
!4440 = !{!4441, !4447, !4451, !4452, !4453, !4454}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4439, file: !180, line: 797, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4445, !178, !4446}
!4445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !180, line: 772, baseType: !7)
!4446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !180, line: 180, baseType: !7)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4439, file: !180, line: 801, baseType: !4448, size: 64, offset: 64)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!4445, !178}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4439, file: !180, line: 804, baseType: !4448, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4439, file: !180, line: 807, baseType: !4420, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4439, file: !180, line: 808, baseType: !4420, size: 64, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4439, file: !180, line: 811, baseType: !4420, size: 64, offset: 320)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4399, file: !180, line: 869, baseType: !388, size: 64, offset: 704)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4399, file: !180, line: 870, baseType: !3889, size: 1152, offset: 768)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4399, file: !180, line: 871, baseType: !4458, size: 128, offset: 1920)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !180, line: 759, size: 128, elements: !4459)
!4459 = !{!4460, !4461}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4458, file: !180, line: 760, baseType: !295)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4458, file: !180, line: 761, baseType: !183, size: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !179, file: !180, line: 340, baseType: !208, size: 64, offset: 832)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !179, file: !180, line: 346, baseType: !4305, size: 128, offset: 896)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !179, file: !180, line: 348, baseType: !4465, size: 32, offset: 1024)
!4465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !180, line: 155, baseType: !236)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !179, file: !180, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !179, file: !180, line: 352, baseType: !1440, size: 8, offset: 1064)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !179, file: !180, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !179, file: !180, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !179, file: !180, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !179, file: !180, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !179, file: !180, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !179, file: !180, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !179, file: !180, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !179, file: !180, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !179, file: !180, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !179, file: !180, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !179, file: !180, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !179, file: !180, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !179, file: !180, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !179, file: !180, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !179, file: !180, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !179, file: !180, line: 376, baseType: !7, size: 32, offset: 1120)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !179, file: !180, line: 377, baseType: !7, size: 32, offset: 1152)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !179, file: !180, line: 380, baseType: !4486, size: 64, offset: 1216)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !180, line: 303, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !179, file: !180, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !179, file: !180, line: 383, baseType: !236, size: 32, offset: 1312)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !179, file: !180, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !179, file: !180, line: 387, baseType: !4446, size: 32, offset: 1376)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !179, file: !180, line: 388, baseType: !279, size: 5568, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !179, file: !180, line: 390, baseType: !236, size: 32, offset: 6976)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !179, file: !180, line: 396, baseType: !7, size: 32, offset: 7008)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !179, file: !180, line: 397, baseType: !4496, size: 8704, offset: 7040)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 8704, elements: !4497)
!4497 = !{!4498}
!4498 = !DISubrange(count: 17)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !179, file: !180, line: 399, baseType: !542, size: 8, offset: 15744)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !179, file: !180, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !179, file: !180, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !179, file: !180, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !179, file: !180, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !179, file: !180, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !179, file: !180, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !179, file: !180, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !179, file: !180, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !179, file: !180, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !179, file: !180, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !179, file: !180, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !179, file: !180, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !179, file: !180, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !179, file: !180, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !179, file: !180, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !179, file: !180, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !179, file: !180, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !179, file: !180, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !179, file: !180, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !179, file: !180, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !179, file: !180, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !179, file: !180, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !179, file: !180, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !179, file: !180, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !179, file: !180, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !179, file: !180, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !179, file: !180, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !179, file: !180, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !179, file: !180, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !179, file: !180, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !179, file: !180, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !179, file: !180, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !179, file: !180, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !179, file: !180, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !179, file: !180, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !179, file: !180, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !179, file: !180, line: 450, baseType: !4537, size: 16, offset: 15792)
!4537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !180, line: 206, baseType: !274)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !179, file: !180, line: 451, baseType: !849, size: 32, offset: 15808)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !179, file: !180, line: 453, baseType: !4234, size: 512, offset: 15840)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !179, file: !180, line: 454, baseType: !687, size: 64, offset: 16384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !179, file: !180, line: 455, baseType: !402, size: 64, offset: 16448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !179, file: !180, line: 456, baseType: !236, size: 32, offset: 16512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !179, file: !180, line: 457, baseType: !4544, size: 1088, offset: 16576)
!4544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1088, elements: !4497)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !179, file: !180, line: 458, baseType: !4544, size: 1088, offset: 17664)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !179, file: !180, line: 469, baseType: !388, size: 64, offset: 18752)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !179, file: !180, line: 471, baseType: !4548, size: 64, offset: 18816)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !180, line: 304, flags: DIFlagFwdDecl)
!4550 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !180, line: 478, baseType: !4551, size: 64, offset: 18880)
!4551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !180, line: 478, size: 64, elements: !4552)
!4552 = !{!4553, !4556}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4551, file: !180, line: 479, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !180, line: 305, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4551, file: !180, line: 480, baseType: !178, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !179, file: !180, line: 482, baseType: !954, size: 16, offset: 18944)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !179, file: !180, line: 483, baseType: !1440, size: 8, offset: 18960)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !179, file: !180, line: 497, baseType: !954, size: 16, offset: 18976)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !179, file: !180, line: 498, baseType: !207, size: 64, offset: 19008)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !179, file: !180, line: 499, baseType: !382, size: 64, offset: 19072)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !179, file: !180, line: 500, baseType: !336, size: 64, offset: 19136)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !179, file: !180, line: 502, baseType: !219, size: 64, offset: 19200)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_hcd", file: !159, line: 1734, size: 50560, elements: !4566)
!4566 = !{!4567, !5144, !5145, !5157, !5185, !5204, !5212, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5234, !5235, !5239, !5246, !5303, !5304, !5305, !5306, !5313, !5314, !5332, !5333, !5346, !5353, !5354, !5355, !5356, !5439, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5464, !5465, !5466, !5467, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522, !5523, !5524}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "main_hcd", scope: !4565, file: !159, line: 1735, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !147, line: 81, size: 4672, elements: !4570)
!4570 = !{!4571, !4883, !4884, !4885, !4886, !4890, !4891, !4953, !4954, !4955, !5076, !5079, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5128, !5129, !5131, !5132, !5133, !5134, !5139, !5140, !5143}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4569, file: !147, line: 86, baseType: !4572, size: 960)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !135, line: 424, size: 960, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4592, !4878, !4879, !4880, !4881, !4882}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !4572, file: !135, line: 425, baseType: !278, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !4572, file: !135, line: 426, baseType: !278, size: 64, offset: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !4572, file: !135, line: 427, baseType: !236, size: 32, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4572, file: !135, line: 428, baseType: !215, size: 64, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !4572, file: !135, line: 429, baseType: !1440, size: 8, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !4572, file: !135, line: 433, baseType: !1440, size: 8, offset: 264)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !4572, file: !135, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !4572, file: !135, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !4572, file: !135, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !4572, file: !135, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !4572, file: !135, line: 442, baseType: !7, size: 32, offset: 288)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !4572, file: !135, line: 444, baseType: !236, size: 32, offset: 320)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !4572, file: !135, line: 446, baseType: !775, size: 192, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !4572, file: !135, line: 448, baseType: !4588, size: 128, offset: 576)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !135, line: 417, size: 128, elements: !4589)
!4589 = !{!4590}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !4588, file: !135, line: 418, baseType: !4591, size: 128)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !1656)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !4572, file: !135, line: 449, baseType: !4593, size: 64, offset: 704)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !135, line: 631, size: 10624, elements: !4595)
!4595 = !{!4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4614, !4615, !4617, !4618, !4620, !4660, !4661, !4678, !4739, !4821, !4822, !4824, !4825, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4860, !4861, !4862, !4867, !4874, !4875, !4876, !4877}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !4594, file: !135, line: 632, baseType: !236, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !4594, file: !135, line: 633, baseType: !1821, size: 128, offset: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !4594, file: !135, line: 634, baseType: !250, size: 32, offset: 160)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4594, file: !135, line: 635, baseType: !113, size: 32, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4594, file: !135, line: 636, baseType: !125, size: 32, offset: 224)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !4594, file: !135, line: 637, baseType: !7, size: 32, offset: 256)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !4594, file: !135, line: 638, baseType: !7, size: 32, offset: 288)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !4594, file: !135, line: 640, baseType: !4604, size: 64, offset: 320)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !147, line: 554, size: 576, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4605, file: !147, line: 555, baseType: !4593, size: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !4605, file: !147, line: 556, baseType: !236, size: 32, offset: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !4605, file: !147, line: 557, baseType: !7, size: 32, offset: 96)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4605, file: !147, line: 558, baseType: !177, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4605, file: !147, line: 561, baseType: !295, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !4605, file: !147, line: 562, baseType: !183, size: 128, offset: 192)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !4605, file: !147, line: 563, baseType: !2206, size: 256, offset: 320)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !4594, file: !135, line: 641, baseType: !236, size: 32, offset: 384)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !4594, file: !135, line: 643, baseType: !4616, size: 64, offset: 416)
!4616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1656)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4594, file: !135, line: 645, baseType: !4593, size: 64, offset: 512)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4594, file: !135, line: 646, baseType: !4619, size: 64, offset: 576)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !4594, file: !135, line: 647, baseType: !4621, size: 640, offset: 640)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !135, line: 67, size: 640, elements: !4622)
!4622 = !{!4623, !4635, !4643, !4651, !4652, !4653, !4656, !4657, !4658, !4659}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4621, file: !135, line: 68, baseType: !4624, size: 72)
!4624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !114, line: 407, size: 72, elements: !4625)
!4625 = !{!4626, !4627, !4628, !4629, !4630, !4632, !4633, !4634}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4624, file: !114, line: 408, baseType: !1441, size: 8)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4624, file: !114, line: 409, baseType: !1441, size: 8, offset: 8)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !4624, file: !114, line: 411, baseType: !1441, size: 8, offset: 16)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4624, file: !114, line: 412, baseType: !1441, size: 8, offset: 24)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !4624, file: !114, line: 413, baseType: !4631, size: 16, offset: 32)
!4631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1963, line: 29, baseType: !955)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !4624, file: !114, line: 414, baseType: !1441, size: 8, offset: 48)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !4624, file: !114, line: 418, baseType: !1441, size: 8, offset: 56)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !4624, file: !114, line: 419, baseType: !1441, size: 8, offset: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !4621, file: !135, line: 69, baseType: !4636, size: 48, offset: 72)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !114, line: 689, size: 48, elements: !4637)
!4637 = !{!4638, !4639, !4640, !4641, !4642}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4636, file: !114, line: 690, baseType: !1441, size: 8)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4636, file: !114, line: 691, baseType: !1441, size: 8, offset: 8)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !4636, file: !114, line: 693, baseType: !1441, size: 8, offset: 16)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4636, file: !114, line: 694, baseType: !1441, size: 8, offset: 24)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !4636, file: !114, line: 695, baseType: !4631, size: 16, offset: 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !4621, file: !135, line: 70, baseType: !4644, size: 64, offset: 120)
!4644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !114, line: 677, size: 64, elements: !4645)
!4645 = !{!4646, !4647, !4648, !4649}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4644, file: !114, line: 678, baseType: !1441, size: 8)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4644, file: !114, line: 679, baseType: !1441, size: 8, offset: 8)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !4644, file: !114, line: 680, baseType: !4631, size: 16, offset: 16)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !4644, file: !114, line: 681, baseType: !4650, size: 32, offset: 32)
!4650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1963, line: 31, baseType: !251)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4621, file: !135, line: 71, baseType: !183, size: 128, offset: 192)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4621, file: !135, line: 72, baseType: !177, size: 64, offset: 320)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !4621, file: !135, line: 73, baseType: !4654, size: 64, offset: 384)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !135, line: 48, flags: DIFlagFwdDecl)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4621, file: !135, line: 75, baseType: !2273, size: 64, offset: 448)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4621, file: !135, line: 76, baseType: !236, size: 32, offset: 512)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4621, file: !135, line: 77, baseType: !236, size: 32, offset: 544)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !4621, file: !135, line: 78, baseType: !236, size: 32, offset: 576)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4594, file: !135, line: 649, baseType: !279, size: 5568, offset: 1280)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !4594, file: !135, line: 651, baseType: !4662, size: 144, offset: 6848)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !114, line: 289, size: 144, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4662, file: !114, line: 290, baseType: !1441, size: 8)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4662, file: !114, line: 291, baseType: !1441, size: 8, offset: 8)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !4662, file: !114, line: 293, baseType: !4631, size: 16, offset: 16)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !4662, file: !114, line: 294, baseType: !1441, size: 8, offset: 32)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !4662, file: !114, line: 295, baseType: !1441, size: 8, offset: 40)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !4662, file: !114, line: 296, baseType: !1441, size: 8, offset: 48)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !4662, file: !114, line: 297, baseType: !1441, size: 8, offset: 56)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !4662, file: !114, line: 298, baseType: !4631, size: 16, offset: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !4662, file: !114, line: 299, baseType: !4631, size: 16, offset: 80)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !4662, file: !114, line: 300, baseType: !4631, size: 16, offset: 96)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !4662, file: !114, line: 301, baseType: !1441, size: 8, offset: 112)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !4662, file: !114, line: 302, baseType: !1441, size: 8, offset: 120)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !4662, file: !114, line: 303, baseType: !1441, size: 8, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !4662, file: !114, line: 304, baseType: !1441, size: 8, offset: 136)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !4594, file: !135, line: 652, baseType: !4679, size: 64, offset: 7040)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !135, line: 396, size: 384, elements: !4681)
!4681 = !{!4682, !4690, !4698, !4710, !4723, !4732}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4680, file: !135, line: 397, baseType: !4683, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !114, line: 844, size: 40, elements: !4685)
!4685 = !{!4686, !4687, !4688, !4689}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4684, file: !114, line: 845, baseType: !1441, size: 8)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4684, file: !114, line: 846, baseType: !1441, size: 8, offset: 8)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4684, file: !114, line: 848, baseType: !4631, size: 16, offset: 16)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !4684, file: !114, line: 849, baseType: !1441, size: 8, offset: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !4680, file: !135, line: 400, baseType: !4691, size: 64, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !114, line: 895, size: 56, elements: !4693)
!4693 = !{!4694, !4695, !4696, !4697}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4692, file: !114, line: 896, baseType: !1441, size: 8)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4692, file: !114, line: 897, baseType: !1441, size: 8, offset: 8)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4692, file: !114, line: 898, baseType: !1441, size: 8, offset: 16)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4692, file: !114, line: 899, baseType: !4650, size: 32, offset: 24)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !4680, file: !135, line: 401, baseType: !4699, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !114, line: 917, size: 80, elements: !4701)
!4701 = !{!4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709}
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4700, file: !114, line: 918, baseType: !1441, size: 8)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4700, file: !114, line: 919, baseType: !1441, size: 8, offset: 8)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4700, file: !114, line: 920, baseType: !1441, size: 8, offset: 16)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4700, file: !114, line: 921, baseType: !1441, size: 8, offset: 24)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4700, file: !114, line: 923, baseType: !4631, size: 16, offset: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4700, file: !114, line: 928, baseType: !1441, size: 8, offset: 48)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4700, file: !114, line: 929, baseType: !1441, size: 8, offset: 56)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4700, file: !114, line: 930, baseType: !4631, size: 16, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !4680, file: !135, line: 402, baseType: !4711, size: 64, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !114, line: 955, size: 128, elements: !4713)
!4713 = !{!4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4712, file: !114, line: 956, baseType: !1441, size: 8)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4712, file: !114, line: 957, baseType: !1441, size: 8, offset: 8)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4712, file: !114, line: 958, baseType: !1441, size: 8, offset: 16)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4712, file: !114, line: 959, baseType: !1441, size: 8, offset: 24)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4712, file: !114, line: 960, baseType: !4650, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4712, file: !114, line: 963, baseType: !4631, size: 16, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4712, file: !114, line: 967, baseType: !4631, size: 16, offset: 80)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4712, file: !114, line: 968, baseType: !4722, size: 32, offset: 96)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 32, elements: !1459)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !4680, file: !135, line: 403, baseType: !4724, size: 64, offset: 256)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !114, line: 940, size: 160, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4730, !4731}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4725, file: !114, line: 941, baseType: !1441, size: 8)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4725, file: !114, line: 942, baseType: !1441, size: 8, offset: 8)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4725, file: !114, line: 943, baseType: !1441, size: 8, offset: 16)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4725, file: !114, line: 944, baseType: !1441, size: 8, offset: 24)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4725, file: !114, line: 945, baseType: !3392, size: 128, offset: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !4680, file: !135, line: 404, baseType: !4733, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !114, line: 1080, size: 24, elements: !4735)
!4735 = !{!4736, !4737, !4738}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4734, file: !114, line: 1081, baseType: !1441, size: 8)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4734, file: !114, line: 1082, baseType: !1441, size: 8, offset: 8)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4734, file: !114, line: 1083, baseType: !1441, size: 8, offset: 16)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4594, file: !135, line: 653, baseType: !4740, size: 64, offset: 7104)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !135, line: 374, size: 5440, elements: !4742)
!4742 = !{!4743, !4754, !4755, !4768, !4810, !4819, !4820}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4741, file: !135, line: 375, baseType: !4744, size: 72)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !114, line: 349, size: 72, elements: !4745)
!4745 = !{!4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4744, file: !114, line: 350, baseType: !1441, size: 8)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4744, file: !114, line: 351, baseType: !1441, size: 8, offset: 8)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4744, file: !114, line: 353, baseType: !4631, size: 16, offset: 16)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4744, file: !114, line: 354, baseType: !1441, size: 8, offset: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4744, file: !114, line: 355, baseType: !1441, size: 8, offset: 40)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4744, file: !114, line: 356, baseType: !1441, size: 8, offset: 48)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4744, file: !114, line: 357, baseType: !1441, size: 8, offset: 56)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4744, file: !114, line: 358, baseType: !1441, size: 8, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4741, file: !135, line: 377, baseType: !336, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4741, file: !135, line: 381, baseType: !4756, size: 1024, offset: 192)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4757, size: 1024, elements: !1822)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !114, line: 783, size: 64, elements: !4759)
!4759 = !{!4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4758, file: !114, line: 784, baseType: !1441, size: 8)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4758, file: !114, line: 785, baseType: !1441, size: 8, offset: 8)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4758, file: !114, line: 787, baseType: !1441, size: 8, offset: 16)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4758, file: !114, line: 788, baseType: !1441, size: 8, offset: 24)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4758, file: !114, line: 789, baseType: !1441, size: 8, offset: 32)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4758, file: !114, line: 790, baseType: !1441, size: 8, offset: 40)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4758, file: !114, line: 791, baseType: !1441, size: 8, offset: 48)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4758, file: !114, line: 792, baseType: !1441, size: 8, offset: 56)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4741, file: !135, line: 385, baseType: !4769, size: 2048, offset: 1216)
!4769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4770, size: 2048, elements: !2918)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !135, line: 232, size: 6272, elements: !4772)
!4772 = !{!4773, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4771, file: !135, line: 235, baseType: !4774, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !135, line: 82, size: 320, elements: !4776)
!4776 = !{!4777, !4789, !4790, !4791, !4793}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4775, file: !135, line: 83, baseType: !4778, size: 72)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !114, line: 389, size: 72, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4778, file: !114, line: 390, baseType: !1441, size: 8)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4778, file: !114, line: 391, baseType: !1441, size: 8, offset: 8)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4778, file: !114, line: 393, baseType: !1441, size: 8, offset: 16)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4778, file: !114, line: 394, baseType: !1441, size: 8, offset: 24)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4778, file: !114, line: 395, baseType: !1441, size: 8, offset: 32)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4778, file: !114, line: 396, baseType: !1441, size: 8, offset: 40)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4778, file: !114, line: 397, baseType: !1441, size: 8, offset: 48)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4778, file: !114, line: 398, baseType: !1441, size: 8, offset: 56)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4778, file: !114, line: 399, baseType: !1441, size: 8, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4775, file: !135, line: 85, baseType: !236, size: 32, offset: 96)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4775, file: !135, line: 86, baseType: !2273, size: 64, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4775, file: !135, line: 91, baseType: !4792, size: 64, offset: 192)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4775, file: !135, line: 93, baseType: !336, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4771, file: !135, line: 237, baseType: !4774, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4771, file: !135, line: 239, baseType: !7, size: 32, offset: 128)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4771, file: !135, line: 243, baseType: !4757, size: 64, offset: 192)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4771, file: !135, line: 245, baseType: !236, size: 32, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4771, file: !135, line: 247, baseType: !134, size: 32, offset: 288)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4771, file: !135, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4771, file: !135, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4771, file: !135, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4771, file: !135, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4771, file: !135, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4771, file: !135, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4771, file: !135, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4771, file: !135, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4771, file: !135, line: 257, baseType: !279, size: 5568, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4771, file: !135, line: 258, baseType: !278, size: 64, offset: 5952)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4771, file: !135, line: 259, baseType: !2206, size: 256, offset: 6016)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4741, file: !135, line: 389, baseType: !4811, size: 2048, offset: 3264)
!4811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4812, size: 2048, elements: !2918)
!4812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4813, size: 64)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !135, line: 322, size: 64, elements: !4814)
!4814 = !{!4815, !4816, !4817}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4813, file: !135, line: 323, baseType: !7, size: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4813, file: !135, line: 324, baseType: !1900, size: 32, offset: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4813, file: !135, line: 328, baseType: !4818, offset: 64)
!4818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4775, elements: !2203)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4741, file: !135, line: 391, baseType: !2273, size: 64, offset: 5312)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4741, file: !135, line: 392, baseType: !236, size: 32, offset: 5376)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !4594, file: !135, line: 655, baseType: !4740, size: 64, offset: 7168)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !4594, file: !135, line: 656, baseType: !4823, size: 1024, offset: 7232)
!4823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4792, size: 1024, elements: !1822)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !4594, file: !135, line: 657, baseType: !4823, size: 1024, offset: 8256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !4594, file: !135, line: 659, baseType: !4826, size: 64, offset: 9280)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !4594, file: !135, line: 661, baseType: !274, size: 16, offset: 9344)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !4594, file: !135, line: 662, baseType: !1440, size: 8, offset: 9360)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4594, file: !135, line: 663, baseType: !1440, size: 8, offset: 9368)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !4594, file: !135, line: 664, baseType: !1440, size: 8, offset: 9376)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !4594, file: !135, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !4594, file: !135, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !4594, file: !135, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4594, file: !135, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4594, file: !135, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !4594, file: !135, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !4594, file: !135, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !4594, file: !135, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !4594, file: !135, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !4594, file: !135, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !4594, file: !135, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !4594, file: !135, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !4594, file: !135, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !4594, file: !135, line: 679, baseType: !236, size: 32, offset: 9408)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4594, file: !135, line: 682, baseType: !336, size: 64, offset: 9472)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4594, file: !135, line: 683, baseType: !336, size: 64, offset: 9536)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4594, file: !135, line: 684, baseType: !336, size: 64, offset: 9600)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4594, file: !135, line: 686, baseType: !183, size: 128, offset: 9664)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !4594, file: !135, line: 688, baseType: !236, size: 32, offset: 9792)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4594, file: !135, line: 690, baseType: !250, size: 32, offset: 9824)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !4594, file: !135, line: 691, baseType: !849, size: 32, offset: 9856)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !4594, file: !135, line: 693, baseType: !219, size: 64, offset: 9920)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !4594, file: !135, line: 696, baseType: !219, size: 64, offset: 9984)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !4594, file: !135, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !4594, file: !135, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !4594, file: !135, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !4594, file: !135, line: 702, baseType: !4858, size: 64, offset: 10112)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !135, line: 28, flags: DIFlagFwdDecl)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !4594, file: !135, line: 703, baseType: !236, size: 32, offset: 10176)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4594, file: !135, line: 704, baseType: !141, size: 32, offset: 10208)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !4594, file: !135, line: 705, baseType: !4863, size: 64, offset: 10240)
!4863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !135, line: 502, size: 64, elements: !4864)
!4864 = !{!4865, !4866}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4863, file: !135, line: 506, baseType: !7, size: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4863, file: !135, line: 512, baseType: !236, size: 32, offset: 32)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !4594, file: !135, line: 706, baseType: !4868, size: 128, offset: 10304)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !135, line: 522, size: 128, elements: !4869)
!4869 = !{!4870, !4871, !4872, !4873}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4868, file: !135, line: 529, baseType: !7, size: 32)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4868, file: !135, line: 535, baseType: !7, size: 32, offset: 32)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4868, file: !135, line: 545, baseType: !7, size: 32, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4868, file: !135, line: 551, baseType: !236, size: 32, offset: 96)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !4594, file: !135, line: 707, baseType: !4868, size: 128, offset: 10432)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !4594, file: !135, line: 708, baseType: !7, size: 32, offset: 10560)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !4594, file: !135, line: 710, baseType: !954, size: 16, offset: 10592)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !4594, file: !135, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !4572, file: !135, line: 450, baseType: !4619, size: 64, offset: 768)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !4572, file: !135, line: 452, baseType: !236, size: 32, offset: 832)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !4572, file: !135, line: 459, baseType: !236, size: 32, offset: 864)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !4572, file: !135, line: 460, baseType: !236, size: 32, offset: 896)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !4572, file: !135, line: 462, baseType: !7, size: 32, offset: 928)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4569, file: !147, line: 87, baseType: !1900, size: 32, offset: 960)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4569, file: !147, line: 89, baseType: !215, size: 64, offset: 1024)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4569, file: !147, line: 90, baseType: !236, size: 32, offset: 1088)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4569, file: !147, line: 94, baseType: !4887, size: 192, offset: 1120)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 192, elements: !4888)
!4888 = !{!4889}
!4889 = !DISubrange(count: 24)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !4569, file: !147, line: 96, baseType: !4008, size: 320, offset: 1344)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !4569, file: !147, line: 97, baseType: !4892, size: 64, offset: 1664)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !135, line: 1561, size: 1472, elements: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4945}
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4893, file: !135, line: 1563, baseType: !1900, size: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4893, file: !135, line: 1564, baseType: !236, size: 32, offset: 32)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4893, file: !135, line: 1565, baseType: !177, size: 64, offset: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4893, file: !135, line: 1566, baseType: !849, size: 32, offset: 128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4893, file: !135, line: 1567, baseType: !849, size: 32, offset: 160)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4893, file: !135, line: 1570, baseType: !183, size: 128, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4893, file: !135, line: 1572, baseType: !183, size: 128, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4893, file: !135, line: 1573, baseType: !4903, size: 64, offset: 448)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !135, line: 1360, size: 320, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4904, file: !135, line: 1361, baseType: !183, size: 128)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4904, file: !135, line: 1362, baseType: !1568, size: 128, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4904, file: !135, line: 1363, baseType: !295, offset: 256)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4904, file: !135, line: 1364, baseType: !849, size: 32, offset: 256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4904, file: !135, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4893, file: !135, line: 1574, baseType: !4593, size: 64, offset: 512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4893, file: !135, line: 1575, baseType: !4792, size: 64, offset: 576)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4893, file: !135, line: 1576, baseType: !7, size: 32, offset: 640)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4893, file: !135, line: 1577, baseType: !7, size: 32, offset: 672)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4893, file: !135, line: 1578, baseType: !236, size: 32, offset: 704)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4893, file: !135, line: 1579, baseType: !7, size: 32, offset: 736)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4893, file: !135, line: 1580, baseType: !177, size: 64, offset: 768)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4893, file: !135, line: 1581, baseType: !1015, size: 64, offset: 832)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4893, file: !135, line: 1582, baseType: !4920, size: 64, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4922, line: 11, size: 256, elements: !4923)
!4922 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/lizy2001/genbc/linux")
!4923 = !{!4924, !4925, !4926, !4927, !4928}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4921, file: !4922, line: 12, baseType: !219, size: 64)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4921, file: !4922, line: 13, baseType: !7, size: 32, offset: 64)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4921, file: !4922, line: 14, baseType: !7, size: 32, offset: 96)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4921, file: !4922, line: 15, baseType: !1015, size: 64, offset: 128)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4921, file: !4922, line: 17, baseType: !7, size: 32, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4893, file: !135, line: 1583, baseType: !236, size: 32, offset: 960)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4893, file: !135, line: 1584, baseType: !236, size: 32, offset: 992)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4893, file: !135, line: 1585, baseType: !250, size: 32, offset: 1024)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4893, file: !135, line: 1586, baseType: !250, size: 32, offset: 1056)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4893, file: !135, line: 1587, baseType: !2273, size: 64, offset: 1088)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4893, file: !135, line: 1588, baseType: !1015, size: 64, offset: 1152)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4893, file: !135, line: 1589, baseType: !236, size: 32, offset: 1216)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4893, file: !135, line: 1590, baseType: !236, size: 32, offset: 1248)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4893, file: !135, line: 1591, baseType: !236, size: 32, offset: 1280)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4893, file: !135, line: 1593, baseType: !236, size: 32, offset: 1312)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4893, file: !135, line: 1594, baseType: !177, size: 64, offset: 1344)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4893, file: !135, line: 1595, baseType: !4941, size: 64, offset: 1408)
!4941 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !135, line: 1376, baseType: !4942)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{null, !4892}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4893, file: !135, line: 1596, baseType: !4946, offset: 1472)
!4946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4947, elements: !2203)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !135, line: 1351, size: 128, elements: !4948)
!4948 = !{!4949, !4950, !4951, !4952}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4947, file: !135, line: 1352, baseType: !7, size: 32)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4947, file: !135, line: 1353, baseType: !7, size: 32, offset: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4947, file: !135, line: 1354, baseType: !7, size: 32, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4947, file: !135, line: 1355, baseType: !236, size: 32, offset: 96)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !4569, file: !147, line: 99, baseType: !2206, size: 256, offset: 1728)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !4569, file: !147, line: 101, baseType: !2206, size: 256, offset: 1984)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4569, file: !147, line: 106, baseType: !4956, size: 64, offset: 2240)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4958)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !147, line: 249, size: 2880, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !4968, !4969, !4973, !4974, !4978, !4979, !4983, !4984, !4985, !4989, !4993, !4994, !4998, !5002, !5003, !5007, !5011, !5012, !5013, !5017, !5021, !5025, !5029, !5030, !5034, !5038, !5043, !5047, !5051, !5052, !5053, !5054, !5055, !5056, !5060, !5061, !5062, !5066, !5070, !5071, !5072}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4958, file: !147, line: 250, baseType: !215, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4958, file: !147, line: 251, baseType: !215, size: 64, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4958, file: !147, line: 252, baseType: !382, size: 64, offset: 128)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4958, file: !147, line: 255, baseType: !4964, size: 64, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!4967, !4568}
!4967 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4958, file: !147, line: 257, baseType: !236, size: 32, offset: 256)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4958, file: !147, line: 271, baseType: !4970, size: 64, offset: 320)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!236, !4568}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4958, file: !147, line: 272, baseType: !4970, size: 64, offset: 384)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4958, file: !147, line: 278, baseType: !4975, size: 64, offset: 448)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!236, !4568, !542}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4958, file: !147, line: 281, baseType: !4975, size: 64, offset: 512)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4958, file: !147, line: 284, baseType: !4980, size: 64, offset: 576)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{null, !4568}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4958, file: !147, line: 287, baseType: !4980, size: 64, offset: 640)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4958, file: !147, line: 290, baseType: !4970, size: 64, offset: 704)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4958, file: !147, line: 293, baseType: !4986, size: 64, offset: 768)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!236, !4568, !4892, !845}
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4958, file: !147, line: 295, baseType: !4990, size: 64, offset: 832)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!236, !4568, !4892, !236}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4958, file: !147, line: 307, baseType: !4986, size: 64, offset: 896)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4958, file: !147, line: 309, baseType: !4995, size: 64, offset: 960)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{null, !4568, !4892}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4958, file: !147, line: 312, baseType: !4999, size: 64, offset: 1024)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !4568, !4792}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4958, file: !147, line: 317, baseType: !4999, size: 64, offset: 1088)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4958, file: !147, line: 321, baseType: !5004, size: 64, offset: 1152)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!236, !4568, !336}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4958, file: !147, line: 322, baseType: !5008, size: 64, offset: 1216)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!236, !4568, !954, !954, !954, !336, !954}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4958, file: !147, line: 325, baseType: !4970, size: 64, offset: 1280)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4958, file: !147, line: 326, baseType: !4970, size: 64, offset: 1344)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4958, file: !147, line: 327, baseType: !5014, size: 64, offset: 1408)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!236, !4568, !7}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4958, file: !147, line: 328, baseType: !5018, size: 64, offset: 1472)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!219, !4568}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4958, file: !147, line: 331, baseType: !5022, size: 64, offset: 1536)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = !DISubroutineType(types: !5024)
!5024 = !{null, !4568, !236}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4958, file: !147, line: 333, baseType: !5026, size: 64, offset: 1600)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!236, !4568, !236}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4958, file: !147, line: 336, baseType: !4999, size: 64, offset: 1664)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4958, file: !147, line: 341, baseType: !5031, size: 64, offset: 1728)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!236, !4568, !4593}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4958, file: !147, line: 343, baseType: !5035, size: 64, offset: 1792)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{null, !4568, !4593}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4958, file: !147, line: 345, baseType: !5039, size: 64, offset: 1856)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!236, !4568, !4593, !5042, !7, !7, !845}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4958, file: !147, line: 351, baseType: !5044, size: 64, offset: 1920)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!236, !4568, !4593, !5042, !7, !845}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4958, file: !147, line: 366, baseType: !5048, size: 64, offset: 1984)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!236, !4568, !4593, !4792}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4958, file: !147, line: 369, baseType: !5048, size: 64, offset: 2048)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4958, file: !147, line: 376, baseType: !5031, size: 64, offset: 2112)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4958, file: !147, line: 384, baseType: !5035, size: 64, offset: 2176)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4958, file: !147, line: 386, baseType: !5031, size: 64, offset: 2240)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4958, file: !147, line: 388, baseType: !5031, size: 64, offset: 2304)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4958, file: !147, line: 392, baseType: !5057, size: 64, offset: 2368)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{!236, !4568, !4593, !4604, !845}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4958, file: !147, line: 394, baseType: !5031, size: 64, offset: 2432)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4958, file: !147, line: 398, baseType: !5031, size: 64, offset: 2496)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4958, file: !147, line: 399, baseType: !5063, size: 64, offset: 2560)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!236, !4568, !4593, !236}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4958, file: !147, line: 402, baseType: !5067, size: 64, offset: 2624)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!236, !4568, !4593, !152}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4958, file: !147, line: 407, baseType: !5067, size: 64, offset: 2688)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4958, file: !147, line: 409, baseType: !5026, size: 64, offset: 2752)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4958, file: !147, line: 411, baseType: !5073, size: 64, offset: 2816)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!236, !4568, !236, !542}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !4569, file: !147, line: 112, baseType: !5077, size: 64, offset: 2304)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !147, line: 112, flags: DIFlagFwdDecl)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !4569, file: !147, line: 113, baseType: !5080, size: 64, offset: 2368)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !147, line: 113, flags: DIFlagFwdDecl)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4569, file: !147, line: 119, baseType: !219, size: 64, offset: 2432)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !4569, file: !147, line: 151, baseType: !146, size: 32, offset: 2496)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !4569, file: !147, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !4569, file: !147, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4569, file: !147, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4569, file: !147, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !4569, file: !147, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !4569, file: !147, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !4569, file: !147, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !4569, file: !147, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !4569, file: !147, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !4569, file: !147, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !4569, file: !147, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !4569, file: !147, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4569, file: !147, line: 176, baseType: !7, size: 32, offset: 2560)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4569, file: !147, line: 177, baseType: !177, size: 64, offset: 2624)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !4569, file: !147, line: 178, baseType: !206, size: 64, offset: 2688)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !4569, file: !147, line: 179, baseType: !206, size: 64, offset: 2752)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !4569, file: !147, line: 180, baseType: !7, size: 32, offset: 2816)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !4569, file: !147, line: 182, baseType: !5102, size: 576, offset: 2880)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !147, line: 67, size: 576, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5127}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !5102, file: !147, line: 68, baseType: !542, size: 8)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5102, file: !147, line: 69, baseType: !295, offset: 8)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5102, file: !147, line: 70, baseType: !183, size: 128, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !5102, file: !147, line: 71, baseType: !5108, size: 320, offset: 192)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !263, line: 609, size: 320, elements: !5109)
!5109 = !{!5110, !5112, !5113, !5114, !5115, !5126}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5108, file: !263, line: 611, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5108, file: !263, line: 612, baseType: !219, size: 64, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5108, file: !263, line: 613, baseType: !849, size: 32, offset: 128)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !5108, file: !263, line: 614, baseType: !542, size: 8, offset: 160)
!5115 = !DIDerivedType(tag: DW_TAG_member, scope: !5108, file: !263, line: 615, baseType: !5116, size: 64, offset: 192)
!5116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5108, file: !263, line: 615, size: 64, elements: !5117)
!5117 = !{!5118, !5122}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5116, file: !263, line: 616, baseType: !5119, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{null, !219}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !5116, file: !263, line: 617, baseType: !5123, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{null, !5111}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5108, file: !263, line: 619, baseType: !219, size: 64, offset: 256)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !5102, file: !147, line: 72, baseType: !4792, size: 64, offset: 512)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !4569, file: !147, line: 183, baseType: !5102, size: 576, offset: 3456)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !4569, file: !147, line: 196, baseType: !5130, size: 64, offset: 4032)
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !4569, file: !147, line: 197, baseType: !5130, size: 64, offset: 4096)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !4569, file: !147, line: 198, baseType: !4568, size: 64, offset: 4160)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !4569, file: !147, line: 199, baseType: !4568, size: 64, offset: 4224)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !4569, file: !147, line: 203, baseType: !5135, size: 256, offset: 4288)
!5135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5136, size: 256, elements: !224)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !5138, line: 21, flags: DIFlagFwdDecl)
!5138 = !DIFile(filename: "./include/linux/dmapool.h", directory: "/home/lizy2001/genbc/linux")
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4569, file: !147, line: 205, baseType: !236, size: 32, offset: 4544)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !4569, file: !147, line: 220, baseType: !5141, size: 64, offset: 4608)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !147, line: 220, flags: DIFlagFwdDecl)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !4569, file: !147, line: 231, baseType: !2202, align: 64, offset: 4672)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !4565, file: !159, line: 1736, baseType: !4568, size: 64, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "cap_regs", scope: !4565, file: !159, line: 1738, baseType: !5146, size: 64, offset: 128)
!5146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5147, size: 64)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_cap_regs", file: !159, line: 50, size: 256, elements: !5148)
!5148 = !{!5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "hc_capbase", scope: !5147, file: !159, line: 51, baseType: !4650, size: 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params1", scope: !5147, file: !159, line: 52, baseType: !4650, size: 32, offset: 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params2", scope: !5147, file: !159, line: 53, baseType: !4650, size: 32, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params3", scope: !5147, file: !159, line: 54, baseType: !4650, size: 32, offset: 96)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params", scope: !5147, file: !159, line: 55, baseType: !4650, size: 32, offset: 128)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "db_off", scope: !5147, file: !159, line: 56, baseType: !4650, size: 32, offset: 160)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "run_regs_off", scope: !5147, file: !159, line: 57, baseType: !4650, size: 32, offset: 192)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params2", scope: !5147, file: !159, line: 58, baseType: !4650, size: 32, offset: 224)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "op_regs", scope: !4565, file: !159, line: 1739, baseType: !5158, size: 64, offset: 192)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_op_regs", file: !159, line: 176, size: 40832, elements: !5160)
!5160 = !{!5161, !5162, !5163, !5164, !5165, !5166, !5167, !5169, !5171, !5172, !5173, !5177, !5178, !5179, !5180, !5181}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5159, file: !159, line: 177, baseType: !4650, size: 32)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5159, file: !159, line: 178, baseType: !4650, size: 32, offset: 32)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !5159, file: !159, line: 179, baseType: !4650, size: 32, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5159, file: !159, line: 180, baseType: !4650, size: 32, offset: 96)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !5159, file: !159, line: 181, baseType: !4650, size: 32, offset: 128)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "dev_notification", scope: !5159, file: !159, line: 182, baseType: !4650, size: 32, offset: 160)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring", scope: !5159, file: !159, line: 183, baseType: !5168, size: 64, offset: 192)
!5168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !1963, line: 33, baseType: !210)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !5159, file: !159, line: 185, baseType: !5170, size: 128, offset: 256)
!5170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 128, elements: !224)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa_ptr", scope: !5159, file: !159, line: 186, baseType: !5168, size: 64, offset: 384)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "config_reg", scope: !5159, file: !159, line: 187, baseType: !4650, size: 32, offset: 448)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !5159, file: !159, line: 189, baseType: !5174, size: 7712, offset: 480)
!5174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 7712, elements: !5175)
!5175 = !{!5176}
!5176 = !DISubrange(count: 241)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "port_status_base", scope: !5159, file: !159, line: 191, baseType: !4650, size: 32, offset: 8192)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "port_power_base", scope: !5159, file: !159, line: 192, baseType: !4650, size: 32, offset: 8224)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "port_link_base", scope: !5159, file: !159, line: 193, baseType: !4650, size: 32, offset: 8256)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !5159, file: !159, line: 194, baseType: !4650, size: 32, offset: 8288)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !5159, file: !159, line: 196, baseType: !5182, size: 32512, offset: 8320)
!5182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 32512, elements: !5183)
!5183 = !{!5184}
!5184 = !DISubrange(count: 1016)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "run_regs", scope: !4565, file: !159, line: 1740, baseType: !5186, size: 64, offset: 256)
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_run_regs", file: !159, line: 530, size: 33024, elements: !5188)
!5188 = !{!5189, !5190, !5194}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "microframe_index", scope: !5187, file: !159, line: 531, baseType: !4650, size: 32)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !5187, file: !159, line: 532, baseType: !5191, size: 224, offset: 32)
!5191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 224, elements: !5192)
!5192 = !{!5193}
!5193 = !DISubrange(count: 7)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "ir_set", scope: !5187, file: !159, line: 533, baseType: !5195, size: 32768, offset: 256)
!5195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5196, size: 32768, elements: !3907)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_intr_reg", file: !159, line: 480, size: 256, elements: !5197)
!5197 = !{!5198, !5199, !5200, !5201, !5202, !5203}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !5196, file: !159, line: 481, baseType: !4650, size: 32)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "irq_control", scope: !5196, file: !159, line: 482, baseType: !4650, size: 32, offset: 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !5196, file: !159, line: 483, baseType: !4650, size: 32, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !5196, file: !159, line: 484, baseType: !4650, size: 32, offset: 96)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "erst_base", scope: !5196, file: !159, line: 485, baseType: !5168, size: 64, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dequeue", scope: !5196, file: !159, line: 486, baseType: !5168, size: 64, offset: 192)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dba", scope: !4565, file: !159, line: 1741, baseType: !5205, size: 64, offset: 320)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_doorbell_array", file: !159, line: 545, size: 8192, elements: !5207)
!5207 = !{!5208}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "doorbell", scope: !5206, file: !159, line: 546, baseType: !5209, size: 8192)
!5209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 8192, elements: !5210)
!5210 = !{!5211}
!5211 = !DISubrange(count: 256)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "ir_set", scope: !4565, file: !159, line: 1743, baseType: !5213, size: 64, offset: 384)
!5213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params1", scope: !4565, file: !159, line: 1746, baseType: !251, size: 32, offset: 448)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params2", scope: !4565, file: !159, line: 1747, baseType: !251, size: 32, offset: 480)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "hcs_params3", scope: !4565, file: !159, line: 1748, baseType: !251, size: 32, offset: 512)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params", scope: !4565, file: !159, line: 1749, baseType: !251, size: 32, offset: 544)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "hcc_params2", scope: !4565, file: !159, line: 1750, baseType: !251, size: 32, offset: 576)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4565, file: !159, line: 1752, baseType: !295, offset: 608)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "sbrn", scope: !4565, file: !159, line: 1755, baseType: !1440, size: 8, offset: 608)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "hci_version", scope: !4565, file: !159, line: 1756, baseType: !954, size: 16, offset: 624)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "max_slots", scope: !4565, file: !159, line: 1757, baseType: !1440, size: 8, offset: 640)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "max_interrupters", scope: !4565, file: !159, line: 1758, baseType: !1440, size: 8, offset: 648)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "max_ports", scope: !4565, file: !159, line: 1759, baseType: !1440, size: 8, offset: 656)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "isoc_threshold", scope: !4565, file: !159, line: 1760, baseType: !1440, size: 8, offset: 664)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "imod_interval", scope: !4565, file: !159, line: 1762, baseType: !250, size: 32, offset: 672)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "event_ring_max", scope: !4565, file: !159, line: 1763, baseType: !236, size: 32, offset: 704)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "page_size", scope: !4565, file: !159, line: 1765, baseType: !236, size: 32, offset: 736)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !4565, file: !159, line: 1767, baseType: !236, size: 32, offset: 768)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "msix_count", scope: !4565, file: !159, line: 1769, baseType: !236, size: 32, offset: 800)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !4565, file: !159, line: 1771, baseType: !5232, size: 64, offset: 832)
!5232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5233, size: 64)
!5233 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !159, line: 1771, flags: DIFlagFwdDecl)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "reg_clk", scope: !4565, file: !159, line: 1772, baseType: !5232, size: 64, offset: 896)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4565, file: !159, line: 1774, baseType: !5236, size: 64, offset: 960)
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5237, size: 64)
!5237 = !DICompositeType(tag: DW_TAG_structure_type, name: "reset_control", file: !5238, line: 11, flags: DIFlagFwdDecl)
!5238 = !DIFile(filename: "./include/linux/reset.h", directory: "/home/lizy2001/genbc/linux")
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa", scope: !4565, file: !159, line: 1776, baseType: !5240, size: 64, offset: 1024)
!5240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5241, size: 64)
!5241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_device_context_array", file: !159, line: 1057, size: 16448, elements: !5242)
!5242 = !{!5243, !5245}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_context_ptrs", scope: !5241, file: !159, line: 1059, baseType: !5244, size: 16384)
!5244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5168, size: 16384, elements: !5210)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5241, file: !159, line: 1061, baseType: !1015, size: 64, offset: 16384)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring", scope: !4565, file: !159, line: 1777, baseType: !5247, size: 64, offset: 1088)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_ring", file: !159, line: 1594, size: 896, elements: !5249)
!5249 = !{!5250, !5286, !5287, !5288, !5289, !5290, !5291, !5292, !5293, !5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "first_seg", scope: !5248, file: !159, line: 1595, baseType: !5251, size: 64)
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5252, size: 64)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_segment", file: !159, line: 1522, size: 384, elements: !5253)
!5253 = !{!5254, !5280, !5281, !5282, !5283, !5284, !5285}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "trbs", scope: !5252, file: !159, line: 1523, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "xhci_trb", file: !159, line: 1337, size: 128, elements: !5257)
!5257 = !{!5258, !5264, !5270, !5276}
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5256, file: !159, line: 1338, baseType: !5259, size: 128)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_link_trb", file: !159, line: 1205, size: 128, elements: !5260)
!5260 = !{!5261, !5262, !5263}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "segment_ptr", scope: !5259, file: !159, line: 1207, baseType: !5168, size: 64)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "intr_target", scope: !5259, file: !159, line: 1208, baseType: !4650, size: 32, offset: 64)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !5259, file: !159, line: 1209, baseType: !4650, size: 32, offset: 96)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "trans_event", scope: !5256, file: !159, line: 1339, baseType: !5265, size: 128)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_transfer_event", file: !159, line: 1070, size: 128, elements: !5266)
!5266 = !{!5267, !5268, !5269}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5265, file: !159, line: 1072, baseType: !5168, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_len", scope: !5265, file: !159, line: 1073, baseType: !4650, size: 32, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5265, file: !159, line: 1075, baseType: !4650, size: 32, offset: 96)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "event_cmd", scope: !5256, file: !159, line: 1340, baseType: !5271, size: 128)
!5271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_event_cmd", file: !159, line: 1216, size: 128, elements: !5272)
!5272 = !{!5273, !5274, !5275}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_trb", scope: !5271, file: !159, line: 1218, baseType: !5168, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5271, file: !159, line: 1219, baseType: !4650, size: 32, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5271, file: !159, line: 1220, baseType: !4650, size: 32, offset: 96)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !5256, file: !159, line: 1341, baseType: !5277, size: 128)
!5277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_generic_trb", file: !159, line: 1333, size: 128, elements: !5278)
!5278 = !{!5279}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !5277, file: !159, line: 1334, baseType: !5170, size: 128)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5252, file: !159, line: 1525, baseType: !5251, size: 64, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5252, file: !159, line: 1526, baseType: !1015, size: 64, offset: 128)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_dma", scope: !5252, file: !159, line: 1528, baseType: !1015, size: 64, offset: 192)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_buf", scope: !5252, file: !159, line: 1529, baseType: !177, size: 64, offset: 256)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_offs", scope: !5252, file: !159, line: 1530, baseType: !7, size: 32, offset: 320)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_len", scope: !5252, file: !159, line: 1531, baseType: !7, size: 32, offset: 352)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "last_seg", scope: !5248, file: !159, line: 1596, baseType: !5251, size: 64, offset: 64)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "enqueue", scope: !5248, file: !159, line: 1597, baseType: !5255, size: 64, offset: 128)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "enq_seg", scope: !5248, file: !159, line: 1598, baseType: !5251, size: 64, offset: 192)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "dequeue", scope: !5248, file: !159, line: 1599, baseType: !5255, size: 64, offset: 256)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "deq_seg", scope: !5248, file: !159, line: 1600, baseType: !5251, size: 64, offset: 320)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "td_list", scope: !5248, file: !159, line: 1601, baseType: !183, size: 128, offset: 384)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "cycle_state", scope: !5248, file: !159, line: 1607, baseType: !250, size: 32, offset: 512)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "err_count", scope: !5248, file: !159, line: 1608, baseType: !7, size: 32, offset: 544)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !5248, file: !159, line: 1609, baseType: !7, size: 32, offset: 576)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "num_segs", scope: !5248, file: !159, line: 1610, baseType: !7, size: 32, offset: 608)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs_free", scope: !5248, file: !159, line: 1611, baseType: !7, size: 32, offset: 640)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "num_trbs_free_temp", scope: !5248, file: !159, line: 1612, baseType: !7, size: 32, offset: 672)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "bounce_buf_len", scope: !5248, file: !159, line: 1613, baseType: !7, size: 32, offset: 704)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5248, file: !159, line: 1614, baseType: !158, size: 32, offset: 736)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "last_td_was_short", scope: !5248, file: !159, line: 1615, baseType: !542, size: 8, offset: 768)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "trb_address_map", scope: !5248, file: !159, line: 1616, baseType: !5302, size: 64, offset: 832)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_state", scope: !4565, file: !159, line: 1778, baseType: !7, size: 32, offset: 1152)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_list", scope: !4565, file: !159, line: 1782, baseType: !183, size: 128, offset: 1216)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_reserved_trbs", scope: !4565, file: !159, line: 1783, baseType: !7, size: 32, offset: 1344)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_timer", scope: !4565, file: !159, line: 1784, baseType: !5307, size: 704, offset: 1408)
!5307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2207, line: 115, size: 704, elements: !5308)
!5308 = !{!5309, !5310, !5311, !5312}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5307, file: !2207, line: 116, baseType: !2206, size: 256)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5307, file: !2207, line: 117, baseType: !4008, size: 320, offset: 256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5307, file: !2207, line: 120, baseType: !3478, size: 64, offset: 576)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5307, file: !2207, line: 121, baseType: !236, size: 32, offset: 640)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ring_stop_completion", scope: !4565, file: !159, line: 1785, baseType: !1589, size: 192, offset: 2112)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "current_cmd", scope: !4565, file: !159, line: 1786, baseType: !5315, size: 64, offset: 2304)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_command", file: !159, line: 801, size: 384, elements: !5317)
!5317 = !{!5318, !5327, !5328, !5329, !5330, !5331}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "in_ctx", scope: !5316, file: !159, line: 803, baseType: !5319, size: 64)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_container_ctx", file: !159, line: 594, size: 192, elements: !5321)
!5321 = !{!5322, !5323, !5324, !5326}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5320, file: !159, line: 595, baseType: !7, size: 32)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5320, file: !159, line: 599, baseType: !236, size: 32, offset: 32)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !5320, file: !159, line: 601, baseType: !5325, size: 64, offset: 64)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5320, file: !159, line: 602, baseType: !1015, size: 64, offset: 128)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5316, file: !159, line: 804, baseType: !250, size: 32, offset: 64)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5316, file: !159, line: 805, baseType: !236, size: 32, offset: 96)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5316, file: !159, line: 809, baseType: !1588, size: 64, offset: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "command_trb", scope: !5316, file: !159, line: 810, baseType: !5255, size: 64, offset: 192)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_list", scope: !5316, file: !159, line: 811, baseType: !183, size: 128, offset: 256)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "event_ring", scope: !4565, file: !159, line: 1787, baseType: !5247, size: 64, offset: 2368)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "erst", scope: !4565, file: !159, line: 1788, baseType: !5334, size: 256, offset: 2432)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_erst", file: !159, line: 1627, size: 256, elements: !5335)
!5335 = !{!5336, !5343, !5344, !5345}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5334, file: !159, line: 1628, baseType: !5337, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5338, size: 64)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_erst_entry", file: !159, line: 1619, size: 128, elements: !5339)
!5339 = !{!5340, !5341, !5342}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "seg_addr", scope: !5338, file: !159, line: 1621, baseType: !5168, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "seg_size", scope: !5338, file: !159, line: 1622, baseType: !4650, size: 32, offset: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "rsvd", scope: !5338, file: !159, line: 1624, baseType: !4650, size: 32, offset: 96)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "num_entries", scope: !5334, file: !159, line: 1629, baseType: !7, size: 32, offset: 64)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dma_addr", scope: !5334, file: !159, line: 1631, baseType: !1015, size: 64, offset: 128)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !5334, file: !159, line: 1633, baseType: !7, size: 32, offset: 192)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !4565, file: !159, line: 1790, baseType: !5347, size: 64, offset: 2688)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_scratchpad", file: !159, line: 1636, size: 192, elements: !5349)
!5349 = !{!5350, !5351, !5352}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "sp_array", scope: !5348, file: !159, line: 1637, baseType: !4296, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "sp_dma", scope: !5348, file: !159, line: 1638, baseType: !1015, size: 64, offset: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "sp_buffers", scope: !5348, file: !159, line: 1639, baseType: !916, size: 64, offset: 128)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_failed_devs", scope: !4565, file: !159, line: 1792, baseType: !183, size: 128, offset: 2752)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4565, file: !159, line: 1796, baseType: !775, size: 192, offset: 2880)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_command", scope: !4565, file: !159, line: 1798, baseType: !5315, size: 64, offset: 3072)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !4565, file: !159, line: 1800, baseType: !5357, size: 16384, offset: 3136)
!5357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5358, size: 16384, elements: !5210)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_virt_device", file: !159, line: 997, size: 42240, elements: !5360)
!5360 = !{!5361, !5362, !5363, !5364, !5409, !5410, !5411, !5427, !5436, !5437, !5438}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "udev", scope: !5359, file: !159, line: 998, baseType: !4593, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "out_ctx", scope: !5359, file: !159, line: 1007, baseType: !5319, size: 64, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "in_ctx", scope: !5359, file: !159, line: 1009, baseType: !5319, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !5359, file: !159, line: 1010, baseType: !5365, size: 41664, offset: 192)
!5365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5366, size: 41664, elements: !5407)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_virt_ep", file: !159, line: 920, size: 1344, elements: !5367)
!5367 = !{!5368, !5369, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394, !5395, !5404, !5405, !5406}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "ring", scope: !5366, file: !159, line: 921, baseType: !5247, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "stream_info", scope: !5366, file: !159, line: 923, baseType: !5370, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_stream_info", file: !159, line: 841, size: 512, elements: !5372)
!5372 = !{!5373, !5375, !5376, !5383, !5384, !5385, !5386}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "stream_rings", scope: !5371, file: !159, line: 842, baseType: !5374, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5247, size: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !5371, file: !159, line: 844, baseType: !7, size: 32, offset: 64)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "stream_ctx_array", scope: !5371, file: !159, line: 848, baseType: !5377, size: 64, offset: 128)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_stream_ctx", file: !159, line: 819, size: 128, elements: !5379)
!5379 = !{!5380, !5381}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "stream_ring", scope: !5378, file: !159, line: 821, baseType: !5168, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5378, file: !159, line: 823, baseType: !5382, size: 64, offset: 64)
!5382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4650, size: 64, elements: !1656)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "num_stream_ctxs", scope: !5371, file: !159, line: 849, baseType: !7, size: 32, offset: 192)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_array_dma", scope: !5371, file: !159, line: 850, baseType: !1015, size: 64, offset: 256)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "trb_address_map", scope: !5371, file: !159, line: 852, baseType: !840, size: 128, offset: 320)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams_command", scope: !5371, file: !159, line: 853, baseType: !5315, size: 64, offset: 448)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "new_ring", scope: !5366, file: !159, line: 927, baseType: !5247, size: 64, offset: 128)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "ep_state", scope: !5366, file: !159, line: 928, baseType: !7, size: 32, offset: 192)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_td_list", scope: !5366, file: !159, line: 942, baseType: !183, size: 128, offset: 256)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "stop_cmd_timer", scope: !5366, file: !159, line: 944, baseType: !4008, size: 320, offset: 384)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "xhci", scope: !5366, file: !159, line: 945, baseType: !4564, size: 64, offset: 704)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "queued_deq_seg", scope: !5366, file: !159, line: 950, baseType: !5251, size: 64, offset: 768)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "queued_deq_ptr", scope: !5366, file: !159, line: 951, baseType: !5255, size: 64, offset: 832)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !5366, file: !159, line: 959, baseType: !542, size: 8, offset: 896)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "bw_info", scope: !5366, file: !159, line: 961, baseType: !5396, size: 192, offset: 928)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_bw_info", file: !159, line: 865, size: 192, elements: !5397)
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5403}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "ep_interval", scope: !5396, file: !159, line: 867, baseType: !7, size: 32)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !5396, file: !159, line: 869, baseType: !7, size: 32, offset: 32)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "num_packets", scope: !5396, file: !159, line: 870, baseType: !7, size: 32, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !5396, file: !159, line: 871, baseType: !7, size: 32, offset: 96)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "max_esit_payload", scope: !5396, file: !159, line: 872, baseType: !7, size: 32, offset: 128)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5396, file: !159, line: 873, baseType: !7, size: 32, offset: 160)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "bw_endpoint_list", scope: !5366, file: !159, line: 962, baseType: !183, size: 128, offset: 1152)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "next_frame_id", scope: !5366, file: !159, line: 964, baseType: !236, size: 32, offset: 1280)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "use_extended_tbc", scope: !5366, file: !159, line: 966, baseType: !542, size: 8, offset: 1312)
!5407 = !{!5408}
!5408 = !DISubrange(count: 31)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "fake_port", scope: !5359, file: !159, line: 1011, baseType: !1440, size: 8, offset: 41856)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "real_port", scope: !5359, file: !159, line: 1012, baseType: !1440, size: 8, offset: 41864)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !5359, file: !159, line: 1013, baseType: !5412, size: 64, offset: 41920)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_interval_bw_table", file: !159, line: 987, size: 5312, elements: !5414)
!5414 = !{!5415, !5416, !5424, !5425, !5426}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "interval0_esit_payload", scope: !5413, file: !159, line: 988, baseType: !7, size: 32)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "interval_bw", scope: !5413, file: !159, line: 989, baseType: !5417, size: 5120, offset: 64)
!5417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5418, size: 5120, elements: !1822)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_interval_bw", file: !159, line: 975, size: 320, elements: !5419)
!5419 = !{!5420, !5421, !5422}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "num_packets", scope: !5418, file: !159, line: 976, baseType: !7, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "endpoints", scope: !5418, file: !159, line: 980, baseType: !183, size: 128, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "overhead", scope: !5418, file: !159, line: 982, baseType: !5423, size: 96, offset: 192)
!5423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !337)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "bw_used", scope: !5413, file: !159, line: 991, baseType: !7, size: 32, offset: 5184)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ss_bw_in", scope: !5413, file: !159, line: 992, baseType: !7, size: 32, offset: 5216)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "ss_bw_out", scope: !5413, file: !159, line: 993, baseType: !7, size: 32, offset: 5248)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "tt_info", scope: !5359, file: !159, line: 1014, baseType: !5428, size: 64, offset: 41984)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_tt_bw_info", file: !159, line: 1044, size: 5568, elements: !5430)
!5430 = !{!5431, !5432, !5433, !5434, !5435}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "tt_list", scope: !5429, file: !159, line: 1045, baseType: !183, size: 128)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !5429, file: !159, line: 1046, baseType: !236, size: 32, offset: 128)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !5429, file: !159, line: 1047, baseType: !236, size: 32, offset: 160)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !5429, file: !159, line: 1048, baseType: !5413, size: 5312, offset: 192)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "active_eps", scope: !5429, file: !159, line: 1049, baseType: !236, size: 32, offset: 5504)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5359, file: !159, line: 1021, baseType: !219, size: 64, offset: 42048)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "current_mel", scope: !5359, file: !159, line: 1025, baseType: !954, size: 16, offset: 42112)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_private", scope: !5359, file: !159, line: 1027, baseType: !177, size: 64, offset: 42176)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "rh_bw", scope: !4565, file: !159, line: 1802, baseType: !5440, size: 64, offset: 19520)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_root_port_bw_info", file: !159, line: 1038, size: 5504, elements: !5442)
!5442 = !{!5443, !5444, !5445}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "tts", scope: !5441, file: !159, line: 1039, baseType: !183, size: 128)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_tts", scope: !5441, file: !159, line: 1040, baseType: !7, size: 32, offset: 128)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "bw_table", scope: !5441, file: !159, line: 1041, baseType: !5413, size: 5312, offset: 192)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "device_pool", scope: !4565, file: !159, line: 1805, baseType: !5136, size: 64, offset: 19584)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "segment_pool", scope: !4565, file: !159, line: 1806, baseType: !5136, size: 64, offset: 19648)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "small_streams_pool", scope: !4565, file: !159, line: 1807, baseType: !5136, size: 64, offset: 19712)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "medium_streams_pool", scope: !4565, file: !159, line: 1808, baseType: !5136, size: 64, offset: 19776)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "xhc_state", scope: !4565, file: !159, line: 1811, baseType: !7, size: 32, offset: 19840)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4565, file: !159, line: 1813, baseType: !250, size: 32, offset: 19872)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !4565, file: !159, line: 1814, baseType: !5453, size: 384, offset: 19904)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s3_save", file: !159, line: 1664, size: 384, elements: !5454)
!5454 = !{!5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !5453, file: !159, line: 1665, baseType: !250, size: 32)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "dev_nt", scope: !5453, file: !159, line: 1666, baseType: !250, size: 32, offset: 32)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "dcbaa_ptr", scope: !5453, file: !159, line: 1667, baseType: !208, size: 64, offset: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "config_reg", scope: !5453, file: !159, line: 1668, baseType: !250, size: 32, offset: 128)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !5453, file: !159, line: 1669, baseType: !250, size: 32, offset: 160)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "irq_control", scope: !5453, file: !159, line: 1670, baseType: !250, size: 32, offset: 192)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "erst_size", scope: !5453, file: !159, line: 1671, baseType: !250, size: 32, offset: 224)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "erst_base", scope: !5453, file: !159, line: 1672, baseType: !208, size: 64, offset: 256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "erst_dequeue", scope: !5453, file: !159, line: 1673, baseType: !208, size: 64, offset: 320)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4565, file: !159, line: 1830, baseType: !212, size: 64, offset: 20288)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "num_active_eps", scope: !4565, file: !159, line: 1882, baseType: !7, size: 32, offset: 20352)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "limit_active_eps", scope: !4565, file: !159, line: 1883, baseType: !7, size: 32, offset: 20384)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "hw_ports", scope: !4565, file: !159, line: 1884, baseType: !5468, size: 64, offset: 20416)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_port", file: !159, line: 1714, size: 256, elements: !5470)
!5470 = !{!5471, !5473, !5474, !5475, !5500}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5469, file: !159, line: 1715, baseType: !5472, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "hw_portnum", scope: !5469, file: !159, line: 1716, baseType: !236, size: 32, offset: 64)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_portnum", scope: !5469, file: !159, line: 1717, baseType: !236, size: 32, offset: 96)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "rhub", scope: !5469, file: !159, line: 1718, baseType: !5476, size: 64, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_hub", file: !159, line: 1722, size: 14528, elements: !5478)
!5478 = !{!5479, !5481, !5482, !5483, !5498, !5499}
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !5477, file: !159, line: 1723, baseType: !5480, size: 64)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "num_ports", scope: !5477, file: !159, line: 1724, baseType: !7, size: 32, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "hcd", scope: !5477, file: !159, line: 1725, baseType: !4568, size: 64, offset: 128)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bus_state", scope: !5477, file: !159, line: 1727, baseType: !5484, size: 14272, offset: 192)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_bus_state", file: !159, line: 1682, size: 14272, elements: !5485)
!5485 = !{!5486, !5487, !5488, !5489, !5490, !5491, !5493, !5494, !5495, !5497}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspended", scope: !5484, file: !159, line: 1683, baseType: !219, size: 64)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "next_statechange", scope: !5484, file: !159, line: 1684, baseType: !219, size: 64, offset: 64)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "port_c_suspend", scope: !5484, file: !159, line: 1688, baseType: !250, size: 32, offset: 128)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_ports", scope: !5484, file: !159, line: 1689, baseType: !250, size: 32, offset: 160)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "port_remote_wakeup", scope: !5484, file: !159, line: 1690, baseType: !250, size: 32, offset: 192)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "resume_done", scope: !5484, file: !159, line: 1691, baseType: !5492, size: 1984, offset: 256)
!5492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1984, elements: !5407)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !5484, file: !159, line: 1693, baseType: !219, size: 64, offset: 2240)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "rexit_ports", scope: !5484, file: !159, line: 1695, baseType: !219, size: 64, offset: 2304)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "rexit_done", scope: !5484, file: !159, line: 1696, baseType: !5496, size: 5952, offset: 2368)
!5496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1589, size: 5952, elements: !5407)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "u3exit_done", scope: !5484, file: !159, line: 1697, baseType: !5496, size: 5952, offset: 8320)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "maj_rev", scope: !5477, file: !159, line: 1729, baseType: !1440, size: 8, offset: 14464)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "min_rev", scope: !5477, file: !159, line: 1730, baseType: !1440, size: 8, offset: 14472)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "port_cap", scope: !5469, file: !159, line: 1719, baseType: !5501, size: 64, offset: 192)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_port_cap", file: !159, line: 1706, size: 128, elements: !5503)
!5503 = !{!5504, !5505, !5506, !5507, !5508}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !5502, file: !159, line: 1707, baseType: !249, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "psi_count", scope: !5502, file: !159, line: 1708, baseType: !1440, size: 8, offset: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "psi_uid_count", scope: !5502, file: !159, line: 1709, baseType: !1440, size: 8, offset: 72)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "maj_rev", scope: !5502, file: !159, line: 1710, baseType: !1440, size: 8, offset: 80)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "min_rev", scope: !5502, file: !159, line: 1711, baseType: !1440, size: 8, offset: 88)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_rhub", scope: !4565, file: !159, line: 1885, baseType: !5477, size: 14528, offset: 20480)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_rhub", scope: !4565, file: !159, line: 1886, baseType: !5477, size: 14528, offset: 35008)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "hw_lpm_support", scope: !4565, file: !159, line: 1888, baseType: !7, size: 1, offset: 49536, flags: DIFlagBitField, extraData: i64 49536)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "broken_suspend", scope: !4565, file: !159, line: 1890, baseType: !7, size: 1, offset: 49537, flags: DIFlagBitField, extraData: i64 49536)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "ext_caps", scope: !4565, file: !159, line: 1892, baseType: !249, size: 64, offset: 49600)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "num_ext_caps", scope: !4565, file: !159, line: 1893, baseType: !7, size: 32, offset: 49664)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "port_caps", scope: !4565, file: !159, line: 1895, baseType: !5501, size: 64, offset: 49728)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "num_port_caps", scope: !4565, file: !159, line: 1896, baseType: !7, size: 32, offset: 49792)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "comp_mode_recovery_timer", scope: !4565, file: !159, line: 1898, baseType: !4008, size: 320, offset: 49856)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "port_status_u0", scope: !4565, file: !159, line: 1899, baseType: !250, size: 32, offset: 50176)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "test_mode", scope: !4565, file: !159, line: 1900, baseType: !954, size: 16, offset: 50208)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4565, file: !159, line: 1904, baseType: !442, size: 64, offset: 50240)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_slots", scope: !4565, file: !159, line: 1905, baseType: !442, size: 64, offset: 50304)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "regset_list", scope: !4565, file: !159, line: 1906, baseType: !183, size: 128, offset: 50368)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "dbc", scope: !4565, file: !159, line: 1908, baseType: !177, size: 64, offset: 50496)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4565, file: !159, line: 1910, baseType: !2202, align: 64, offset: 50560)
!5525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5526, size: 64)
!5526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_driver_data", file: !5527, line: 23, size: 128, elements: !5528)
!5527 = !DIFile(filename: "drivers/usb/host/xhci-pci.h", directory: "/home/lizy2001/genbc/linux")
!5528 = !{!5529, !5530}
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5526, file: !5527, line: 24, baseType: !208, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "firmware", scope: !5526, file: !5527, line: 25, baseType: !215, size: 64, offset: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !5533, line: 351, size: 10880, elements: !5534)
!5533 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!5534 = !{!5535, !5536, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5554, !5571, !5644, !5671, !5695, !5716, !5720, !5729, !5761, !5775, !5797, !5801, !5802, !5803, !5804, !5805, !5806, !5807}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !5532, file: !5533, line: 352, baseType: !236, size: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5532, file: !5533, line: 353, baseType: !5537, size: 64, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !5538, line: 424, baseType: !177)
!5538 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5532, file: !5533, line: 354, baseType: !4119, size: 192, offset: 128)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5532, file: !5533, line: 355, baseType: !5531, size: 64, offset: 320)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5532, file: !5533, line: 356, baseType: !183, size: 128, offset: 384)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5532, file: !5533, line: 357, baseType: !183, size: 128, offset: 512)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !5532, file: !5533, line: 358, baseType: !183, size: 128, offset: 640)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !5532, file: !5533, line: 359, baseType: !183, size: 128, offset: 768)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5532, file: !5533, line: 360, baseType: !5546, size: 32, offset: 896)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !5533, line: 179, size: 32, elements: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !5546, file: !5533, line: 180, baseType: !250, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5546, file: !5533, line: 181, baseType: !250, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !5546, file: !5533, line: 182, baseType: !250, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !5546, file: !5533, line: 183, baseType: !250, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !5546, file: !5533, line: 184, baseType: !250, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5546, file: !5533, line: 185, baseType: !250, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5532, file: !5533, line: 361, baseType: !5555, size: 32, offset: 928)
!5555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !5533, line: 190, size: 32, elements: !5556)
!5556 = !{!5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !5555, file: !5533, line: 191, baseType: !250, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5555, file: !5533, line: 192, baseType: !250, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !5555, file: !5533, line: 193, baseType: !250, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !5555, file: !5533, line: 194, baseType: !250, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5555, file: !5533, line: 195, baseType: !250, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !5555, file: !5533, line: 196, baseType: !250, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !5555, file: !5533, line: 197, baseType: !250, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !5555, file: !5533, line: 198, baseType: !250, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !5555, file: !5533, line: 199, baseType: !250, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !5555, file: !5533, line: 200, baseType: !250, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !5555, file: !5533, line: 201, baseType: !250, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !5555, file: !5533, line: 202, baseType: !250, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !5555, file: !5533, line: 203, baseType: !250, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5555, file: !5533, line: 204, baseType: !250, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !5532, file: !5533, line: 362, baseType: !5572, size: 960, offset: 960)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !5533, line: 234, size: 960, elements: !5573)
!5573 = !{!5574, !5576, !5583, !5585, !5586, !5587, !5592, !5595}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !5572, file: !5533, line: 235, baseType: !5575, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !5533, line: 217, baseType: !2723)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5572, file: !5533, line: 236, baseType: !5577, size: 32, offset: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !5533, line: 227, size: 32, elements: !5578)
!5578 = !{!5579, !5580, !5581, !5582}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !5577, file: !5533, line: 228, baseType: !250, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5577, file: !5533, line: 229, baseType: !250, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !5577, file: !5533, line: 230, baseType: !250, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5577, file: !5533, line: 231, baseType: !250, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !5572, file: !5533, line: 237, baseType: !5584, size: 64, offset: 128)
!5584 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !5533, line: 218, baseType: !208)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !5572, file: !5533, line: 238, baseType: !336, size: 64, offset: 192)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5572, file: !5533, line: 239, baseType: !183, size: 128, offset: 256)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !5572, file: !5533, line: 240, baseType: !5588, size: 320, offset: 384)
!5588 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !5533, line: 219, baseType: !5589)
!5589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 320, elements: !5590)
!5590 = !{!5591}
!5591 = !DISubrange(count: 40)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !5572, file: !5533, line: 241, baseType: !5593, size: 160, offset: 704)
!5593 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !5533, line: 220, baseType: !5594)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 160, elements: !2889)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !5572, file: !5533, line: 242, baseType: !5596, size: 64, offset: 896)
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5597, size: 64)
!5597 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !5538, line: 899, size: 192, elements: !5598)
!5598 = !{!5599, !5601, !5606, !5612, !5618, !5624, !5630, !5638}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5597, file: !5538, line: 900, baseType: !5600, size: 32)
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !5538, line: 635, baseType: !250)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !5597, file: !5538, line: 904, baseType: !5602, size: 128)
!5602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 901, size: 128, elements: !5603)
!5603 = !{!5604, !5605}
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5602, file: !5538, line: 902, baseType: !5600, size: 32)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5602, file: !5538, line: 903, baseType: !208, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5597, file: !5538, line: 910, baseType: !5607, size: 128)
!5607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 906, size: 128, elements: !5608)
!5608 = !{!5609, !5610, !5611}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5607, file: !5538, line: 907, baseType: !5600, size: 32)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5607, file: !5538, line: 908, baseType: !250, size: 32, offset: 32)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5607, file: !5538, line: 909, baseType: !336, size: 64, offset: 64)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5597, file: !5538, line: 916, baseType: !5613, size: 128)
!5613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 912, size: 128, elements: !5614)
!5614 = !{!5615, !5616, !5617}
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5613, file: !5538, line: 913, baseType: !5600, size: 32)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5613, file: !5538, line: 914, baseType: !250, size: 32, offset: 32)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5613, file: !5538, line: 915, baseType: !5325, size: 64, offset: 64)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !5597, file: !5538, line: 922, baseType: !5619, size: 128)
!5619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 918, size: 128, elements: !5620)
!5620 = !{!5621, !5622, !5623}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5619, file: !5538, line: 919, baseType: !5600, size: 32)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5619, file: !5538, line: 920, baseType: !250, size: 32, offset: 32)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !5619, file: !5538, line: 921, baseType: !5596, size: 64, offset: 64)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !5597, file: !5538, line: 928, baseType: !5625, size: 128)
!5625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 924, size: 128, elements: !5626)
!5626 = !{!5627, !5628, !5629}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5625, file: !5538, line: 925, baseType: !5600, size: 32)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !5625, file: !5538, line: 926, baseType: !5600, size: 32, offset: 32)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5625, file: !5538, line: 927, baseType: !5537, size: 64, offset: 64)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !5597, file: !5538, line: 935, baseType: !5631, size: 192)
!5631 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 930, size: 192, elements: !5632)
!5632 = !{!5633, !5634, !5635, !5637}
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5631, file: !5538, line: 931, baseType: !5600, size: 32)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !5631, file: !5538, line: 932, baseType: !250, size: 32, offset: 32)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !5631, file: !5538, line: 933, baseType: !5636, size: 64, offset: 64)
!5636 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !5538, line: 128, baseType: !208)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !5631, file: !5538, line: 934, baseType: !250, size: 32, offset: 128)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !5597, file: !5538, line: 941, baseType: !5639, size: 96)
!5639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5597, file: !5538, line: 937, size: 96, elements: !5640)
!5640 = !{!5641, !5642, !5643}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5639, file: !5538, line: 938, baseType: !5600, size: 32)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !5639, file: !5538, line: 939, baseType: !250, size: 32, offset: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !5639, file: !5538, line: 940, baseType: !250, size: 32, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5532, file: !5533, line: 363, baseType: !5645, size: 1344, offset: 1920)
!5645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !5533, line: 275, size: 1344, elements: !5646)
!5646 = !{!5647, !5648, !5658}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5645, file: !5533, line: 276, baseType: !236, size: 32)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5645, file: !5533, line: 277, baseType: !5649, size: 32, offset: 32)
!5649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !5533, line: 254, size: 32, elements: !5650)
!5650 = !{!5651, !5652, !5653, !5654, !5655, !5656, !5657}
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !5649, file: !5533, line: 255, baseType: !250, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !5649, file: !5533, line: 256, baseType: !250, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !5649, file: !5533, line: 257, baseType: !250, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !5649, file: !5533, line: 258, baseType: !250, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !5649, file: !5533, line: 259, baseType: !250, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !5649, file: !5533, line: 260, baseType: !250, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5649, file: !5533, line: 261, baseType: !250, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5645, file: !5533, line: 278, baseType: !5659, size: 1280, offset: 64)
!5659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5660, size: 1280, elements: !2387)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !5533, line: 264, size: 256, elements: !5661)
!5661 = !{!5662, !5668, !5669, !5670}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5660, file: !5533, line: 269, baseType: !5663, size: 8)
!5663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5660, file: !5533, line: 265, size: 8, elements: !5664)
!5664 = !{!5665, !5666, !5667}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5663, file: !5533, line: 266, baseType: !1440, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !5663, file: !5533, line: 267, baseType: !1440, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5663, file: !5533, line: 268, baseType: !1440, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5660, file: !5533, line: 270, baseType: !236, size: 32, offset: 32)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5660, file: !5533, line: 271, baseType: !236, size: 32, offset: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5660, file: !5533, line: 272, baseType: !183, size: 128, offset: 128)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5532, file: !5533, line: 364, baseType: !5672, size: 640, offset: 3264)
!5672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !5533, line: 315, size: 640, elements: !5673)
!5673 = !{!5674, !5675, !5676, !5677, !5678, !5683, !5692, !5693, !5694}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !5672, file: !5533, line: 316, baseType: !5537, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !5672, file: !5533, line: 317, baseType: !208, size: 64, offset: 64)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !5672, file: !5533, line: 318, baseType: !208, size: 64, offset: 128)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5672, file: !5533, line: 319, baseType: !183, size: 128, offset: 192)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5672, file: !5533, line: 320, baseType: !5679, size: 8, offset: 320)
!5679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !5533, line: 305, size: 8, elements: !5680)
!5680 = !{!5681, !5682}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5679, file: !5533, line: 306, baseType: !1440, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !5679, file: !5533, line: 307, baseType: !1440, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5672, file: !5533, line: 321, baseType: !5684, size: 128, offset: 384)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !5533, line: 310, size: 128, elements: !5685)
!5685 = !{!5686, !5691}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5684, file: !5533, line: 311, baseType: !5687, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5688, size: 64)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{null, !5690}
!5690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5684, file: !5533, line: 312, baseType: !278, size: 64, offset: 64)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !5672, file: !5533, line: 322, baseType: !3996, size: 64, offset: 512)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !5672, file: !5533, line: 323, baseType: !236, size: 32, offset: 576)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !5672, file: !5533, line: 324, baseType: !236, size: 32, offset: 608)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5532, file: !5533, line: 365, baseType: !5696, size: 192, offset: 3904)
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !5533, line: 297, size: 192, elements: !5697)
!5697 = !{!5698, !5699, !5703, !5704}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5696, file: !5533, line: 298, baseType: !236, size: 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5696, file: !5533, line: 299, baseType: !5700, size: 8, offset: 32)
!5700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !5533, line: 283, size: 8, elements: !5701)
!5701 = !{!5702}
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5700, file: !5533, line: 284, baseType: !1440, size: 8, flags: DIFlagBitField, extraData: i64 0)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !5696, file: !5533, line: 300, baseType: !236, size: 32, offset: 64)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !5696, file: !5533, line: 301, baseType: !5705, size: 64, offset: 128)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !5533, line: 287, size: 64, elements: !5707)
!5707 = !{!5708, !5713, !5714, !5715}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5706, file: !5533, line: 291, baseType: !5709, size: 8)
!5709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5706, file: !5533, line: 288, size: 8, elements: !5710)
!5710 = !{!5711, !5712}
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5709, file: !5533, line: 289, baseType: !1440, size: 1, flags: DIFlagBitField, extraData: i64 0)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5709, file: !5533, line: 290, baseType: !1440, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !5706, file: !5533, line: 292, baseType: !1440, size: 8, offset: 8)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !5706, file: !5533, line: 293, baseType: !1440, size: 8, offset: 16)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !5706, file: !5533, line: 294, baseType: !236, size: 32, offset: 32)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5532, file: !5533, line: 366, baseType: !5717, size: 64, offset: 4096)
!5717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !5533, line: 209, size: 64, elements: !5718)
!5718 = !{!5719}
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5717, file: !5533, line: 210, baseType: !261, size: 64)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5532, file: !5533, line: 367, baseType: !5721, size: 384, offset: 4160)
!5721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !5533, line: 341, size: 384, elements: !5722)
!5722 = !{!5723, !5726, !5727, !5728}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5721, file: !5533, line: 342, baseType: !5724, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5597)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5721, file: !5533, line: 343, baseType: !183, size: 128, offset: 64)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !5721, file: !5533, line: 344, baseType: !5724, size: 64, offset: 192)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !5721, file: !5533, line: 345, baseType: !183, size: 128, offset: 256)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5532, file: !5533, line: 368, baseType: !5730, size: 64, offset: 4544)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5731, size: 64)
!5731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !5533, line: 122, size: 1216, elements: !5732)
!5732 = !{!5733, !5734, !5735, !5740, !5744, !5748, !5749, !5750}
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5731, file: !5533, line: 123, baseType: !3911, size: 64)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !5731, file: !5533, line: 124, baseType: !183, size: 128, offset: 64)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5731, file: !5533, line: 125, baseType: !5736, size: 64, offset: 192)
!5736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5737, size: 64)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!542, !215, !5739}
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !5731, file: !5533, line: 126, baseType: !5741, size: 64, offset: 256)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!236, !5531, !3911}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5731, file: !5533, line: 127, baseType: !5745, size: 64, offset: 320)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{null, !5531}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !5731, file: !5533, line: 128, baseType: !3839, size: 64, offset: 384)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !5731, file: !5533, line: 129, baseType: !3839, size: 64, offset: 448)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5731, file: !5533, line: 130, baseType: !5751, size: 704, offset: 512)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !5533, line: 108, size: 704, elements: !5752)
!5752 = !{!5753, !5754, !5758, !5759, !5760}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5751, file: !5533, line: 109, baseType: !282, size: 512)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !5751, file: !5533, line: 110, baseType: !5755, size: 64, offset: 512)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!236, !5531}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !5751, file: !5533, line: 111, baseType: !5745, size: 64, offset: 576)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5751, file: !5533, line: 112, baseType: !542, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !5751, file: !5533, line: 113, baseType: !542, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !5532, file: !5533, line: 369, baseType: !5762, size: 64, offset: 4608)
!5762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5763, size: 64)
!5763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !5533, line: 138, size: 256, elements: !5764)
!5764 = !{!5765, !5766, !5770, !5774}
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5763, file: !5533, line: 139, baseType: !5531, size: 64)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5763, file: !5533, line: 140, baseType: !5767, size: 64, offset: 64)
!5767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5768, size: 64)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!236, !5531, !250}
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5763, file: !5533, line: 141, baseType: !5771, size: 64, offset: 128)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{null, !5531, !250}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5763, file: !5533, line: 142, baseType: !5745, size: 64, offset: 192)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5532, file: !5533, line: 370, baseType: !5776, size: 64, offset: 4672)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !5533, line: 162, size: 2816, elements: !5778)
!5778 = !{!5779, !5783, !5784, !5785, !5786, !5795, !5796}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5777, file: !5533, line: 163, baseType: !5780, size: 640)
!5780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 640, elements: !5781)
!5781 = !{!5782}
!5782 = !DISubrange(count: 80)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5777, file: !5533, line: 164, baseType: !5780, size: 640, offset: 640)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !5777, file: !5533, line: 165, baseType: !3911, size: 64, offset: 1280)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5777, file: !5533, line: 166, baseType: !7, size: 32, offset: 1344)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5777, file: !5533, line: 167, baseType: !5787, size: 192, offset: 1408)
!5787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !5533, line: 154, size: 192, elements: !5788)
!5788 = !{!5789, !5791, !5793}
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !5787, file: !5533, line: 155, baseType: !5790, size: 64)
!5790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !5533, line: 150, baseType: !5755)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5787, file: !5533, line: 156, baseType: !5792, size: 64, offset: 64)
!5792 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !5533, line: 151, baseType: !5755)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !5787, file: !5533, line: 157, baseType: !5794, size: 64, offset: 128)
!5794 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !5533, line: 152, baseType: !5771)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5777, file: !5533, line: 168, baseType: !3889, size: 1152, offset: 1600)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5777, file: !5533, line: 169, baseType: !174, size: 64, offset: 2752)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !5532, file: !5533, line: 371, baseType: !5798, size: 64, offset: 4736)
!5798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5799, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5800)
!5800 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !5533, line: 348, flags: DIFlagFwdDecl)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5532, file: !5533, line: 372, baseType: !177, size: 64, offset: 4800)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5532, file: !5533, line: 373, baseType: !279, size: 5568, offset: 4864)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !5532, file: !5533, line: 374, baseType: !7, size: 32, offset: 10432)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !5532, file: !5533, line: 375, baseType: !7, size: 32, offset: 10464)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !5532, file: !5533, line: 376, baseType: !183, size: 128, offset: 10496)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !5532, file: !5533, line: 377, baseType: !775, size: 192, offset: 10624)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5532, file: !5533, line: 378, baseType: !5745, size: 64, offset: 10816)
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5809, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5812)
!5812 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !236)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !250)
!5815 = !{!0, !5816, !5818, !5823, !5828, !5831, !5836, !5838, !5846, !5855, !5857, !5860, !5863}
!5816 = !DIGlobalVariableExpression(var: !5817, expr: !DIExpression())
!5817 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xhci_pci_init257", scope: !2, file: !3, line: 646, type: !177, isLocal: true, isDefinition: true)
!5818 = !DIGlobalVariableExpression(var: !5819, expr: !DIExpression())
!5819 = distinct !DIGlobalVariable(name: "__exitcall_xhci_pci_exit", scope: !2, file: !3, line: 652, type: !5820, isLocal: true, isDefinition: true)
!5820 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5821, line: 117, baseType: !5822)
!5821 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!5822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!5823 = !DIGlobalVariableExpression(var: !5824, expr: !DIExpression())
!5824 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description258", scope: !2, file: !3, line: 654, type: !5825, isLocal: true, isDefinition: true, align: 8)
!5825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 424, elements: !5826)
!5826 = !{!5827}
!5827 = !DISubrange(count: 53)
!5828 = !DIGlobalVariableExpression(var: !5829, expr: !DIExpression())
!5829 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file259", scope: !2, file: !3, line: 655, type: !5830, isLocal: true, isDefinition: true, align: 8)
!5830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 320, elements: !5590)
!5831 = !DIGlobalVariableExpression(var: !5832, expr: !DIExpression())
!5832 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license260", scope: !2, file: !3, line: 655, type: !5833, isLocal: true, isDefinition: true, align: 8)
!5833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 168, elements: !5834)
!5834 = !{!5835}
!5835 = !DISubrange(count: 21)
!5836 = !DIGlobalVariableExpression(var: !5837, expr: !DIExpression())
!5837 = distinct !DIGlobalVariable(name: "xhci_pci_hc_driver", scope: !2, file: !3, line: 70, type: !4958, isLocal: true, isDefinition: true)
!5838 = !DIGlobalVariableExpression(var: !5839, expr: !DIExpression())
!5839 = distinct !DIGlobalVariable(name: "xhci_pci_overrides", scope: !2, file: !3, line: 74, type: !5840, isLocal: true, isDefinition: true)
!5840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5841)
!5841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xhci_driver_overrides", file: !159, line: 1914, size: 192, elements: !5842)
!5842 = !{!5843, !5844, !5845}
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "extra_priv_size", scope: !5841, file: !159, line: 1915, baseType: !382, size: 64)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5841, file: !159, line: 1916, baseType: !4970, size: 64, offset: 64)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5841, file: !159, line: 1917, baseType: !4970, size: 64, offset: 128)
!5846 = !DIGlobalVariableExpression(var: !5847, expr: !DIExpression())
!5847 = distinct !DIGlobalVariable(name: "intel_dsm_guid", scope: !5848, file: !3, line: 302, type: !5849, isLocal: true, isDefinition: true)
!5848 = distinct !DISubprogram(name: "xhci_pme_acpi_rtd3_enable", scope: !3, file: !3, line: 300, type: !4421, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5850)
!5850 = !DIDerivedType(tag: DW_TAG_typedef, name: "guid_t", file: !5851, line: 25, baseType: !5852)
!5851 = !DIFile(filename: "./include/uapi/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!5852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5851, line: 23, size: 128, elements: !5853)
!5853 = !{!5854}
!5854 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5852, file: !5851, line: 24, baseType: !3392, size: 128)
!5855 = !DIGlobalVariableExpression(var: !5856, expr: !DIExpression())
!5856 = distinct !DIGlobalVariable(name: "xhci_pci_driver", scope: !2, file: !3, line: 620, type: !4399, isLocal: true, isDefinition: true)
!5857 = !DIGlobalVariableExpression(var: !5858, expr: !DIExpression())
!5858 = distinct !DIGlobalVariable(name: "hcd_name", scope: !2, file: !3, line: 68, type: !5859, isLocal: true, isDefinition: true)
!5859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 72, elements: !3917)
!5860 = !DIGlobalVariableExpression(var: !5861, expr: !DIExpression())
!5861 = distinct !DIGlobalVariable(name: "pci_ids", scope: !2, file: !3, line: 604, type: !5862, isLocal: true, isDefinition: true)
!5862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4405, size: 1024, elements: !224)
!5863 = !DIGlobalVariableExpression(var: !5864, expr: !DIExpression())
!5864 = distinct !DIGlobalVariable(name: "reneses_data", scope: !2, file: !3, line: 598, type: !5865, isLocal: true, isDefinition: true)
!5865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5526)
!5866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 296, elements: !5867)
!5867 = !{!5868}
!5868 = !DISubrange(count: 37)
!5869 = !{i32 7, !"Dwarf Version", i32 4}
!5870 = !{i32 2, !"Debug Info Version", i32 3}
!5871 = !{i32 1, !"wchar_size", i32 2}
!5872 = !{i32 1, !"Code Model", i32 2}
!5873 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!5874 = distinct !DISubprogram(name: "xhci_pci_init", scope: !3, file: !3, line: 636, type: !5875, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!236}
!5877 = !DILocation(line: 638, column: 2, scope: !5874)
!5878 = !DILocation(line: 640, column: 33, scope: !5874)
!5879 = !DILocation(line: 641, column: 32, scope: !5874)
!5880 = !DILocation(line: 642, column: 30, scope: !5874)
!5881 = !DILocation(line: 644, column: 9, scope: !5874)
!5882 = !DILocation(line: 644, column: 2, scope: !5874)
!5883 = distinct !DISubprogram(name: "xhci_pci_exit", scope: !3, file: !3, line: 648, type: !2580, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5884 = !DILocation(line: 650, column: 2, scope: !5883)
!5885 = !DILocation(line: 651, column: 1, scope: !5883)
!5886 = distinct !DISubprogram(name: "xhci_pci_suspend", scope: !3, file: !3, line: 515, type: !4976, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5887 = !DILocalVariable(name: "hcd", arg: 1, scope: !5886, file: !3, line: 515, type: !4568)
!5888 = !DILocation(line: 515, column: 45, scope: !5886)
!5889 = !DILocalVariable(name: "do_wakeup", arg: 2, scope: !5886, file: !3, line: 515, type: !542)
!5890 = !DILocation(line: 515, column: 55, scope: !5886)
!5891 = !DILocalVariable(name: "xhci", scope: !5886, file: !3, line: 517, type: !4564)
!5892 = !DILocation(line: 517, column: 19, scope: !5886)
!5893 = !DILocation(line: 517, column: 38, scope: !5886)
!5894 = !DILocation(line: 517, column: 26, scope: !5886)
!5895 = !DILocalVariable(name: "pdev", scope: !5886, file: !3, line: 518, type: !178)
!5896 = !DILocation(line: 518, column: 19, scope: !5886)
!5897 = !DILocalVariable(name: "__mptr", scope: !5898, file: !3, line: 518, type: !177)
!5898 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 518, column: 26)
!5899 = !DILocation(line: 518, column: 26, scope: !5898)
!5900 = !DILocation(line: 518, column: 26, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 518, column: 26)
!5902 = !DILocalVariable(name: "ret", scope: !5886, file: !3, line: 519, type: !236)
!5903 = !DILocation(line: 519, column: 8, scope: !5886)
!5904 = !DILocation(line: 525, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 525, column: 6)
!5906 = !DILocation(line: 525, column: 12, scope: !5905)
!5907 = !DILocation(line: 525, column: 19, scope: !5905)
!5908 = !DILocation(line: 525, column: 6, scope: !5886)
!5909 = !DILocation(line: 526, column: 22, scope: !5905)
!5910 = !DILocation(line: 526, column: 3, scope: !5905)
!5911 = !DILocation(line: 528, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 528, column: 6)
!5913 = !DILocation(line: 528, column: 12, scope: !5912)
!5914 = !DILocation(line: 528, column: 19, scope: !5912)
!5915 = !DILocation(line: 528, column: 6, scope: !5886)
!5916 = !DILocation(line: 529, column: 18, scope: !5912)
!5917 = !DILocation(line: 529, column: 3, scope: !5912)
!5918 = !DILocation(line: 531, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 531, column: 6)
!5920 = !DILocation(line: 531, column: 12, scope: !5919)
!5921 = !DILocation(line: 531, column: 19, scope: !5919)
!5922 = !DILocation(line: 531, column: 6, scope: !5886)
!5923 = !DILocation(line: 532, column: 31, scope: !5919)
!5924 = !DILocation(line: 532, column: 3, scope: !5919)
!5925 = !DILocation(line: 534, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 534, column: 6)
!5927 = !DILocation(line: 534, column: 12, scope: !5926)
!5928 = !DILocation(line: 534, column: 19, scope: !5926)
!5929 = !DILocation(line: 534, column: 6, scope: !5886)
!5930 = !DILocation(line: 535, column: 29, scope: !5926)
!5931 = !DILocation(line: 535, column: 3, scope: !5926)
!5932 = !DILocation(line: 537, column: 21, scope: !5886)
!5933 = !DILocation(line: 537, column: 27, scope: !5886)
!5934 = !DILocation(line: 537, column: 8, scope: !5886)
!5935 = !DILocation(line: 537, column: 6, scope: !5886)
!5936 = !DILocation(line: 538, column: 6, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 538, column: 6)
!5938 = !DILocation(line: 538, column: 10, scope: !5937)
!5939 = !DILocation(line: 538, column: 14, scope: !5937)
!5940 = !DILocation(line: 538, column: 20, scope: !5937)
!5941 = !DILocation(line: 538, column: 27, scope: !5937)
!5942 = !DILocation(line: 538, column: 6, scope: !5886)
!5943 = !DILocation(line: 539, column: 31, scope: !5937)
!5944 = !DILocation(line: 539, column: 3, scope: !5937)
!5945 = !DILocation(line: 541, column: 9, scope: !5886)
!5946 = !DILocation(line: 541, column: 2, scope: !5886)
!5947 = distinct !DISubprogram(name: "xhci_pci_resume", scope: !3, file: !3, line: 544, type: !4976, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5948 = !DILocalVariable(name: "hcd", arg: 1, scope: !5947, file: !3, line: 544, type: !4568)
!5949 = !DILocation(line: 544, column: 44, scope: !5947)
!5950 = !DILocalVariable(name: "hibernated", arg: 2, scope: !5947, file: !3, line: 544, type: !542)
!5951 = !DILocation(line: 544, column: 54, scope: !5947)
!5952 = !DILocalVariable(name: "xhci", scope: !5947, file: !3, line: 546, type: !4564)
!5953 = !DILocation(line: 546, column: 20, scope: !5947)
!5954 = !DILocation(line: 546, column: 39, scope: !5947)
!5955 = !DILocation(line: 546, column: 27, scope: !5947)
!5956 = !DILocalVariable(name: "pdev", scope: !5947, file: !3, line: 547, type: !178)
!5957 = !DILocation(line: 547, column: 19, scope: !5947)
!5958 = !DILocalVariable(name: "__mptr", scope: !5959, file: !3, line: 547, type: !177)
!5959 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 547, column: 26)
!5960 = !DILocation(line: 547, column: 26, scope: !5959)
!5961 = !DILocation(line: 547, column: 26, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5959, file: !3, line: 547, column: 26)
!5963 = !DILocalVariable(name: "retval", scope: !5947, file: !3, line: 548, type: !236)
!5964 = !DILocation(line: 548, column: 8, scope: !5947)
!5965 = !DILocation(line: 550, column: 22, scope: !5947)
!5966 = !DILocation(line: 550, column: 28, scope: !5947)
!5967 = !DILocation(line: 550, column: 2, scope: !5947)
!5968 = !DILocation(line: 570, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 570, column: 6)
!5970 = !DILocation(line: 570, column: 12, scope: !5969)
!5971 = !DILocation(line: 570, column: 19, scope: !5969)
!5972 = !DILocation(line: 570, column: 6, scope: !5947)
!5973 = !DILocation(line: 571, column: 31, scope: !5969)
!5974 = !DILocation(line: 571, column: 3, scope: !5969)
!5975 = !DILocation(line: 573, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 573, column: 6)
!5977 = !DILocation(line: 573, column: 12, scope: !5976)
!5978 = !DILocation(line: 573, column: 19, scope: !5976)
!5979 = !DILocation(line: 573, column: 6, scope: !5947)
!5980 = !DILocation(line: 574, column: 31, scope: !5976)
!5981 = !DILocation(line: 574, column: 3, scope: !5976)
!5982 = !DILocation(line: 576, column: 6, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5947, file: !3, line: 576, column: 6)
!5984 = !DILocation(line: 576, column: 12, scope: !5983)
!5985 = !DILocation(line: 576, column: 19, scope: !5983)
!5986 = !DILocation(line: 576, column: 6, scope: !5947)
!5987 = !DILocation(line: 577, column: 18, scope: !5983)
!5988 = !DILocation(line: 577, column: 3, scope: !5983)
!5989 = !DILocation(line: 579, column: 23, scope: !5947)
!5990 = !DILocation(line: 579, column: 29, scope: !5947)
!5991 = !DILocation(line: 579, column: 11, scope: !5947)
!5992 = !DILocation(line: 579, column: 9, scope: !5947)
!5993 = !DILocation(line: 580, column: 9, scope: !5947)
!5994 = !DILocation(line: 580, column: 2, scope: !5947)
!5995 = distinct !DISubprogram(name: "xhci_pci_shutdown", scope: !3, file: !3, line: 583, type: !4981, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!5996 = !DILocalVariable(name: "hcd", arg: 1, scope: !5995, file: !3, line: 583, type: !4568)
!5997 = !DILocation(line: 583, column: 47, scope: !5995)
!5998 = !DILocalVariable(name: "xhci", scope: !5995, file: !3, line: 585, type: !4564)
!5999 = !DILocation(line: 585, column: 20, scope: !5995)
!6000 = !DILocation(line: 585, column: 39, scope: !5995)
!6001 = !DILocation(line: 585, column: 27, scope: !5995)
!6002 = !DILocalVariable(name: "pdev", scope: !5995, file: !3, line: 586, type: !178)
!6003 = !DILocation(line: 586, column: 19, scope: !5995)
!6004 = !DILocalVariable(name: "__mptr", scope: !6005, file: !3, line: 586, type: !177)
!6005 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 586, column: 26)
!6006 = !DILocation(line: 586, column: 26, scope: !6005)
!6007 = !DILocation(line: 586, column: 26, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6005, file: !3, line: 586, column: 26)
!6009 = !DILocation(line: 588, column: 16, scope: !5995)
!6010 = !DILocation(line: 588, column: 2, scope: !5995)
!6011 = !DILocation(line: 591, column: 6, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 591, column: 6)
!6013 = !DILocation(line: 591, column: 12, scope: !6012)
!6014 = !DILocation(line: 591, column: 19, scope: !6012)
!6015 = !DILocation(line: 591, column: 6, scope: !5995)
!6016 = !DILocation(line: 592, column: 23, scope: !6012)
!6017 = !DILocation(line: 592, column: 3, scope: !6012)
!6018 = !DILocation(line: 593, column: 1, scope: !5995)
!6019 = distinct !DISubprogram(name: "xhci_pci_setup", scope: !3, file: !3, line: 316, type: !4971, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6020 = !DILocalVariable(name: "hcd", arg: 1, scope: !6019, file: !3, line: 316, type: !4568)
!6021 = !DILocation(line: 316, column: 43, scope: !6019)
!6022 = !DILocalVariable(name: "xhci", scope: !6019, file: !3, line: 318, type: !4564)
!6023 = !DILocation(line: 318, column: 20, scope: !6019)
!6024 = !DILocalVariable(name: "pdev", scope: !6019, file: !3, line: 319, type: !178)
!6025 = !DILocation(line: 319, column: 19, scope: !6019)
!6026 = !DILocalVariable(name: "__mptr", scope: !6027, file: !3, line: 319, type: !177)
!6027 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 319, column: 26)
!6028 = !DILocation(line: 319, column: 26, scope: !6027)
!6029 = !DILocation(line: 319, column: 26, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 319, column: 26)
!6031 = !DILocalVariable(name: "retval", scope: !6019, file: !3, line: 320, type: !236)
!6032 = !DILocation(line: 320, column: 8, scope: !6019)
!6033 = !DILocation(line: 322, column: 21, scope: !6019)
!6034 = !DILocation(line: 322, column: 9, scope: !6019)
!6035 = !DILocation(line: 322, column: 7, scope: !6019)
!6036 = !DILocation(line: 323, column: 7, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 323, column: 6)
!6038 = !DILocation(line: 323, column: 13, scope: !6037)
!6039 = !DILocation(line: 323, column: 6, scope: !6019)
!6040 = !DILocation(line: 324, column: 24, scope: !6037)
!6041 = !DILocation(line: 324, column: 49, scope: !6037)
!6042 = !DILocation(line: 324, column: 55, scope: !6037)
!6043 = !DILocation(line: 324, column: 3, scope: !6037)
!6044 = !DILocation(line: 327, column: 2, scope: !6019)
!6045 = !DILocation(line: 327, column: 8, scope: !6019)
!6046 = !DILocation(line: 327, column: 22, scope: !6019)
!6047 = !DILocation(line: 329, column: 26, scope: !6019)
!6048 = !DILocation(line: 329, column: 11, scope: !6019)
!6049 = !DILocation(line: 329, column: 9, scope: !6019)
!6050 = !DILocation(line: 330, column: 6, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 330, column: 6)
!6052 = !DILocation(line: 330, column: 6, scope: !6019)
!6053 = !DILocation(line: 331, column: 10, scope: !6051)
!6054 = !DILocation(line: 331, column: 3, scope: !6051)
!6055 = !DILocation(line: 333, column: 30, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 333, column: 6)
!6057 = !DILocation(line: 333, column: 7, scope: !6056)
!6058 = !DILocation(line: 333, column: 6, scope: !6019)
!6059 = !DILocation(line: 334, column: 3, scope: !6056)
!6060 = !DILocation(line: 336, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 336, column: 6)
!6062 = !DILocation(line: 336, column: 12, scope: !6061)
!6063 = !DILocation(line: 336, column: 19, scope: !6061)
!6064 = !DILocation(line: 336, column: 6, scope: !6019)
!6065 = !DILocation(line: 337, column: 29, scope: !6061)
!6066 = !DILocation(line: 337, column: 3, scope: !6061)
!6067 = !DILocation(line: 342, column: 25, scope: !6019)
!6068 = !DILocation(line: 342, column: 31, scope: !6019)
!6069 = !DILocation(line: 342, column: 9, scope: !6019)
!6070 = !DILocation(line: 342, column: 2, scope: !6019)
!6071 = !DILocation(line: 343, column: 1, scope: !6019)
!6072 = distinct !DISubprogram(name: "hcd_to_xhci", scope: !159, file: !159, line: 1923, type: !6073, scopeLine: 1924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!4564, !4568}
!6075 = !DILocalVariable(name: "hcd", arg: 1, scope: !6072, file: !159, line: 1923, type: !4568)
!6076 = !DILocation(line: 1923, column: 60, scope: !6072)
!6077 = !DILocalVariable(name: "primary_hcd", scope: !6072, file: !159, line: 1925, type: !4568)
!6078 = !DILocation(line: 1925, column: 18, scope: !6072)
!6079 = !DILocation(line: 1927, column: 29, scope: !6080)
!6080 = distinct !DILexicalBlock(scope: !6072, file: !159, line: 1927, column: 6)
!6081 = !DILocation(line: 1927, column: 6, scope: !6080)
!6082 = !DILocation(line: 1927, column: 6, scope: !6072)
!6083 = !DILocation(line: 1928, column: 17, scope: !6080)
!6084 = !DILocation(line: 1928, column: 15, scope: !6080)
!6085 = !DILocation(line: 1928, column: 3, scope: !6080)
!6086 = !DILocation(line: 1930, column: 17, scope: !6080)
!6087 = !DILocation(line: 1930, column: 22, scope: !6080)
!6088 = !DILocation(line: 1930, column: 15, scope: !6080)
!6089 = !DILocation(line: 1932, column: 30, scope: !6072)
!6090 = !DILocation(line: 1932, column: 43, scope: !6072)
!6091 = !DILocation(line: 1932, column: 29, scope: !6072)
!6092 = !DILocation(line: 1932, column: 9, scope: !6072)
!6093 = !DILocation(line: 1932, column: 2, scope: !6072)
!6094 = distinct !DISubprogram(name: "xhci_pci_quirks", scope: !3, file: !3, line: 95, type: !6095, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6095 = !DISubroutineType(types: !6096)
!6096 = !{null, !278, !4564}
!6097 = !DILocalVariable(name: "dev", arg: 1, scope: !6094, file: !3, line: 95, type: !278)
!6098 = !DILocation(line: 95, column: 44, scope: !6094)
!6099 = !DILocalVariable(name: "xhci", arg: 2, scope: !6094, file: !3, line: 95, type: !4564)
!6100 = !DILocation(line: 95, column: 66, scope: !6094)
!6101 = !DILocalVariable(name: "pdev", scope: !6094, file: !3, line: 97, type: !178)
!6102 = !DILocation(line: 97, column: 35, scope: !6094)
!6103 = !DILocalVariable(name: "__mptr", scope: !6104, file: !3, line: 97, type: !177)
!6104 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 97, column: 42)
!6105 = !DILocation(line: 97, column: 42, scope: !6104)
!6106 = !DILocation(line: 97, column: 42, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 97, column: 42)
!6108 = !DILocalVariable(name: "driver_data", scope: !6094, file: !3, line: 98, type: !5525)
!6109 = !DILocation(line: 98, column: 35, scope: !6094)
!6110 = !DILocalVariable(name: "id", scope: !6094, file: !3, line: 99, type: !4404)
!6111 = !DILocation(line: 99, column: 35, scope: !6094)
!6112 = !DILocation(line: 101, column: 20, scope: !6094)
!6113 = !DILocation(line: 101, column: 26, scope: !6094)
!6114 = !DILocation(line: 101, column: 34, scope: !6094)
!6115 = !DILocation(line: 101, column: 44, scope: !6094)
!6116 = !DILocation(line: 101, column: 7, scope: !6094)
!6117 = !DILocation(line: 101, column: 5, scope: !6094)
!6118 = !DILocation(line: 103, column: 6, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 103, column: 6)
!6120 = !DILocation(line: 103, column: 9, scope: !6119)
!6121 = !DILocation(line: 103, column: 12, scope: !6119)
!6122 = !DILocation(line: 103, column: 16, scope: !6119)
!6123 = !DILocation(line: 103, column: 6, scope: !6094)
!6124 = !DILocation(line: 104, column: 44, scope: !6125)
!6125 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 103, column: 29)
!6126 = !DILocation(line: 104, column: 48, scope: !6125)
!6127 = !DILocation(line: 104, column: 17, scope: !6125)
!6128 = !DILocation(line: 104, column: 15, scope: !6125)
!6129 = !DILocation(line: 105, column: 19, scope: !6125)
!6130 = !DILocation(line: 105, column: 32, scope: !6125)
!6131 = !DILocation(line: 105, column: 3, scope: !6125)
!6132 = !DILocation(line: 105, column: 9, scope: !6125)
!6133 = !DILocation(line: 105, column: 16, scope: !6125)
!6134 = !DILocation(line: 106, column: 2, scope: !6125)
!6135 = !DILocation(line: 109, column: 6, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 109, column: 6)
!6137 = !DILocation(line: 109, column: 12, scope: !6136)
!6138 = !DILocation(line: 109, column: 19, scope: !6136)
!6139 = !DILocation(line: 109, column: 49, scope: !6136)
!6140 = !DILocation(line: 110, column: 5, scope: !6136)
!6141 = !DILocation(line: 110, column: 11, scope: !6136)
!6142 = !DILocation(line: 110, column: 18, scope: !6136)
!6143 = !DILocation(line: 110, column: 52, scope: !6136)
!6144 = !DILocation(line: 111, column: 5, scope: !6136)
!6145 = !DILocation(line: 111, column: 11, scope: !6136)
!6146 = !DILocation(line: 111, column: 18, scope: !6136)
!6147 = !DILocation(line: 109, column: 6, scope: !6094)
!6148 = !DILocation(line: 112, column: 7, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 112, column: 7)
!6150 = distinct !DILexicalBlock(scope: !6136, file: !3, line: 111, column: 57)
!6151 = !DILocation(line: 112, column: 13, scope: !6149)
!6152 = !DILocation(line: 112, column: 20, scope: !6149)
!6153 = !DILocation(line: 112, column: 54, scope: !6149)
!6154 = !DILocation(line: 113, column: 5, scope: !6149)
!6155 = !DILocation(line: 113, column: 11, scope: !6149)
!6156 = !DILocation(line: 113, column: 20, scope: !6149)
!6157 = !DILocation(line: 112, column: 7, scope: !6150)
!6158 = !DILocation(line: 114, column: 4, scope: !6159)
!6159 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 113, column: 28)
!6160 = !DILocation(line: 114, column: 10, scope: !6159)
!6161 = !DILocation(line: 114, column: 17, scope: !6159)
!6162 = !DILocation(line: 115, column: 19, scope: !6159)
!6163 = !DILocation(line: 115, column: 4, scope: !6159)
!6164 = !DILocation(line: 118, column: 3, scope: !6159)
!6165 = !DILocation(line: 119, column: 7, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 119, column: 7)
!6167 = !DILocation(line: 119, column: 13, scope: !6166)
!6168 = !DILocation(line: 119, column: 20, scope: !6166)
!6169 = !DILocation(line: 119, column: 54, scope: !6166)
!6170 = !DILocation(line: 120, column: 5, scope: !6166)
!6171 = !DILocation(line: 120, column: 11, scope: !6166)
!6172 = !DILocation(line: 120, column: 20, scope: !6166)
!6173 = !DILocation(line: 119, column: 7, scope: !6150)
!6174 = !DILocation(line: 121, column: 4, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6166, file: !3, line: 120, column: 28)
!6176 = !DILocation(line: 121, column: 10, scope: !6175)
!6177 = !DILocation(line: 121, column: 17, scope: !6175)
!6178 = !DILocation(line: 122, column: 19, scope: !6175)
!6179 = !DILocation(line: 125, column: 5, scope: !6175)
!6180 = !DILocation(line: 125, column: 11, scope: !6175)
!6181 = !DILocation(line: 122, column: 4, scope: !6175)
!6182 = !DILocation(line: 126, column: 3, scope: !6175)
!6183 = !DILocation(line: 127, column: 7, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 127, column: 7)
!6185 = !DILocation(line: 127, column: 13, scope: !6184)
!6186 = !DILocation(line: 127, column: 20, scope: !6184)
!6187 = !DILocation(line: 127, column: 7, scope: !6150)
!6188 = !DILocation(line: 128, column: 4, scope: !6184)
!6189 = !DILocation(line: 128, column: 10, scope: !6184)
!6190 = !DILocation(line: 128, column: 17, scope: !6184)
!6191 = !DILocation(line: 133, column: 3, scope: !6150)
!6192 = !DILocation(line: 133, column: 9, scope: !6150)
!6193 = !DILocation(line: 133, column: 16, scope: !6150)
!6194 = !DILocation(line: 134, column: 18, scope: !6150)
!6195 = !DILocation(line: 137, column: 5, scope: !6150)
!6196 = !DILocation(line: 137, column: 11, scope: !6150)
!6197 = !DILocation(line: 134, column: 3, scope: !6150)
!6198 = !DILocation(line: 138, column: 3, scope: !6150)
!6199 = !DILocation(line: 138, column: 9, scope: !6150)
!6200 = !DILocation(line: 138, column: 16, scope: !6150)
!6201 = !DILocation(line: 139, column: 2, scope: !6150)
!6202 = !DILocation(line: 141, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 141, column: 6)
!6204 = !DILocation(line: 141, column: 12, scope: !6203)
!6205 = !DILocation(line: 141, column: 19, scope: !6203)
!6206 = !DILocation(line: 141, column: 49, scope: !6203)
!6207 = !DILocation(line: 142, column: 4, scope: !6203)
!6208 = !DILocation(line: 142, column: 10, scope: !6203)
!6209 = !DILocation(line: 142, column: 17, scope: !6203)
!6210 = !DILocation(line: 141, column: 6, scope: !6094)
!6211 = !DILocation(line: 143, column: 3, scope: !6203)
!6212 = !DILocation(line: 143, column: 9, scope: !6203)
!6213 = !DILocation(line: 143, column: 16, scope: !6203)
!6214 = !DILocation(line: 145, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 145, column: 6)
!6216 = !DILocation(line: 145, column: 12, scope: !6215)
!6217 = !DILocation(line: 145, column: 19, scope: !6215)
!6218 = !DILocation(line: 145, column: 6, scope: !6094)
!6219 = !DILocation(line: 146, column: 3, scope: !6215)
!6220 = !DILocation(line: 146, column: 9, scope: !6215)
!6221 = !DILocation(line: 146, column: 16, scope: !6215)
!6222 = !DILocation(line: 148, column: 6, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 148, column: 6)
!6224 = !DILocation(line: 148, column: 12, scope: !6223)
!6225 = !DILocation(line: 148, column: 19, scope: !6223)
!6226 = !DILocation(line: 148, column: 40, scope: !6223)
!6227 = !DILocation(line: 148, column: 43, scope: !6223)
!6228 = !DILocation(line: 148, column: 49, scope: !6223)
!6229 = !DILocation(line: 148, column: 61, scope: !6223)
!6230 = !DILocation(line: 148, column: 6, scope: !6094)
!6231 = !DILocation(line: 149, column: 3, scope: !6223)
!6232 = !DILocation(line: 149, column: 9, scope: !6223)
!6233 = !DILocation(line: 149, column: 16, scope: !6223)
!6234 = !DILocation(line: 152, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 152, column: 6)
!6236 = !DILocation(line: 152, column: 12, scope: !6235)
!6237 = !DILocation(line: 152, column: 19, scope: !6235)
!6238 = !DILocation(line: 152, column: 40, scope: !6235)
!6239 = !DILocation(line: 152, column: 43, scope: !6235)
!6240 = !DILocation(line: 152, column: 6, scope: !6094)
!6241 = !DILocation(line: 153, column: 3, scope: !6235)
!6242 = !DILocation(line: 153, column: 9, scope: !6235)
!6243 = !DILocation(line: 153, column: 16, scope: !6235)
!6244 = !DILocation(line: 155, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 155, column: 6)
!6246 = !DILocation(line: 155, column: 12, scope: !6245)
!6247 = !DILocation(line: 155, column: 19, scope: !6245)
!6248 = !DILocation(line: 155, column: 40, scope: !6245)
!6249 = !DILocation(line: 156, column: 4, scope: !6245)
!6250 = !DILocation(line: 156, column: 10, scope: !6245)
!6251 = !DILocation(line: 156, column: 17, scope: !6245)
!6252 = !DILocation(line: 156, column: 27, scope: !6245)
!6253 = !DILocation(line: 157, column: 4, scope: !6245)
!6254 = !DILocation(line: 157, column: 10, scope: !6245)
!6255 = !DILocation(line: 157, column: 17, scope: !6245)
!6256 = !DILocation(line: 157, column: 27, scope: !6245)
!6257 = !DILocation(line: 158, column: 4, scope: !6245)
!6258 = !DILocation(line: 158, column: 10, scope: !6245)
!6259 = !DILocation(line: 158, column: 17, scope: !6245)
!6260 = !DILocation(line: 158, column: 27, scope: !6245)
!6261 = !DILocation(line: 159, column: 4, scope: !6245)
!6262 = !DILocation(line: 159, column: 10, scope: !6245)
!6263 = !DILocation(line: 159, column: 17, scope: !6245)
!6264 = !DILocation(line: 155, column: 6, scope: !6094)
!6265 = !DILocation(line: 160, column: 3, scope: !6245)
!6266 = !DILocation(line: 160, column: 9, scope: !6245)
!6267 = !DILocation(line: 160, column: 16, scope: !6245)
!6268 = !DILocation(line: 162, column: 6, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 162, column: 6)
!6270 = !DILocation(line: 162, column: 12, scope: !6269)
!6271 = !DILocation(line: 162, column: 19, scope: !6269)
!6272 = !DILocation(line: 162, column: 40, scope: !6269)
!6273 = !DILocation(line: 163, column: 7, scope: !6269)
!6274 = !DILocation(line: 163, column: 13, scope: !6269)
!6275 = !DILocation(line: 163, column: 20, scope: !6269)
!6276 = !DILocation(line: 163, column: 30, scope: !6269)
!6277 = !DILocation(line: 163, column: 33, scope: !6269)
!6278 = !DILocation(line: 163, column: 39, scope: !6269)
!6279 = !DILocation(line: 163, column: 46, scope: !6269)
!6280 = !DILocation(line: 162, column: 6, scope: !6094)
!6281 = !DILocation(line: 164, column: 3, scope: !6269)
!6282 = !DILocation(line: 164, column: 9, scope: !6269)
!6283 = !DILocation(line: 164, column: 16, scope: !6269)
!6284 = !DILocation(line: 166, column: 6, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 166, column: 6)
!6286 = !DILocation(line: 166, column: 12, scope: !6285)
!6287 = !DILocation(line: 166, column: 19, scope: !6285)
!6288 = !DILocation(line: 166, column: 40, scope: !6285)
!6289 = !DILocation(line: 166, column: 43, scope: !6285)
!6290 = !DILocation(line: 166, column: 49, scope: !6285)
!6291 = !DILocation(line: 166, column: 56, scope: !6285)
!6292 = !DILocation(line: 166, column: 6, scope: !6094)
!6293 = !DILocation(line: 167, column: 3, scope: !6285)
!6294 = !DILocation(line: 167, column: 9, scope: !6285)
!6295 = !DILocation(line: 167, column: 16, scope: !6285)
!6296 = !DILocation(line: 169, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 169, column: 6)
!6298 = !DILocation(line: 169, column: 12, scope: !6297)
!6299 = !DILocation(line: 169, column: 19, scope: !6297)
!6300 = !DILocation(line: 169, column: 6, scope: !6094)
!6301 = !DILocation(line: 170, column: 3, scope: !6297)
!6302 = !DILocation(line: 170, column: 9, scope: !6297)
!6303 = !DILocation(line: 170, column: 16, scope: !6297)
!6304 = !DILocation(line: 172, column: 7, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 172, column: 6)
!6306 = !DILocation(line: 172, column: 13, scope: !6305)
!6307 = !DILocation(line: 172, column: 20, scope: !6305)
!6308 = !DILocation(line: 172, column: 42, scope: !6305)
!6309 = !DILocation(line: 173, column: 5, scope: !6305)
!6310 = !DILocation(line: 173, column: 11, scope: !6305)
!6311 = !DILocation(line: 173, column: 18, scope: !6305)
!6312 = !DILocation(line: 173, column: 54, scope: !6305)
!6313 = !DILocation(line: 174, column: 4, scope: !6305)
!6314 = !DILocation(line: 174, column: 10, scope: !6305)
!6315 = !DILocation(line: 174, column: 17, scope: !6305)
!6316 = !DILocation(line: 174, column: 53, scope: !6305)
!6317 = !DILocation(line: 175, column: 4, scope: !6305)
!6318 = !DILocation(line: 175, column: 10, scope: !6305)
!6319 = !DILocation(line: 175, column: 17, scope: !6305)
!6320 = !DILocation(line: 175, column: 53, scope: !6305)
!6321 = !DILocation(line: 176, column: 4, scope: !6305)
!6322 = !DILocation(line: 176, column: 10, scope: !6305)
!6323 = !DILocation(line: 176, column: 17, scope: !6305)
!6324 = !DILocation(line: 172, column: 6, scope: !6094)
!6325 = !DILocation(line: 177, column: 3, scope: !6305)
!6326 = !DILocation(line: 177, column: 9, scope: !6305)
!6327 = !DILocation(line: 177, column: 16, scope: !6305)
!6328 = !DILocation(line: 179, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 179, column: 6)
!6330 = !DILocation(line: 179, column: 12, scope: !6329)
!6331 = !DILocation(line: 179, column: 19, scope: !6329)
!6332 = !DILocation(line: 179, column: 6, scope: !6094)
!6333 = !DILocation(line: 180, column: 3, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6329, file: !3, line: 179, column: 43)
!6335 = !DILocation(line: 180, column: 9, scope: !6334)
!6336 = !DILocation(line: 180, column: 16, scope: !6334)
!6337 = !DILocation(line: 181, column: 3, scope: !6334)
!6338 = !DILocation(line: 181, column: 9, scope: !6334)
!6339 = !DILocation(line: 181, column: 16, scope: !6334)
!6340 = !DILocation(line: 182, column: 3, scope: !6334)
!6341 = !DILocation(line: 182, column: 9, scope: !6334)
!6342 = !DILocation(line: 182, column: 16, scope: !6334)
!6343 = !DILocation(line: 183, column: 2, scope: !6334)
!6344 = !DILocation(line: 184, column: 6, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 184, column: 6)
!6346 = !DILocation(line: 184, column: 12, scope: !6345)
!6347 = !DILocation(line: 184, column: 19, scope: !6345)
!6348 = !DILocation(line: 184, column: 42, scope: !6345)
!6349 = !DILocation(line: 185, column: 4, scope: !6345)
!6350 = !DILocation(line: 185, column: 10, scope: !6345)
!6351 = !DILocation(line: 185, column: 17, scope: !6345)
!6352 = !DILocation(line: 184, column: 6, scope: !6094)
!6353 = !DILocation(line: 186, column: 3, scope: !6354)
!6354 = distinct !DILexicalBlock(scope: !6345, file: !3, line: 185, column: 59)
!6355 = !DILocation(line: 186, column: 9, scope: !6354)
!6356 = !DILocation(line: 186, column: 16, scope: !6354)
!6357 = !DILocation(line: 187, column: 3, scope: !6354)
!6358 = !DILocation(line: 187, column: 9, scope: !6354)
!6359 = !DILocation(line: 187, column: 26, scope: !6354)
!6360 = !DILocation(line: 188, column: 3, scope: !6354)
!6361 = !DILocation(line: 188, column: 9, scope: !6354)
!6362 = !DILocation(line: 188, column: 16, scope: !6354)
!6363 = !DILocation(line: 197, column: 3, scope: !6354)
!6364 = !DILocation(line: 197, column: 9, scope: !6354)
!6365 = !DILocation(line: 197, column: 16, scope: !6354)
!6366 = !DILocation(line: 198, column: 2, scope: !6354)
!6367 = !DILocation(line: 199, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 199, column: 6)
!6369 = !DILocation(line: 199, column: 12, scope: !6368)
!6370 = !DILocation(line: 199, column: 19, scope: !6368)
!6371 = !DILocation(line: 199, column: 42, scope: !6368)
!6372 = !DILocation(line: 200, column: 4, scope: !6368)
!6373 = !DILocation(line: 200, column: 10, scope: !6368)
!6374 = !DILocation(line: 200, column: 17, scope: !6368)
!6375 = !DILocation(line: 200, column: 58, scope: !6368)
!6376 = !DILocation(line: 201, column: 4, scope: !6368)
!6377 = !DILocation(line: 201, column: 10, scope: !6368)
!6378 = !DILocation(line: 201, column: 17, scope: !6368)
!6379 = !DILocation(line: 199, column: 6, scope: !6094)
!6380 = !DILocation(line: 202, column: 3, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 201, column: 63)
!6382 = !DILocation(line: 202, column: 9, scope: !6381)
!6383 = !DILocation(line: 202, column: 16, scope: !6381)
!6384 = !DILocation(line: 203, column: 3, scope: !6381)
!6385 = !DILocation(line: 203, column: 9, scope: !6381)
!6386 = !DILocation(line: 203, column: 16, scope: !6381)
!6387 = !DILocation(line: 204, column: 2, scope: !6381)
!6388 = !DILocation(line: 205, column: 6, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 205, column: 6)
!6390 = !DILocation(line: 205, column: 12, scope: !6389)
!6391 = !DILocation(line: 205, column: 19, scope: !6389)
!6392 = !DILocation(line: 205, column: 42, scope: !6389)
!6393 = !DILocation(line: 206, column: 4, scope: !6389)
!6394 = !DILocation(line: 206, column: 10, scope: !6389)
!6395 = !DILocation(line: 206, column: 17, scope: !6389)
!6396 = !DILocation(line: 206, column: 61, scope: !6389)
!6397 = !DILocation(line: 207, column: 4, scope: !6389)
!6398 = !DILocation(line: 207, column: 10, scope: !6389)
!6399 = !DILocation(line: 207, column: 17, scope: !6389)
!6400 = !DILocation(line: 207, column: 60, scope: !6389)
!6401 = !DILocation(line: 208, column: 4, scope: !6389)
!6402 = !DILocation(line: 208, column: 10, scope: !6389)
!6403 = !DILocation(line: 208, column: 17, scope: !6389)
!6404 = !DILocation(line: 208, column: 56, scope: !6389)
!6405 = !DILocation(line: 209, column: 4, scope: !6389)
!6406 = !DILocation(line: 209, column: 10, scope: !6389)
!6407 = !DILocation(line: 209, column: 17, scope: !6389)
!6408 = !DILocation(line: 209, column: 55, scope: !6389)
!6409 = !DILocation(line: 210, column: 4, scope: !6389)
!6410 = !DILocation(line: 210, column: 10, scope: !6389)
!6411 = !DILocation(line: 210, column: 17, scope: !6389)
!6412 = !DILocation(line: 210, column: 55, scope: !6389)
!6413 = !DILocation(line: 211, column: 4, scope: !6389)
!6414 = !DILocation(line: 211, column: 10, scope: !6389)
!6415 = !DILocation(line: 211, column: 17, scope: !6389)
!6416 = !DILocation(line: 211, column: 49, scope: !6389)
!6417 = !DILocation(line: 212, column: 4, scope: !6389)
!6418 = !DILocation(line: 212, column: 10, scope: !6389)
!6419 = !DILocation(line: 212, column: 17, scope: !6389)
!6420 = !DILocation(line: 212, column: 49, scope: !6389)
!6421 = !DILocation(line: 213, column: 4, scope: !6389)
!6422 = !DILocation(line: 213, column: 10, scope: !6389)
!6423 = !DILocation(line: 213, column: 17, scope: !6389)
!6424 = !DILocation(line: 205, column: 6, scope: !6094)
!6425 = !DILocation(line: 214, column: 3, scope: !6426)
!6426 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 213, column: 51)
!6427 = !DILocation(line: 214, column: 9, scope: !6426)
!6428 = !DILocation(line: 214, column: 16, scope: !6426)
!6429 = !DILocation(line: 215, column: 2, scope: !6426)
!6430 = !DILocation(line: 216, column: 6, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 216, column: 6)
!6432 = !DILocation(line: 216, column: 12, scope: !6431)
!6433 = !DILocation(line: 216, column: 19, scope: !6431)
!6434 = !DILocation(line: 216, column: 42, scope: !6431)
!6435 = !DILocation(line: 217, column: 6, scope: !6431)
!6436 = !DILocation(line: 217, column: 12, scope: !6431)
!6437 = !DILocation(line: 217, column: 19, scope: !6431)
!6438 = !DILocation(line: 216, column: 6, scope: !6094)
!6439 = !DILocation(line: 218, column: 3, scope: !6431)
!6440 = !DILocation(line: 218, column: 9, scope: !6431)
!6441 = !DILocation(line: 218, column: 16, scope: !6431)
!6442 = !DILocation(line: 219, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 219, column: 6)
!6444 = !DILocation(line: 219, column: 12, scope: !6443)
!6445 = !DILocation(line: 219, column: 19, scope: !6443)
!6446 = !DILocation(line: 219, column: 42, scope: !6443)
!6447 = !DILocation(line: 220, column: 7, scope: !6443)
!6448 = !DILocation(line: 220, column: 13, scope: !6443)
!6449 = !DILocation(line: 220, column: 20, scope: !6443)
!6450 = !DILocation(line: 220, column: 59, scope: !6443)
!6451 = !DILocation(line: 221, column: 7, scope: !6443)
!6452 = !DILocation(line: 221, column: 13, scope: !6443)
!6453 = !DILocation(line: 221, column: 20, scope: !6443)
!6454 = !DILocation(line: 221, column: 64, scope: !6443)
!6455 = !DILocation(line: 222, column: 7, scope: !6443)
!6456 = !DILocation(line: 222, column: 13, scope: !6443)
!6457 = !DILocation(line: 222, column: 20, scope: !6443)
!6458 = !DILocation(line: 219, column: 6, scope: !6094)
!6459 = !DILocation(line: 223, column: 3, scope: !6443)
!6460 = !DILocation(line: 223, column: 9, scope: !6443)
!6461 = !DILocation(line: 223, column: 16, scope: !6443)
!6462 = !DILocation(line: 224, column: 6, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 224, column: 6)
!6464 = !DILocation(line: 224, column: 12, scope: !6463)
!6465 = !DILocation(line: 224, column: 19, scope: !6463)
!6466 = !DILocation(line: 224, column: 42, scope: !6463)
!6467 = !DILocation(line: 225, column: 7, scope: !6463)
!6468 = !DILocation(line: 225, column: 13, scope: !6463)
!6469 = !DILocation(line: 225, column: 20, scope: !6463)
!6470 = !DILocation(line: 225, column: 59, scope: !6463)
!6471 = !DILocation(line: 226, column: 7, scope: !6463)
!6472 = !DILocation(line: 226, column: 13, scope: !6463)
!6473 = !DILocation(line: 226, column: 20, scope: !6463)
!6474 = !DILocation(line: 226, column: 64, scope: !6463)
!6475 = !DILocation(line: 227, column: 7, scope: !6463)
!6476 = !DILocation(line: 227, column: 13, scope: !6463)
!6477 = !DILocation(line: 227, column: 20, scope: !6463)
!6478 = !DILocation(line: 227, column: 63, scope: !6463)
!6479 = !DILocation(line: 228, column: 7, scope: !6463)
!6480 = !DILocation(line: 228, column: 13, scope: !6463)
!6481 = !DILocation(line: 228, column: 20, scope: !6463)
!6482 = !DILocation(line: 228, column: 52, scope: !6463)
!6483 = !DILocation(line: 229, column: 7, scope: !6463)
!6484 = !DILocation(line: 229, column: 13, scope: !6463)
!6485 = !DILocation(line: 229, column: 20, scope: !6463)
!6486 = !DILocation(line: 224, column: 6, scope: !6094)
!6487 = !DILocation(line: 230, column: 3, scope: !6463)
!6488 = !DILocation(line: 230, column: 9, scope: !6463)
!6489 = !DILocation(line: 230, column: 16, scope: !6463)
!6490 = !DILocation(line: 232, column: 6, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 232, column: 6)
!6492 = !DILocation(line: 232, column: 12, scope: !6491)
!6493 = !DILocation(line: 232, column: 19, scope: !6491)
!6494 = !DILocation(line: 232, column: 42, scope: !6491)
!6495 = !DILocation(line: 233, column: 7, scope: !6491)
!6496 = !DILocation(line: 233, column: 13, scope: !6491)
!6497 = !DILocation(line: 233, column: 20, scope: !6491)
!6498 = !DILocation(line: 233, column: 64, scope: !6491)
!6499 = !DILocation(line: 234, column: 7, scope: !6491)
!6500 = !DILocation(line: 234, column: 13, scope: !6491)
!6501 = !DILocation(line: 234, column: 20, scope: !6491)
!6502 = !DILocation(line: 234, column: 64, scope: !6491)
!6503 = !DILocation(line: 235, column: 7, scope: !6491)
!6504 = !DILocation(line: 235, column: 13, scope: !6491)
!6505 = !DILocation(line: 235, column: 20, scope: !6491)
!6506 = !DILocation(line: 235, column: 66, scope: !6491)
!6507 = !DILocation(line: 236, column: 7, scope: !6491)
!6508 = !DILocation(line: 236, column: 13, scope: !6491)
!6509 = !DILocation(line: 236, column: 20, scope: !6491)
!6510 = !DILocation(line: 236, column: 66, scope: !6491)
!6511 = !DILocation(line: 237, column: 7, scope: !6491)
!6512 = !DILocation(line: 237, column: 13, scope: !6491)
!6513 = !DILocation(line: 237, column: 20, scope: !6491)
!6514 = !DILocation(line: 237, column: 63, scope: !6491)
!6515 = !DILocation(line: 238, column: 7, scope: !6491)
!6516 = !DILocation(line: 238, column: 13, scope: !6491)
!6517 = !DILocation(line: 238, column: 20, scope: !6491)
!6518 = !DILocation(line: 238, column: 63, scope: !6491)
!6519 = !DILocation(line: 239, column: 7, scope: !6491)
!6520 = !DILocation(line: 239, column: 13, scope: !6491)
!6521 = !DILocation(line: 239, column: 20, scope: !6491)
!6522 = !DILocation(line: 239, column: 63, scope: !6491)
!6523 = !DILocation(line: 240, column: 7, scope: !6491)
!6524 = !DILocation(line: 240, column: 13, scope: !6491)
!6525 = !DILocation(line: 240, column: 20, scope: !6491)
!6526 = !DILocation(line: 240, column: 57, scope: !6491)
!6527 = !DILocation(line: 241, column: 7, scope: !6491)
!6528 = !DILocation(line: 241, column: 13, scope: !6491)
!6529 = !DILocation(line: 241, column: 20, scope: !6491)
!6530 = !DILocation(line: 232, column: 6, scope: !6094)
!6531 = !DILocation(line: 242, column: 3, scope: !6491)
!6532 = !DILocation(line: 242, column: 9, scope: !6491)
!6533 = !DILocation(line: 242, column: 16, scope: !6491)
!6534 = !DILocation(line: 244, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 244, column: 6)
!6536 = !DILocation(line: 244, column: 12, scope: !6535)
!6537 = !DILocation(line: 244, column: 19, scope: !6535)
!6538 = !DILocation(line: 244, column: 42, scope: !6535)
!6539 = !DILocation(line: 245, column: 4, scope: !6535)
!6540 = !DILocation(line: 245, column: 10, scope: !6535)
!6541 = !DILocation(line: 245, column: 17, scope: !6535)
!6542 = !DILocation(line: 244, column: 6, scope: !6094)
!6543 = !DILocation(line: 246, column: 3, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6535, file: !3, line: 245, column: 41)
!6545 = !DILocation(line: 246, column: 9, scope: !6544)
!6546 = !DILocation(line: 246, column: 16, scope: !6544)
!6547 = !DILocation(line: 247, column: 3, scope: !6544)
!6548 = !DILocation(line: 247, column: 9, scope: !6544)
!6549 = !DILocation(line: 247, column: 16, scope: !6544)
!6550 = !DILocation(line: 248, column: 3, scope: !6544)
!6551 = !DILocation(line: 248, column: 9, scope: !6544)
!6552 = !DILocation(line: 248, column: 16, scope: !6544)
!6553 = !DILocation(line: 249, column: 2, scope: !6544)
!6554 = !DILocation(line: 250, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 250, column: 6)
!6556 = !DILocation(line: 250, column: 12, scope: !6555)
!6557 = !DILocation(line: 250, column: 19, scope: !6555)
!6558 = !DILocation(line: 250, column: 44, scope: !6555)
!6559 = !DILocation(line: 251, column: 6, scope: !6555)
!6560 = !DILocation(line: 251, column: 12, scope: !6555)
!6561 = !DILocation(line: 251, column: 19, scope: !6555)
!6562 = !DILocation(line: 250, column: 6, scope: !6094)
!6563 = !DILocation(line: 252, column: 3, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6555, file: !3, line: 251, column: 30)
!6565 = !DILocation(line: 252, column: 9, scope: !6564)
!6566 = !DILocation(line: 252, column: 16, scope: !6564)
!6567 = !DILocation(line: 253, column: 3, scope: !6564)
!6568 = !DILocation(line: 253, column: 9, scope: !6564)
!6569 = !DILocation(line: 253, column: 16, scope: !6564)
!6570 = !DILocation(line: 254, column: 2, scope: !6564)
!6571 = !DILocation(line: 255, column: 6, scope: !6572)
!6572 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 255, column: 6)
!6573 = !DILocation(line: 255, column: 12, scope: !6572)
!6574 = !DILocation(line: 255, column: 19, scope: !6572)
!6575 = !DILocation(line: 255, column: 44, scope: !6572)
!6576 = !DILocation(line: 256, column: 6, scope: !6572)
!6577 = !DILocation(line: 256, column: 12, scope: !6572)
!6578 = !DILocation(line: 256, column: 19, scope: !6572)
!6579 = !DILocation(line: 255, column: 6, scope: !6094)
!6580 = !DILocation(line: 257, column: 3, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 256, column: 30)
!6582 = !DILocation(line: 257, column: 9, scope: !6581)
!6583 = !DILocation(line: 257, column: 16, scope: !6581)
!6584 = !DILocation(line: 258, column: 3, scope: !6581)
!6585 = !DILocation(line: 258, column: 9, scope: !6581)
!6586 = !DILocation(line: 258, column: 16, scope: !6581)
!6587 = !DILocation(line: 259, column: 2, scope: !6581)
!6588 = !DILocation(line: 260, column: 6, scope: !6589)
!6589 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 260, column: 6)
!6590 = !DILocation(line: 260, column: 12, scope: !6589)
!6591 = !DILocation(line: 260, column: 19, scope: !6589)
!6592 = !DILocation(line: 260, column: 6, scope: !6094)
!6593 = !DILocation(line: 261, column: 3, scope: !6589)
!6594 = !DILocation(line: 261, column: 9, scope: !6589)
!6595 = !DILocation(line: 261, column: 16, scope: !6589)
!6596 = !DILocation(line: 264, column: 6, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 264, column: 6)
!6598 = !DILocation(line: 264, column: 12, scope: !6597)
!6599 = !DILocation(line: 264, column: 19, scope: !6597)
!6600 = !DILocation(line: 264, column: 40, scope: !6597)
!6601 = !DILocation(line: 265, column: 4, scope: !6597)
!6602 = !DILocation(line: 265, column: 10, scope: !6597)
!6603 = !DILocation(line: 265, column: 17, scope: !6597)
!6604 = !DILocation(line: 264, column: 6, scope: !6094)
!6605 = !DILocation(line: 266, column: 3, scope: !6597)
!6606 = !DILocation(line: 266, column: 9, scope: !6597)
!6607 = !DILocation(line: 266, column: 16, scope: !6597)
!6608 = !DILocation(line: 268, column: 6, scope: !6609)
!6609 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 268, column: 6)
!6610 = !DILocation(line: 268, column: 12, scope: !6609)
!6611 = !DILocation(line: 268, column: 19, scope: !6609)
!6612 = !DILocation(line: 268, column: 40, scope: !6609)
!6613 = !DILocation(line: 268, column: 43, scope: !6609)
!6614 = !DILocation(line: 268, column: 49, scope: !6609)
!6615 = !DILocation(line: 268, column: 56, scope: !6609)
!6616 = !DILocation(line: 268, column: 6, scope: !6094)
!6617 = !DILocation(line: 269, column: 3, scope: !6609)
!6618 = !DILocation(line: 269, column: 9, scope: !6609)
!6619 = !DILocation(line: 269, column: 16, scope: !6609)
!6620 = !DILocation(line: 271, column: 6, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 271, column: 6)
!6622 = !DILocation(line: 271, column: 12, scope: !6621)
!6623 = !DILocation(line: 271, column: 19, scope: !6621)
!6624 = !DILocation(line: 271, column: 44, scope: !6621)
!6625 = !DILocation(line: 272, column: 3, scope: !6621)
!6626 = !DILocation(line: 272, column: 9, scope: !6621)
!6627 = !DILocation(line: 272, column: 16, scope: !6621)
!6628 = !DILocation(line: 271, column: 6, scope: !6094)
!6629 = !DILocation(line: 273, column: 3, scope: !6621)
!6630 = !DILocation(line: 273, column: 9, scope: !6621)
!6631 = !DILocation(line: 273, column: 16, scope: !6621)
!6632 = !DILocation(line: 274, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 274, column: 6)
!6634 = !DILocation(line: 274, column: 12, scope: !6633)
!6635 = !DILocation(line: 274, column: 19, scope: !6633)
!6636 = !DILocation(line: 274, column: 44, scope: !6633)
!6637 = !DILocation(line: 275, column: 3, scope: !6633)
!6638 = !DILocation(line: 275, column: 9, scope: !6633)
!6639 = !DILocation(line: 275, column: 16, scope: !6633)
!6640 = !DILocation(line: 274, column: 6, scope: !6094)
!6641 = !DILocation(line: 276, column: 3, scope: !6633)
!6642 = !DILocation(line: 276, column: 9, scope: !6633)
!6643 = !DILocation(line: 276, column: 16, scope: !6633)
!6644 = !DILocation(line: 277, column: 6, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 277, column: 6)
!6646 = !DILocation(line: 277, column: 12, scope: !6645)
!6647 = !DILocation(line: 277, column: 19, scope: !6645)
!6648 = !DILocation(line: 277, column: 44, scope: !6645)
!6649 = !DILocation(line: 278, column: 7, scope: !6645)
!6650 = !DILocation(line: 278, column: 13, scope: !6645)
!6651 = !DILocation(line: 278, column: 20, scope: !6645)
!6652 = !DILocation(line: 278, column: 55, scope: !6645)
!6653 = !DILocation(line: 279, column: 7, scope: !6645)
!6654 = !DILocation(line: 279, column: 13, scope: !6645)
!6655 = !DILocation(line: 279, column: 20, scope: !6645)
!6656 = !DILocation(line: 277, column: 6, scope: !6094)
!6657 = !DILocation(line: 280, column: 3, scope: !6645)
!6658 = !DILocation(line: 280, column: 9, scope: !6645)
!6659 = !DILocation(line: 280, column: 16, scope: !6645)
!6660 = !DILocation(line: 282, column: 6, scope: !6661)
!6661 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 282, column: 6)
!6662 = !DILocation(line: 282, column: 12, scope: !6661)
!6663 = !DILocation(line: 282, column: 19, scope: !6661)
!6664 = !DILocation(line: 282, column: 44, scope: !6661)
!6665 = !DILocation(line: 283, column: 3, scope: !6661)
!6666 = !DILocation(line: 283, column: 9, scope: !6661)
!6667 = !DILocation(line: 283, column: 16, scope: !6661)
!6668 = !DILocation(line: 282, column: 6, scope: !6094)
!6669 = !DILocation(line: 284, column: 3, scope: !6661)
!6670 = !DILocation(line: 284, column: 9, scope: !6661)
!6671 = !DILocation(line: 284, column: 16, scope: !6661)
!6672 = !DILocation(line: 286, column: 6, scope: !6673)
!6673 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 286, column: 6)
!6674 = !DILocation(line: 286, column: 12, scope: !6673)
!6675 = !DILocation(line: 286, column: 19, scope: !6673)
!6676 = !DILocation(line: 286, column: 39, scope: !6673)
!6677 = !DILocation(line: 286, column: 42, scope: !6673)
!6678 = !DILocation(line: 286, column: 48, scope: !6673)
!6679 = !DILocation(line: 286, column: 55, scope: !6673)
!6680 = !DILocation(line: 286, column: 6, scope: !6094)
!6681 = !DILocation(line: 287, column: 3, scope: !6673)
!6682 = !DILocation(line: 287, column: 9, scope: !6673)
!6683 = !DILocation(line: 287, column: 16, scope: !6673)
!6684 = !DILocation(line: 289, column: 7, scope: !6685)
!6685 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 289, column: 6)
!6686 = !DILocation(line: 289, column: 13, scope: !6685)
!6687 = !DILocation(line: 289, column: 20, scope: !6685)
!6688 = !DILocation(line: 289, column: 46, scope: !6685)
!6689 = !DILocation(line: 290, column: 7, scope: !6685)
!6690 = !DILocation(line: 290, column: 13, scope: !6685)
!6691 = !DILocation(line: 290, column: 20, scope: !6685)
!6692 = !DILocation(line: 290, column: 45, scope: !6685)
!6693 = !DILocation(line: 291, column: 7, scope: !6685)
!6694 = !DILocation(line: 291, column: 13, scope: !6685)
!6695 = !DILocation(line: 291, column: 20, scope: !6685)
!6696 = !DILocation(line: 289, column: 6, scope: !6094)
!6697 = !DILocation(line: 292, column: 3, scope: !6685)
!6698 = !DILocation(line: 292, column: 9, scope: !6685)
!6699 = !DILocation(line: 292, column: 16, scope: !6685)
!6700 = !DILocation(line: 294, column: 6, scope: !6701)
!6701 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 294, column: 6)
!6702 = !DILocation(line: 294, column: 12, scope: !6701)
!6703 = !DILocation(line: 294, column: 19, scope: !6701)
!6704 = !DILocation(line: 294, column: 6, scope: !6094)
!6705 = !DILocation(line: 295, column: 18, scope: !6701)
!6706 = !DILocation(line: 295, column: 3, scope: !6701)
!6707 = !DILocation(line: 297, column: 1, scope: !6094)
!6708 = !DILocalVariable(name: "dev", arg: 1, scope: !5848, file: !3, line: 300, type: !178)
!6709 = !DILocation(line: 300, column: 55, scope: !5848)
!6710 = !DILocalVariable(name: "obj", scope: !5848, file: !3, line: 305, type: !5596)
!6711 = !DILocation(line: 305, column: 21, scope: !5848)
!6712 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !6713, file: !3, line: 307, type: !4123)
!6713 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 307, column: 26)
!6714 = !DILocation(line: 307, column: 26, scope: !6713)
!6715 = !DILocalVariable(name: "__mptr", scope: !6716, file: !3, line: 307, type: !177)
!6716 = distinct !DILexicalBlock(scope: !6713, file: !3, line: 307, column: 26)
!6717 = !DILocation(line: 307, column: 26, scope: !6716)
!6718 = !DILocation(line: 307, column: 26, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6716, file: !3, line: 307, column: 26)
!6720 = !DILocation(line: 307, column: 26, scope: !5848)
!6721 = !DILocation(line: 307, column: 8, scope: !5848)
!6722 = !DILocation(line: 307, column: 6, scope: !5848)
!6723 = !DILocation(line: 309, column: 2, scope: !5848)
!6724 = !DILocation(line: 310, column: 1, scope: !5848)
!6725 = distinct !DISubprogram(name: "xhci_pci_reinit", scope: !3, file: !3, line: 79, type: !6726, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{!236, !4564, !178}
!6728 = !DILocalVariable(name: "xhci", arg: 1, scope: !6725, file: !3, line: 79, type: !4564)
!6729 = !DILocation(line: 79, column: 45, scope: !6725)
!6730 = !DILocalVariable(name: "pdev", arg: 2, scope: !6725, file: !3, line: 79, type: !178)
!6731 = !DILocation(line: 79, column: 67, scope: !6725)
!6732 = !DILocation(line: 88, column: 19, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 88, column: 6)
!6734 = !DILocation(line: 88, column: 7, scope: !6733)
!6735 = !DILocation(line: 88, column: 6, scope: !6725)
!6736 = !DILocation(line: 89, column: 3, scope: !6733)
!6737 = !DILocation(line: 92, column: 2, scope: !6725)
!6738 = distinct !DISubprogram(name: "trace_xhci_dbg_quirks", scope: !6739, file: !6739, line: 50, type: !6740, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6739 = !DIFile(filename: "drivers/usb/host/xhci-trace.h", directory: "/home/lizy2001/genbc/linux")
!6740 = !DISubroutineType(types: !6741)
!6741 = !{null, !6742}
!6742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6743, size: 64)
!6743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !6744, line: 90, size: 128, elements: !6745)
!6744 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/lizy2001/genbc/linux")
!6745 = !{!6746, !6747}
!6746 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !6743, file: !6744, line: 91, baseType: !215, size: 64)
!6747 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !6743, file: !6744, line: 92, baseType: !6748, size: 64, offset: 64)
!6748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6749, size: 64)
!6749 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !6750, line: 99, baseType: !6751)
!6750 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!6751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !6750, line: 40, baseType: !6752)
!6752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 297, baseType: !6753)
!6753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6754, size: 192, elements: !1459)
!6754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 297, size: 192, elements: !6755)
!6755 = !{!6756, !6757, !6758, !6759}
!6756 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !6754, file: !3, line: 297, baseType: !7, size: 32)
!6757 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !6754, file: !3, line: 297, baseType: !7, size: 32, offset: 32)
!6758 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !6754, file: !3, line: 297, baseType: !177, size: 64, offset: 64)
!6759 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !6754, file: !3, line: 297, baseType: !177, size: 64, offset: 128)
!6760 = !DILocalVariable(name: "vaf", arg: 1, scope: !6738, file: !6739, line: 50, type: !6742)
!6761 = !DILocation(line: 50, column: 1, scope: !6738)
!6762 = distinct !DISubprogram(name: "acpi_device_handle", scope: !6763, file: !6763, line: 38, type: !6764, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6763 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!6764 = !DISubroutineType(types: !6765)
!6765 = !{!5537, !5531}
!6766 = !DILocalVariable(name: "adev", arg: 1, scope: !6762, file: !6763, line: 38, type: !5531)
!6767 = !DILocation(line: 38, column: 66, scope: !6762)
!6768 = !DILocation(line: 40, column: 9, scope: !6762)
!6769 = !DILocation(line: 40, column: 16, scope: !6762)
!6770 = !DILocation(line: 40, column: 22, scope: !6762)
!6771 = !DILocation(line: 40, column: 2, scope: !6762)
!6772 = distinct !DISubprogram(name: "acpi_os_free", scope: !6773, file: !6773, line: 60, type: !521, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6773 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!6774 = !DILocalVariable(name: "memory", arg: 1, scope: !6772, file: !6773, line: 60, type: !177)
!6775 = !DILocation(line: 60, column: 39, scope: !6772)
!6776 = !DILocation(line: 62, column: 8, scope: !6772)
!6777 = !DILocation(line: 62, column: 2, scope: !6772)
!6778 = !DILocation(line: 63, column: 1, scope: !6772)
!6779 = distinct !DISubprogram(name: "xhci_pme_quirk", scope: !3, file: !3, line: 494, type: !4981, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6780 = !DILocalVariable(name: "hcd", arg: 1, scope: !6779, file: !3, line: 494, type: !4568)
!6781 = !DILocation(line: 494, column: 44, scope: !6779)
!6782 = !DILocalVariable(name: "xhci", scope: !6779, file: !3, line: 496, type: !4564)
!6783 = !DILocation(line: 496, column: 19, scope: !6779)
!6784 = !DILocation(line: 496, column: 38, scope: !6779)
!6785 = !DILocation(line: 496, column: 26, scope: !6779)
!6786 = !DILocalVariable(name: "reg", scope: !6779, file: !3, line: 497, type: !177)
!6787 = !DILocation(line: 497, column: 16, scope: !6779)
!6788 = !DILocalVariable(name: "val", scope: !6779, file: !3, line: 498, type: !250)
!6789 = !DILocation(line: 498, column: 6, scope: !6779)
!6790 = !DILocation(line: 500, column: 25, scope: !6779)
!6791 = !DILocation(line: 500, column: 31, scope: !6779)
!6792 = !DILocation(line: 500, column: 8, scope: !6779)
!6793 = !DILocation(line: 500, column: 40, scope: !6779)
!6794 = !DILocation(line: 500, column: 6, scope: !6779)
!6795 = !DILocation(line: 501, column: 14, scope: !6779)
!6796 = !DILocation(line: 501, column: 8, scope: !6779)
!6797 = !DILocation(line: 501, column: 6, scope: !6779)
!6798 = !DILocation(line: 502, column: 9, scope: !6779)
!6799 = !DILocation(line: 502, column: 13, scope: !6779)
!6800 = !DILocation(line: 502, column: 24, scope: !6779)
!6801 = !DILocation(line: 502, column: 2, scope: !6779)
!6802 = !DILocation(line: 503, column: 8, scope: !6779)
!6803 = !DILocation(line: 503, column: 2, scope: !6779)
!6804 = !DILocation(line: 504, column: 1, scope: !6779)
!6805 = distinct !DISubprogram(name: "xhci_ssic_port_unused_quirk", scope: !3, file: !3, line: 459, type: !6806, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{null, !4568, !542}
!6808 = !DILocalVariable(name: "hcd", arg: 1, scope: !6805, file: !3, line: 459, type: !4568)
!6809 = !DILocation(line: 459, column: 57, scope: !6805)
!6810 = !DILocalVariable(name: "suspend", arg: 2, scope: !6805, file: !3, line: 459, type: !542)
!6811 = !DILocation(line: 459, column: 67, scope: !6805)
!6812 = !DILocalVariable(name: "xhci", scope: !6805, file: !3, line: 461, type: !4564)
!6813 = !DILocation(line: 461, column: 19, scope: !6805)
!6814 = !DILocation(line: 461, column: 38, scope: !6805)
!6815 = !DILocation(line: 461, column: 26, scope: !6805)
!6816 = !DILocalVariable(name: "val", scope: !6805, file: !3, line: 462, type: !250)
!6817 = !DILocation(line: 462, column: 6, scope: !6805)
!6818 = !DILocalVariable(name: "reg", scope: !6805, file: !3, line: 463, type: !177)
!6819 = !DILocation(line: 463, column: 16, scope: !6805)
!6820 = !DILocalVariable(name: "i", scope: !6805, file: !3, line: 464, type: !236)
!6821 = !DILocation(line: 464, column: 6, scope: !6805)
!6822 = !DILocation(line: 466, column: 9, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6805, file: !3, line: 466, column: 2)
!6824 = !DILocation(line: 466, column: 7, scope: !6823)
!6825 = !DILocation(line: 466, column: 14, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 466, column: 2)
!6827 = !DILocation(line: 466, column: 16, scope: !6826)
!6828 = !DILocation(line: 466, column: 2, scope: !6823)
!6829 = !DILocation(line: 467, column: 26, scope: !6830)
!6830 = distinct !DILexicalBlock(scope: !6826, file: !3, line: 466, column: 38)
!6831 = !DILocation(line: 467, column: 32, scope: !6830)
!6832 = !DILocation(line: 467, column: 9, scope: !6830)
!6833 = !DILocation(line: 467, column: 41, scope: !6830)
!6834 = !DILocation(line: 469, column: 5, scope: !6830)
!6835 = !DILocation(line: 469, column: 7, scope: !6830)
!6836 = !DILocation(line: 468, column: 20, scope: !6830)
!6837 = !DILocation(line: 467, column: 7, scope: !6830)
!6838 = !DILocation(line: 472, column: 15, scope: !6830)
!6839 = !DILocation(line: 472, column: 9, scope: !6830)
!6840 = !DILocation(line: 472, column: 20, scope: !6830)
!6841 = !DILocation(line: 472, column: 7, scope: !6830)
!6842 = !DILocation(line: 473, column: 10, scope: !6830)
!6843 = !DILocation(line: 473, column: 15, scope: !6830)
!6844 = !DILocation(line: 473, column: 3, scope: !6830)
!6845 = !DILocation(line: 476, column: 15, scope: !6830)
!6846 = !DILocation(line: 476, column: 9, scope: !6830)
!6847 = !DILocation(line: 476, column: 7, scope: !6830)
!6848 = !DILocation(line: 477, column: 7, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6830, file: !3, line: 477, column: 7)
!6850 = !DILocation(line: 477, column: 7, scope: !6830)
!6851 = !DILocation(line: 478, column: 8, scope: !6849)
!6852 = !DILocation(line: 478, column: 4, scope: !6849)
!6853 = !DILocation(line: 480, column: 8, scope: !6849)
!6854 = !DILocation(line: 481, column: 10, scope: !6830)
!6855 = !DILocation(line: 481, column: 15, scope: !6830)
!6856 = !DILocation(line: 481, column: 3, scope: !6830)
!6857 = !DILocation(line: 484, column: 15, scope: !6830)
!6858 = !DILocation(line: 484, column: 9, scope: !6830)
!6859 = !DILocation(line: 484, column: 20, scope: !6830)
!6860 = !DILocation(line: 484, column: 7, scope: !6830)
!6861 = !DILocation(line: 485, column: 10, scope: !6830)
!6862 = !DILocation(line: 485, column: 15, scope: !6830)
!6863 = !DILocation(line: 485, column: 3, scope: !6830)
!6864 = !DILocation(line: 486, column: 9, scope: !6830)
!6865 = !DILocation(line: 486, column: 3, scope: !6830)
!6866 = !DILocation(line: 487, column: 2, scope: !6830)
!6867 = !DILocation(line: 466, column: 34, scope: !6826)
!6868 = !DILocation(line: 466, column: 2, scope: !6826)
!6869 = distinct !{!6869, !6828, !6870}
!6870 = !DILocation(line: 487, column: 2, scope: !6823)
!6871 = !DILocation(line: 488, column: 1, scope: !6805)
!6872 = distinct !DISubprogram(name: "xhci_sparse_control_quirk", scope: !3, file: !3, line: 506, type: !4981, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6873 = !DILocalVariable(name: "hcd", arg: 1, scope: !6872, file: !3, line: 506, type: !4568)
!6874 = !DILocation(line: 506, column: 55, scope: !6872)
!6875 = !DILocalVariable(name: "reg", scope: !6872, file: !3, line: 508, type: !250)
!6876 = !DILocation(line: 508, column: 6, scope: !6872)
!6877 = !DILocation(line: 510, column: 14, scope: !6872)
!6878 = !DILocation(line: 510, column: 19, scope: !6872)
!6879 = !DILocation(line: 510, column: 24, scope: !6872)
!6880 = !DILocation(line: 510, column: 8, scope: !6872)
!6881 = !DILocation(line: 510, column: 6, scope: !6872)
!6882 = !DILocation(line: 511, column: 6, scope: !6872)
!6883 = !DILocation(line: 512, column: 9, scope: !6872)
!6884 = !DILocation(line: 512, column: 14, scope: !6872)
!6885 = !DILocation(line: 512, column: 19, scope: !6872)
!6886 = !DILocation(line: 512, column: 24, scope: !6872)
!6887 = !DILocation(line: 512, column: 2, scope: !6872)
!6888 = !DILocation(line: 513, column: 1, scope: !6872)
!6889 = distinct !DISubprogram(name: "readl", scope: !6890, file: !6890, line: 59, type: !6891, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6890 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!6891 = !DISubroutineType(types: !6892)
!6892 = !{!7, !6893}
!6893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6894, size: 64)
!6894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6895)
!6895 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6896 = !DILocalVariable(name: "addr", arg: 1, scope: !6889, file: !6890, line: 59, type: !6893)
!6897 = !DILocation(line: 59, column: 1, scope: !6889)
!6898 = !DILocalVariable(name: "ret", scope: !6889, file: !6890, line: 59, type: !7)
!6899 = !{i32 -2143581672}
!6900 = distinct !DISubprogram(name: "writel", scope: !6890, file: !6890, line: 67, type: !6901, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6901 = !DISubroutineType(types: !6902)
!6902 = !{null, !7, !6903}
!6903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6895, size: 64)
!6904 = !DILocalVariable(name: "val", arg: 1, scope: !6900, file: !6890, line: 67, type: !7)
!6905 = !DILocation(line: 67, column: 1, scope: !6900)
!6906 = !DILocalVariable(name: "addr", arg: 2, scope: !6900, file: !6890, line: 67, type: !6903)
!6907 = !{i32 -2143579279}
!6908 = distinct !DISubprogram(name: "xhci_pci_probe", scope: !3, file: !3, line: 349, type: !4417, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!6909 = !DILocalVariable(name: "dev", arg: 1, scope: !6908, file: !3, line: 349, type: !178)
!6910 = !DILocation(line: 349, column: 43, scope: !6908)
!6911 = !DILocalVariable(name: "id", arg: 2, scope: !6908, file: !3, line: 349, type: !4404)
!6912 = !DILocation(line: 349, column: 76, scope: !6908)
!6913 = !DILocalVariable(name: "retval", scope: !6908, file: !3, line: 351, type: !236)
!6914 = !DILocation(line: 351, column: 6, scope: !6908)
!6915 = !DILocalVariable(name: "xhci", scope: !6908, file: !3, line: 352, type: !4564)
!6916 = !DILocation(line: 352, column: 19, scope: !6908)
!6917 = !DILocalVariable(name: "hcd", scope: !6908, file: !3, line: 353, type: !4568)
!6918 = !DILocation(line: 353, column: 18, scope: !6908)
!6919 = !DILocalVariable(name: "driver_data", scope: !6908, file: !3, line: 354, type: !5525)
!6920 = !DILocation(line: 354, column: 27, scope: !6908)
!6921 = !DILocalVariable(name: "reset", scope: !6908, file: !3, line: 355, type: !5236)
!6922 = !DILocation(line: 355, column: 24, scope: !6908)
!6923 = !DILocation(line: 357, column: 43, scope: !6908)
!6924 = !DILocation(line: 357, column: 47, scope: !6908)
!6925 = !DILocation(line: 357, column: 16, scope: !6908)
!6926 = !DILocation(line: 357, column: 14, scope: !6908)
!6927 = !DILocation(line: 358, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 358, column: 6)
!6929 = !DILocation(line: 358, column: 18, scope: !6928)
!6930 = !DILocation(line: 358, column: 21, scope: !6928)
!6931 = !DILocation(line: 358, column: 34, scope: !6928)
!6932 = !DILocation(line: 358, column: 41, scope: !6928)
!6933 = !DILocation(line: 358, column: 6, scope: !6908)
!6934 = !DILocation(line: 359, column: 42, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 358, column: 66)
!6936 = !DILocation(line: 359, column: 47, scope: !6935)
!6937 = !DILocation(line: 359, column: 12, scope: !6935)
!6938 = !DILocation(line: 359, column: 10, scope: !6935)
!6939 = !DILocation(line: 360, column: 7, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6935, file: !3, line: 360, column: 7)
!6941 = !DILocation(line: 360, column: 7, scope: !6935)
!6942 = !DILocation(line: 361, column: 11, scope: !6940)
!6943 = !DILocation(line: 361, column: 4, scope: !6940)
!6944 = !DILocation(line: 362, column: 2, scope: !6935)
!6945 = !DILocation(line: 364, column: 53, scope: !6908)
!6946 = !DILocation(line: 364, column: 58, scope: !6908)
!6947 = !DILocation(line: 364, column: 10, scope: !6908)
!6948 = !DILocation(line: 364, column: 8, scope: !6908)
!6949 = !DILocation(line: 365, column: 13, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 365, column: 6)
!6951 = !DILocation(line: 365, column: 6, scope: !6950)
!6952 = !DILocation(line: 365, column: 6, scope: !6908)
!6953 = !DILocation(line: 366, column: 18, scope: !6950)
!6954 = !DILocation(line: 366, column: 10, scope: !6950)
!6955 = !DILocation(line: 366, column: 3, scope: !6950)
!6956 = !DILocation(line: 367, column: 22, scope: !6908)
!6957 = !DILocation(line: 367, column: 2, scope: !6908)
!6958 = !DILocation(line: 370, column: 27, scope: !6908)
!6959 = !DILocation(line: 370, column: 32, scope: !6908)
!6960 = !DILocation(line: 370, column: 2, scope: !6908)
!6961 = !DILocation(line: 378, column: 29, scope: !6908)
!6962 = !DILocation(line: 378, column: 34, scope: !6908)
!6963 = !DILocation(line: 378, column: 11, scope: !6908)
!6964 = !DILocation(line: 378, column: 9, scope: !6908)
!6965 = !DILocation(line: 380, column: 6, scope: !6966)
!6966 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 380, column: 6)
!6967 = !DILocation(line: 380, column: 6, scope: !6908)
!6968 = !DILocation(line: 381, column: 3, scope: !6966)
!6969 = !DILocation(line: 384, column: 25, scope: !6908)
!6970 = !DILocation(line: 384, column: 30, scope: !6908)
!6971 = !DILocation(line: 384, column: 8, scope: !6908)
!6972 = !DILocation(line: 384, column: 6, scope: !6908)
!6973 = !DILocation(line: 385, column: 21, scope: !6908)
!6974 = !DILocation(line: 385, column: 9, scope: !6908)
!6975 = !DILocation(line: 385, column: 7, scope: !6908)
!6976 = !DILocation(line: 386, column: 16, scope: !6908)
!6977 = !DILocation(line: 386, column: 2, scope: !6908)
!6978 = !DILocation(line: 386, column: 8, scope: !6908)
!6979 = !DILocation(line: 386, column: 14, scope: !6908)
!6980 = !DILocation(line: 387, column: 65, scope: !6908)
!6981 = !DILocation(line: 387, column: 70, scope: !6908)
!6982 = !DILocation(line: 388, column: 17, scope: !6908)
!6983 = !DILocation(line: 388, column: 8, scope: !6908)
!6984 = !DILocation(line: 388, column: 23, scope: !6908)
!6985 = !DILocation(line: 387, column: 21, scope: !6908)
!6986 = !DILocation(line: 387, column: 2, scope: !6908)
!6987 = !DILocation(line: 387, column: 8, scope: !6908)
!6988 = !DILocation(line: 387, column: 19, scope: !6908)
!6989 = !DILocation(line: 389, column: 7, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 389, column: 6)
!6991 = !DILocation(line: 389, column: 13, scope: !6990)
!6992 = !DILocation(line: 389, column: 6, scope: !6908)
!6993 = !DILocation(line: 390, column: 10, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6990, file: !3, line: 389, column: 25)
!6995 = !DILocation(line: 391, column: 3, scope: !6994)
!6996 = !DILocation(line: 394, column: 29, scope: !6908)
!6997 = !DILocation(line: 394, column: 11, scope: !6908)
!6998 = !DILocation(line: 394, column: 9, scope: !6908)
!6999 = !DILocation(line: 395, column: 6, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 395, column: 6)
!7001 = !DILocation(line: 395, column: 6, scope: !6908)
!7002 = !DILocation(line: 396, column: 3, scope: !7000)
!7003 = !DILocation(line: 398, column: 23, scope: !6908)
!7004 = !DILocation(line: 398, column: 29, scope: !6908)
!7005 = !DILocation(line: 398, column: 41, scope: !6908)
!7006 = !DILocation(line: 398, column: 46, scope: !6908)
!7007 = !DILocation(line: 398, column: 11, scope: !6908)
!7008 = !DILocation(line: 398, column: 9, scope: !6908)
!7009 = !DILocation(line: 400, column: 6, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 400, column: 6)
!7011 = !DILocation(line: 400, column: 6, scope: !6908)
!7012 = !DILocation(line: 401, column: 3, scope: !7010)
!7013 = !DILocation(line: 404, column: 8, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 404, column: 6)
!7015 = !DILocation(line: 404, column: 14, scope: !7014)
!7016 = !DILocation(line: 404, column: 21, scope: !7014)
!7017 = !DILocation(line: 404, column: 44, scope: !7014)
!7018 = !DILocation(line: 405, column: 4, scope: !7014)
!7019 = !DILocation(line: 405, column: 34, scope: !7014)
!7020 = !DILocation(line: 404, column: 6, scope: !6908)
!7021 = !DILocation(line: 406, column: 3, scope: !7014)
!7022 = !DILocation(line: 406, column: 9, scope: !7014)
!7023 = !DILocation(line: 406, column: 21, scope: !7014)
!7024 = !DILocation(line: 406, column: 36, scope: !7014)
!7025 = !DILocation(line: 409, column: 25, scope: !6908)
!7026 = !DILocation(line: 409, column: 30, scope: !6908)
!7027 = !DILocation(line: 409, column: 2, scope: !6908)
!7028 = !DILocation(line: 411, column: 6, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !6908, file: !3, line: 411, column: 6)
!7030 = !DILocation(line: 411, column: 12, scope: !7029)
!7031 = !DILocation(line: 411, column: 19, scope: !7029)
!7032 = !DILocation(line: 411, column: 6, scope: !6908)
!7033 = !DILocation(line: 412, column: 21, scope: !7029)
!7034 = !DILocation(line: 412, column: 26, scope: !7029)
!7035 = !DILocation(line: 412, column: 3, scope: !7029)
!7036 = !DILocation(line: 414, column: 2, scope: !6908)
!7037 = !DILabel(scope: !6908, name: "put_usb3_hcd", file: !3, line: 416)
!7038 = !DILocation(line: 416, column: 1, scope: !6908)
!7039 = !DILocation(line: 417, column: 14, scope: !6908)
!7040 = !DILocation(line: 417, column: 20, scope: !6908)
!7041 = !DILocation(line: 417, column: 2, scope: !6908)
!7042 = !DILabel(scope: !6908, name: "dealloc_usb2_hcd", file: !3, line: 418)
!7043 = !DILocation(line: 418, column: 1, scope: !6908)
!7044 = !DILocation(line: 419, column: 21, scope: !6908)
!7045 = !DILocation(line: 419, column: 2, scope: !6908)
!7046 = !DILabel(scope: !6908, name: "put_runtime_pm", file: !3, line: 420)
!7047 = !DILocation(line: 420, column: 1, scope: !6908)
!7048 = !DILocation(line: 421, column: 25, scope: !6908)
!7049 = !DILocation(line: 421, column: 30, scope: !6908)
!7050 = !DILocation(line: 421, column: 2, scope: !6908)
!7051 = !DILocation(line: 422, column: 9, scope: !6908)
!7052 = !DILocation(line: 422, column: 2, scope: !6908)
!7053 = !DILocation(line: 423, column: 1, scope: !6908)
!7054 = distinct !DISubprogram(name: "xhci_pci_remove", scope: !3, file: !3, line: 425, type: !4421, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7055 = !DILocalVariable(name: "dev", arg: 1, scope: !7054, file: !3, line: 425, type: !178)
!7056 = !DILocation(line: 425, column: 45, scope: !7054)
!7057 = !DILocalVariable(name: "xhci", scope: !7054, file: !3, line: 427, type: !4564)
!7058 = !DILocation(line: 427, column: 19, scope: !7054)
!7059 = !DILocation(line: 429, column: 37, scope: !7054)
!7060 = !DILocation(line: 429, column: 21, scope: !7054)
!7061 = !DILocation(line: 429, column: 9, scope: !7054)
!7062 = !DILocation(line: 429, column: 7, scope: !7054)
!7063 = !DILocation(line: 430, column: 6, scope: !7064)
!7064 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 430, column: 6)
!7065 = !DILocation(line: 430, column: 12, scope: !7064)
!7066 = !DILocation(line: 430, column: 19, scope: !7064)
!7067 = !DILocation(line: 430, column: 6, scope: !7054)
!7068 = !DILocation(line: 431, column: 25, scope: !7064)
!7069 = !DILocation(line: 431, column: 3, scope: !7064)
!7070 = !DILocation(line: 433, column: 2, scope: !7054)
!7071 = !DILocation(line: 433, column: 8, scope: !7054)
!7072 = !DILocation(line: 433, column: 18, scope: !7054)
!7073 = !DILocation(line: 435, column: 6, scope: !7074)
!7074 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 435, column: 6)
!7075 = !DILocation(line: 435, column: 12, scope: !7074)
!7076 = !DILocation(line: 435, column: 19, scope: !7074)
!7077 = !DILocation(line: 435, column: 6, scope: !7054)
!7078 = !DILocation(line: 436, column: 22, scope: !7074)
!7079 = !DILocation(line: 436, column: 27, scope: !7074)
!7080 = !DILocation(line: 436, column: 3, scope: !7074)
!7081 = !DILocation(line: 438, column: 6, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 438, column: 6)
!7083 = !DILocation(line: 438, column: 12, scope: !7082)
!7084 = !DILocation(line: 438, column: 6, scope: !7054)
!7085 = !DILocation(line: 439, column: 18, scope: !7086)
!7086 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 438, column: 24)
!7087 = !DILocation(line: 439, column: 24, scope: !7086)
!7088 = !DILocation(line: 439, column: 3, scope: !7086)
!7089 = !DILocation(line: 440, column: 15, scope: !7086)
!7090 = !DILocation(line: 440, column: 21, scope: !7086)
!7091 = !DILocation(line: 440, column: 3, scope: !7086)
!7092 = !DILocation(line: 441, column: 3, scope: !7086)
!7093 = !DILocation(line: 441, column: 9, scope: !7086)
!7094 = !DILocation(line: 441, column: 20, scope: !7086)
!7095 = !DILocation(line: 442, column: 2, scope: !7086)
!7096 = !DILocation(line: 445, column: 6, scope: !7097)
!7097 = distinct !DILexicalBlock(scope: !7054, file: !3, line: 445, column: 6)
!7098 = !DILocation(line: 445, column: 12, scope: !7097)
!7099 = !DILocation(line: 445, column: 19, scope: !7097)
!7100 = !DILocation(line: 445, column: 6, scope: !7054)
!7101 = !DILocation(line: 446, column: 23, scope: !7097)
!7102 = !DILocation(line: 446, column: 3, scope: !7097)
!7103 = !DILocation(line: 448, column: 21, scope: !7054)
!7104 = !DILocation(line: 448, column: 2, scope: !7054)
!7105 = !DILocation(line: 449, column: 1, scope: !7054)
!7106 = distinct !DISubprogram(name: "devm_reset_control_get_optional_exclusive", scope: !5238, file: !5238, line: 391, type: !7107, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7107 = !DISubroutineType(types: !7108)
!7108 = !{!5236, !278, !215}
!7109 = !DILocalVariable(name: "dev", arg: 1, scope: !7106, file: !5238, line: 392, type: !278)
!7110 = !DILocation(line: 392, column: 21, scope: !7106)
!7111 = !DILocalVariable(name: "id", arg: 2, scope: !7106, file: !5238, line: 392, type: !215)
!7112 = !DILocation(line: 392, column: 38, scope: !7106)
!7113 = !DILocation(line: 394, column: 34, scope: !7106)
!7114 = !DILocation(line: 394, column: 39, scope: !7106)
!7115 = !DILocation(line: 394, column: 9, scope: !7106)
!7116 = !DILocation(line: 394, column: 2, scope: !7106)
!7117 = distinct !DISubprogram(name: "IS_ERR", scope: !7118, file: !7118, line: 34, type: !7119, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7118 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!7119 = !DISubroutineType(types: !7120)
!7120 = !{!542, !2815}
!7121 = !DILocalVariable(name: "ptr", arg: 1, scope: !7117, file: !7118, line: 34, type: !2815)
!7122 = !DILocation(line: 34, column: 60, scope: !7117)
!7123 = !DILocation(line: 36, column: 9, scope: !7117)
!7124 = !DILocation(line: 36, column: 2, scope: !7117)
!7125 = distinct !DISubprogram(name: "PTR_ERR", scope: !7118, file: !7118, line: 29, type: !7126, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7126 = !DISubroutineType(types: !7127)
!7127 = !{!371, !2815}
!7128 = !DILocalVariable(name: "ptr", arg: 1, scope: !7125, file: !7118, line: 29, type: !2815)
!7129 = !DILocation(line: 29, column: 61, scope: !7125)
!7130 = !DILocation(line: 31, column: 16, scope: !7125)
!7131 = !DILocation(line: 31, column: 9, scope: !7125)
!7132 = !DILocation(line: 31, column: 2, scope: !7125)
!7133 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !7134, file: !7134, line: 92, type: !3840, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7134 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!7135 = !DILocalVariable(name: "v", arg: 1, scope: !7136, file: !7137, line: 93, type: !7140)
!7136 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !7137, file: !7137, line: 93, type: !7138, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7137 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!7138 = !DISubroutineType(types: !7139)
!7139 = !{null, !7140}
!7140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!7141 = !DILocation(line: 93, column: 55, scope: !7136, inlinedAt: !7142)
!7142 = distinct !DILocation(line: 241, column: 2, scope: !7143, inlinedAt: !7145)
!7143 = distinct !DISubprogram(name: "atomic_inc", scope: !7144, file: !7144, line: 238, type: !7138, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7144 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7145 = distinct !DILocation(line: 94, column: 2, scope: !7133)
!7146 = !DILocalVariable(name: "v", arg: 1, scope: !7147, file: !7148, line: 99, type: !6893)
!7147 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7148, file: !7148, line: 99, type: !7149, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7148 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!7149 = !DISubroutineType(types: !7150)
!7150 = !{null, !6893, !382}
!7151 = !DILocation(line: 99, column: 79, scope: !7147, inlinedAt: !7152)
!7152 = distinct !DILocation(line: 240, column: 2, scope: !7143, inlinedAt: !7145)
!7153 = !DILocalVariable(name: "size", arg: 2, scope: !7147, file: !7148, line: 99, type: !382)
!7154 = !DILocation(line: 99, column: 89, scope: !7147, inlinedAt: !7152)
!7155 = !DILocalVariable(name: "v", arg: 1, scope: !7143, file: !7144, line: 238, type: !7140)
!7156 = !DILocation(line: 238, column: 22, scope: !7143, inlinedAt: !7145)
!7157 = !DILocalVariable(name: "dev", arg: 1, scope: !7133, file: !7134, line: 92, type: !278)
!7158 = !DILocation(line: 92, column: 59, scope: !7133)
!7159 = !DILocation(line: 94, column: 14, scope: !7133)
!7160 = !DILocation(line: 94, column: 19, scope: !7133)
!7161 = !DILocation(line: 94, column: 25, scope: !7133)
!7162 = !DILocation(line: 240, column: 31, scope: !7143, inlinedAt: !7145)
!7163 = !DILocation(line: 101, column: 20, scope: !7147, inlinedAt: !7152)
!7164 = !DILocation(line: 101, column: 23, scope: !7147, inlinedAt: !7152)
!7165 = !DILocation(line: 101, column: 2, scope: !7147, inlinedAt: !7152)
!7166 = !DILocation(line: 102, column: 2, scope: !7147, inlinedAt: !7152)
!7167 = !DILocation(line: 241, column: 18, scope: !7143, inlinedAt: !7145)
!7168 = !DILocation(line: 96, column: 16, scope: !7136, inlinedAt: !7142)
!7169 = !DILocation(line: 96, column: 19, scope: !7136, inlinedAt: !7142)
!7170 = !DILocation(line: 95, column: 2, scope: !7136, inlinedAt: !7142)
!7171 = !{i32 -2147061524}
!7172 = !DILocation(line: 95, column: 1, scope: !7133)
!7173 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !79, file: !79, line: 655, type: !7174, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7174 = !DISubroutineType(types: !7175)
!7175 = !{!177, !4147}
!7176 = !DILocalVariable(name: "dev", arg: 1, scope: !7173, file: !79, line: 655, type: !4147)
!7177 = !DILocation(line: 655, column: 58, scope: !7173)
!7178 = !DILocation(line: 657, column: 9, scope: !7173)
!7179 = !DILocation(line: 657, column: 14, scope: !7173)
!7180 = !DILocation(line: 657, column: 2, scope: !7173)
!7181 = distinct !DISubprogram(name: "pci_name", scope: !180, file: !180, line: 1875, type: !7182, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7182 = !DISubroutineType(types: !7183)
!7183 = !{!215, !7184}
!7184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7185, size: 64)
!7185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!7186 = !DILocalVariable(name: "pdev", arg: 1, scope: !7181, file: !180, line: 1875, type: !7184)
!7187 = !DILocation(line: 1875, column: 58, scope: !7181)
!7188 = !DILocation(line: 1877, column: 19, scope: !7181)
!7189 = !DILocation(line: 1877, column: 25, scope: !7181)
!7190 = !DILocation(line: 1877, column: 9, scope: !7181)
!7191 = !DILocation(line: 1877, column: 2, scope: !7181)
!7192 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !7134, file: !7134, line: 103, type: !3840, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7193 = !DILocalVariable(name: "v", arg: 1, scope: !7194, file: !7137, line: 200, type: !7140)
!7194 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !7137, file: !7137, line: 200, type: !7195, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7195 = !DISubroutineType(types: !7196)
!7196 = !{!542, !7140, !757, !236}
!7197 = !DILocation(line: 200, column: 63, scope: !7194, inlinedAt: !7198)
!7198 = distinct !DILocation(line: 1093, column: 12, scope: !7199, inlinedAt: !7203)
!7199 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !7200, file: !7200, line: 1086, type: !7201, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7200 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!7201 = !DISubroutineType(types: !7202)
!7202 = !{!236, !7140, !236, !236}
!7203 = distinct !DILocation(line: 1113, column: 9, scope: !7204, inlinedAt: !7207)
!7204 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !7200, file: !7200, line: 1111, type: !7205, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7205 = !DISubroutineType(types: !7206)
!7206 = !{!542, !7140, !236, !236}
!7207 = distinct !DILocation(line: 789, column: 9, scope: !7208, inlinedAt: !7209)
!7208 = distinct !DISubprogram(name: "atomic_add_unless", scope: !7144, file: !7144, line: 786, type: !7205, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7209 = distinct !DILocation(line: 105, column: 2, scope: !7192)
!7210 = !DILocalVariable(name: "old", arg: 2, scope: !7194, file: !7137, line: 200, type: !757)
!7211 = !DILocation(line: 200, column: 71, scope: !7194, inlinedAt: !7198)
!7212 = !DILocalVariable(name: "new", arg: 3, scope: !7194, file: !7137, line: 200, type: !236)
!7213 = !DILocation(line: 200, column: 80, scope: !7194, inlinedAt: !7198)
!7214 = !DILocalVariable(name: "success", scope: !7215, file: !7137, line: 202, type: !542)
!7215 = distinct !DILexicalBlock(scope: !7194, file: !7137, line: 202, column: 9)
!7216 = !DILocation(line: 202, column: 9, scope: !7215, inlinedAt: !7198)
!7217 = !DILocalVariable(name: "_old", scope: !7215, file: !7137, line: 202, type: !757)
!7218 = !DILocalVariable(name: "__old", scope: !7215, file: !7137, line: 202, type: !236)
!7219 = !DILocalVariable(name: "__new", scope: !7215, file: !7137, line: 202, type: !236)
!7220 = !DILocalVariable(name: "__ptr", scope: !7215, file: !7137, line: 202, type: !5813)
!7221 = !DILocalVariable(name: "v", arg: 1, scope: !7222, file: !7137, line: 23, type: !7225)
!7222 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7137, file: !7137, line: 23, type: !7223, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7223 = !DISubroutineType(types: !7224)
!7224 = !{!236, !7225}
!7225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7226, size: 64)
!7226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!7227 = !DILocation(line: 23, column: 61, scope: !7222, inlinedAt: !7228)
!7228 = distinct !DILocation(line: 1088, column: 10, scope: !7199, inlinedAt: !7203)
!7229 = !DILocalVariable(name: "v", arg: 1, scope: !7199, file: !7200, line: 1086, type: !7140)
!7230 = !DILocation(line: 1086, column: 40, scope: !7199, inlinedAt: !7203)
!7231 = !DILocalVariable(name: "a", arg: 2, scope: !7199, file: !7200, line: 1086, type: !236)
!7232 = !DILocation(line: 1086, column: 47, scope: !7199, inlinedAt: !7203)
!7233 = !DILocalVariable(name: "u", arg: 3, scope: !7199, file: !7200, line: 1086, type: !236)
!7234 = !DILocation(line: 1086, column: 54, scope: !7199, inlinedAt: !7203)
!7235 = !DILocalVariable(name: "c", scope: !7199, file: !7200, line: 1088, type: !236)
!7236 = !DILocation(line: 1088, column: 6, scope: !7199, inlinedAt: !7203)
!7237 = !DILocalVariable(name: "v", arg: 1, scope: !7204, file: !7200, line: 1111, type: !7140)
!7238 = !DILocation(line: 1111, column: 34, scope: !7204, inlinedAt: !7207)
!7239 = !DILocalVariable(name: "a", arg: 2, scope: !7204, file: !7200, line: 1111, type: !236)
!7240 = !DILocation(line: 1111, column: 41, scope: !7204, inlinedAt: !7207)
!7241 = !DILocalVariable(name: "u", arg: 3, scope: !7204, file: !7200, line: 1111, type: !236)
!7242 = !DILocation(line: 1111, column: 48, scope: !7204, inlinedAt: !7207)
!7243 = !DILocation(line: 99, column: 79, scope: !7147, inlinedAt: !7244)
!7244 = distinct !DILocation(line: 788, column: 2, scope: !7208, inlinedAt: !7209)
!7245 = !DILocation(line: 99, column: 89, scope: !7147, inlinedAt: !7244)
!7246 = !DILocalVariable(name: "v", arg: 1, scope: !7208, file: !7144, line: 786, type: !7140)
!7247 = !DILocation(line: 786, column: 29, scope: !7208, inlinedAt: !7209)
!7248 = !DILocalVariable(name: "a", arg: 2, scope: !7208, file: !7144, line: 786, type: !236)
!7249 = !DILocation(line: 786, column: 36, scope: !7208, inlinedAt: !7209)
!7250 = !DILocalVariable(name: "u", arg: 3, scope: !7208, file: !7144, line: 786, type: !236)
!7251 = !DILocation(line: 786, column: 43, scope: !7208, inlinedAt: !7209)
!7252 = !DILocalVariable(name: "dev", arg: 1, scope: !7192, file: !7134, line: 103, type: !278)
!7253 = !DILocation(line: 103, column: 57, scope: !7192)
!7254 = !DILocation(line: 105, column: 21, scope: !7192)
!7255 = !DILocation(line: 105, column: 26, scope: !7192)
!7256 = !DILocation(line: 105, column: 32, scope: !7192)
!7257 = !DILocation(line: 788, column: 31, scope: !7208, inlinedAt: !7209)
!7258 = !DILocation(line: 101, column: 20, scope: !7147, inlinedAt: !7244)
!7259 = !DILocation(line: 101, column: 23, scope: !7147, inlinedAt: !7244)
!7260 = !DILocation(line: 101, column: 2, scope: !7147, inlinedAt: !7244)
!7261 = !DILocation(line: 102, column: 2, scope: !7147, inlinedAt: !7244)
!7262 = !DILocation(line: 789, column: 32, scope: !7208, inlinedAt: !7209)
!7263 = !DILocation(line: 789, column: 35, scope: !7208, inlinedAt: !7209)
!7264 = !DILocation(line: 789, column: 38, scope: !7208, inlinedAt: !7209)
!7265 = !DILocation(line: 1113, column: 38, scope: !7204, inlinedAt: !7207)
!7266 = !DILocation(line: 1113, column: 41, scope: !7204, inlinedAt: !7207)
!7267 = !DILocation(line: 1113, column: 44, scope: !7204, inlinedAt: !7207)
!7268 = !DILocation(line: 1088, column: 27, scope: !7199, inlinedAt: !7203)
!7269 = !DILocation(line: 29, column: 9, scope: !7222, inlinedAt: !7228)
!7270 = !DILocation(line: 1090, column: 2, scope: !7199, inlinedAt: !7203)
!7271 = !DILocation(line: 1091, column: 7, scope: !7272, inlinedAt: !7203)
!7272 = distinct !DILexicalBlock(scope: !7273, file: !7200, line: 1091, column: 7)
!7273 = distinct !DILexicalBlock(scope: !7199, file: !7200, line: 1090, column: 5)
!7274 = !DILocation(line: 1091, column: 7, scope: !7273, inlinedAt: !7203)
!7275 = !DILocation(line: 1092, column: 4, scope: !7272, inlinedAt: !7203)
!7276 = !DILocation(line: 1093, column: 36, scope: !7199, inlinedAt: !7203)
!7277 = !DILocation(line: 1093, column: 43, scope: !7199, inlinedAt: !7203)
!7278 = !DILocation(line: 1093, column: 47, scope: !7199, inlinedAt: !7203)
!7279 = !DILocation(line: 1093, column: 45, scope: !7199, inlinedAt: !7203)
!7280 = !{i32 -2147049887, i32 -2147049732}
!7281 = !DILocation(line: 202, column: 9, scope: !7282, inlinedAt: !7198)
!7282 = distinct !DILexicalBlock(scope: !7215, file: !7137, line: 202, column: 9)
!7283 = !DILocation(line: 202, column: 9, scope: !7194, inlinedAt: !7198)
!7284 = !DILocation(line: 1093, column: 11, scope: !7199, inlinedAt: !7203)
!7285 = !DILocation(line: 1093, column: 2, scope: !7273, inlinedAt: !7203)
!7286 = distinct !{!7286, !7270, !7287}
!7287 = !DILocation(line: 1093, column: 49, scope: !7199, inlinedAt: !7203)
!7288 = !DILocation(line: 1095, column: 9, scope: !7199, inlinedAt: !7203)
!7289 = !DILocation(line: 1113, column: 50, scope: !7204, inlinedAt: !7207)
!7290 = !DILocation(line: 1113, column: 47, scope: !7204, inlinedAt: !7207)
!7291 = !DILocation(line: 106, column: 1, scope: !7192)
!7292 = distinct !DISubprogram(name: "kasan_check_write", scope: !7293, file: !7293, line: 38, type: !7294, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7293 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7294 = !DISubroutineType(types: !7295)
!7295 = !{!542, !6893, !7}
!7296 = !DILocalVariable(name: "p", arg: 1, scope: !7292, file: !7293, line: 38, type: !6893)
!7297 = !DILocation(line: 38, column: 59, scope: !7292)
!7298 = !DILocalVariable(name: "size", arg: 2, scope: !7292, file: !7293, line: 38, type: !7)
!7299 = !DILocation(line: 38, column: 75, scope: !7292)
!7300 = !DILocation(line: 40, column: 2, scope: !7292)
!7301 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7302, file: !7302, line: 178, type: !7303, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7302 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!7303 = !DISubroutineType(types: !7304)
!7304 = !{null, !6893, !382, !236}
!7305 = !DILocalVariable(name: "ptr", arg: 1, scope: !7301, file: !7302, line: 178, type: !6893)
!7306 = !DILocation(line: 178, column: 60, scope: !7301)
!7307 = !DILocalVariable(name: "size", arg: 2, scope: !7301, file: !7302, line: 178, type: !382)
!7308 = !DILocation(line: 178, column: 72, scope: !7301)
!7309 = !DILocalVariable(name: "type", arg: 3, scope: !7301, file: !7302, line: 179, type: !236)
!7310 = !DILocation(line: 179, column: 15, scope: !7301)
!7311 = !DILocation(line: 179, column: 23, scope: !7301)
!7312 = distinct !DISubprogram(name: "dev_name", scope: !79, file: !79, line: 609, type: !7313, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7313 = !DISubroutineType(types: !7314)
!7314 = !{!215, !4147}
!7315 = !DILocalVariable(name: "dev", arg: 1, scope: !7312, file: !79, line: 609, type: !4147)
!7316 = !DILocation(line: 609, column: 57, scope: !7312)
!7317 = !DILocation(line: 612, column: 6, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7312, file: !79, line: 612, column: 6)
!7319 = !DILocation(line: 612, column: 11, scope: !7318)
!7320 = !DILocation(line: 612, column: 6, scope: !7312)
!7321 = !DILocation(line: 613, column: 10, scope: !7318)
!7322 = !DILocation(line: 613, column: 15, scope: !7318)
!7323 = !DILocation(line: 613, column: 3, scope: !7318)
!7324 = !DILocation(line: 615, column: 23, scope: !7312)
!7325 = !DILocation(line: 615, column: 28, scope: !7312)
!7326 = !DILocation(line: 615, column: 9, scope: !7312)
!7327 = !DILocation(line: 615, column: 2, scope: !7312)
!7328 = !DILocation(line: 616, column: 1, scope: !7312)
!7329 = distinct !DISubprogram(name: "kobject_name", scope: !283, file: !283, line: 88, type: !7330, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7330 = !DISubroutineType(types: !7331)
!7331 = !{!215, !7332}
!7332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7333, size: 64)
!7333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!7334 = !DILocalVariable(name: "kobj", arg: 1, scope: !7329, file: !283, line: 88, type: !7332)
!7335 = !DILocation(line: 88, column: 62, scope: !7329)
!7336 = !DILocation(line: 90, column: 9, scope: !7329)
!7337 = !DILocation(line: 90, column: 15, scope: !7329)
!7338 = !DILocation(line: 90, column: 2, scope: !7329)
!7339 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !180, file: !180, line: 1865, type: !7340, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !309)
!7340 = !DISubroutineType(types: !7341)
!7341 = !{!177, !178}
!7342 = !DILocalVariable(name: "pdev", arg: 1, scope: !7339, file: !180, line: 1865, type: !178)
!7343 = !DILocation(line: 1865, column: 53, scope: !7339)
!7344 = !DILocation(line: 1867, column: 26, scope: !7339)
!7345 = !DILocation(line: 1867, column: 32, scope: !7339)
!7346 = !DILocation(line: 1867, column: 9, scope: !7339)
!7347 = !DILocation(line: 1867, column: 2, scope: !7339)
