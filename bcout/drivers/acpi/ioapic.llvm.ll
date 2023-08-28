; ModuleID = '../bcout/drivers/acpi/ioapic.llvm.bc'
source_filename = "drivers/acpi/ioapic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.kmem_cache = type opaque
%struct.acpi_pci_ioapic = type { i8*, i8*, i32, %struct.resource, %struct.pci_dev*, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.74, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
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
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.74 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.anon.70 }
%struct.anon.70 = type { i32, i32, i64, i32 }
%struct.acpi_pci_root = type { %struct.acpi_device*, %struct.pci_bus*, i16, %struct.resource, i32, i32, i64 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.72, i32, i32, %struct.list_head }
%struct.anon.72 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.73, i8, i8, i32 }
%struct.anon.73 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_device_info = type { i32, i32, i32, i8, i16, i8, [4 x i8], [5 x i8], i64, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id_list }
%struct.acpi_pnp_device_id = type { i32, i8* }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor_typed, [40 x i8] }
%struct.acpi_resource_vendor_typed = type { i16, i8, [16 x i8], [1 x i8] }
%struct.resource_win = type { %struct.resource, i64 }

@ioapic_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ioapic_list_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @ioapic_list_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@ioapic_list = internal global %struct.list_head { %struct.list_head* @ioapic_list, %struct.list_head* @ioapic_list }, align 8, !dbg !4131
@.str = private unnamed_addr constant [5 x i8] c"_GSB\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to evaluate _GSB method\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\013ACPI: IOAPIC: cannot allocate memory for new IOAPIC\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to get resource\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"failed to insert resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to register IOAPIC\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%s at %pR, GSI %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ACPI0009\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"IOxAPIC\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ACPI000A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"IOAPIC\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ioapic_add(i8* %root_handle) #0 !dbg !4138 {
entry:
  %root_handle.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i8* %root_handle, i8** %root_handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %root_handle.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4145, metadata !DIExpression()), !dbg !4146
  store i32 0, i32* %retval1, align 4, !dbg !4146
  %0 = load i8*, i8** %root_handle.addr, align 8, !dbg !4147
  %1 = load i8*, i8** %root_handle.addr, align 8, !dbg !4148
  %2 = bitcast i32* %retval1 to i8**, !dbg !4149
  %call = call i32 @acpi_walk_namespace(i32 6, i8* %0, i32 -1, i32 (i8*, i32, i8*, i8**)* @handle_ioapic_add, i32 (i8*, i32, i8*, i8**)* null, i8* %1, i8** %2) #8, !dbg !4150
  store i32 %call, i32* %status, align 4, !dbg !4151
  %3 = load i32, i32* %status, align 4, !dbg !4152
  %tobool = icmp ne i32 %3, 0, !dbg !4152
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4153

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %retval1, align 4, !dbg !4154
  %tobool2 = icmp ne i32 %4, 0, !dbg !4154
  %lnot = xor i1 %tobool2, true, !dbg !4154
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !4155
  %6 = zext i1 %5 to i64, !dbg !4152
  %cond = select i1 %5, i32 0, i32 -19, !dbg !4152
  ret i32 %cond, !dbg !4156
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_namespace(i32, i8*, i32, i32 (i8*, i32, i8*, i8**)*, i32 (i8*, i32, i8*, i8**)*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @handle_ioapic_add(i8* %handle, i32 %lvl, i8* %context, i8** %rv) #0 !dbg !4157 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %lvl.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %rv.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %gsi_base = alloca i64, align 8
  %ioapic = alloca %struct.acpi_pci_ioapic*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %res = alloca %struct.resource*, align 8
  %pci_res = alloca %struct.resource*, align 8
  %crs_res = alloca %struct.resource*, align 8
  %type = alloca i8*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp9 = alloca %struct.acpi_pci_ioapic*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i32 %lvl, i32* %lvl.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lvl.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  store i8* %context, i8** %context.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %context.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  store i8** %rv, i8*** %rv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %rv.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4168, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.declare(metadata i64* %gsi_base, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_ioapic** %ioapic, metadata !4172, metadata !DIExpression()), !dbg !4173
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4174, metadata !DIExpression()), !dbg !4175
  store %struct.pci_dev* null, %struct.pci_dev** %dev, align 8, !dbg !4175
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4176, metadata !DIExpression()), !dbg !4177
  store %struct.resource* null, %struct.resource** %res, align 8, !dbg !4177
  call void @llvm.dbg.declare(metadata %struct.resource** %pci_res, metadata !4178, metadata !DIExpression()), !dbg !4179
  store %struct.resource* null, %struct.resource** %pci_res, align 8, !dbg !4179
  call void @llvm.dbg.declare(metadata %struct.resource** %crs_res, metadata !4180, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.declare(metadata i8** %type, metadata !4182, metadata !DIExpression()), !dbg !4183
  store i8* null, i8** %type, align 8, !dbg !4183
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4184
  %call = call zeroext i1 @acpi_is_ioapic(i8* %0, i8** %type) #8, !dbg !4186
  br i1 %call, label %if.end, label %if.then, !dbg !4187

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4188
  br label %return, !dbg !4188

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4189
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4190, metadata !DIExpression()), !dbg !4193
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ioapic_list, i32 0, i32 0), align 8, !dbg !4193
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4193
  store i8* %2, i8** %__mptr, align 8, !dbg !4193
  br label %do.body, !dbg !4193

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4194

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4193
  %add.ptr = getelementptr i8, i8* %3, i64 -96, !dbg !4193
  %4 = bitcast i8* %add.ptr to %struct.acpi_pci_ioapic*, !dbg !4193
  store %struct.acpi_pci_ioapic* %4, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4194
  %5 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4193
  store %struct.acpi_pci_ioapic* %5, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4196
  br label %for.cond, !dbg !4196

for.cond:                                         ; preds = %do.end8, %do.end
  %6 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4197
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %6, i32 0, i32 5, !dbg !4197
  %cmp = icmp eq %struct.list_head* %list, @ioapic_list, !dbg !4197
  %lnot = xor i1 %cmp, true, !dbg !4197
  br i1 %lnot, label %for.body, label %for.end, !dbg !4196

for.body:                                         ; preds = %for.cond
  %7 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4199
  %handle1 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %7, i32 0, i32 1, !dbg !4201
  %8 = load i8*, i8** %handle1, align 8, !dbg !4201
  %9 = load i8*, i8** %handle.addr, align 8, !dbg !4202
  %cmp2 = icmp eq i8* %8, %9, !dbg !4203
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4204

if.then3:                                         ; preds = %for.body
  call void @mutex_unlock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4205
  store i32 0, i32* %retval, align 4, !dbg !4207
  br label %return, !dbg !4207

if.end4:                                          ; preds = %for.body
  br label %for.inc, !dbg !4202

for.inc:                                          ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4208, metadata !DIExpression()), !dbg !4210
  %10 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4210
  %list6 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %10, i32 0, i32 5, !dbg !4210
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list6, i32 0, i32 0, !dbg !4210
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4210
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4210
  store i8* %12, i8** %__mptr5, align 8, !dbg !4210
  br label %do.body7, !dbg !4210

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !4211

do.end8:                                          ; preds = %do.body7
  %13 = load i8*, i8** %__mptr5, align 8, !dbg !4210
  %add.ptr10 = getelementptr i8, i8* %13, i64 -96, !dbg !4210
  %14 = bitcast i8* %add.ptr10 to %struct.acpi_pci_ioapic*, !dbg !4210
  store %struct.acpi_pci_ioapic* %14, %struct.acpi_pci_ioapic** %tmp9, align 8, !dbg !4211
  %15 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp9, align 8, !dbg !4210
  store %struct.acpi_pci_ioapic* %15, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4197
  br label %for.cond, !dbg !4197, !llvm.loop !4213

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %handle.addr, align 8, !dbg !4215
  %call11 = call i32 @acpi_evaluate_integer(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.acpi_object_list* null, i64* %gsi_base) #8, !dbg !4216
  store i32 %call11, i32* %status, align 4, !dbg !4217
  %17 = load i32, i32* %status, align 4, !dbg !4218
  %tobool = icmp ne i32 %17, 0, !dbg !4218
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !4220

if.then12:                                        ; preds = %for.end
  %18 = load i8*, i8** %handle.addr, align 8, !dbg !4221
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4221
  br label %exit, !dbg !4223

if.end13:                                         ; preds = %for.end
  %call14 = call i8* @kzalloc(i64 112, i32 3264) #8, !dbg !4224
  %19 = bitcast i8* %call14 to %struct.acpi_pci_ioapic*, !dbg !4224
  store %struct.acpi_pci_ioapic* %19, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4225
  %20 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4226
  %tobool15 = icmp ne %struct.acpi_pci_ioapic* %20, null, !dbg !4226
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !4228

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4229
  br label %exit, !dbg !4231

if.else:                                          ; preds = %if.end13
  %21 = load i8*, i8** %context.addr, align 8, !dbg !4232
  %22 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4234
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %22, i32 0, i32 0, !dbg !4235
  store i8* %21, i8** %root_handle, align 8, !dbg !4236
  %23 = load i8*, i8** %handle.addr, align 8, !dbg !4237
  %24 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4238
  %handle18 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %24, i32 0, i32 1, !dbg !4239
  store i8* %23, i8** %handle18, align 8, !dbg !4240
  %25 = load i64, i64* %gsi_base, align 8, !dbg !4241
  %conv = trunc i64 %25 to i32, !dbg !4242
  %26 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4243
  %gsi_base19 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %26, i32 0, i32 2, !dbg !4244
  store i32 %conv, i32* %gsi_base19, align 8, !dbg !4245
  %27 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4246
  %list20 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %27, i32 0, i32 5, !dbg !4247
  call void @INIT_LIST_HEAD(%struct.list_head* %list20) #8, !dbg !4248
  br label %if.end21

if.end21:                                         ; preds = %if.else
  %28 = load i8*, i8** %handle.addr, align 8, !dbg !4249
  %29 = load i64, i64* %gsi_base, align 8, !dbg !4251
  %conv22 = trunc i64 %29 to i32, !dbg !4252
  %call23 = call i32 @acpi_ioapic_registered(i8* %28, i32 %conv22) #8, !dbg !4253
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4253
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4254

if.then25:                                        ; preds = %if.end21
  br label %done, !dbg !4255

if.end26:                                         ; preds = %if.end21
  %30 = load i8*, i8** %handle.addr, align 8, !dbg !4256
  %call27 = call %struct.pci_dev* @acpi_get_pci_dev(i8* %30) #8, !dbg !4257
  store %struct.pci_dev* %call27, %struct.pci_dev** %dev, align 8, !dbg !4258
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4259
  %tobool28 = icmp ne %struct.pci_dev* %31, null, !dbg !4259
  br i1 %tobool28, label %land.lhs.true, label %if.else58, !dbg !4261

land.lhs.true:                                    ; preds = %if.end26
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4262
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 44, !dbg !4262
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4262
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4262
  %33 = load i64, i64* %start, align 8, !dbg !4262
  %cmp29 = icmp eq i64 %33, 0, !dbg !4262
  br i1 %cmp29, label %land.lhs.true31, label %cond.false, !dbg !4262

land.lhs.true31:                                  ; preds = %land.lhs.true
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4262
  %resource32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 44, !dbg !4262
  %arrayidx33 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource32, i64 0, i64 0, !dbg !4262
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx33, i32 0, i32 1, !dbg !4262
  %35 = load i64, i64* %end, align 8, !dbg !4262
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4262
  %resource34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 44, !dbg !4262
  %arrayidx35 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource34, i64 0, i64 0, !dbg !4262
  %start36 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx35, i32 0, i32 0, !dbg !4262
  %37 = load i64, i64* %start36, align 8, !dbg !4262
  %cmp37 = icmp eq i64 %35, %37, !dbg !4262
  br i1 %cmp37, label %cond.true, label %cond.false, !dbg !4263

cond.true:                                        ; preds = %land.lhs.true31
  br i1 false, label %if.then46, label %if.else58, !dbg !4262

cond.false:                                       ; preds = %land.lhs.true31, %land.lhs.true
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4262
  %resource39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 44, !dbg !4262
  %arrayidx40 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource39, i64 0, i64 0, !dbg !4262
  %end41 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx40, i32 0, i32 1, !dbg !4262
  %39 = load i64, i64* %end41, align 8, !dbg !4262
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4262
  %resource42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 44, !dbg !4262
  %arrayidx43 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource42, i64 0, i64 0, !dbg !4262
  %start44 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx43, i32 0, i32 0, !dbg !4262
  %41 = load i64, i64* %start44, align 8, !dbg !4262
  %sub = sub i64 %39, %41, !dbg !4262
  %add = add i64 %sub, 1, !dbg !4262
  %tobool45 = icmp ne i64 %add, 0, !dbg !4262
  br i1 %tobool45, label %if.then46, label %if.else58, !dbg !4263

if.then46:                                        ; preds = %cond.false, %cond.true
  %42 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4264
  %call47 = call i32 @pci_enable_device(%struct.pci_dev* %42) #8, !dbg !4267
  %cmp48 = icmp slt i32 %call47, 0, !dbg !4268
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !4269

if.then50:                                        ; preds = %if.then46
  br label %exit_put, !dbg !4270

if.end51:                                         ; preds = %if.then46
  %43 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4271
  call void @pci_set_master(%struct.pci_dev* %43) #8, !dbg !4272
  %44 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4273
  %45 = load i8*, i8** %type, align 8, !dbg !4275
  %call52 = call i32 @pci_request_region(%struct.pci_dev* %44, i32 0, i8* %45) #8, !dbg !4276
  %tobool53 = icmp ne i32 %call52, 0, !dbg !4276
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !4277

if.then54:                                        ; preds = %if.end51
  br label %exit_disable, !dbg !4278

if.end55:                                         ; preds = %if.end51
  %46 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4279
  %resource56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 44, !dbg !4280
  %arrayidx57 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource56, i64 0, i64 0, !dbg !4279
  store %struct.resource* %arrayidx57, %struct.resource** %pci_res, align 8, !dbg !4281
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4282
  %48 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4283
  %pdev = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %48, i32 0, i32 4, !dbg !4284
  store %struct.pci_dev* %47, %struct.pci_dev** %pdev, align 8, !dbg !4285
  br label %if.end59, !dbg !4286

if.else58:                                        ; preds = %cond.false, %cond.true, %if.end26
  %49 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4287
  call void @pci_dev_put(%struct.pci_dev* %49) #8, !dbg !4289
  store %struct.pci_dev* null, %struct.pci_dev** %dev, align 8, !dbg !4290
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.end55
  %50 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4291
  %res60 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %50, i32 0, i32 3, !dbg !4292
  store %struct.resource* %res60, %struct.resource** %crs_res, align 8, !dbg !4293
  %51 = load i8*, i8** %handle.addr, align 8, !dbg !4294
  %52 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4295
  %53 = bitcast %struct.resource* %52 to i8*, !dbg !4295
  %call61 = call i32 @acpi_walk_resources(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.acpi_resource*, i8*)* @setup_res, i8* %53) #8, !dbg !4296
  %54 = load i8*, i8** %type, align 8, !dbg !4297
  %55 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4298
  %name = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 2, !dbg !4299
  store i8* %54, i8** %name, align 8, !dbg !4300
  %56 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4301
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 3, !dbg !4302
  %57 = load i64, i64* %flags, align 8, !dbg !4303
  %or = or i64 %57, 2147483648, !dbg !4303
  store i64 %or, i64* %flags, align 8, !dbg !4303
  %58 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4304
  %flags62 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 3, !dbg !4306
  %59 = load i64, i64* %flags62, align 8, !dbg !4306
  %cmp63 = icmp eq i64 %59, 0, !dbg !4307
  br i1 %cmp63, label %if.then65, label %if.else66, !dbg !4308

if.then65:                                        ; preds = %if.end59
  %60 = load i8*, i8** %handle.addr, align 8, !dbg !4309
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !4309
  br label %exit_release, !dbg !4311

if.else66:                                        ; preds = %if.end59
  %61 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4312
  %call67 = call i32 @insert_resource(%struct.resource* @iomem_resource, %struct.resource* %61) #8, !dbg !4314
  %tobool68 = icmp ne i32 %call67, 0, !dbg !4314
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4315

if.then69:                                        ; preds = %if.else66
  %62 = load i8*, i8** %handle.addr, align 8, !dbg !4316
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !4316
  br label %exit_release, !dbg !4318

if.end70:                                         ; preds = %if.else66
  br label %if.end71

if.end71:                                         ; preds = %if.end70
  %63 = load %struct.resource*, %struct.resource** %pci_res, align 8, !dbg !4319
  store %struct.resource* %63, %struct.resource** %res, align 8, !dbg !4320
  %64 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4321
  %tobool72 = icmp ne %struct.resource* %64, null, !dbg !4321
  br i1 %tobool72, label %lor.lhs.false, label %if.then75, !dbg !4323

lor.lhs.false:                                    ; preds = %if.end71
  %65 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4324
  %flags73 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 3, !dbg !4325
  %66 = load i64, i64* %flags73, align 8, !dbg !4325
  %tobool74 = icmp ne i64 %66, 0, !dbg !4324
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !4326

if.then75:                                        ; preds = %lor.lhs.false, %if.end71
  %67 = load %struct.resource*, %struct.resource** %crs_res, align 8, !dbg !4327
  store %struct.resource* %67, %struct.resource** %res, align 8, !dbg !4328
  br label %if.end76, !dbg !4329

if.end76:                                         ; preds = %if.then75, %lor.lhs.false
  %68 = load i8*, i8** %handle.addr, align 8, !dbg !4330
  %69 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4332
  %start77 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0, !dbg !4333
  %70 = load i64, i64* %start77, align 8, !dbg !4333
  %71 = load i64, i64* %gsi_base, align 8, !dbg !4334
  %conv78 = trunc i64 %71 to i32, !dbg !4335
  %call79 = call i32 @acpi_register_ioapic(i8* %68, i64 %70, i32 %conv78) #8, !dbg !4336
  %tobool80 = icmp ne i32 %call79, 0, !dbg !4336
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !4337

if.then81:                                        ; preds = %if.end76
  %72 = load i8*, i8** %handle.addr, align 8, !dbg !4338
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !4338
  br label %exit_release, !dbg !4340

if.end82:                                         ; preds = %if.end76
  br label %done, !dbg !4341

done:                                             ; preds = %if.end82, %if.then25
  call void @llvm.dbg.label(metadata !4342), !dbg !4343
  %73 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4344
  %list83 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %73, i32 0, i32 5, !dbg !4345
  call void @list_add(%struct.list_head* %list83, %struct.list_head* @ioapic_list) #8, !dbg !4346
  call void @mutex_unlock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4347
  %74 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4348
  %tobool84 = icmp ne %struct.pci_dev* %74, null, !dbg !4348
  br i1 %tobool84, label %if.then85, label %if.else88, !dbg !4350

if.then85:                                        ; preds = %done
  %75 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4351
  %dev86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 41, !dbg !4351
  %76 = load i8*, i8** %type, align 8, !dbg !4351
  %77 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4351
  %78 = load i64, i64* %gsi_base, align 8, !dbg !4351
  %conv87 = trunc i64 %78 to i32, !dbg !4351
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %76, %struct.resource* %77, i32 %conv87) #9, !dbg !4351
  br label %if.end90, !dbg !4351

if.else88:                                        ; preds = %done
  %79 = load i8*, i8** %handle.addr, align 8, !dbg !4352
  %80 = load i8*, i8** %type, align 8, !dbg !4352
  %81 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4352
  %82 = load i64, i64* %gsi_base, align 8, !dbg !4352
  %conv89 = trunc i64 %82 to i32, !dbg !4352
  call void (i8*, i8*, i8*, ...) @acpi_handle_printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %80, %struct.resource* %81, i32 %conv89) #8, !dbg !4352
  br label %if.end90

if.end90:                                         ; preds = %if.else88, %if.then85
  store i32 0, i32* %retval, align 4, !dbg !4353
  br label %return, !dbg !4353

exit_release:                                     ; preds = %if.then81, %if.then69, %if.then65
  call void @llvm.dbg.label(metadata !4354), !dbg !4355
  %83 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4356
  %tobool91 = icmp ne %struct.pci_dev* %83, null, !dbg !4356
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !4358

if.then92:                                        ; preds = %exit_release
  %84 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4359
  call void @pci_release_region(%struct.pci_dev* %84, i32 0) #8, !dbg !4360
  br label %if.end93, !dbg !4360

if.end93:                                         ; preds = %if.then92, %exit_release
  %85 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4361
  %res94 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %85, i32 0, i32 3, !dbg !4363
  %flags95 = getelementptr inbounds %struct.resource, %struct.resource* %res94, i32 0, i32 3, !dbg !4364
  %86 = load i64, i64* %flags95, align 8, !dbg !4364
  %tobool96 = icmp ne i64 %86, 0, !dbg !4361
  br i1 %tobool96, label %land.lhs.true97, label %if.end103, !dbg !4365

land.lhs.true97:                                  ; preds = %if.end93
  %87 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4366
  %res98 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %87, i32 0, i32 3, !dbg !4367
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res98, i32 0, i32 5, !dbg !4368
  %88 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4368
  %tobool99 = icmp ne %struct.resource* %88, null, !dbg !4366
  br i1 %tobool99, label %if.then100, label %if.end103, !dbg !4369

if.then100:                                       ; preds = %land.lhs.true97
  %89 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4370
  %res101 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %89, i32 0, i32 3, !dbg !4371
  %call102 = call i32 @release_resource(%struct.resource* %res101) #8, !dbg !4372
  br label %if.end103, !dbg !4372

if.end103:                                        ; preds = %if.then100, %land.lhs.true97, %if.end93
  br label %exit_disable, !dbg !4368

exit_disable:                                     ; preds = %if.end103, %if.then54
  call void @llvm.dbg.label(metadata !4373), !dbg !4374
  %90 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4375
  %tobool104 = icmp ne %struct.pci_dev* %90, null, !dbg !4375
  br i1 %tobool104, label %if.then105, label %if.end106, !dbg !4377

if.then105:                                       ; preds = %exit_disable
  %91 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4378
  call void @pci_disable_device(%struct.pci_dev* %91) #8, !dbg !4379
  br label %if.end106, !dbg !4379

if.end106:                                        ; preds = %if.then105, %exit_disable
  br label %exit_put, !dbg !4375

exit_put:                                         ; preds = %if.end106, %if.then50
  call void @llvm.dbg.label(metadata !4380), !dbg !4381
  %92 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4382
  call void @pci_dev_put(%struct.pci_dev* %92) #8, !dbg !4383
  %93 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4384
  %94 = bitcast %struct.acpi_pci_ioapic* %93 to i8*, !dbg !4384
  call void @kfree(i8* %94) #8, !dbg !4385
  br label %exit, !dbg !4385

exit:                                             ; preds = %exit_put, %if.then16, %if.then12
  call void @llvm.dbg.label(metadata !4386), !dbg !4387
  call void @mutex_unlock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4388
  %95 = load i8**, i8*** %rv.addr, align 8, !dbg !4389
  %96 = bitcast i8** %95 to i32*, !dbg !4390
  store i32 1, i32* %96, align 4, !dbg !4391
  store i32 0, i32* %retval, align 4, !dbg !4392
  br label %return, !dbg !4392

return:                                           ; preds = %exit, %if.end90, %if.then3, %if.then
  %97 = load i32, i32* %retval, align 4, !dbg !4393
  ret i32 %97, !dbg !4393
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_ioapic_remove(%struct.acpi_pci_root* %root) #0 !dbg !4394 {
entry:
  %root.addr = alloca %struct.acpi_pci_root*, align 8
  %ioapic = alloca %struct.acpi_pci_ioapic*, align 8
  %tmp = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp19 = alloca %struct.acpi_pci_ioapic*, align 8
  store %struct.acpi_pci_root* %root, %struct.acpi_pci_root** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_root** %root.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_ioapic** %ioapic, metadata !4686, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_ioapic** %tmp, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @mutex_lock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4690
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4691, metadata !DIExpression()), !dbg !4694
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ioapic_list, i32 0, i32 0), align 8, !dbg !4694
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4694
  store i8* %1, i8** %__mptr, align 8, !dbg !4694
  br label %do.body, !dbg !4694

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4695

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4694
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !4694
  %3 = bitcast i8* %add.ptr to %struct.acpi_pci_ioapic*, !dbg !4694
  store %struct.acpi_pci_ioapic* %3, %struct.acpi_pci_ioapic** %tmp1, align 8, !dbg !4695
  %4 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp1, align 8, !dbg !4694
  store %struct.acpi_pci_ioapic* %4, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4697
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4698, metadata !DIExpression()), !dbg !4700
  %5 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4700
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %5, i32 0, i32 5, !dbg !4700
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4700
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4700
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4700
  store i8* %7, i8** %__mptr2, align 8, !dbg !4700
  br label %do.body3, !dbg !4700

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4701

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !4700
  %add.ptr6 = getelementptr i8, i8* %8, i64 -96, !dbg !4700
  %9 = bitcast i8* %add.ptr6 to %struct.acpi_pci_ioapic*, !dbg !4700
  store %struct.acpi_pci_ioapic* %9, %struct.acpi_pci_ioapic** %tmp5, align 8, !dbg !4701
  %10 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp5, align 8, !dbg !4700
  store %struct.acpi_pci_ioapic* %10, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4697
  br label %for.cond, !dbg !4697

for.cond:                                         ; preds = %do.end18, %do.end4
  %11 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4703
  %list7 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %11, i32 0, i32 5, !dbg !4703
  %cmp = icmp eq %struct.list_head* %list7, @ioapic_list, !dbg !4703
  %lnot = xor i1 %cmp, true, !dbg !4703
  br i1 %lnot, label %for.body, label %for.end, !dbg !4697

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %root.addr, align 8, !dbg !4705
  %device = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %12, i32 0, i32 0, !dbg !4708
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4708
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1, !dbg !4709
  %14 = load i8*, i8** %handle, align 8, !dbg !4709
  %15 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4710
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %15, i32 0, i32 0, !dbg !4711
  %16 = load i8*, i8** %root_handle, align 8, !dbg !4711
  %cmp8 = icmp ne i8* %14, %16, !dbg !4712
  br i1 %cmp8, label %if.then, label %if.end, !dbg !4713

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4714

if.end:                                           ; preds = %for.body
  %17 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4715
  %pdev = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %17, i32 0, i32 4, !dbg !4717
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4717
  %tobool = icmp ne %struct.pci_dev* %18, null, !dbg !4715
  br i1 %tobool, label %if.then9, label %if.end13, !dbg !4718

if.then9:                                         ; preds = %if.end
  %19 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4719
  %pdev10 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %19, i32 0, i32 4, !dbg !4721
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev10, align 8, !dbg !4721
  call void @pci_release_region(%struct.pci_dev* %20, i32 0) #8, !dbg !4722
  %21 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4723
  %pdev11 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %21, i32 0, i32 4, !dbg !4724
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev11, align 8, !dbg !4724
  call void @pci_disable_device(%struct.pci_dev* %22) #8, !dbg !4725
  %23 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4726
  %pdev12 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %23, i32 0, i32 4, !dbg !4727
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev12, align 8, !dbg !4727
  call void @pci_dev_put(%struct.pci_dev* %24) #8, !dbg !4728
  br label %if.end13, !dbg !4729

if.end13:                                         ; preds = %if.then9, %if.end
  br label %for.inc, !dbg !4730

for.inc:                                          ; preds = %if.end13, %if.then
  %25 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4703
  store %struct.acpi_pci_ioapic* %25, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4703
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !4731, metadata !DIExpression()), !dbg !4733
  %26 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4733
  %list15 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %26, i32 0, i32 5, !dbg !4733
  %next16 = getelementptr inbounds %struct.list_head, %struct.list_head* %list15, i32 0, i32 0, !dbg !4733
  %27 = load %struct.list_head*, %struct.list_head** %next16, align 8, !dbg !4733
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !4733
  store i8* %28, i8** %__mptr14, align 8, !dbg !4733
  br label %do.body17, !dbg !4733

do.body17:                                        ; preds = %for.inc
  br label %do.end18, !dbg !4734

do.end18:                                         ; preds = %do.body17
  %29 = load i8*, i8** %__mptr14, align 8, !dbg !4733
  %add.ptr20 = getelementptr i8, i8* %29, i64 -96, !dbg !4733
  %30 = bitcast i8* %add.ptr20 to %struct.acpi_pci_ioapic*, !dbg !4733
  store %struct.acpi_pci_ioapic* %30, %struct.acpi_pci_ioapic** %tmp19, align 8, !dbg !4734
  %31 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp19, align 8, !dbg !4733
  store %struct.acpi_pci_ioapic* %31, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4703
  br label %for.cond, !dbg !4703, !llvm.loop !4736

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4738
  ret void, !dbg !4739
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @pci_release_region(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ioapic_remove(%struct.acpi_pci_root* %root) #0 !dbg !4740 {
entry:
  %root.addr = alloca %struct.acpi_pci_root*, align 8
  %retval1 = alloca i32, align 4
  %ioapic = alloca %struct.acpi_pci_ioapic*, align 8
  %tmp = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp6 = alloca %struct.acpi_pci_ioapic*, align 8
  %__mptr21 = alloca i8*, align 8
  %tmp26 = alloca %struct.acpi_pci_ioapic*, align 8
  store %struct.acpi_pci_root* %root, %struct.acpi_pci_root** %root.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_root** %root.addr, metadata !4743, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4745, metadata !DIExpression()), !dbg !4746
  store i32 0, i32* %retval1, align 4, !dbg !4746
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_ioapic** %ioapic, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_ioapic** %tmp, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @mutex_lock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4751
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4752, metadata !DIExpression()), !dbg !4755
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @ioapic_list, i32 0, i32 0), align 8, !dbg !4755
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4755
  store i8* %1, i8** %__mptr, align 8, !dbg !4755
  br label %do.body, !dbg !4755

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4756

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4755
  %add.ptr = getelementptr i8, i8* %2, i64 -96, !dbg !4755
  %3 = bitcast i8* %add.ptr to %struct.acpi_pci_ioapic*, !dbg !4755
  store %struct.acpi_pci_ioapic* %3, %struct.acpi_pci_ioapic** %tmp2, align 8, !dbg !4756
  %4 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp2, align 8, !dbg !4755
  store %struct.acpi_pci_ioapic* %4, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4758
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4759, metadata !DIExpression()), !dbg !4761
  %5 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4761
  %list = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %5, i32 0, i32 5, !dbg !4761
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4761
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4761
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4761
  store i8* %7, i8** %__mptr3, align 8, !dbg !4761
  br label %do.body4, !dbg !4761

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4762

do.end5:                                          ; preds = %do.body4
  %8 = load i8*, i8** %__mptr3, align 8, !dbg !4761
  %add.ptr7 = getelementptr i8, i8* %8, i64 -96, !dbg !4761
  %9 = bitcast i8* %add.ptr7 to %struct.acpi_pci_ioapic*, !dbg !4761
  store %struct.acpi_pci_ioapic* %9, %struct.acpi_pci_ioapic** %tmp6, align 8, !dbg !4762
  %10 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp6, align 8, !dbg !4761
  store %struct.acpi_pci_ioapic* %10, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4758
  br label %for.cond, !dbg !4758

for.cond:                                         ; preds = %do.end25, %do.end5
  %11 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4764
  %list8 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %11, i32 0, i32 5, !dbg !4764
  %cmp = icmp eq %struct.list_head* %list8, @ioapic_list, !dbg !4764
  %lnot = xor i1 %cmp, true, !dbg !4764
  br i1 %lnot, label %for.body, label %for.end, !dbg !4758

for.body:                                         ; preds = %for.cond
  %12 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %root.addr, align 8, !dbg !4766
  %device = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %12, i32 0, i32 0, !dbg !4769
  %13 = load %struct.acpi_device*, %struct.acpi_device** %device, align 8, !dbg !4769
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1, !dbg !4770
  %14 = load i8*, i8** %handle, align 8, !dbg !4770
  %15 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4771
  %root_handle = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %15, i32 0, i32 0, !dbg !4772
  %16 = load i8*, i8** %root_handle, align 8, !dbg !4772
  %cmp9 = icmp ne i8* %14, %16, !dbg !4773
  br i1 %cmp9, label %if.then, label %if.end, !dbg !4774

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4775

if.end:                                           ; preds = %for.body
  %17 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4776
  %handle10 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %17, i32 0, i32 1, !dbg !4778
  %18 = load i8*, i8** %handle10, align 8, !dbg !4778
  %19 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4779
  %gsi_base = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %19, i32 0, i32 2, !dbg !4780
  %20 = load i32, i32* %gsi_base, align 8, !dbg !4780
  %call = call i32 @acpi_unregister_ioapic(i8* %18, i32 %20) #8, !dbg !4781
  %tobool = icmp ne i32 %call, 0, !dbg !4781
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !4782

if.then11:                                        ; preds = %if.end
  store i32 -16, i32* %retval1, align 4, !dbg !4783
  br label %if.end12, !dbg !4784

if.end12:                                         ; preds = %if.then11, %if.end
  %21 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4785
  %res = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %21, i32 0, i32 3, !dbg !4787
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !4788
  %22 = load i64, i64* %flags, align 8, !dbg !4788
  %tobool13 = icmp ne i64 %22, 0, !dbg !4785
  br i1 %tobool13, label %land.lhs.true, label %if.end19, !dbg !4789

land.lhs.true:                                    ; preds = %if.end12
  %23 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4790
  %res14 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %23, i32 0, i32 3, !dbg !4791
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res14, i32 0, i32 5, !dbg !4792
  %24 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4792
  %tobool15 = icmp ne %struct.resource* %24, null, !dbg !4790
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !4793

if.then16:                                        ; preds = %land.lhs.true
  %25 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4794
  %res17 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %25, i32 0, i32 3, !dbg !4795
  %call18 = call i32 @release_resource(%struct.resource* %res17) #8, !dbg !4796
  br label %if.end19, !dbg !4796

if.end19:                                         ; preds = %if.then16, %land.lhs.true, %if.end12
  %26 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4797
  %list20 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %26, i32 0, i32 5, !dbg !4798
  call void @list_del(%struct.list_head* %list20) #8, !dbg !4799
  %27 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4800
  %28 = bitcast %struct.acpi_pci_ioapic* %27 to i8*, !dbg !4800
  call void @kfree(i8* %28) #8, !dbg !4801
  br label %for.inc, !dbg !4802

for.inc:                                          ; preds = %if.end19, %if.then
  %29 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4764
  store %struct.acpi_pci_ioapic* %29, %struct.acpi_pci_ioapic** %ioapic, align 8, !dbg !4764
  call void @llvm.dbg.declare(metadata i8** %__mptr21, metadata !4803, metadata !DIExpression()), !dbg !4805
  %30 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4805
  %list22 = getelementptr inbounds %struct.acpi_pci_ioapic, %struct.acpi_pci_ioapic* %30, i32 0, i32 5, !dbg !4805
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %list22, i32 0, i32 0, !dbg !4805
  %31 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !4805
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !4805
  store i8* %32, i8** %__mptr21, align 8, !dbg !4805
  br label %do.body24, !dbg !4805

do.body24:                                        ; preds = %for.inc
  br label %do.end25, !dbg !4806

do.end25:                                         ; preds = %do.body24
  %33 = load i8*, i8** %__mptr21, align 8, !dbg !4805
  %add.ptr27 = getelementptr i8, i8* %33, i64 -96, !dbg !4805
  %34 = bitcast i8* %add.ptr27 to %struct.acpi_pci_ioapic*, !dbg !4805
  store %struct.acpi_pci_ioapic* %34, %struct.acpi_pci_ioapic** %tmp26, align 8, !dbg !4806
  %35 = load %struct.acpi_pci_ioapic*, %struct.acpi_pci_ioapic** %tmp26, align 8, !dbg !4805
  store %struct.acpi_pci_ioapic* %35, %struct.acpi_pci_ioapic** %tmp, align 8, !dbg !4764
  br label %for.cond, !dbg !4764, !llvm.loop !4808

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @ioapic_list_lock) #8, !dbg !4810
  %36 = load i32, i32* %retval1, align 4, !dbg !4811
  ret i32 %36, !dbg !4812
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_unregister_ioapic(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4813 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4817, metadata !DIExpression()), !dbg !4818
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4819
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4820
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4821
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4822
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4823
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4824
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4825
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4826
  ret void, !dbg !4827
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_is_ioapic(i8* %handle, i8** %type) #0 !dbg !4828 {
entry:
  %retval = alloca i1, align 1
  %handle.addr = alloca i8*, align 8
  %type.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_device_info*, align 8
  %hid = alloca i8*, align 8
  %match = alloca i8, align 1
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4832, metadata !DIExpression()), !dbg !4833
  store i8** %type, i8*** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %type.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4836, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata %struct.acpi_device_info** %info, metadata !4838, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.declare(metadata i8** %hid, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i8* null, i8** %hid, align 8, !dbg !4869
  call void @llvm.dbg.declare(metadata i8* %match, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i8 0, i8* %match, align 1, !dbg !4871
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4872
  %call = call zeroext i1 @acpi_has_method(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4874
  br i1 %call, label %if.end, label %if.then, !dbg !4875

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4876
  br label %return, !dbg !4876

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !4877
  %call1 = call i32 @acpi_get_object_info(i8* %1, %struct.acpi_device_info** %info) #8, !dbg !4878
  store i32 %call1, i32* %status, align 4, !dbg !4879
  %2 = load i32, i32* %status, align 4, !dbg !4880
  %tobool = icmp ne i32 %2, 0, !dbg !4880
  br i1 %tobool, label %if.end18, label %if.then2, !dbg !4882

if.then2:                                         ; preds = %if.end
  %3 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !4883
  %valid = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %3, i32 0, i32 4, !dbg !4886
  %4 = load i16, i16* %valid, align 2, !dbg !4886
  %conv = zext i16 %4 to i32, !dbg !4883
  %and = and i32 %conv, 4, !dbg !4887
  %tobool3 = icmp ne i32 %and, 0, !dbg !4887
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4888

if.then4:                                         ; preds = %if.then2
  %5 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !4889
  %hardware_id = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %5, i32 0, i32 9, !dbg !4890
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %hardware_id, i32 0, i32 1, !dbg !4891
  %6 = load i8*, i8** %string, align 8, !dbg !4891
  store i8* %6, i8** %hid, align 8, !dbg !4892
  br label %if.end5, !dbg !4893

if.end5:                                          ; preds = %if.then4, %if.then2
  %7 = load i8*, i8** %hid, align 8, !dbg !4894
  %tobool6 = icmp ne i8* %7, null, !dbg !4894
  br i1 %tobool6, label %if.then7, label %if.end17, !dbg !4896

if.then7:                                         ; preds = %if.end5
  %8 = load i8*, i8** %hid, align 8, !dbg !4897
  %call8 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !4900
  %cmp = icmp eq i32 %call8, 0, !dbg !4901
  br i1 %cmp, label %if.then10, label %if.else, !dbg !4902

if.then10:                                        ; preds = %if.then7
  %9 = load i8**, i8*** %type.addr, align 8, !dbg !4903
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8, !dbg !4905
  store i8 1, i8* %match, align 1, !dbg !4906
  br label %if.end16, !dbg !4907

if.else:                                          ; preds = %if.then7
  %10 = load i8*, i8** %hid, align 8, !dbg !4908
  %call11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !4910
  %cmp12 = icmp eq i32 %call11, 0, !dbg !4911
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4912

if.then14:                                        ; preds = %if.else
  %11 = load i8**, i8*** %type.addr, align 8, !dbg !4913
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8, !dbg !4915
  store i8 1, i8* %match, align 1, !dbg !4916
  br label %if.end15, !dbg !4917

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then10
  br label %if.end17, !dbg !4918

if.end17:                                         ; preds = %if.end16, %if.end5
  %12 = load %struct.acpi_device_info*, %struct.acpi_device_info** %info, align 8, !dbg !4919
  %13 = bitcast %struct.acpi_device_info* %12 to i8*, !dbg !4919
  call void @kfree(i8* %13) #8, !dbg !4920
  br label %if.end18, !dbg !4921

if.end18:                                         ; preds = %if.end17, %if.end
  %14 = load i8, i8* %match, align 1, !dbg !4922
  %tobool19 = trunc i8 %14 to i1, !dbg !4922
  store i1 %tobool19, i1* %retval, align 1, !dbg !4923
  br label %return, !dbg !4923

return:                                           ; preds = %if.end18, %if.then
  %15 = load i1, i1* %retval, align 1, !dbg !4924
  ret i1 %15, !dbg !4924
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_integer(i8*, i8*, %struct.acpi_object_list*, i64*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_handle_printk(i8*, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4925 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4928, metadata !DIExpression()), !dbg !4932
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4938, metadata !DIExpression()), !dbg !4939
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4940, metadata !DIExpression()), !dbg !4941
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4942, metadata !DIExpression()), !dbg !4943
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4944, metadata !DIExpression()), !dbg !4948
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4950, metadata !DIExpression()), !dbg !4954
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4956, metadata !DIExpression()), !dbg !4960
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4965, metadata !DIExpression()), !dbg !4966
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4967, metadata !DIExpression()), !dbg !4968
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4969, metadata !DIExpression()), !dbg !4970
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4971, metadata !DIExpression()), !dbg !4972
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4973, metadata !DIExpression()), !dbg !4974
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4975, metadata !DIExpression()), !dbg !4976
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4977, metadata !DIExpression()), !dbg !4978
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4979, metadata !DIExpression()), !dbg !4980
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load i64, i64* %size.addr, align 8, !dbg !4985
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4986
  %or = or i32 %1, 256, !dbg !4987
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4988
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4989
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4990

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4991
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4992
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4993

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4994
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4995
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4996
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4997
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4974
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4998
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4999
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5000
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5001
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5002
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5003
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5004
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5004
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5004
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5004
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5004
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5005
  br label %kmalloc.exit, !dbg !5005

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5006
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5007
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5009

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5010
  br label %kmalloc_index.exit.i, !dbg !5010

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5011
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5013
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5014

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5015
  br label %kmalloc_index.exit.i, !dbg !5015

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5016
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5018
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5019

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5020
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5021
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5022

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5023
  br label %kmalloc_index.exit.i, !dbg !5023

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5024
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5026
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5027

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5028
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5029
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5030

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5031
  br label %kmalloc_index.exit.i, !dbg !5031

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5032
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5034
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5035

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5036
  br label %kmalloc_index.exit.i, !dbg !5036

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5037
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5039
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5040

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5041
  br label %kmalloc_index.exit.i, !dbg !5041

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5042
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5044
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5045

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5047
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5049
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5050

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5051
  br label %kmalloc_index.exit.i, !dbg !5051

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5052
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5054
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5055

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5056
  br label %kmalloc_index.exit.i, !dbg !5056

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5057
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5059
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5060

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5061
  br label %kmalloc_index.exit.i, !dbg !5061

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5062
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5064
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5065

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5066
  br label %kmalloc_index.exit.i, !dbg !5066

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5067
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5069
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5070

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5071
  br label %kmalloc_index.exit.i, !dbg !5071

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5072
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5074
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5075

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5079
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5080

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5081
  br label %kmalloc_index.exit.i, !dbg !5081

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5082
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5084
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5085

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5086
  br label %kmalloc_index.exit.i, !dbg !5086

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5087
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5089
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5090

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5094
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5095

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5096
  br label %kmalloc_index.exit.i, !dbg !5096

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5097
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5099
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5100

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5101
  br label %kmalloc_index.exit.i, !dbg !5101

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5102
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5104
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5105

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5106
  br label %kmalloc_index.exit.i, !dbg !5106

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5107
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5109
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5110

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5114
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5115

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5116
  br label %kmalloc_index.exit.i, !dbg !5116

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5117
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5119
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5120

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5121
  br label %kmalloc_index.exit.i, !dbg !5121

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5122
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5124
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5125

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5126
  br label %kmalloc_index.exit.i, !dbg !5126

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5127
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5129
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5130

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5134
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5135

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5136
  br label %kmalloc_index.exit.i, !dbg !5136

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5137
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5139
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5140

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5141
  br label %kmalloc_index.exit.i, !dbg !5141

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5144
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5145

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5146
  br label %kmalloc_index.exit.i, !dbg !5146

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5147
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5149
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5150

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5151
  br label %kmalloc_index.exit.i, !dbg !5151

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5152, !srcloc !5155
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !5156, !srcloc !5159
  unreachable, !dbg !5160

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5161
  store i32 %45, i32* %index.i, align 4, !dbg !5162
  %46 = load i32, i32* %index.i, align 4, !dbg !5163
  %tobool.i = icmp ne i32 %46, 0, !dbg !5163
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5165

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5166
  br label %kmalloc.exit, !dbg !5166

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5167
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5168
  %and.i.i = and i32 %48, 17, !dbg !5168
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5168
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5168
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5168
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5168
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5170

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5171
  br label %kmalloc_type.exit.i, !dbg !5171

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5172
  %and2.i.i = and i32 %49, 1, !dbg !5173
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5172
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5172
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5172
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5174
  br label %kmalloc_type.exit.i, !dbg !5174

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5175
  %idxprom.i = zext i32 %51 to i64, !dbg !5176
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5176
  %52 = load i32, i32* %index.i, align 4, !dbg !5177
  %idxprom6.i = zext i32 %52 to i64, !dbg !5176
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5176
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5176
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5178
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5179
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5180
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5181
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5182
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5182
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5182
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5182
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5182
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4943
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5183
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5184
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5185
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5186
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5187
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5188
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5189
  store i8* %62, i8** %retval.i, align 8, !dbg !5190
  br label %kmalloc.exit, !dbg !5190

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5191
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5192
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5193
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5193
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5193
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5193
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5193
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5194
  br label %kmalloc.exit, !dbg !5194

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5195
  ret i8* %65, !dbg !5196
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5197 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5198, metadata !DIExpression()), !dbg !5199
  br label %do.body, !dbg !5200

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5201

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5203

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5201

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5205
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5205
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5205
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5205
  br label %do.end3, !dbg !5205

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5201

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5207
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5208
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5209
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5210
  ret void, !dbg !5211
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_ioapic_registered(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_set_master(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_walk_resources(i8*, i8*, i32 (%struct.acpi_resource*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @setup_res(%struct.acpi_resource* %acpi_res, i8* %data) #0 !dbg !5212 {
entry:
  %retval = alloca i32, align 4
  %acpi_res.addr = alloca %struct.acpi_resource*, align 8
  %data.addr = alloca i8*, align 8
  %res = alloca %struct.resource*, align 8
  %win = alloca %struct.resource_win, align 8
  store %struct.acpi_resource* %acpi_res, %struct.acpi_resource** %acpi_res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_resource** %acpi_res.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !5581, metadata !DIExpression()), !dbg !5582
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5583
  %1 = bitcast i8* %0 to %struct.resource*, !dbg !5583
  store %struct.resource* %1, %struct.resource** %res, align 8, !dbg !5582
  call void @llvm.dbg.declare(metadata %struct.resource_win* %win, metadata !5584, metadata !DIExpression()), !dbg !5590
  %2 = bitcast %struct.resource_win* %win to i8*, !dbg !5591
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 72, i1 false), !dbg !5591
  %3 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5592
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 3, !dbg !5593
  store i64 0, i64* %flags, align 8, !dbg !5594
  %4 = load %struct.acpi_resource*, %struct.acpi_resource** %acpi_res.addr, align 8, !dbg !5595
  %call = call i32 @acpi_dev_filter_resource_type(%struct.acpi_resource* %4, i64 512) #8, !dbg !5597
  %tobool = icmp ne i32 %call, 0, !dbg !5597
  br i1 %tobool, label %if.then, label %if.end, !dbg !5598

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5599
  br label %return, !dbg !5599

if.end:                                           ; preds = %entry
  %5 = load %struct.acpi_resource*, %struct.acpi_resource** %acpi_res.addr, align 8, !dbg !5600
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5602
  %call1 = call zeroext i1 @acpi_dev_resource_memory(%struct.acpi_resource* %5, %struct.resource* %6) #8, !dbg !5603
  br i1 %call1, label %if.end8, label %if.then2, !dbg !5604

if.then2:                                         ; preds = %if.end
  %7 = load %struct.acpi_resource*, %struct.acpi_resource** %acpi_res.addr, align 8, !dbg !5605
  %call3 = call zeroext i1 @acpi_dev_resource_address_space(%struct.acpi_resource* %7, %struct.resource_win* %win) #8, !dbg !5608
  br i1 %call3, label %if.then5, label %lor.lhs.false, !dbg !5609

lor.lhs.false:                                    ; preds = %if.then2
  %8 = load %struct.acpi_resource*, %struct.acpi_resource** %acpi_res.addr, align 8, !dbg !5610
  %call4 = call zeroext i1 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %8, %struct.resource_win* %win) #8, !dbg !5611
  br i1 %call4, label %if.then5, label %if.end7, !dbg !5612

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5613
  %res6 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %win, i32 0, i32 0, !dbg !5614
  %10 = bitcast %struct.resource* %9 to i8*, !dbg !5614
  %11 = bitcast %struct.resource* %res6 to i8*, !dbg !5614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 64, i1 false), !dbg !5614
  br label %if.end7, !dbg !5615

if.end7:                                          ; preds = %if.then5, %lor.lhs.false
  br label %if.end8, !dbg !5616

if.end8:                                          ; preds = %if.end7, %if.end
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5617
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !5619
  %13 = load i64, i64* %flags9, align 8, !dbg !5619
  %and = and i64 %13, 8192, !dbg !5620
  %tobool10 = icmp ne i64 %and, 0, !dbg !5620
  br i1 %tobool10, label %if.then15, label %lor.lhs.false11, !dbg !5621

lor.lhs.false11:                                  ; preds = %if.end8
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5622
  %flags12 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 3, !dbg !5623
  %15 = load i64, i64* %flags12, align 8, !dbg !5623
  %and13 = and i64 %15, 268435456, !dbg !5624
  %tobool14 = icmp ne i64 %and13, 0, !dbg !5624
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5625

if.then15:                                        ; preds = %lor.lhs.false11, %if.end8
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !5626
  %flags16 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3, !dbg !5627
  store i64 0, i64* %flags16, align 8, !dbg !5628
  br label %if.end17, !dbg !5626

if.end17:                                         ; preds = %if.then15, %lor.lhs.false11
  store i32 16387, i32* %retval, align 4, !dbg !5629
  br label %return, !dbg !5629

return:                                           ; preds = %if.end17, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5630
  ret i32 %17, !dbg !5630
}

; Function Attrs: noredzone
declare dso_local i32 @insert_resource(%struct.resource*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_register_ioapic(i8*, i64, i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5631 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5634, metadata !DIExpression()), !dbg !5635
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5638
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5639
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5640
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !5641
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5641
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !5642
  ret void, !dbg !5643
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_has_method(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_object_info(i8*, %struct.acpi_device_info**) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5644 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5648, metadata !DIExpression()), !dbg !5653
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5655, metadata !DIExpression()), !dbg !5656
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5657, metadata !DIExpression()), !dbg !5658
  %0 = load i64, i64* %size.addr, align 8, !dbg !5659
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5661
  br i1 %1, label %if.then, label %if.end447, !dbg !5662

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5663
  %tobool = icmp ne i64 %2, 0, !dbg !5663
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5666

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5667
  br label %return, !dbg !5667

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5668
  %cmp = icmp ult i64 %3, 4096, !dbg !5670
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5671

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub = sub i64 %4, 1, !dbg !5673
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5673
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5673

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub4 = sub i64 %6, 1, !dbg !5673
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5673
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5673

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub6 = sub i64 %8, 1, !dbg !5673
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5673
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5673

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5673

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub9 = sub i64 %9, 1, !dbg !5673
  %and = and i64 %sub9, -9223372036854775808, !dbg !5673
  %tobool10 = icmp ne i64 %and, 0, !dbg !5673
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5673

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5673

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub13 = sub i64 %10, 1, !dbg !5673
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5673
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5673
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5673

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5673

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub18 = sub i64 %11, 1, !dbg !5673
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5673
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5673
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5673

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5673

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub23 = sub i64 %12, 1, !dbg !5673
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5673
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5673
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5673

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5673

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub28 = sub i64 %13, 1, !dbg !5673
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5673
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5673
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5673

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5673

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub33 = sub i64 %14, 1, !dbg !5673
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5673
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5673
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5673

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5673

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub38 = sub i64 %15, 1, !dbg !5673
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5673
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5673
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5673

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5673

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub43 = sub i64 %16, 1, !dbg !5673
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5673
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5673
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5673

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5673

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub48 = sub i64 %17, 1, !dbg !5673
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5673
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5673
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5673

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5673

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub53 = sub i64 %18, 1, !dbg !5673
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5673
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5673
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5673

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5673

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub58 = sub i64 %19, 1, !dbg !5673
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5673
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5673
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5673

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5673

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub63 = sub i64 %20, 1, !dbg !5673
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5673
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5673
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5673

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5673

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub68 = sub i64 %21, 1, !dbg !5673
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5673
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5673
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5673

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5673

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub73 = sub i64 %22, 1, !dbg !5673
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5673
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5673
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5673

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5673

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub78 = sub i64 %23, 1, !dbg !5673
  %and79 = and i64 %sub78, 562949953421312, !dbg !5673
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5673
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5673

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5673

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub83 = sub i64 %24, 1, !dbg !5673
  %and84 = and i64 %sub83, 281474976710656, !dbg !5673
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5673
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5673

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5673

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub88 = sub i64 %25, 1, !dbg !5673
  %and89 = and i64 %sub88, 140737488355328, !dbg !5673
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5673
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5673

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5673

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub93 = sub i64 %26, 1, !dbg !5673
  %and94 = and i64 %sub93, 70368744177664, !dbg !5673
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5673
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5673

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5673

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub98 = sub i64 %27, 1, !dbg !5673
  %and99 = and i64 %sub98, 35184372088832, !dbg !5673
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5673
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5673

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5673

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub103 = sub i64 %28, 1, !dbg !5673
  %and104 = and i64 %sub103, 17592186044416, !dbg !5673
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5673
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5673

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5673

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub108 = sub i64 %29, 1, !dbg !5673
  %and109 = and i64 %sub108, 8796093022208, !dbg !5673
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5673
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5673

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5673

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub113 = sub i64 %30, 1, !dbg !5673
  %and114 = and i64 %sub113, 4398046511104, !dbg !5673
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5673
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5673

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5673

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub118 = sub i64 %31, 1, !dbg !5673
  %and119 = and i64 %sub118, 2199023255552, !dbg !5673
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5673
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5673

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5673

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub123 = sub i64 %32, 1, !dbg !5673
  %and124 = and i64 %sub123, 1099511627776, !dbg !5673
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5673
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5673

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5673

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub128 = sub i64 %33, 1, !dbg !5673
  %and129 = and i64 %sub128, 549755813888, !dbg !5673
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5673
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5673

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5673

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub133 = sub i64 %34, 1, !dbg !5673
  %and134 = and i64 %sub133, 274877906944, !dbg !5673
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5673
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5673

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5673

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub138 = sub i64 %35, 1, !dbg !5673
  %and139 = and i64 %sub138, 137438953472, !dbg !5673
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5673
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5673

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5673

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub143 = sub i64 %36, 1, !dbg !5673
  %and144 = and i64 %sub143, 68719476736, !dbg !5673
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5673
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5673

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5673

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub148 = sub i64 %37, 1, !dbg !5673
  %and149 = and i64 %sub148, 34359738368, !dbg !5673
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5673
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5673

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5673

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub153 = sub i64 %38, 1, !dbg !5673
  %and154 = and i64 %sub153, 17179869184, !dbg !5673
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5673
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5673

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5673

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub158 = sub i64 %39, 1, !dbg !5673
  %and159 = and i64 %sub158, 8589934592, !dbg !5673
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5673
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5673

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5673

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub163 = sub i64 %40, 1, !dbg !5673
  %and164 = and i64 %sub163, 4294967296, !dbg !5673
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5673
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5673

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5673

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub168 = sub i64 %41, 1, !dbg !5673
  %and169 = and i64 %sub168, 2147483648, !dbg !5673
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5673
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5673

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5673

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub173 = sub i64 %42, 1, !dbg !5673
  %and174 = and i64 %sub173, 1073741824, !dbg !5673
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5673
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5673

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5673

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub178 = sub i64 %43, 1, !dbg !5673
  %and179 = and i64 %sub178, 536870912, !dbg !5673
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5673
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5673

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5673

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub183 = sub i64 %44, 1, !dbg !5673
  %and184 = and i64 %sub183, 268435456, !dbg !5673
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5673
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5673

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5673

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub188 = sub i64 %45, 1, !dbg !5673
  %and189 = and i64 %sub188, 134217728, !dbg !5673
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5673
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5673

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5673

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub193 = sub i64 %46, 1, !dbg !5673
  %and194 = and i64 %sub193, 67108864, !dbg !5673
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5673
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5673

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5673

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub198 = sub i64 %47, 1, !dbg !5673
  %and199 = and i64 %sub198, 33554432, !dbg !5673
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5673
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5673

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5673

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub203 = sub i64 %48, 1, !dbg !5673
  %and204 = and i64 %sub203, 16777216, !dbg !5673
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5673
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5673

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5673

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub208 = sub i64 %49, 1, !dbg !5673
  %and209 = and i64 %sub208, 8388608, !dbg !5673
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5673
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5673

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5673

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub213 = sub i64 %50, 1, !dbg !5673
  %and214 = and i64 %sub213, 4194304, !dbg !5673
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5673
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5673

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5673

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub218 = sub i64 %51, 1, !dbg !5673
  %and219 = and i64 %sub218, 2097152, !dbg !5673
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5673
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5673

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5673

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub223 = sub i64 %52, 1, !dbg !5673
  %and224 = and i64 %sub223, 1048576, !dbg !5673
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5673
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5673

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5673

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub228 = sub i64 %53, 1, !dbg !5673
  %and229 = and i64 %sub228, 524288, !dbg !5673
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5673
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5673

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5673

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub233 = sub i64 %54, 1, !dbg !5673
  %and234 = and i64 %sub233, 262144, !dbg !5673
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5673
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5673

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5673

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub238 = sub i64 %55, 1, !dbg !5673
  %and239 = and i64 %sub238, 131072, !dbg !5673
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5673
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5673

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5673

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub243 = sub i64 %56, 1, !dbg !5673
  %and244 = and i64 %sub243, 65536, !dbg !5673
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5673
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5673

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5673

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub248 = sub i64 %57, 1, !dbg !5673
  %and249 = and i64 %sub248, 32768, !dbg !5673
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5673
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5673

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5673

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub253 = sub i64 %58, 1, !dbg !5673
  %and254 = and i64 %sub253, 16384, !dbg !5673
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5673
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5673

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5673

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub258 = sub i64 %59, 1, !dbg !5673
  %and259 = and i64 %sub258, 8192, !dbg !5673
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5673
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5673

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5673

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub263 = sub i64 %60, 1, !dbg !5673
  %and264 = and i64 %sub263, 4096, !dbg !5673
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5673
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5673

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5673

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub268 = sub i64 %61, 1, !dbg !5673
  %and269 = and i64 %sub268, 2048, !dbg !5673
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5673
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5673

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5673

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub273 = sub i64 %62, 1, !dbg !5673
  %and274 = and i64 %sub273, 1024, !dbg !5673
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5673
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5673

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5673

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub278 = sub i64 %63, 1, !dbg !5673
  %and279 = and i64 %sub278, 512, !dbg !5673
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5673
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5673

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5673

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub283 = sub i64 %64, 1, !dbg !5673
  %and284 = and i64 %sub283, 256, !dbg !5673
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5673
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5673

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5673

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub288 = sub i64 %65, 1, !dbg !5673
  %and289 = and i64 %sub288, 128, !dbg !5673
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5673
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5673

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5673

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub293 = sub i64 %66, 1, !dbg !5673
  %and294 = and i64 %sub293, 64, !dbg !5673
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5673
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5673

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5673

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub298 = sub i64 %67, 1, !dbg !5673
  %and299 = and i64 %sub298, 32, !dbg !5673
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5673
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5673

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5673

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub303 = sub i64 %68, 1, !dbg !5673
  %and304 = and i64 %sub303, 16, !dbg !5673
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5673
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5673

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5673

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub308 = sub i64 %69, 1, !dbg !5673
  %and309 = and i64 %sub308, 8, !dbg !5673
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5673
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5673

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5673

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub313 = sub i64 %70, 1, !dbg !5673
  %and314 = and i64 %sub313, 4, !dbg !5673
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5673
  %71 = zext i1 %tobool315 to i64, !dbg !5673
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5673
  br label %cond.end, !dbg !5673

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5673
  br label %cond.end317, !dbg !5673

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5673
  br label %cond.end319, !dbg !5673

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5673
  br label %cond.end321, !dbg !5673

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5673
  br label %cond.end323, !dbg !5673

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5673
  br label %cond.end325, !dbg !5673

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5673
  br label %cond.end327, !dbg !5673

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5673
  br label %cond.end329, !dbg !5673

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5673
  br label %cond.end331, !dbg !5673

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5673
  br label %cond.end333, !dbg !5673

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5673
  br label %cond.end335, !dbg !5673

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5673
  br label %cond.end337, !dbg !5673

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5673
  br label %cond.end339, !dbg !5673

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5673
  br label %cond.end341, !dbg !5673

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5673
  br label %cond.end343, !dbg !5673

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5673
  br label %cond.end345, !dbg !5673

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5673
  br label %cond.end347, !dbg !5673

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5673
  br label %cond.end349, !dbg !5673

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5673
  br label %cond.end351, !dbg !5673

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5673
  br label %cond.end353, !dbg !5673

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5673
  br label %cond.end355, !dbg !5673

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5673
  br label %cond.end357, !dbg !5673

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5673
  br label %cond.end359, !dbg !5673

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5673
  br label %cond.end361, !dbg !5673

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5673
  br label %cond.end363, !dbg !5673

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5673
  br label %cond.end365, !dbg !5673

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5673
  br label %cond.end367, !dbg !5673

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5673
  br label %cond.end369, !dbg !5673

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5673
  br label %cond.end371, !dbg !5673

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5673
  br label %cond.end373, !dbg !5673

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5673
  br label %cond.end375, !dbg !5673

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5673
  br label %cond.end377, !dbg !5673

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5673
  br label %cond.end379, !dbg !5673

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5673
  br label %cond.end381, !dbg !5673

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5673
  br label %cond.end383, !dbg !5673

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5673
  br label %cond.end385, !dbg !5673

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5673
  br label %cond.end387, !dbg !5673

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5673
  br label %cond.end389, !dbg !5673

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5673
  br label %cond.end391, !dbg !5673

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5673
  br label %cond.end393, !dbg !5673

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5673
  br label %cond.end395, !dbg !5673

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5673
  br label %cond.end397, !dbg !5673

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5673
  br label %cond.end399, !dbg !5673

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5673
  br label %cond.end401, !dbg !5673

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5673
  br label %cond.end403, !dbg !5673

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5673
  br label %cond.end405, !dbg !5673

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5673
  br label %cond.end407, !dbg !5673

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5673
  br label %cond.end409, !dbg !5673

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5673
  br label %cond.end411, !dbg !5673

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5673
  br label %cond.end413, !dbg !5673

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5673
  br label %cond.end415, !dbg !5673

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5673
  br label %cond.end417, !dbg !5673

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5673
  br label %cond.end419, !dbg !5673

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5673
  br label %cond.end421, !dbg !5673

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5673
  br label %cond.end423, !dbg !5673

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5673
  br label %cond.end425, !dbg !5673

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5673
  br label %cond.end427, !dbg !5673

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5673
  br label %cond.end429, !dbg !5673

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5673
  br label %cond.end431, !dbg !5673

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5673
  br label %cond.end433, !dbg !5673

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5673
  br label %cond.end435, !dbg !5673

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5673
  br label %cond.end437, !dbg !5673

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5673
  br label %cond.end440, !dbg !5673

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5673

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5673
  br label %cond.end444, !dbg !5673

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5673
  %sub443 = sub i64 %72, 1, !dbg !5673
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5673
  br label %cond.end444, !dbg !5673

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5673
  %sub446 = sub i32 %cond445, 12, !dbg !5674
  %add = add i32 %sub446, 1, !dbg !5675
  store i32 %add, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5677
  %dec = add i64 %73, -1, !dbg !5677
  store i64 %dec, i64* %size.addr, align 8, !dbg !5677
  %74 = load i64, i64* %size.addr, align 8, !dbg !5678
  %shr = lshr i64 %74, 12, !dbg !5678
  store i64 %shr, i64* %size.addr, align 8, !dbg !5678
  %75 = load i64, i64* %size.addr, align 8, !dbg !5679
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5656
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5680
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5681
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5680, !srcloc !5682
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5680
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5683
  %add.i = add i32 %79, 1, !dbg !5684
  store i32 %add.i, i32* %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5686
  ret i32 %80, !dbg !5686
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5687 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5648, metadata !DIExpression()), !dbg !5691
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5655, metadata !DIExpression()), !dbg !5693
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load i64, i64* %n.addr, align 8, !dbg !5696
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5693
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5697
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5698
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5697, !srcloc !5682
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5697
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5699
  %add.i = add i32 %4, 1, !dbg !5700
  %sub = sub i32 %add.i, 1, !dbg !5701
  ret i32 %sub, !dbg !5702
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5703 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5711, metadata !DIExpression()), !dbg !5712
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5713, metadata !DIExpression()), !dbg !5714
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5715
  ret i8* %0, !dbg !5716
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local i32 @acpi_dev_filter_resource_type(%struct.acpi_resource*, i64) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_resource_memory(%struct.acpi_resource*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_resource_address_space(%struct.acpi_resource*, %struct.resource_win*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @acpi_dev_resource_ext_address_space(%struct.acpi_resource*, %struct.resource_win*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5717 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5726
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5728
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5729
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5730
  br i1 %call, label %if.end, label %if.then, !dbg !5731

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5732

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5733
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5734
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5735
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5736
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5737
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5738
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5739
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5740
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5741
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5742
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5743
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5744
  br label %do.body, !dbg !5745

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5746

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5748

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5746

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5750
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5750
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5750
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5750
  br label %do.end7, !dbg !5750

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5746

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5752
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5753 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5758, metadata !DIExpression()), !dbg !5759
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  ret i1 true, !dbg !5762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5763 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5766
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5768
  br i1 %call, label %if.end, label %if.then, !dbg !5769

if.then:                                          ; preds = %entry
  br label %return, !dbg !5770

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5771
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5772
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5772
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5773
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5774
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5774
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5775
  br label %return, !dbg !5776

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5777 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5780, metadata !DIExpression()), !dbg !5781
  ret i1 true, !dbg !5782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5783 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5788
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5789
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5790
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5791
  br label %do.body, !dbg !5792

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5793

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5795

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5793

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5797
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5797
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5797
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5797
  br label %do.end5, !dbg !5797

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5793

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5799
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4133, !4134, !4135, !4136}
!llvm.ident = !{!4137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ioapic_list_lock", scope: !2, file: !3, line: 38, type: !1181, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !4130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/ioapic.c", directory: "/home/lizy2001/genbc/linux")
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
!119 = !{!120, !126, !127, !128, !754, !132, !122, !4127, !4128}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !121, line: 421, baseType: !122)
!121 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !123, line: 21, baseType: !124)
!123 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !125, line: 27, baseType: !7)
!125 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_ioapic", file: !3, line: 28, size: 896, elements: !130)
!130 = !{!131, !133, !134, !135, !158, !4126}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "root_handle", scope: !129, file: !3, line: 29, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !121, line: 424, baseType: !127)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !129, file: !3, line: 30, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "gsi_base", scope: !129, file: !3, line: 31, baseType: !122, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !129, file: !3, line: 32, baseType: !136, size: 512, offset: 192)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !137, line: 20, size: 512, elements: !138)
!137 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !146, !147, !151, !153, !154, !156, !157}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !136, file: !137, line: 21, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !141, line: 158, baseType: !142)
!141 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !141, line: 153, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !123, line: 23, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !125, line: 31, baseType: !145)
!145 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !136, file: !137, line: 22, baseType: !140, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !137, line: 23, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 24, baseType: !152, size: 64, offset: 192)
!152 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !136, file: !137, line: 25, baseType: !152, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 26, baseType: !155, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !136, file: !137, line: 26, baseType: !155, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !136, file: !137, line: 26, baseType: !155, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !129, file: !3, line: 33, baseType: !159, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !161, line: 309, size: 19264, elements: !162)
!161 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!162 = !{!163, !169, !3929, !3930, !3931, !3932, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !4024, !4025, !4026, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4100, !4101, !4102, !4103, !4104, !4105, !4107, !4108, !4109, !4112, !4119, !4120, !4121, !4122, !4123, !4124, !4125}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !160, file: !161, line: 310, baseType: !164, size: 128)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !141, line: 178, size: 128, elements: !165)
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !141, line: 179, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !164, file: !141, line: 179, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !160, file: !161, line: 311, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !161, line: 605, size: 8064, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !183, !184, !185, !211, !214, !215, !219, !221, !222, !223, !224, !228, !230, !232, !3925, !3926, !3927, !3928}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !171, file: !161, line: 606, baseType: !164, size: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !171, file: !161, line: 607, baseType: !170, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !171, file: !161, line: 608, baseType: !164, size: 128, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !171, file: !161, line: 609, baseType: !164, size: 128, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !171, file: !161, line: 610, baseType: !159, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !171, file: !161, line: 611, baseType: !164, size: 128, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !171, file: !161, line: 613, baseType: !180, size: 256, offset: 640)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 4)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !171, file: !161, line: 614, baseType: !164, size: 128, offset: 896)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !171, file: !161, line: 615, baseType: !136, size: 512, offset: 1024)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !171, file: !161, line: 617, baseType: !186, size: 64, offset: 1536)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !161, line: 731, size: 320, elements: !188)
!188 = !{!189, !194, !198, !202, !207}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !187, file: !161, line: 732, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !170}
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !187, file: !161, line: 733, baseType: !195, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !170}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !187, file: !161, line: 734, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!127, !170, !7, !193}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !187, file: !161, line: 735, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!193, !170, !7, !193, !193, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !187, file: !161, line: 736, baseType: !208, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!193, !170, !7, !193, !193, !122}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !171, file: !161, line: 618, baseType: !212, size: 64, offset: 1600)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !161, line: 537, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !171, file: !161, line: 619, baseType: !127, size: 64, offset: 1664)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !171, file: !161, line: 620, baseType: !216, size: 64, offset: 1728)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !218, line: 84, flags: DIFlagFwdDecl)
!218 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !171, file: !161, line: 622, baseType: !220, size: 8, offset: 1792)
!220 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !171, file: !161, line: 623, baseType: !220, size: 8, offset: 1800)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !171, file: !161, line: 624, baseType: !220, size: 8, offset: 1808)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !171, file: !161, line: 625, baseType: !220, size: 8, offset: 1816)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !171, file: !161, line: 630, baseType: !225, size: 384, offset: 1824)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 384, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 48)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !171, file: !161, line: 632, baseType: !229, size: 16, offset: 2208)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !171, file: !161, line: 633, baseType: !231, size: 16, offset: 2224)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !161, line: 237, baseType: !229)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !171, file: !161, line: 634, baseType: !233, size: 64, offset: 2240)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !235)
!235 = !{!236, !3379, !3380, !3383, !3384, !3435, !3526, !3527, !3528, !3529, !3530, !3539, !3644, !3657, !3852, !3853, !3857, !3859, !3860, !3861, !3865, !3871, !3872, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3913, !3914, !3915, !3918, !3921, !3922, !3923, !3924}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !234, file: !73, line: 462, baseType: !237, size: 512)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !238, line: 64, size: 512, elements: !239)
!238 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !241, !242, !244, !304, !3230, !3369, !3374, !3375, !3376, !3377, !3378}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !237, file: !238, line: 65, baseType: !148, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !237, file: !238, line: 66, baseType: !164, size: 128, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !238, line: 67, baseType: !243, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !237, file: !238, line: 68, baseType: !245, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !238, line: 192, size: 704, elements: !247)
!247 = !{!248, !249, !265, !266}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !246, file: !238, line: 193, baseType: !164, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !246, file: !238, line: 194, baseType: !250, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !251, line: 83, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !251, line: 71, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !251, line: 72, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 72, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !255, file: !251, line: 73, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !251, line: 20, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !258, file: !251, line: 21, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !262, line: 25, baseType: !263)
!262 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 25, elements: !264)
!264 = !{}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !246, file: !238, line: 195, baseType: !237, size: 512, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !246, file: !238, line: 196, baseType: !267, size: 64, offset: 640)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !238, line: 156, size: 192, elements: !270)
!270 = !{!271, !276, !281}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !269, file: !238, line: 157, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!193, !245, !243}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !238, line: 158, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!148, !245, !243}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !269, file: !238, line: 159, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!193, !245, !243, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !238, line: 148, size: 20736, elements: !288)
!288 = !{!289, !294, !298, !299, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !287, file: !238, line: 149, baseType: !290, size: 192)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !292)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!292 = !{!293}
!293 = !DISubrange(count: 3)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !287, file: !238, line: 150, baseType: !295, size: 4096, offset: 192)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 4096, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !287, file: !238, line: 151, baseType: !193, size: 32, offset: 4288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !287, file: !238, line: 152, baseType: !300, size: 16384, offset: 4320)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 16384, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 2048)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !287, file: !238, line: 153, baseType: !193, size: 32, offset: 20704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !237, file: !238, line: 69, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !238, line: 138, size: 448, elements: !307)
!307 = !{!308, !312, !340, !342, !3192, !3220, !3224}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !238, line: 139, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !243}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !238, line: 140, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 230, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 231, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !243, !327, !291}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !141, line: 60, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !148, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !141, line: 19, baseType: !229)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 232, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !243, !327, !148, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 55, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !306, file: !238, line: 141, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !238, line: 142, baseType: !343, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !347)
!347 = !{!348, !349, !353, !3189, !3190}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !316, line: 85, baseType: !148, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !346, file: !316, line: 86, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!332, !243, !327, !193}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !346, file: !316, line: 88, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!332, !243, !357, !193}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 168, size: 448, elements: !359)
!359 = !{!360, !361, !362, !363, !3184, !3185}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !358, file: !316, line: 169, baseType: !328, size: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !358, file: !316, line: 170, baseType: !337, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !358, file: !316, line: 171, baseType: !127, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !358, file: !316, line: 172, baseType: !364, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!322, !367, !243, !357, !291, !538, !337}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !369)
!369 = !{!370, !388, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3167, !3168, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !368, file: !44, line: 920, baseType: !371, size: 128)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !44, line: 917, size: 128, elements: !372)
!372 = !{!373, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !371, file: !44, line: 918, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !375, line: 58, size: 64, elements: !376)
!375 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !375, line: 59, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !371, file: !44, line: 919, baseType: !380, size: 128, align: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !141, line: 216, size: 128, align: 64, elements: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !141, line: 217, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !380, file: !141, line: 218, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !383}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !368, file: !44, line: 921, baseType: !389, size: 128, offset: 128)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !390, line: 8, size: 128, elements: !391)
!390 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !389, file: !390, line: 9, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !395, line: 18, flags: DIFlagFwdDecl)
!395 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !389, file: !390, line: 10, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !395, line: 89, size: 1536, elements: !399)
!399 = !{!400, !401, !411, !419, !420, !435, !3117, !3119, !3131, !3132, !3133, !3134, !3135, !3141, !3142, !3143}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !398, file: !395, line: 91, baseType: !7, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !398, file: !395, line: 92, baseType: !402, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !403, line: 277, baseType: !404)
!403 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !403, line: 277, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !404, file: !403, line: 277, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !403, line: 70, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !403, line: 65, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !403, line: 66, baseType: !7, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !398, file: !395, line: 93, baseType: !412, size: 128, offset: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !413, line: 38, size: 128, elements: !414)
!413 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!414 = !{!415, !417}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !413, line: 39, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !412, file: !413, line: 39, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !398, file: !395, line: 94, baseType: !397, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !398, file: !395, line: 95, baseType: !421, size: 128, offset: 256)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !395, line: 47, size: 128, elements: !422)
!422 = !{!423, !432}
!423 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !395, line: 48, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !395, line: 48, size: 64, elements: !425)
!425 = !{!426, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !395, line: 49, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !424, file: !395, line: 49, size: 64, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !427, file: !395, line: 50, baseType: !122, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !427, file: !395, line: 50, baseType: !122, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !424, file: !395, line: 52, baseType: !143, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !395, line: 54, baseType: !433, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !398, file: !395, line: 96, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !438)
!438 = !{!439, !440, !441, !449, !456, !457, !605, !2828, !2829, !2830, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !3093, !3101, !3102, !3103, !3113, !3114, !3115, !3116}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !437, file: !44, line: 611, baseType: !332, size: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !437, file: !44, line: 612, baseType: !229, size: 16, offset: 16)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !437, file: !44, line: 613, baseType: !442, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !443, line: 23, baseType: !444)
!443 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 21, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !444, file: !443, line: 22, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !141, line: 32, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !437, file: !44, line: 614, baseType: !450, size: 32, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !443, line: 28, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 26, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !451, file: !443, line: 27, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !141, line: 33, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !437, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !437, file: !44, line: 622, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !461)
!461 = !{!462, !466, !479, !483, !489, !493, !499, !503, !507, !511, !515, !516, !522, !526, !552, !581, !585, !591, !596, !600, !601}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !460, file: !44, line: 1865, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!397, !436, !397, !7}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !460, file: !44, line: 1866, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!148, !397, !436, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !472, line: 10, size: 128, elements: !473)
!472 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !478}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !471, file: !472, line: 11, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !127}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !471, file: !472, line: 12, baseType: !127, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !460, file: !44, line: 1867, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!193, !436, !193}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !460, file: !44, line: 1868, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !436, !193}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !460, file: !44, line: 1870, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!193, !397, !291, !193}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !460, file: !44, line: 1872, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!193, !436, !397, !332, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !141, line: 30, baseType: !498)
!498 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !460, file: !44, line: 1873, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!193, !397, !436, !397}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !460, file: !44, line: 1874, baseType: !504, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!193, !436, !397}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !460, file: !44, line: 1875, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!193, !436, !397, !148}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !460, file: !44, line: 1876, baseType: !512, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!193, !436, !397, !332}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !460, file: !44, line: 1877, baseType: !504, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !460, file: !44, line: 1878, baseType: !517, size: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!193, !436, !397, !332, !520}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !141, line: 16, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !141, line: 13, baseType: !122)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !460, file: !44, line: 1879, baseType: !523, size: 64, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!193, !436, !397, !436, !397, !7}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !460, file: !44, line: 1881, baseType: !527, size: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!193, !397, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !532)
!532 = !{!533, !534, !535, !536, !537, !541, !549, !550, !551}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !531, file: !44, line: 220, baseType: !7, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !531, file: !44, line: 221, baseType: !332, size: 16, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !531, file: !44, line: 222, baseType: !442, size: 32, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !531, file: !44, line: 223, baseType: !450, size: 32, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !531, file: !44, line: 224, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !141, line: 46, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !540)
!540 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !531, file: !44, line: 225, baseType: !542, size: 128, offset: 192)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !543, line: 13, size: 128, elements: !544)
!543 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!544 = !{!545, !548}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !542, file: !543, line: 14, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !543, line: 8, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !125, line: 30, baseType: !540)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !542, file: !543, line: 15, baseType: !326, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !531, file: !44, line: 226, baseType: !542, size: 128, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !531, file: !44, line: 227, baseType: !542, size: 128, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !531, file: !44, line: 234, baseType: !367, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !460, file: !44, line: 1882, baseType: !553, size: 64, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!193, !556, !558, !122, !7}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !560, line: 22, size: 1152, elements: !561)
!560 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562, !563, !564, !565, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !559, file: !560, line: 23, baseType: !122, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !559, file: !560, line: 24, baseType: !332, size: 16, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !559, file: !560, line: 25, baseType: !7, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !559, file: !560, line: 26, baseType: !566, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 104, baseType: !122)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !559, file: !560, line: 27, baseType: !143, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !559, file: !560, line: 28, baseType: !143, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !559, file: !560, line: 37, baseType: !143, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !559, file: !560, line: 38, baseType: !520, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !559, file: !560, line: 39, baseType: !520, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !559, file: !560, line: 40, baseType: !442, size: 32, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !559, file: !560, line: 41, baseType: !450, size: 32, offset: 416)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !559, file: !560, line: 42, baseType: !538, size: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !559, file: !560, line: 43, baseType: !542, size: 128, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !559, file: !560, line: 44, baseType: !542, size: 128, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !559, file: !560, line: 45, baseType: !542, size: 128, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !559, file: !560, line: 46, baseType: !542, size: 128, offset: 896)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !559, file: !560, line: 47, baseType: !143, size: 64, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !559, file: !560, line: 48, baseType: !143, size: 64, offset: 1088)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !460, file: !44, line: 1883, baseType: !582, size: 64, offset: 960)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!322, !397, !291, !337}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !460, file: !44, line: 1884, baseType: !586, size: 64, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!193, !436, !589, !143, !143}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !460, file: !44, line: 1886, baseType: !592, size: 64, offset: 1088)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!193, !436, !595, !193}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !460, file: !44, line: 1887, baseType: !597, size: 64, offset: 1152)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!193, !436, !397, !367, !7, !332}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !460, file: !44, line: 1890, baseType: !512, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !460, file: !44, line: 1891, baseType: !602, size: 64, offset: 1280)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!193, !436, !487, !193}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !437, file: !44, line: 623, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !664, !2435, !2517, !2600, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2616, !2620, !2621, !2624, !2625, !2628, !2629, !2630, !2671, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2708, !2715, !2716, !2718, !2719, !2720, !2779, !2780, !2795, !2796, !2797, !2798, !2799, !2802, !2803, !2804, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !607, file: !44, line: 1417, baseType: !164, size: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !607, file: !44, line: 1418, baseType: !520, size: 32, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !607, file: !44, line: 1419, baseType: !220, size: 8, offset: 160)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !607, file: !44, line: 1420, baseType: !152, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !607, file: !44, line: 1421, baseType: !538, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !607, file: !44, line: 1422, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !617)
!617 = !{!618, !619, !620, !627, !631, !635, !639, !643, !644, !654, !657, !658, !659, !661, !662, !663}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !616, file: !44, line: 2229, baseType: !148, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !616, file: !44, line: 2230, baseType: !193, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !616, file: !44, line: 2238, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!193, !624}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !626, line: 28, flags: DIFlagFwdDecl)
!626 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!627 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !616, file: !44, line: 2239, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !616, file: !44, line: 2240, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!397, !615, !193, !148, !127}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !616, file: !44, line: 2242, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !606}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !616, file: !44, line: 2243, baseType: !640, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !642, line: 76, flags: DIFlagFwdDecl)
!642 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !616, file: !44, line: 2244, baseType: !615, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !616, file: !44, line: 2245, baseType: !645, size: 64, offset: 512)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !141, line: 182, size: 64, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !645, file: !141, line: 183, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !141, line: 186, size: 128, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !141, line: 187, baseType: !648, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !649, file: !141, line: 187, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !616, file: !44, line: 2247, baseType: !655, offset: 576)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !656, line: 187, elements: !264)
!656 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !616, file: !44, line: 2248, baseType: !655, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !616, file: !44, line: 2249, baseType: !655, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !616, file: !44, line: 2250, baseType: !660, offset: 576)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, elements: !292)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !616, file: !44, line: 2252, baseType: !655, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !616, file: !44, line: 2253, baseType: !655, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !616, file: !44, line: 2254, baseType: !655, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !607, file: !44, line: 1423, baseType: !665, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !668)
!668 = !{!669, !673, !677, !678, !682, !688, !692, !693, !694, !698, !702, !703, !704, !705, !711, !716, !717, !724, !725, !726, !727, !2419, !2434}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !667, file: !44, line: 1936, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!436, !606}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !667, file: !44, line: 1937, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !436}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !667, file: !44, line: 1938, baseType: !674, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !667, file: !44, line: 1940, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !436, !193}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !667, file: !44, line: 1941, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!193, !436, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !667, file: !44, line: 1942, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!193, !436}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !667, file: !44, line: 1943, baseType: !674, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !667, file: !44, line: 1944, baseType: !636, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !667, file: !44, line: 1945, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!193, !606, !193}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !667, file: !44, line: 1946, baseType: !699, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!193, !606}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !667, file: !44, line: 1947, baseType: !699, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !667, file: !44, line: 1948, baseType: !699, size: 64, offset: 704)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !667, file: !44, line: 1949, baseType: !699, size: 64, offset: 768)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !667, file: !44, line: 1950, baseType: !706, size: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!193, !397, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !667, file: !44, line: 1951, baseType: !712, size: 64, offset: 896)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!193, !606, !715, !291}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !667, file: !44, line: 1952, baseType: !636, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !667, file: !44, line: 1954, baseType: !718, size: 64, offset: 1024)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!193, !721, !397}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !723, line: 539, flags: DIFlagFwdDecl)
!723 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !667, file: !44, line: 1955, baseType: !718, size: 64, offset: 1088)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !667, file: !44, line: 1956, baseType: !718, size: 64, offset: 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !667, file: !44, line: 1957, baseType: !718, size: 64, offset: 1216)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !667, file: !44, line: 1963, baseType: !728, size: 64, offset: 1280)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!193, !606, !731, !754}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !733, line: 68, size: 512, align: 128, elements: !734)
!733 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!734 = !{!735, !736, !2411, !2418}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !733, line: 69, baseType: !152, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 77, baseType: !737, size: 320, offset: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 77, size: 320, elements: !738)
!738 = !{!739, !926, !931, !959, !967, !973, !2342, !2410}
!739 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 78, baseType: !740, size: 320)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 78, size: 320, elements: !741)
!741 = !{!742, !743, !924, !925}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !740, file: !733, line: 84, baseType: !164, size: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !740, file: !733, line: 86, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !746)
!746 = !{!747, !748, !756, !757, !762, !777, !793, !794, !795, !796, !917, !918, !921, !922, !923}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !745, file: !44, line: 452, baseType: !436, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !745, file: !44, line: 453, baseType: !749, size: 128, offset: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !750, line: 292, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !749, file: !750, line: 293, baseType: !250)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !749, file: !750, line: 295, baseType: !754, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !141, line: 148, baseType: !7)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !749, file: !750, line: 296, baseType: !127, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !745, file: !44, line: 454, baseType: !754, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !745, file: !44, line: 455, baseType: !758, size: 32, offset: 224)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !141, line: 168, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 166, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !759, file: !141, line: 167, baseType: !193, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !745, file: !44, line: 460, baseType: !763, size: 128, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !764, line: 125, size: 128, elements: !765)
!764 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !776}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !763, file: !764, line: 126, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !764, line: 31, size: 64, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !767, file: !764, line: 32, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !764, line: 24, size: 192, align: 64, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !771, file: !764, line: 25, baseType: !152, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !771, file: !764, line: 26, baseType: !770, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !771, file: !764, line: 27, baseType: !770, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !763, file: !764, line: 127, baseType: !770, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !745, file: !44, line: 461, baseType: !778, size: 256, offset: 384)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !779, line: 35, size: 256, elements: !780)
!779 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !789, !790, !792}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !778, file: !779, line: 36, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !783, line: 13, baseType: !784)
!783 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !141, line: 175, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 173, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !785, file: !141, line: 174, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !123, line: 22, baseType: !547)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !778, file: !779, line: 42, baseType: !782, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !778, file: !779, line: 46, baseType: !791, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !251, line: 29, baseType: !258)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !778, file: !779, line: 47, baseType: !164, size: 128, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !745, file: !44, line: 462, baseType: !152, size: 64, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !745, file: !44, line: 463, baseType: !152, size: 64, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !745, file: !44, line: 464, baseType: !152, size: 64, offset: 768)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !745, file: !44, line: 465, baseType: !797, size: 64, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !800)
!800 = !{!801, !805, !809, !813, !817, !821, !827, !832, !836, !841, !845, !849, !853, !881, !885, !891, !892, !893, !897, !902, !906, !913}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !799, file: !44, line: 368, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!193, !731, !686}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !799, file: !44, line: 369, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!193, !367, !731}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !799, file: !44, line: 372, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!193, !744, !686}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !799, file: !44, line: 375, baseType: !814, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!193, !731}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !799, file: !44, line: 381, baseType: !818, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!193, !367, !744, !167, !7}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !799, file: !44, line: 383, baseType: !822, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !799, file: !44, line: 385, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!193, !367, !744, !538, !7, !7, !831, !126}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !799, file: !44, line: 388, baseType: !833, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!193, !367, !744, !538, !7, !7, !731, !127}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !799, file: !44, line: 393, baseType: !837, size: 64, offset: 512)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!840, !744, !840}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !141, line: 125, baseType: !143)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !799, file: !44, line: 394, baseType: !842, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !731, !7, !7}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !799, file: !44, line: 395, baseType: !846, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!193, !731, !754}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !799, file: !44, line: 396, baseType: !850, size: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !731}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !799, file: !44, line: 397, baseType: !854, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!322, !857, !879}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !859)
!859 = !{!860, !861, !862, !866, !867, !868, !871, !872}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !858, file: !44, line: 321, baseType: !367, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !858, file: !44, line: 326, baseType: !538, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !858, file: !44, line: 327, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !857, !326, !326}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !858, file: !44, line: 328, baseType: !127, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !858, file: !44, line: 329, baseType: !193, size: 32, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !858, file: !44, line: 330, baseType: !869, size: 16, offset: 288)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !123, line: 19, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !125, line: 24, baseType: !229)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !858, file: !44, line: 331, baseType: !869, size: 16, offset: 304)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !44, line: 332, baseType: !873, size: 64, offset: 320)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !44, line: 332, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !873, file: !44, line: 333, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !873, file: !44, line: 334, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !799, file: !44, line: 402, baseType: !882, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!193, !744, !731, !731, !5}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !799, file: !44, line: 404, baseType: !886, size: 64, offset: 896)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!497, !731, !889}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !890, line: 305, baseType: !7)
!890 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!891 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !799, file: !44, line: 405, baseType: !850, size: 64, offset: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !799, file: !44, line: 406, baseType: !814, size: 64, offset: 1024)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !799, file: !44, line: 407, baseType: !894, size: 64, offset: 1088)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!193, !731, !152, !152}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !799, file: !44, line: 409, baseType: !898, size: 64, offset: 1152)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !731, !901, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !799, file: !44, line: 410, baseType: !903, size: 64, offset: 1216)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!193, !744, !731}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !799, file: !44, line: 413, baseType: !907, size: 64, offset: 1280)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!193, !910, !367, !912}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !799, file: !44, line: 415, baseType: !914, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !367}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !44, line: 466, baseType: !152, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !745, file: !44, line: 467, baseType: !919, size: 32, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !920, line: 8, baseType: !122)
!920 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!921 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !745, file: !44, line: 468, baseType: !250, offset: 992)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !745, file: !44, line: 469, baseType: !164, size: 128, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !745, file: !44, line: 470, baseType: !127, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !740, file: !733, line: 87, baseType: !152, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !740, file: !733, line: 94, baseType: !152, size: 64, offset: 256)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 96, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 96, size: 64, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !927, file: !733, line: 101, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !141, line: 143, baseType: !143)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 103, baseType: !932, size: 320)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 103, size: 320, elements: !933)
!933 = !{!934, !944, !947, !948}
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !733, line: 104, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !733, line: 104, size: 128, elements: !936)
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !935, file: !733, line: 105, baseType: !164, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !733, line: 106, baseType: !939, size: 128)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !733, line: 106, size: 128, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !939, file: !733, line: 107, baseType: !731, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !939, file: !733, line: 109, baseType: !193, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !939, file: !733, line: 110, baseType: !193, size: 32, offset: 96)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !932, file: !733, line: 117, baseType: !945, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !733, line: 117, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !932, file: !733, line: 119, baseType: !127, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !932, file: !733, line: 120, baseType: !949, size: 64, offset: 256)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !932, file: !733, line: 120, size: 64, elements: !950)
!950 = !{!951, !952, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !949, file: !733, line: 121, baseType: !127, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !949, file: !733, line: 122, baseType: !152, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !733, line: 123, baseType: !954, size: 32)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !733, line: 123, size: 32, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !954, file: !733, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !954, file: !733, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !954, file: !733, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 130, baseType: !960, size: 192)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 130, size: 192, elements: !961)
!961 = !{!962, !963, !964, !965, !966}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !960, file: !733, line: 131, baseType: !152, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !960, file: !733, line: 134, baseType: !220, size: 8, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !960, file: !733, line: 135, baseType: !220, size: 8, offset: 72)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !960, file: !733, line: 136, baseType: !758, size: 32, offset: 96)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !960, file: !733, line: 137, baseType: !7, size: 32, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 139, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 139, size: 256, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !968, file: !733, line: 140, baseType: !152, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !968, file: !733, line: 141, baseType: !758, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !968, file: !733, line: 143, baseType: !164, size: 128, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 145, baseType: !974, size: 256)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 145, size: 256, elements: !975)
!975 = !{!976, !977, !979, !980, !2341}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !974, file: !733, line: 146, baseType: !152, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !974, file: !733, line: 147, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !723, line: 509, baseType: !731)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !974, file: !733, line: 148, baseType: !152, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !733, line: 149, baseType: !981, size: 64, offset: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !733, line: 149, size: 64, elements: !982)
!982 = !{!983, !2340}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !981, file: !733, line: 150, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !733, line: 388, size: 7296, elements: !986)
!986 = !{!987, !2336}
!987 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !733, line: 389, baseType: !988, size: 7296)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !733, line: 389, size: 7296, elements: !989)
!989 = !{!990, !1108, !1109, !1110, !1114, !1115, !1116, !1117, !1118, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1159, !1165, !1168, !1214, !1215, !2320, !2321, !2324, !2325, !2326, !2329, !2330, !2331, !2334, !2335}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !988, file: !733, line: 390, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !733, line: 305, size: 1472, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1008, !1009, !1014, !1015, !1018, !1102, !1103, !1104, !1105, !1106}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !992, file: !733, line: 308, baseType: !152, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !992, file: !733, line: 309, baseType: !152, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !992, file: !733, line: 313, baseType: !991, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !992, file: !733, line: 313, baseType: !991, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !992, file: !733, line: 315, baseType: !771, size: 192, align: 64, offset: 256)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !992, file: !733, line: 323, baseType: !152, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !992, file: !733, line: 327, baseType: !984, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !992, file: !733, line: 333, baseType: !1002, size: 64, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !723, line: 284, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !723, line: 284, size: 64, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1003, file: !723, line: 284, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1007, line: 19, baseType: !152)
!1007 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !992, file: !733, line: 334, baseType: !152, size: 64, offset: 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !992, file: !733, line: 343, baseType: !1010, size: 256, offset: 704)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !733, line: 340, size: 256, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1010, file: !733, line: 341, baseType: !771, size: 192, align: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1010, file: !733, line: 342, baseType: !152, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !992, file: !733, line: 351, baseType: !164, size: 128, offset: 960)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !992, file: !733, line: 353, baseType: !1016, size: 64, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !733, line: 353, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !992, file: !733, line: 356, baseType: !1019, size: 64, offset: 1152)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1022)
!1022 = !{!1023, !1027, !1028, !1032, !1036, !1076, !1080, !1084, !1088, !1089, !1090, !1094, !1098}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1021, file: !14, line: 558, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !991}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1021, file: !14, line: 559, baseType: !1024, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1021, file: !14, line: 560, baseType: !1029, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!193, !991, !152}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1021, file: !14, line: 561, baseType: !1033, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!193, !991}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1021, file: !14, line: 562, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !733, line: 682, baseType: !7)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1043)
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1056, !1063, !1069, !1070, !1071, !1073, !1075}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1042, file: !14, line: 509, baseType: !991, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1042, file: !14, line: 511, baseType: !754, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1042, file: !14, line: 512, baseType: !152, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1042, file: !14, line: 513, baseType: !152, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1042, file: !14, line: 514, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !723, line: 385, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 385, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1052, file: !723, line: 385, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1007, line: 15, baseType: !152)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1042, file: !14, line: 516, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !723, line: 359, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 359, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1059, file: !723, line: 359, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1007, line: 16, baseType: !152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1042, file: !14, line: 519, baseType: !1064, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1007, line: 21, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 21, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1065, file: !1007, line: 21, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1007, line: 14, baseType: !152)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1042, file: !14, line: 521, baseType: !731, size: 64, offset: 448)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1042, file: !14, line: 522, baseType: !731, size: 64, offset: 512)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1042, file: !14, line: 528, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1042, file: !14, line: 532, baseType: !1074, size: 64, offset: 640)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1042, file: !14, line: 536, baseType: !978, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1021, file: !14, line: 563, baseType: !1077, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!1040, !1041, !13}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1021, file: !14, line: 565, baseType: !1081, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !1041, !152, !152}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1021, file: !14, line: 567, baseType: !1085, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!152, !991}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1021, file: !14, line: 571, baseType: !1037, size: 64, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1021, file: !14, line: 574, baseType: !1037, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1021, file: !14, line: 579, baseType: !1091, size: 64, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!193, !991, !152, !127, !193, !193}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1021, file: !14, line: 585, baseType: !1095, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!148, !991}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1021, file: !14, line: 615, baseType: !1099, size: 64, offset: 768)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!731, !991, !152}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !992, file: !733, line: 359, baseType: !152, size: 64, offset: 1216)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !992, file: !733, line: 361, baseType: !367, size: 64, offset: 1280)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !992, file: !733, line: 362, baseType: !127, size: 64, offset: 1344)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !992, file: !733, line: 365, baseType: !782, size: 64, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !992, file: !733, line: 373, baseType: !1107, offset: 1472)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !733, line: 296, elements: !264)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !988, file: !733, line: 391, baseType: !767, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !988, file: !733, line: 392, baseType: !143, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !988, file: !733, line: 394, baseType: !1111, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!152, !367, !152, !152, !152, !152}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !988, file: !733, line: 398, baseType: !152, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !988, file: !733, line: 399, baseType: !152, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !988, file: !733, line: 405, baseType: !152, size: 64, offset: 384)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !988, file: !733, line: 406, baseType: !152, size: 64, offset: 448)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !988, file: !733, line: 407, baseType: !1119, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !723, line: 286, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !723, line: 286, size: 64, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1121, file: !723, line: 286, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1007, line: 18, baseType: !152)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !988, file: !733, line: 416, baseType: !758, size: 32, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !988, file: !733, line: 428, baseType: !758, size: 32, offset: 608)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !988, file: !733, line: 437, baseType: !758, size: 32, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !988, file: !733, line: 447, baseType: !758, size: 32, offset: 672)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !988, file: !733, line: 450, baseType: !782, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !988, file: !733, line: 452, baseType: !193, size: 32, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !988, file: !733, line: 454, baseType: !250, offset: 800)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !988, file: !733, line: 457, baseType: !778, size: 256, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !988, file: !733, line: 459, baseType: !164, size: 128, offset: 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !988, file: !733, line: 466, baseType: !152, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !988, file: !733, line: 467, baseType: !152, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !988, file: !733, line: 469, baseType: !152, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !988, file: !733, line: 470, baseType: !152, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !988, file: !733, line: 471, baseType: !784, size: 64, offset: 1472)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !988, file: !733, line: 472, baseType: !152, size: 64, offset: 1536)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !988, file: !733, line: 473, baseType: !152, size: 64, offset: 1600)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !988, file: !733, line: 474, baseType: !152, size: 64, offset: 1664)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !988, file: !733, line: 475, baseType: !152, size: 64, offset: 1728)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !988, file: !733, line: 477, baseType: !250, offset: 1792)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !988, file: !733, line: 478, baseType: !152, size: 64, offset: 1792)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !988, file: !733, line: 478, baseType: !152, size: 64, offset: 1856)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !988, file: !733, line: 478, baseType: !152, size: 64, offset: 1920)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !988, file: !733, line: 478, baseType: !152, size: 64, offset: 1984)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !988, file: !733, line: 479, baseType: !152, size: 64, offset: 2048)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !988, file: !733, line: 479, baseType: !152, size: 64, offset: 2112)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !988, file: !733, line: 479, baseType: !152, size: 64, offset: 2176)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !988, file: !733, line: 480, baseType: !152, size: 64, offset: 2240)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !988, file: !733, line: 480, baseType: !152, size: 64, offset: 2304)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !988, file: !733, line: 480, baseType: !152, size: 64, offset: 2368)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !988, file: !733, line: 480, baseType: !152, size: 64, offset: 2432)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !988, file: !733, line: 482, baseType: !1156, size: 2816, offset: 2496)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2816, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 44)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !988, file: !733, line: 488, baseType: !1160, size: 256, offset: 5312)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1161, line: 60, size: 256, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1160, file: !1161, line: 61, baseType: !1164, size: 256)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 256, elements: !181)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !988, file: !733, line: 490, baseType: !1166, size: 64, offset: 5568)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !733, line: 490, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !988, file: !733, line: 493, baseType: !1169, size: 896, offset: 5632)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1170, line: 53, baseType: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1170, line: 13, size: 896, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1179, !1180, !1187, !1188, !1208, !1209, !1210}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1171, file: !1170, line: 18, baseType: !143, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1171, file: !1170, line: 28, baseType: !784, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1171, file: !1170, line: 31, baseType: !778, size: 256, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1171, file: !1170, line: 32, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1170, line: 32, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1171, file: !1170, line: 37, baseType: !229, size: 16, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1171, file: !1170, line: 40, baseType: !1181, size: 192, offset: 512)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1182, line: 53, size: 192, elements: !1183)
!1182 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1183 = !{!1184, !1185, !1186}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1181, file: !1182, line: 54, baseType: !782, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1181, file: !1182, line: 55, baseType: !250, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1181, file: !1182, line: 59, baseType: !164, size: 128, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1171, file: !1170, line: 41, baseType: !127, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1171, file: !1170, line: 42, baseType: !1189, size: 64, offset: 768)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1192, line: 13, size: 896, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1191, file: !1192, line: 14, baseType: !127, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1191, file: !1192, line: 15, baseType: !152, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1191, file: !1192, line: 17, baseType: !152, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1191, file: !1192, line: 17, baseType: !152, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1191, file: !1192, line: 19, baseType: !326, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1191, file: !1192, line: 21, baseType: !326, size: 64, offset: 320)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1191, file: !1192, line: 22, baseType: !326, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1191, file: !1192, line: 23, baseType: !326, size: 64, offset: 448)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1191, file: !1192, line: 24, baseType: !326, size: 64, offset: 512)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1191, file: !1192, line: 25, baseType: !326, size: 64, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1191, file: !1192, line: 26, baseType: !326, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1191, file: !1192, line: 27, baseType: !326, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1191, file: !1192, line: 28, baseType: !326, size: 64, offset: 768)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1191, file: !1192, line: 29, baseType: !326, size: 64, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1171, file: !1170, line: 44, baseType: !758, size: 32, offset: 832)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1171, file: !1170, line: 50, baseType: !869, size: 16, offset: 864)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1171, file: !1170, line: 51, baseType: !1211, size: 16, offset: 880)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !123, line: 18, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !125, line: 23, baseType: !1213)
!1213 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !988, file: !733, line: 495, baseType: !152, size: 64, offset: 6528)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !988, file: !733, line: 497, baseType: !1216, size: 64, offset: 6592)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !733, line: 381, size: 384, elements: !1218)
!1218 = !{!1219, !1220, !2319}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1217, file: !733, line: 382, baseType: !758, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1217, file: !733, line: 383, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !733, line: 376, size: 128, elements: !1222)
!1222 = !{!1223, !2317}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1221, file: !733, line: 377, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1226, line: 640, size: 48640, elements: !1227)
!1226 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1227 = !{!1228, !1234, !1236, !1237, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1254, !1272, !1283, !1368, !1369, !1370, !1381, !1382, !1384, !1385, !1386, !1387, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1465, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1503, !1505, !1506, !1507, !1519, !1520, !1521, !1522, !1523, !1524, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1548, !1553, !1737, !1738, !1739, !1740, !1744, !1747, !1750, !1753, !1756, !1759, !1860, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1906, !1907, !1908, !1909, !1910, !1915, !1916, !1917, !1920, !1921, !1924, !1927, !1930, !1933, !1976, !1979, !1980, !2059, !2060, !2063, !2064, !2067, !2068, !2069, !2073, !2074, !2075, !2088, !2089, !2090, !2100, !2105, !2108, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1225, file: !1226, line: 646, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1230, line: 56, size: 128, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1229, file: !1230, line: 57, baseType: !152, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1229, file: !1230, line: 58, baseType: !122, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1225, file: !1226, line: 649, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !326)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1225, file: !1226, line: 657, baseType: !127, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1225, file: !1226, line: 658, baseType: !1238, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1239, line: 113, baseType: !1240)
!1239 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1239, line: 111, size: 32, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1240, file: !1239, line: 112, baseType: !758, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1225, file: !1226, line: 660, baseType: !7, size: 32, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1225, file: !1226, line: 661, baseType: !7, size: 32, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1225, file: !1226, line: 684, baseType: !193, size: 32, offset: 352)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1225, file: !1226, line: 686, baseType: !193, size: 32, offset: 384)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1225, file: !1226, line: 687, baseType: !193, size: 32, offset: 416)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1225, file: !1226, line: 688, baseType: !193, size: 32, offset: 448)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1225, file: !1226, line: 689, baseType: !7, size: 32, offset: 480)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1225, file: !1226, line: 691, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1253)
!1253 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1226, line: 691, flags: DIFlagFwdDecl)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1225, file: !1226, line: 692, baseType: !1255, size: 832, offset: 576)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1226, line: 451, size: 832, elements: !1256)
!1256 = !{!1257, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1255, file: !1226, line: 453, baseType: !1258, size: 128)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1226, line: 325, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1258, file: !1226, line: 326, baseType: !152, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1258, file: !1226, line: 327, baseType: !122, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1255, file: !1226, line: 454, baseType: !771, size: 192, align: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1255, file: !1226, line: 455, baseType: !164, size: 128, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1255, file: !1226, line: 456, baseType: !7, size: 32, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1255, file: !1226, line: 458, baseType: !143, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1255, file: !1226, line: 459, baseType: !143, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1255, file: !1226, line: 460, baseType: !143, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1255, file: !1226, line: 461, baseType: !143, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1255, file: !1226, line: 463, baseType: !143, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1255, file: !1226, line: 465, baseType: !1271, offset: 832)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1226, line: 415, elements: !264)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1225, file: !1226, line: 693, baseType: !1273, size: 384, offset: 1408)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1226, line: 489, size: 384, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1273, file: !1226, line: 490, baseType: !164, size: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1273, file: !1226, line: 491, baseType: !152, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1273, file: !1226, line: 492, baseType: !152, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1273, file: !1226, line: 493, baseType: !7, size: 32, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1273, file: !1226, line: 494, baseType: !229, size: 16, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1273, file: !1226, line: 495, baseType: !229, size: 16, offset: 304)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1273, file: !1226, line: 497, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1225, file: !1226, line: 697, baseType: !1284, size: 1792, offset: 1792)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1226, line: 507, size: 1792, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1365, !1366}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1284, file: !1226, line: 508, baseType: !771, size: 192, align: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1284, file: !1226, line: 515, baseType: !143, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1284, file: !1226, line: 516, baseType: !143, size: 64, offset: 256)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1284, file: !1226, line: 517, baseType: !143, size: 64, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1284, file: !1226, line: 518, baseType: !143, size: 64, offset: 384)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1284, file: !1226, line: 519, baseType: !143, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1284, file: !1226, line: 526, baseType: !788, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1284, file: !1226, line: 527, baseType: !143, size: 64, offset: 576)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !1226, line: 528, baseType: !7, size: 32, offset: 640)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1284, file: !1226, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1284, file: !1226, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1284, file: !1226, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1284, file: !1226, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1284, file: !1226, line: 563, baseType: !1300, size: 512, offset: 704)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1301)
!1301 = !{!1302, !1310, !1311, !1316, !1359, !1362, !1363, !1364}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1300, file: !20, line: 119, baseType: !1303, size: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1304, line: 9, size: 256, elements: !1305)
!1304 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1303, file: !1304, line: 10, baseType: !771, size: 192, align: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1303, file: !1304, line: 11, baseType: !1308, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1309, line: 29, baseType: !788)
!1309 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1300, file: !20, line: 120, baseType: !1308, size: 64, offset: 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1300, file: !20, line: 121, baseType: !1312, size: 64, offset: 320)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!19, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1300, file: !20, line: 122, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1319)
!1319 = !{!1320, !1340, !1341, !1344, !1349, !1350, !1354, !1358}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1318, file: !20, line: 160, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !20, line: 215, baseType: !791)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1322, file: !20, line: 216, baseType: !7, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1322, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1322, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1322, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1322, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1322, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1322, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1322, file: !20, line: 233, baseType: !1308, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1322, file: !20, line: 234, baseType: !1315, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1322, file: !20, line: 235, baseType: !1308, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1322, file: !20, line: 236, baseType: !1315, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1322, file: !20, line: 237, baseType: !1337, size: 4096, offset: 512)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 4096, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 8)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1318, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1318, file: !20, line: 162, baseType: !1342, size: 32, offset: 96)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !141, line: 27, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !193)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1318, file: !20, line: 163, baseType: !1345, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !403, line: 276, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !403, line: 276, size: 32, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1346, file: !403, line: 276, baseType: !407, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1318, file: !20, line: 164, baseType: !1315, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1318, file: !20, line: 165, baseType: !1351, size: 128, offset: 256)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1304, line: 14, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1351, file: !1304, line: 15, baseType: !763, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1318, file: !20, line: 166, baseType: !1355, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1308}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1318, file: !20, line: 167, baseType: !1308, size: 64, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1300, file: !20, line: 123, baseType: !1360, size: 8, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !123, line: 17, baseType: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !125, line: 21, baseType: !220)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1300, file: !20, line: 124, baseType: !1360, size: 8, offset: 456)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1300, file: !20, line: 125, baseType: !1360, size: 8, offset: 464)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1300, file: !20, line: 126, baseType: !1360, size: 8, offset: 472)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1284, file: !1226, line: 572, baseType: !1300, size: 512, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1284, file: !1226, line: 580, baseType: !1367, size: 64, offset: 1728)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1225, file: !1226, line: 721, baseType: !7, size: 32, offset: 3584)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1225, file: !1226, line: 722, baseType: !193, size: 32, offset: 3616)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1225, file: !1226, line: 723, baseType: !1371, size: 64, offset: 3648)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1374, line: 17, baseType: !1375)
!1374 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1374, line: 17, size: 64, elements: !1376)
!1376 = !{!1377}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1375, file: !1374, line: 17, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: 1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1225, file: !1226, line: 724, baseType: !1373, size: 64, offset: 3712)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1225, file: !1226, line: 749, baseType: !1383, offset: 3776)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1226, line: 290, elements: !264)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1225, file: !1226, line: 751, baseType: !164, size: 128, offset: 3776)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1225, file: !1226, line: 757, baseType: !984, size: 64, offset: 3904)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1225, file: !1226, line: 758, baseType: !984, size: 64, offset: 3968)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1225, file: !1226, line: 761, baseType: !1388, size: 320, offset: 4032)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1161, line: 34, size: 320, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1388, file: !1161, line: 35, baseType: !143, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1388, file: !1161, line: 36, baseType: !1392, size: 256, offset: 64)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 256, elements: !181)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1225, file: !1226, line: 766, baseType: !193, size: 32, offset: 4352)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1225, file: !1226, line: 767, baseType: !193, size: 32, offset: 4384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1225, file: !1226, line: 768, baseType: !193, size: 32, offset: 4416)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1225, file: !1226, line: 770, baseType: !193, size: 32, offset: 4448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1225, file: !1226, line: 772, baseType: !152, size: 64, offset: 4480)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1225, file: !1226, line: 775, baseType: !7, size: 32, offset: 4544)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1225, file: !1226, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1225, file: !1226, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1225, file: !1226, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1225, file: !1226, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1225, file: !1226, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1225, file: !1226, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1225, file: !1226, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1225, file: !1226, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1225, file: !1226, line: 831, baseType: !152, size: 64, offset: 4672)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1225, file: !1226, line: 833, baseType: !1409, size: 384, offset: 4736)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1410)
!1410 = !{!1411, !1416}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1409, file: !25, line: 26, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!326, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !25, line: 27, baseType: !1417, size: 320, offset: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !25, line: 27, size: 320, elements: !1418)
!1418 = !{!1419, !1428, !1455}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1417, file: !25, line: 36, baseType: !1420, size: 320)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 29, size: 320, elements: !1421)
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1420, file: !25, line: 30, baseType: !206, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1420, file: !25, line: 31, baseType: !122, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !25, line: 32, baseType: !122, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1420, file: !25, line: 33, baseType: !122, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1420, file: !25, line: 34, baseType: !143, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1420, file: !25, line: 35, baseType: !206, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1417, file: !25, line: 46, baseType: !1429, size: 192)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 38, size: 192, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1454}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1429, file: !25, line: 39, baseType: !1342, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1429, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1429, file: !25, line: 41, baseType: !1434, size: 64, offset: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1429, file: !25, line: 41, size: 64, elements: !1435)
!1435 = !{!1436, !1444}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1434, file: !25, line: 42, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1439, line: 7, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1438, file: !1439, line: 8, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !540)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1438, file: !1439, line: 9, baseType: !540, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1434, file: !25, line: 43, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1447, line: 7, size: 64, elements: !1448)
!1447 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1448 = !{!1449, !1453}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1446, file: !1447, line: 8, baseType: !1450, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1447, line: 5, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !123, line: 20, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !125, line: 26, baseType: !193)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1446, file: !1447, line: 9, baseType: !1451, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1429, file: !25, line: 45, baseType: !143, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1417, file: !25, line: 54, baseType: !1456, size: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1417, file: !25, line: 48, size: 256, elements: !1457)
!1457 = !{!1458, !1461, !1462, !1463, !1464}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1456, file: !25, line: 49, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1456, file: !25, line: 50, baseType: !193, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1456, file: !25, line: 51, baseType: !193, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1456, file: !25, line: 52, baseType: !152, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1456, file: !25, line: 53, baseType: !152, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1225, file: !1226, line: 835, baseType: !1466, size: 32, offset: 5120)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !141, line: 22, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !193)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1225, file: !1226, line: 836, baseType: !1466, size: 32, offset: 5152)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1225, file: !1226, line: 840, baseType: !152, size: 64, offset: 5184)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1225, file: !1226, line: 849, baseType: !1224, size: 64, offset: 5248)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1225, file: !1226, line: 852, baseType: !1224, size: 64, offset: 5312)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1225, file: !1226, line: 857, baseType: !164, size: 128, offset: 5376)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1225, file: !1226, line: 858, baseType: !164, size: 128, offset: 5504)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1225, file: !1226, line: 859, baseType: !1224, size: 64, offset: 5632)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1225, file: !1226, line: 867, baseType: !164, size: 128, offset: 5696)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1225, file: !1226, line: 868, baseType: !164, size: 128, offset: 5824)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1225, file: !1226, line: 871, baseType: !1478, size: 64, offset: 5952)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1480)
!1480 = !{!1481, !1482, !1483, !1484, !1486, !1487, !1494, !1495}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1479, file: !53, line: 61, baseType: !1238, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1479, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !53, line: 63, baseType: !250, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1479, file: !53, line: 65, baseType: !1485, size: 256, offset: 64)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 256, elements: !181)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1479, file: !53, line: 66, baseType: !645, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1479, file: !53, line: 68, baseType: !1488, size: 128, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1489, line: 40, baseType: !1490)
!1489 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1489, line: 36, size: 128, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1489, line: 37, baseType: !250)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1490, file: !1489, line: 38, baseType: !164, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1479, file: !53, line: 69, baseType: !380, size: 128, align: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1479, file: !53, line: 70, baseType: !1496, size: 128, offset: 640)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1497, size: 128, elements: !1379)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1497, file: !53, line: 55, baseType: !193, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1497, file: !53, line: 56, baseType: !1501, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1225, file: !1226, line: 872, baseType: !1504, size: 512, offset: 6016)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 512, elements: !181)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1225, file: !1226, line: 873, baseType: !164, size: 128, offset: 6528)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1225, file: !1226, line: 874, baseType: !164, size: 128, offset: 6656)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1225, file: !1226, line: 876, baseType: !1508, size: 64, offset: 6784)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1510, line: 26, size: 192, elements: !1511)
!1510 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1509, file: !1510, line: 27, baseType: !7, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1509, file: !1510, line: 28, baseType: !1514, size: 128, offset: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1515, line: 43, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1514, file: !1515, line: 44, baseType: !791)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1514, file: !1515, line: 45, baseType: !164, size: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1225, file: !1226, line: 879, baseType: !715, size: 64, offset: 6848)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1225, file: !1226, line: 882, baseType: !715, size: 64, offset: 6912)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1225, file: !1226, line: 884, baseType: !143, size: 64, offset: 6976)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1225, file: !1226, line: 885, baseType: !143, size: 64, offset: 7040)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1225, file: !1226, line: 890, baseType: !143, size: 64, offset: 7104)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1225, file: !1226, line: 891, baseType: !1525, size: 128, offset: 7168)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1226, line: 242, size: 128, elements: !1526)
!1526 = !{!1527, !1528, !1529}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1525, file: !1226, line: 244, baseType: !143, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1525, file: !1226, line: 245, baseType: !143, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1226, line: 246, baseType: !791, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1225, file: !1226, line: 900, baseType: !152, size: 64, offset: 7296)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1225, file: !1226, line: 901, baseType: !152, size: 64, offset: 7360)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1225, file: !1226, line: 904, baseType: !143, size: 64, offset: 7424)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1225, file: !1226, line: 907, baseType: !143, size: 64, offset: 7488)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1225, file: !1226, line: 910, baseType: !152, size: 64, offset: 7552)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1225, file: !1226, line: 911, baseType: !152, size: 64, offset: 7616)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1225, file: !1226, line: 914, baseType: !1537, size: 640, offset: 7680)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1538, line: 123, size: 640, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1546, !1547}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1537, file: !1538, line: 124, baseType: !1541, size: 576)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1542, size: 576, elements: !292)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1538, line: 108, size: 192, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1542, file: !1538, line: 109, baseType: !143, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1542, file: !1538, line: 110, baseType: !1351, size: 128, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1537, file: !1538, line: 125, baseType: !7, size: 32, offset: 576)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1537, file: !1538, line: 126, baseType: !7, size: 32, offset: 608)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1225, file: !1226, line: 917, baseType: !1549, size: 192, offset: 8320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1538, line: 134, size: 192, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1549, file: !1538, line: 135, baseType: !380, size: 128, align: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1549, file: !1538, line: 136, baseType: !7, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1225, file: !1226, line: 923, baseType: !1554, size: 64, offset: 8512)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1557, line: 111, size: 1280, elements: !1558)
!1557 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1578, !1579, !1580, !1581, !1582, !1583, !1690, !1691, !1692, !1693, !1719, !1722, !1732}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1556, file: !1557, line: 112, baseType: !758, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1556, file: !1557, line: 120, baseType: !442, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1556, file: !1557, line: 121, baseType: !450, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1556, file: !1557, line: 122, baseType: !442, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1556, file: !1557, line: 123, baseType: !450, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1556, file: !1557, line: 124, baseType: !442, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1556, file: !1557, line: 125, baseType: !450, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1556, file: !1557, line: 126, baseType: !442, size: 32, offset: 224)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1556, file: !1557, line: 127, baseType: !450, size: 32, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1556, file: !1557, line: 128, baseType: !7, size: 32, offset: 288)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1556, file: !1557, line: 129, baseType: !1570, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1571, line: 26, baseType: !1572)
!1571 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1571, line: 24, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1572, file: !1571, line: 25, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DISubrange(count: 2)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1556, file: !1557, line: 130, baseType: !1570, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1556, file: !1557, line: 131, baseType: !1570, size: 64, offset: 448)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1556, file: !1557, line: 132, baseType: !1570, size: 64, offset: 512)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1556, file: !1557, line: 133, baseType: !1570, size: 64, offset: 576)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1556, file: !1557, line: 135, baseType: !220, size: 8, offset: 640)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1556, file: !1557, line: 137, baseType: !1584, size: 64, offset: 704)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1586, line: 189, size: 1664, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1589, !1592, !1597, !1598, !1601, !1602, !1607, !1608, !1609, !1610, !1612, !1613, !1614, !1615, !1616, !1654, !1675}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1585, file: !1586, line: 190, baseType: !1238, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1585, file: !1586, line: 191, baseType: !1590, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1586, line: 28, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !141, line: 98, baseType: !1451)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 192, baseType: !1593, size: 192, offset: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 192, size: 192, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1593, file: !1586, line: 193, baseType: !164, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1593, file: !1586, line: 194, baseType: !771, size: 192, align: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1585, file: !1586, line: 199, baseType: !778, size: 256, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1585, file: !1586, line: 200, baseType: !1599, size: 64, offset: 512)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1586, line: 200, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1585, file: !1586, line: 201, baseType: !127, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 202, baseType: !1603, size: 64, offset: 640)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 202, size: 64, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1603, file: !1586, line: 203, baseType: !546, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1603, file: !1586, line: 204, baseType: !546, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1585, file: !1586, line: 206, baseType: !546, size: 64, offset: 704)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1585, file: !1586, line: 207, baseType: !442, size: 32, offset: 768)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1585, file: !1586, line: 208, baseType: !450, size: 32, offset: 800)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1585, file: !1586, line: 209, baseType: !1611, size: 32, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1586, line: 31, baseType: !566)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1585, file: !1586, line: 210, baseType: !229, size: 16, offset: 864)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1585, file: !1586, line: 211, baseType: !229, size: 16, offset: 880)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1585, file: !1586, line: 215, baseType: !1213, size: 16, offset: 896)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1585, file: !1586, line: 222, baseType: !152, size: 64, offset: 960)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 239, baseType: !1617, size: 320, offset: 1024)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 239, size: 320, elements: !1618)
!1618 = !{!1619, !1646}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1617, file: !1586, line: 240, baseType: !1620, size: 320)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1586, line: 108, size: 320, elements: !1621)
!1621 = !{!1622, !1623, !1635, !1638, !1645}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1620, file: !1586, line: 110, baseType: !152, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1620, file: !1586, line: 111, baseType: !1624, size: 64, offset: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1586, line: 111, size: 64, elements: !1625)
!1625 = !{!1626, !1634}
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1586, line: 112, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1624, file: !1586, line: 112, size: 64, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1627, file: !1586, line: 114, baseType: !869, size: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1627, file: !1586, line: 115, baseType: !1631, size: 48, offset: 16)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 48, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 6)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1624, file: !1586, line: 121, baseType: !152, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1620, file: !1586, line: 123, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1586, line: 96, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1620, file: !1586, line: 124, baseType: !1639, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1586, line: 102, size: 192, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1640, file: !1586, line: 103, baseType: !380, size: 128, align: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1640, file: !1586, line: 104, baseType: !1238, size: 32, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1640, file: !1586, line: 105, baseType: !497, size: 8, offset: 160)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1620, file: !1586, line: 125, baseType: !148, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1586, line: 241, baseType: !1647, size: 320)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1586, line: 241, size: 320, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1647, file: !1586, line: 242, baseType: !152, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1647, file: !1586, line: 243, baseType: !152, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1647, file: !1586, line: 244, baseType: !1636, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1647, file: !1586, line: 245, baseType: !1639, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1647, file: !1586, line: 246, baseType: !291, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1586, line: 254, baseType: !1655, size: 256, offset: 1344)
!1655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1585, file: !1586, line: 254, size: 256, elements: !1656)
!1656 = !{!1657, !1663}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1655, file: !1586, line: 255, baseType: !1658, size: 256)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1586, line: 128, size: 256, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1658, file: !1586, line: 129, baseType: !127, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1658, file: !1586, line: 130, baseType: !1662, size: 256)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !181)
!1663 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1586, line: 256, baseType: !1664, size: 256)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1655, file: !1586, line: 256, size: 256, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1664, file: !1586, line: 258, baseType: !164, size: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1664, file: !1586, line: 259, baseType: !1668, size: 128, offset: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1669, line: 22, size: 128, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1668, file: !1669, line: 23, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1669, line: 23, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1668, file: !1669, line: 24, baseType: !152, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1585, file: !1586, line: 274, baseType: !1676, size: 64, offset: 1600)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1586, line: 170, size: 192, elements: !1678)
!1678 = !{!1679, !1688, !1689}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1677, file: !1586, line: 171, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1586, line: 165, baseType: !1681)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!193, !1584, !1684, !1686, !1584}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1677, file: !1586, line: 172, baseType: !1584, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1677, file: !1586, line: 173, baseType: !1636, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1556, file: !1557, line: 138, baseType: !1584, size: 64, offset: 768)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1556, file: !1557, line: 139, baseType: !1584, size: 64, offset: 832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1556, file: !1557, line: 140, baseType: !1584, size: 64, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1556, file: !1557, line: 145, baseType: !1694, size: 64, offset: 960)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1696, line: 13, size: 896, elements: !1697)
!1696 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1695, file: !1696, line: 14, baseType: !1238, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1695, file: !1696, line: 15, baseType: !758, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1695, file: !1696, line: 16, baseType: !758, size: 32, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1695, file: !1696, line: 21, baseType: !782, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1695, file: !1696, line: 27, baseType: !152, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1695, file: !1696, line: 28, baseType: !152, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1695, file: !1696, line: 29, baseType: !782, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1695, file: !1696, line: 32, baseType: !649, size: 128, offset: 384)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1695, file: !1696, line: 33, baseType: !442, size: 32, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1695, file: !1696, line: 37, baseType: !782, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1695, file: !1696, line: 44, baseType: !1709, size: 256, offset: 640)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1710, line: 15, size: 256, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1709, file: !1710, line: 16, baseType: !791)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1709, file: !1710, line: 18, baseType: !193, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1709, file: !1710, line: 19, baseType: !193, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1709, file: !1710, line: 20, baseType: !193, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1709, file: !1710, line: 21, baseType: !193, size: 32, offset: 96)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1709, file: !1710, line: 22, baseType: !152, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !1710, line: 23, baseType: !152, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1556, file: !1557, line: 146, baseType: !1720, size: 64, offset: 1024)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !733, line: 516, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1556, file: !1557, line: 147, baseType: !1723, size: 64, offset: 1088)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1557, line: 25, size: 64, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1724, file: !1557, line: 26, baseType: !758, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1724, file: !1557, line: 27, baseType: !193, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1724, file: !1557, line: 28, baseType: !1729, offset: 64)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !1557, line: 149, baseType: !1733, size: 128, offset: 1152)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !1557, line: 149, size: 128, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1733, file: !1557, line: 150, baseType: !193, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1733, file: !1557, line: 151, baseType: !380, size: 128, align: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1225, file: !1226, line: 926, baseType: !1554, size: 64, offset: 8576)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1225, file: !1226, line: 929, baseType: !1554, size: 64, offset: 8640)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1225, file: !1226, line: 933, baseType: !1584, size: 64, offset: 8704)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1225, file: !1226, line: 943, baseType: !1741, size: 128, offset: 8768)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 128, elements: !1742)
!1742 = !{!1743}
!1743 = !DISubrange(count: 16)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1225, file: !1226, line: 945, baseType: !1745, size: 64, offset: 8896)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1226, line: 49, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1225, file: !1226, line: 956, baseType: !1748, size: 64, offset: 8960)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1226, line: 45, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1225, file: !1226, line: 959, baseType: !1751, size: 64, offset: 9024)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1226, line: 959, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1225, file: !1226, line: 962, baseType: !1754, size: 64, offset: 9088)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1226, line: 66, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1225, file: !1226, line: 966, baseType: !1757, size: 64, offset: 9152)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1226, line: 50, flags: DIFlagFwdDecl)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1225, file: !1226, line: 969, baseType: !1760, size: 64, offset: 9216)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1762, line: 82, size: 7296, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1808, !1809, !1811, !1812, !1813, !1816, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1846, !1847, !1854, !1855, !1856, !1857, !1858, !1859}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1761, file: !1762, line: 83, baseType: !1238, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1761, file: !1762, line: 84, baseType: !758, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1761, file: !1762, line: 85, baseType: !193, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1761, file: !1762, line: 86, baseType: !164, size: 128, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1761, file: !1762, line: 88, baseType: !1488, size: 128, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1761, file: !1762, line: 91, baseType: !1224, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1761, file: !1762, line: 94, baseType: !1771, size: 192, offset: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1772, line: 30, size: 192, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1771, file: !1772, line: 31, baseType: !164, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1771, file: !1772, line: 32, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1777, line: 25, baseType: !1778)
!1777 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1777, line: 23, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1778, file: !1777, line: 24, baseType: !1378, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1761, file: !1762, line: 97, baseType: !645, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1761, file: !1762, line: 100, baseType: !193, size: 32, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1761, file: !1762, line: 106, baseType: !193, size: 32, offset: 736)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1761, file: !1762, line: 107, baseType: !1224, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1761, file: !1762, line: 110, baseType: !193, size: 32, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 111, baseType: !7, size: 32, offset: 864)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1761, file: !1762, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1761, file: !1762, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1761, file: !1762, line: 128, baseType: !193, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1761, file: !1762, line: 129, baseType: !164, size: 128, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1761, file: !1762, line: 132, baseType: !1300, size: 512, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1761, file: !1762, line: 133, baseType: !1308, size: 64, offset: 1600)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1761, file: !1762, line: 140, baseType: !1794, size: 256, offset: 1664)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 256, elements: !1576)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1762, line: 38, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1795, file: !1762, line: 39, baseType: !143, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1795, file: !1762, line: 40, baseType: !143, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1761, file: !1762, line: 146, baseType: !1800, size: 192, offset: 1920)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1762, line: 66, size: 192, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1800, file: !1762, line: 67, baseType: !1803, size: 192)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1762, line: 47, size: 192, elements: !1804)
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1762, line: 48, baseType: !784, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1762, line: 49, baseType: !784, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1803, file: !1762, line: 50, baseType: !784, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1761, file: !1762, line: 150, baseType: !1537, size: 640, offset: 2112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1761, file: !1762, line: 153, baseType: !1810, size: 256, offset: 2752)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1478, size: 256, elements: !181)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1761, file: !1762, line: 159, baseType: !1478, size: 64, offset: 3008)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1761, file: !1762, line: 162, baseType: !193, size: 32, offset: 3072)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1761, file: !1762, line: 164, baseType: !1814, size: 64, offset: 3136)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1762, line: 164, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1761, file: !1762, line: 175, baseType: !1817, size: 32, offset: 3200)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !403, line: 805, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 798, size: 32, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1818, file: !403, line: 803, baseType: !402, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1818, file: !403, line: 804, baseType: !250, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1761, file: !1762, line: 176, baseType: !143, size: 64, offset: 3264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1761, file: !1762, line: 176, baseType: !143, size: 64, offset: 3328)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1761, file: !1762, line: 176, baseType: !143, size: 64, offset: 3392)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1761, file: !1762, line: 176, baseType: !143, size: 64, offset: 3456)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1761, file: !1762, line: 177, baseType: !143, size: 64, offset: 3520)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1761, file: !1762, line: 178, baseType: !143, size: 64, offset: 3584)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1761, file: !1762, line: 179, baseType: !1525, size: 128, offset: 3648)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1761, file: !1762, line: 180, baseType: !152, size: 64, offset: 3776)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1761, file: !1762, line: 180, baseType: !152, size: 64, offset: 3840)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1761, file: !1762, line: 180, baseType: !152, size: 64, offset: 3904)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1761, file: !1762, line: 180, baseType: !152, size: 64, offset: 3968)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1761, file: !1762, line: 181, baseType: !152, size: 64, offset: 4032)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1761, file: !1762, line: 181, baseType: !152, size: 64, offset: 4096)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1761, file: !1762, line: 181, baseType: !152, size: 64, offset: 4160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1761, file: !1762, line: 181, baseType: !152, size: 64, offset: 4224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1761, file: !1762, line: 182, baseType: !152, size: 64, offset: 4288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1761, file: !1762, line: 182, baseType: !152, size: 64, offset: 4352)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1761, file: !1762, line: 182, baseType: !152, size: 64, offset: 4416)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1761, file: !1762, line: 182, baseType: !152, size: 64, offset: 4480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1761, file: !1762, line: 183, baseType: !152, size: 64, offset: 4544)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1761, file: !1762, line: 183, baseType: !152, size: 64, offset: 4608)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1761, file: !1762, line: 184, baseType: !1844, offset: 4672)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1845, line: 12, elements: !264)
!1845 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1761, file: !1762, line: 192, baseType: !145, size: 64, offset: 4672)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1761, file: !1762, line: 203, baseType: !1848, size: 2048, offset: 4736)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 2048, elements: !1742)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1850, line: 43, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1849, file: !1850, line: 44, baseType: !339, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1849, file: !1850, line: 45, baseType: !339, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1761, file: !1762, line: 220, baseType: !497, size: 8, offset: 6784)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1761, file: !1762, line: 221, baseType: !1213, size: 16, offset: 6800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1761, file: !1762, line: 222, baseType: !1213, size: 16, offset: 6816)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1761, file: !1762, line: 224, baseType: !984, size: 64, offset: 6848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1761, file: !1762, line: 227, baseType: !1181, size: 192, offset: 6912)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1761, file: !1762, line: 233, baseType: !1181, size: 192, offset: 7104)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1225, file: !1226, line: 970, baseType: !1861, size: 64, offset: 9280)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1762, line: 20, size: 16576, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1862, file: !1762, line: 21, baseType: !250)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1862, file: !1762, line: 22, baseType: !1238, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1862, file: !1762, line: 23, baseType: !1488, size: 128, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1862, file: !1762, line: 24, baseType: !1868, size: 16384, offset: 192)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 16384, elements: !296)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1772, line: 49, size: 256, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1869, file: !1772, line: 50, baseType: !1872, size: 256)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1772, line: 35, size: 256, elements: !1873)
!1873 = !{!1874, !1881, !1882, !1888}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1872, file: !1772, line: 37, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1876, line: 19, baseType: !1877)
!1876 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1876, line: 18, baseType: !1879)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !193}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1872, file: !1772, line: 38, baseType: !152, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1872, file: !1772, line: 44, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1876, line: 22, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1876, line: 21, baseType: !1886)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1872, file: !1772, line: 46, baseType: !1776, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1225, file: !1226, line: 971, baseType: !1776, size: 64, offset: 9344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1225, file: !1226, line: 972, baseType: !1776, size: 64, offset: 9408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1225, file: !1226, line: 974, baseType: !1776, size: 64, offset: 9472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1225, file: !1226, line: 975, baseType: !1771, size: 192, offset: 9536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1225, file: !1226, line: 976, baseType: !152, size: 64, offset: 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1225, file: !1226, line: 977, baseType: !337, size: 64, offset: 9792)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1225, file: !1226, line: 978, baseType: !7, size: 32, offset: 9856)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1225, file: !1226, line: 980, baseType: !383, size: 64, offset: 9920)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1225, file: !1226, line: 989, baseType: !1898, size: 128, offset: 9984)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1899, line: 35, size: 128, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1898, file: !1899, line: 36, baseType: !193, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1898, file: !1899, line: 37, baseType: !758, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1898, file: !1899, line: 38, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1899, line: 23, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1225, file: !1226, line: 992, baseType: !143, size: 64, offset: 10112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1225, file: !1226, line: 993, baseType: !143, size: 64, offset: 10176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1225, file: !1226, line: 996, baseType: !250, offset: 10240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1225, file: !1226, line: 999, baseType: !791, offset: 10240)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1225, file: !1226, line: 1001, baseType: !1911, size: 64, offset: 10240)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1226, line: 636, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1911, file: !1226, line: 637, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1225, file: !1226, line: 1005, baseType: !763, size: 128, offset: 10304)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1225, file: !1226, line: 1007, baseType: !1224, size: 64, offset: 10432)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1225, file: !1226, line: 1009, baseType: !1918, size: 64, offset: 10496)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1226, line: 1009, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1225, file: !1226, line: 1043, baseType: !127, size: 64, offset: 10560)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1225, file: !1226, line: 1046, baseType: !1922, size: 64, offset: 10624)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1226, line: 41, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1225, file: !1226, line: 1050, baseType: !1925, size: 64, offset: 10688)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1226, line: 42, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1225, file: !1226, line: 1054, baseType: !1928, size: 64, offset: 10752)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1226, line: 55, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1225, file: !1226, line: 1056, baseType: !1931, size: 64, offset: 10816)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1226, line: 40, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1225, file: !1226, line: 1058, baseType: !1934, size: 64, offset: 10880)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1936, line: 99, size: 704, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1963, !1964}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1935, file: !1936, line: 100, baseType: !782, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1935, file: !1936, line: 101, baseType: !758, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1935, file: !1936, line: 102, baseType: !758, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 105, baseType: !250, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1935, file: !1936, line: 107, baseType: !229, size: 16, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1935, file: !1936, line: 109, baseType: !749, size: 128, offset: 192)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1935, file: !1936, line: 110, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1936, line: 73, size: 448, elements: !1947)
!1947 = !{!1948, !1951, !1952, !1957, !1962}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1946, file: !1936, line: 74, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1936, line: 74, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1946, file: !1936, line: 75, baseType: !1934, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 83, baseType: !1953, size: 128, offset: 128)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 83, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1953, file: !1936, line: 84, baseType: !164, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1953, file: !1936, line: 85, baseType: !945, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 87, baseType: !1958, size: 128, offset: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 87, size: 128, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1958, file: !1936, line: 88, baseType: !649, size: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1958, file: !1936, line: 89, baseType: !380, size: 128, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1936, line: 92, baseType: !7, size: 32, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1935, file: !1936, line: 111, baseType: !645, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1935, file: !1936, line: 113, baseType: !1965, size: 256, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1966, line: 102, size: 256, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1966, line: 103, baseType: !782, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1966, line: 104, baseType: !164, size: 128, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1965, file: !1966, line: 105, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1966, line: 21, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1225, file: !1226, line: 1061, baseType: !1977, size: 64, offset: 10944)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1226, line: 43, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1225, file: !1226, line: 1064, baseType: !152, size: 64, offset: 11008)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1225, file: !1226, line: 1065, baseType: !1981, size: 64, offset: 11072)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1772, line: 14, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1772, line: 12, size: 384, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1772, line: 13, baseType: !1986, size: 384)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1772, line: 13, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1986, file: !1772, line: 13, baseType: !193, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1986, file: !1772, line: 13, baseType: !193, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1986, file: !1772, line: 13, baseType: !193, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1986, file: !1772, line: 13, baseType: !1992, size: 256, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1993, line: 32, size: 256, elements: !1994)
!1993 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2000, !2013, !2019, !2028, !2048, !2053}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1992, file: !1993, line: 37, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 34, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1996, file: !1993, line: 35, baseType: !1467, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1996, file: !1993, line: 36, baseType: !448, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1992, file: !1993, line: 45, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 40, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006, !2012}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2001, file: !1993, line: 41, baseType: !2004, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !193)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2001, file: !1993, line: 42, baseType: !193, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1993, line: 43, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1993, line: 11, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1993, line: 8, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2008, file: !1993, line: 9, baseType: !193, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2008, file: !1993, line: 10, baseType: !127, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2001, file: !1993, line: 44, baseType: !193, size: 32, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1992, file: !1993, line: 52, baseType: !2014, size: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 48, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !1993, line: 49, baseType: !1467, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !1993, line: 50, baseType: !448, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2014, file: !1993, line: 51, baseType: !2007, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1992, file: !1993, line: 61, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 55, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !1993, line: 56, baseType: !1467, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !1993, line: 57, baseType: !448, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2020, file: !1993, line: 58, baseType: !193, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2020, file: !1993, line: 59, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2020, file: !1993, line: 60, baseType: !2026, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1992, file: !1993, line: 95, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 64, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2029, file: !1993, line: 65, baseType: !127, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !1993, line: 77, baseType: !2033, size: 192, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !1993, line: 77, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2033, file: !1993, line: 82, baseType: !1213, size: 16)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2033, file: !1993, line: 88, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 84, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2037, file: !1993, line: 85, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 64, elements: !1338)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2037, file: !1993, line: 86, baseType: !127, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2037, file: !1993, line: 87, baseType: !127, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2033, file: !1993, line: 93, baseType: !2044, size: 96)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 90, size: 96, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2044, file: !1993, line: 91, baseType: !2040, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2044, file: !1993, line: 92, baseType: !124, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1992, file: !1993, line: 101, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 98, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2049, file: !1993, line: 99, baseType: !326, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2049, file: !1993, line: 100, baseType: !193, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1992, file: !1993, line: 108, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 104, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2054, file: !1993, line: 105, baseType: !127, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2054, file: !1993, line: 106, baseType: !193, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2054, file: !1993, line: 107, baseType: !7, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1225, file: !1226, line: 1067, baseType: !1844, offset: 11136)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1225, file: !1226, line: 1099, baseType: !2061, size: 64, offset: 11136)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1226, line: 56, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1225, file: !1226, line: 1103, baseType: !164, size: 128, offset: 11200)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1225, file: !1226, line: 1104, baseType: !2065, size: 64, offset: 11328)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1226, line: 46, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1225, file: !1226, line: 1105, baseType: !1181, size: 192, offset: 11392)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1225, file: !1226, line: 1106, baseType: !7, size: 32, offset: 11584)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1225, file: !1226, line: 1109, baseType: !2070, size: 128, offset: 11648)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 128, elements: !1576)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1226, line: 51, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1225, file: !1226, line: 1110, baseType: !1181, size: 192, offset: 11776)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1225, file: !1226, line: 1111, baseType: !164, size: 128, offset: 11968)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1225, file: !1226, line: 1173, baseType: !2076, size: 64, offset: 12096)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2078, line: 62, size: 256, align: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2077, file: !2078, line: 75, baseType: !124, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2077, file: !2078, line: 90, baseType: !124, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2077, file: !2078, line: 124, baseType: !2083, size: 64, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !2078, line: 109, size: 64, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2083, file: !2078, line: 110, baseType: !144, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2083, file: !2078, line: 112, baseType: !144, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 144, baseType: !124, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1225, file: !1226, line: 1174, baseType: !122, size: 32, offset: 12160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1225, file: !1226, line: 1179, baseType: !152, size: 64, offset: 12224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1225, file: !1226, line: 1182, baseType: !2091, size: 128, offset: 12288)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1161, line: 76, size: 128, elements: !2092)
!2092 = !{!2093, !2098, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2091, file: !1161, line: 85, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2095, line: 7, size: 64, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2094, file: !2095, line: 12, baseType: !1375, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2091, file: !1161, line: 88, baseType: !497, size: 8, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2091, file: !1161, line: 95, baseType: !497, size: 8, offset: 72)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1226, line: 1184, baseType: !2101, size: 128, offset: 12416)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1225, file: !1226, line: 1184, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2101, file: !1226, line: 1185, baseType: !1238, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2101, file: !1226, line: 1186, baseType: !380, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1225, file: !1226, line: 1190, baseType: !2106, size: 64, offset: 12544)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1226, line: 53, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1225, file: !1226, line: 1192, baseType: !2109, size: 128, offset: 12608)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1161, line: 64, size: 128, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2109, file: !1161, line: 65, baseType: !731, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2109, file: !1161, line: 67, baseType: !124, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2109, file: !1161, line: 68, baseType: !124, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1225, file: !1226, line: 1206, baseType: !193, size: 32, offset: 12736)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1225, file: !1226, line: 1207, baseType: !193, size: 32, offset: 12768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1225, file: !1226, line: 1209, baseType: !152, size: 64, offset: 12800)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1225, file: !1226, line: 1219, baseType: !143, size: 64, offset: 12864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1225, file: !1226, line: 1220, baseType: !143, size: 64, offset: 12928)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1225, file: !1226, line: 1317, baseType: !193, size: 32, offset: 12992)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1225, file: !1226, line: 1319, baseType: !1224, size: 64, offset: 13056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1225, file: !1226, line: 1322, baseType: !2122, size: 64, offset: 13120)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2124, line: 56, size: 512, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2123, file: !2124, line: 57, baseType: !2122, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2123, file: !2124, line: 58, baseType: !127, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2123, file: !2124, line: 59, baseType: !152, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 60, baseType: !152, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2123, file: !2124, line: 61, baseType: !831, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2123, file: !2124, line: 62, baseType: !7, size: 32, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2123, file: !2124, line: 63, baseType: !142, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2123, file: !2124, line: 64, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1225, file: !1226, line: 1326, baseType: !1238, size: 32, offset: 13184)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1225, file: !1226, line: 1342, baseType: !127, size: 64, offset: 13248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1225, file: !1226, line: 1343, baseType: !144, size: 64, offset: 13312)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1225, file: !1226, line: 1344, baseType: !143, size: 64, offset: 13376)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1225, file: !1226, line: 1345, baseType: !144, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1225, file: !1226, line: 1346, baseType: !144, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1225, file: !1226, line: 1347, baseType: !144, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1225, file: !1226, line: 1348, baseType: !380, size: 128, align: 64, offset: 13504)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1225, file: !1226, line: 1358, baseType: !2145, size: 34816, offset: 13824)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2146, line: 485, size: 34816, elements: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2177, !2178, !2179, !2180, !2181, !2182, !2185, !2186, !2187}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2145, file: !2146, line: 487, baseType: !2149, size: 192)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2150, size: 192, elements: !292)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2151, line: 16, size: 64, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2150, file: !2151, line: 17, baseType: !869, size: 16)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2150, file: !2151, line: 18, baseType: !869, size: 16, offset: 16)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2150, file: !2151, line: 19, baseType: !869, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !2151, line: 19, baseType: !869, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2150, file: !2151, line: 19, baseType: !869, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2150, file: !2151, line: 19, baseType: !869, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2150, file: !2151, line: 19, baseType: !869, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2150, file: !2151, line: 20, baseType: !869, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2150, file: !2151, line: 20, baseType: !869, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2150, file: !2151, line: 20, baseType: !869, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2150, file: !2151, line: 20, baseType: !869, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2150, file: !2151, line: 20, baseType: !869, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2150, file: !2151, line: 20, baseType: !869, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2145, file: !2146, line: 491, baseType: !152, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2145, file: !2146, line: 495, baseType: !229, size: 16, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2145, file: !2146, line: 496, baseType: !229, size: 16, offset: 272)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2145, file: !2146, line: 497, baseType: !229, size: 16, offset: 288)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2145, file: !2146, line: 498, baseType: !229, size: 16, offset: 304)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2145, file: !2146, line: 502, baseType: !152, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2145, file: !2146, line: 503, baseType: !152, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2145, file: !2146, line: 514, baseType: !2174, size: 256, offset: 448)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 256, elements: !181)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2146, line: 483, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2145, file: !2146, line: 516, baseType: !152, size: 64, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2145, file: !2146, line: 518, baseType: !152, size: 64, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2145, file: !2146, line: 520, baseType: !152, size: 64, offset: 832)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2145, file: !2146, line: 521, baseType: !152, size: 64, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2145, file: !2146, line: 522, baseType: !152, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2145, file: !2146, line: 528, baseType: !2183, size: 64, offset: 1024)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2146, line: 10, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2145, file: !2146, line: 535, baseType: !152, size: 64, offset: 1088)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2145, file: !2146, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2145, file: !2146, line: 540, baseType: !2188, size: 33280, offset: 1536)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2189, line: 317, size: 33280, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2188, file: !2189, line: 330, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2188, file: !2189, line: 337, baseType: !152, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2188, file: !2189, line: 348, baseType: !2194, size: 32768, offset: 512)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2189, line: 304, size: 32768, elements: !2195)
!2195 = !{!2196, !2211, !2250, !2300, !2313}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2194, file: !2189, line: 305, baseType: !2197, size: 896)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2189, line: 12, size: 896, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2210}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2197, file: !2189, line: 13, baseType: !122, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2197, file: !2189, line: 14, baseType: !122, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2197, file: !2189, line: 15, baseType: !122, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2197, file: !2189, line: 16, baseType: !122, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2197, file: !2189, line: 17, baseType: !122, size: 32, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2197, file: !2189, line: 18, baseType: !122, size: 32, offset: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2197, file: !2189, line: 19, baseType: !122, size: 32, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2197, file: !2189, line: 22, baseType: !2207, size: 640, offset: 224)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 640, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 20)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2197, file: !2189, line: 25, baseType: !122, size: 32, offset: 864)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2194, file: !2189, line: 306, baseType: !2212, size: 4096, align: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2189, line: 34, size: 4096, align: 128, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2233, !2234, !2235, !2239, !2241, !2245}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2212, file: !2189, line: 35, baseType: !869, size: 16)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2212, file: !2189, line: 36, baseType: !869, size: 16, offset: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2212, file: !2189, line: 37, baseType: !869, size: 16, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2212, file: !2189, line: 38, baseType: !869, size: 16, offset: 48)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2189, line: 39, baseType: !2219, size: 128, offset: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2189, line: 39, size: 128, elements: !2220)
!2220 = !{!2221, !2226}
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 40, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 40, size: 128, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2222, file: !2189, line: 41, baseType: !143, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2222, file: !2189, line: 42, baseType: !143, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 44, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 44, size: 128, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2227, file: !2189, line: 45, baseType: !122, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2227, file: !2189, line: 46, baseType: !122, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2227, file: !2189, line: 47, baseType: !122, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2227, file: !2189, line: 48, baseType: !122, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2212, file: !2189, line: 51, baseType: !122, size: 32, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2212, file: !2189, line: 52, baseType: !122, size: 32, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2212, file: !2189, line: 55, baseType: !2236, size: 1024, offset: 256)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !2237)
!2237 = !{!2238}
!2238 = !DISubrange(count: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2212, file: !2189, line: 58, baseType: !2240, size: 2048, offset: 1280)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2048, elements: !296)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2212, file: !2189, line: 60, baseType: !2242, size: 384, offset: 3328)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 384, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: 12)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2189, line: 62, baseType: !2246, size: 384, offset: 3712)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2189, line: 62, size: 384, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2246, file: !2189, line: 63, baseType: !2242, size: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2246, file: !2189, line: 64, baseType: !2242, size: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2194, file: !2189, line: 307, baseType: !2251, size: 1088)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2189, line: 79, size: 1088, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2299}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2251, file: !2189, line: 80, baseType: !122, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2251, file: !2189, line: 81, baseType: !122, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2251, file: !2189, line: 82, baseType: !122, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2251, file: !2189, line: 83, baseType: !122, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2251, file: !2189, line: 84, baseType: !122, size: 32, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2251, file: !2189, line: 85, baseType: !122, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2251, file: !2189, line: 86, baseType: !122, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2251, file: !2189, line: 88, baseType: !2207, size: 640, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2251, file: !2189, line: 89, baseType: !1360, size: 8, offset: 864)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2251, file: !2189, line: 90, baseType: !1360, size: 8, offset: 872)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2251, file: !2189, line: 91, baseType: !1360, size: 8, offset: 880)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2251, file: !2189, line: 92, baseType: !1360, size: 8, offset: 888)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2251, file: !2189, line: 93, baseType: !1360, size: 8, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2251, file: !2189, line: 94, baseType: !1360, size: 8, offset: 904)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2251, file: !2189, line: 95, baseType: !2268, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2270, line: 11, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2269, file: !2270, line: 12, baseType: !326, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2269, file: !2270, line: 13, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2276, line: 56, size: 1344, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2275, file: !2276, line: 61, baseType: !152, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2275, file: !2276, line: 62, baseType: !152, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2275, file: !2276, line: 63, baseType: !152, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2275, file: !2276, line: 64, baseType: !152, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2275, file: !2276, line: 65, baseType: !152, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2275, file: !2276, line: 66, baseType: !152, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2275, file: !2276, line: 68, baseType: !152, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2275, file: !2276, line: 69, baseType: !152, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2275, file: !2276, line: 70, baseType: !152, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2275, file: !2276, line: 71, baseType: !152, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2275, file: !2276, line: 72, baseType: !152, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2275, file: !2276, line: 73, baseType: !152, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2275, file: !2276, line: 74, baseType: !152, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2275, file: !2276, line: 75, baseType: !152, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2275, file: !2276, line: 76, baseType: !152, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2275, file: !2276, line: 81, baseType: !152, size: 64, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2275, file: !2276, line: 83, baseType: !152, size: 64, offset: 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2275, file: !2276, line: 84, baseType: !152, size: 64, offset: 1088)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2276, line: 85, baseType: !152, size: 64, offset: 1152)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2275, file: !2276, line: 86, baseType: !152, size: 64, offset: 1216)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2275, file: !2276, line: 87, baseType: !152, size: 64, offset: 1280)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2251, file: !2189, line: 96, baseType: !122, size: 32, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2194, file: !2189, line: 308, baseType: !2301, size: 4608, align: 512)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2189, line: 289, size: 4608, align: 512, elements: !2302)
!2302 = !{!2303, !2304, !2311}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2301, file: !2189, line: 290, baseType: !2212, size: 4096, align: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2301, file: !2189, line: 291, baseType: !2305, size: 512, offset: 4096)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2189, line: 268, size: 512, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2305, file: !2189, line: 269, baseType: !143, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2305, file: !2189, line: 270, baseType: !143, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2305, file: !2189, line: 271, baseType: !2310, size: 384, offset: 128)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 384, elements: !1632)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2301, file: !2189, line: 292, baseType: !2312, offset: 4608)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, elements: !1730)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2194, file: !2189, line: 309, baseType: !2314, size: 32768)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 32768, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: 4096)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1221, file: !733, line: 378, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1217, file: !733, line: 384, baseType: !1509, size: 192, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !988, file: !733, line: 500, baseType: !250, offset: 6656)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !988, file: !733, line: 501, baseType: !2322, size: 64, offset: 6656)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !733, line: 387, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !988, file: !733, line: 516, baseType: !1720, size: 64, offset: 6720)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !988, file: !733, line: 519, baseType: !367, size: 64, offset: 6784)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !988, file: !733, line: 521, baseType: !2327, size: 64, offset: 6848)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !733, line: 521, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !988, file: !733, line: 545, baseType: !758, size: 32, offset: 6912)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !988, file: !733, line: 548, baseType: !497, size: 8, offset: 6944)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !988, file: !733, line: 550, baseType: !2332, offset: 6952)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2333, line: 142, elements: !264)
!2333 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !988, file: !733, line: 554, baseType: !1965, size: 256, offset: 6976)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !988, file: !733, line: 557, baseType: !122, size: 32, offset: 7232)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !985, file: !733, line: 565, baseType: !2337, offset: 7296)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !2338)
!2338 = !{!2339}
!2339 = !DISubrange(count: -1)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !981, file: !733, line: 151, baseType: !758, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !974, file: !733, line: 156, baseType: !250, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !737, file: !733, line: 159, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !733, line: 159, size: 128, elements: !2344)
!2344 = !{!2345, !2409}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2343, file: !733, line: 161, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2348)
!2348 = !{!2349, !2359, !2380, !2381, !2382, !2383, !2384, !2396, !2397, !2398}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2347, file: !31, line: 111, baseType: !2350, size: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2351)
!2351 = !{!2352, !2354, !2355, !2356, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2350, file: !31, line: 20, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2350, file: !31, line: 21, baseType: !2353, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2350, file: !31, line: 22, baseType: !2353, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2350, file: !31, line: 23, baseType: !152, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2350, file: !31, line: 24, baseType: !152, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2350, file: !31, line: 25, baseType: !152, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2347, file: !31, line: 112, baseType: !2360, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2362, line: 105, size: 128, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2361, file: !2362, line: 110, baseType: !152, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2361, file: !2362, line: 118, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2362, line: 95, size: 448, elements: !2368)
!2368 = !{!2369, !2370, !2375, !2376, !2377, !2378, !2379}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2367, file: !2362, line: 96, baseType: !782, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2367, file: !2362, line: 97, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2362, line: 60, baseType: !2373)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2360}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2367, file: !2362, line: 98, baseType: !2371, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2367, file: !2362, line: 99, baseType: !497, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2367, file: !2362, line: 100, baseType: !497, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2367, file: !2362, line: 101, baseType: !380, size: 128, align: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2367, file: !2362, line: 102, baseType: !2360, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2347, file: !31, line: 113, baseType: !2361, size: 128, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2347, file: !31, line: 114, baseType: !1509, size: 192, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2347, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2347, file: !31, line: 117, baseType: !2385, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2387, file: !31, line: 73, baseType: !850, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2387, file: !31, line: 78, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2346}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2387, file: !31, line: 83, baseType: !2391, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2387, file: !31, line: 89, baseType: !1037, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2347, file: !31, line: 118, baseType: !127, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2347, file: !31, line: 119, baseType: !193, size: 32, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !31, line: 120, baseType: !2399, size: 128, offset: 1024)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !31, line: 120, size: 128, elements: !2400)
!2400 = !{!2401, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2399, file: !31, line: 121, baseType: !2402, size: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2403, line: 6, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2402, file: !2403, line: 7, baseType: !143, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2402, file: !2403, line: 8, baseType: !143, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2399, file: !31, line: 122, baseType: !2408)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2402, elements: !1730)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2343, file: !733, line: 162, baseType: !127, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !737, file: !733, line: 176, baseType: !380, size: 128, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 179, baseType: !2412, size: 32, offset: 384)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 179, size: 32, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2412, file: !733, line: 184, baseType: !758, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2412, file: !733, line: 192, baseType: !7, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2412, file: !733, line: 194, baseType: !7, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2412, file: !733, line: 195, baseType: !193, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !732, file: !733, line: 199, baseType: !758, size: 32, offset: 416)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !667, file: !44, line: 1964, baseType: !2420, size: 64, offset: 1344)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!326, !606, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2425, line: 12, size: 256, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428, !2429, !2430, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2424, file: !2425, line: 13, baseType: !754, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2424, file: !2425, line: 16, baseType: !193, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2424, file: !2425, line: 23, baseType: !152, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2424, file: !2425, line: 30, baseType: !152, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2424, file: !2425, line: 33, baseType: !2432, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !733, line: 27, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !667, file: !44, line: 1966, baseType: !2420, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !607, file: !44, line: 1424, baseType: !2436, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2439)
!2439 = !{!2440, !2486, !2490, !2494, !2495, !2496, !2497, !2498, !2503, !2508, !2512}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2438, file: !38, line: 323, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!193, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2471, !2472, !2473}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2445, file: !38, line: 295, baseType: !649, size: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2445, file: !38, line: 296, baseType: !164, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2445, file: !38, line: 297, baseType: !164, size: 128, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2445, file: !38, line: 298, baseType: !164, size: 128, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2445, file: !38, line: 299, baseType: !1181, size: 192, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2445, file: !38, line: 300, baseType: !250, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2445, file: !38, line: 301, baseType: !758, size: 32, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2445, file: !38, line: 302, baseType: !606, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2445, file: !38, line: 303, baseType: !2456, size: 64, offset: 832)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2457)
!2457 = !{!2458, !2470}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !38, line: 69, baseType: !2459, size: 32)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !38, line: 69, size: 32, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2459, file: !38, line: 70, baseType: !442, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2459, file: !38, line: 71, baseType: !450, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2459, file: !38, line: 72, baseType: !2464, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2465, line: 24, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2465, line: 22, size: 32, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2466, file: !2465, line: 23, baseType: !2469, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2465, line: 20, baseType: !448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2456, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2445, file: !38, line: 304, baseType: !538, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2445, file: !38, line: 305, baseType: !152, size: 64, offset: 960)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2445, file: !38, line: 306, baseType: !2474, size: 576, offset: 1024)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2475)
!2475 = !{!2476, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2474, file: !38, line: 206, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !540)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2474, file: !38, line: 207, baseType: !2477, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2474, file: !38, line: 208, baseType: !2477, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2474, file: !38, line: 209, baseType: !2477, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2474, file: !38, line: 210, baseType: !2477, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2474, file: !38, line: 211, baseType: !2477, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2474, file: !38, line: 212, baseType: !2477, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2474, file: !38, line: 213, baseType: !546, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2474, file: !38, line: 214, baseType: !546, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2438, file: !38, line: 324, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2444, !606, !193}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2438, file: !38, line: 325, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2444}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2438, file: !38, line: 326, baseType: !2441, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2438, file: !38, line: 327, baseType: !2441, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2438, file: !38, line: 328, baseType: !2441, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2438, file: !38, line: 329, baseType: !695, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2438, file: !38, line: 332, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !436}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2438, file: !38, line: 333, baseType: !2504, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!193, !436, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2438, file: !38, line: 335, baseType: !2509, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!193, !436, !2502}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2438, file: !38, line: 337, baseType: !2513, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!193, !606, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !607, file: !44, line: 1425, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2521)
!2521 = !{!2522, !2526, !2527, !2531, !2532, !2533, !2548, !2571, !2575, !2576, !2599}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2520, file: !38, line: 429, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!193, !606, !193, !193, !556}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2520, file: !38, line: 430, baseType: !695, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2520, file: !38, line: 431, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!193, !606, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2520, file: !38, line: 432, baseType: !2528, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2520, file: !38, line: 433, baseType: !695, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2520, file: !38, line: 434, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!193, !606, !193, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2538, file: !38, line: 416, baseType: !193, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2538, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2538, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2538, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2538, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2538, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2538, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2538, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2520, file: !38, line: 435, baseType: !2549, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!193, !606, !2456, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2553, file: !38, line: 344, baseType: !193, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2553, file: !38, line: 345, baseType: !143, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2553, file: !38, line: 346, baseType: !143, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2553, file: !38, line: 347, baseType: !143, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2553, file: !38, line: 348, baseType: !143, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2553, file: !38, line: 349, baseType: !143, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2553, file: !38, line: 350, baseType: !143, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2553, file: !38, line: 351, baseType: !788, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2553, file: !38, line: 353, baseType: !788, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2553, file: !38, line: 354, baseType: !193, size: 32, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2553, file: !38, line: 355, baseType: !193, size: 32, offset: 608)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2553, file: !38, line: 356, baseType: !143, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2553, file: !38, line: 357, baseType: !143, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2553, file: !38, line: 358, baseType: !143, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2553, file: !38, line: 359, baseType: !788, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2553, file: !38, line: 360, baseType: !193, size: 32, offset: 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2520, file: !38, line: 436, baseType: !2572, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!193, !606, !2516, !2552}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2520, file: !38, line: 438, baseType: !2549, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2520, file: !38, line: 439, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!193, !606, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2581, file: !38, line: 410, baseType: !7, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2581, file: !38, line: 411, baseType: !2585, size: 1344, offset: 64)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2586, size: 1344, elements: !292)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2598}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !38, line: 396, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2586, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2586, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2586, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2586, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2586, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2586, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2586, file: !38, line: 404, baseType: !145, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2586, file: !38, line: 405, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !141, line: 126, baseType: !143)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2586, file: !38, line: 406, baseType: !2597, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2520, file: !38, line: 440, baseType: !2528, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !607, file: !44, line: 1426, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !607, file: !44, line: 1427, baseType: !152, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !607, file: !44, line: 1428, baseType: !152, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !607, file: !44, line: 1429, baseType: !152, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !607, file: !44, line: 1430, baseType: !397, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !607, file: !44, line: 1431, baseType: !778, size: 256, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !607, file: !44, line: 1432, baseType: !193, size: 32, offset: 1152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !607, file: !44, line: 1433, baseType: !758, size: 32, offset: 1184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !607, file: !44, line: 1437, baseType: !2612, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !607, file: !44, line: 1449, baseType: !2617, size: 64, offset: 1280)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !413, line: 34, size: 64, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2617, file: !413, line: 35, baseType: !416, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !607, file: !44, line: 1450, baseType: !164, size: 128, offset: 1344)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !607, file: !44, line: 1451, baseType: !2622, size: 64, offset: 1472)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !607, file: !44, line: 1452, baseType: !1931, size: 64, offset: 1536)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !607, file: !44, line: 1453, baseType: !2626, size: 64, offset: 1600)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !607, file: !44, line: 1454, baseType: !649, size: 128, offset: 1664)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !607, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !607, file: !44, line: 1456, baseType: !2631, size: 2432, offset: 1856)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2637, !2669}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2631, file: !38, line: 519, baseType: !7, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2631, file: !38, line: 520, baseType: !778, size: 256, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2631, file: !38, line: 521, baseType: !2636, size: 192, offset: 320)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 192, elements: !292)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2631, file: !38, line: 522, baseType: !2638, size: 1728, offset: 512)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1728, elements: !292)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2640)
!2640 = !{!2641, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2639, file: !38, line: 223, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2659, !2660}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2643, file: !38, line: 444, baseType: !193, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2643, file: !38, line: 445, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2649, file: !38, line: 311, baseType: !695, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2649, file: !38, line: 312, baseType: !695, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2649, file: !38, line: 313, baseType: !695, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2649, file: !38, line: 314, baseType: !695, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2649, file: !38, line: 315, baseType: !2441, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2649, file: !38, line: 316, baseType: !2441, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2649, file: !38, line: 317, baseType: !2441, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2649, file: !38, line: 318, baseType: !2513, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2643, file: !38, line: 446, baseType: !640, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2643, file: !38, line: 447, baseType: !2642, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2639, file: !38, line: 224, baseType: !193, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2639, file: !38, line: 226, baseType: !164, size: 128, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2639, file: !38, line: 227, baseType: !152, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2639, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2639, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2639, file: !38, line: 230, baseType: !2477, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2639, file: !38, line: 231, baseType: !2477, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2639, file: !38, line: 232, baseType: !127, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2631, file: !38, line: 523, baseType: !2670, size: 192, offset: 2240)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 192, elements: !292)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !607, file: !44, line: 1458, baseType: !2672, size: 2112, offset: 4288)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2673)
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2672, file: !44, line: 1411, baseType: !193, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2672, file: !44, line: 1412, baseType: !1488, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2672, file: !44, line: 1413, baseType: !2677, size: 1920, offset: 192)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 1920, elements: !292)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2679, line: 12, size: 640, elements: !2680)
!2679 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2680 = !{!2681, !2689, !2691, !2696, !2697}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2678, file: !2679, line: 13, baseType: !2682, size: 320)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2683, line: 17, size: 320, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2682, file: !2683, line: 18, baseType: !193, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2682, file: !2683, line: 19, baseType: !193, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2682, file: !2683, line: 20, baseType: !1488, size: 128, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2682, file: !2683, line: 22, baseType: !380, size: 128, align: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2678, file: !2679, line: 14, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2678, file: !2679, line: 15, baseType: !2692, size: 64, offset: 384)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2693, line: 16, size: 64, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2692, file: !2693, line: 17, baseType: !1224, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2678, file: !2679, line: 16, baseType: !1488, size: 128, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2678, file: !2679, line: 17, baseType: !758, size: 32, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !607, file: !44, line: 1465, baseType: !127, size: 64, offset: 6400)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !607, file: !44, line: 1468, baseType: !122, size: 32, offset: 6464)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !607, file: !44, line: 1470, baseType: !546, size: 64, offset: 6528)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !607, file: !44, line: 1471, baseType: !546, size: 64, offset: 6592)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !607, file: !44, line: 1473, baseType: !124, size: 32, offset: 6656)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !607, file: !44, line: 1474, baseType: !2704, size: 64, offset: 6720)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !607, file: !44, line: 1477, baseType: !2707, size: 256, offset: 6784)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !2237)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !607, file: !44, line: 1478, baseType: !2709, size: 128, offset: 7040)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2710, line: 18, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 16, size: 128, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2711, file: !2710, line: 17, baseType: !2714, size: 128)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 128, elements: !1742)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !607, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !607, file: !44, line: 1481, baseType: !2717, size: 32, offset: 7200)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !141, line: 150, baseType: !7)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !607, file: !44, line: 1487, baseType: !1181, size: 192, offset: 7232)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !607, file: !44, line: 1493, baseType: !148, size: 64, offset: 7424)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !607, file: !44, line: 1495, baseType: !2721, size: 64, offset: 7488)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !395, line: 135, size: 1024, align: 512, elements: !2724)
!2724 = !{!2725, !2729, !2730, !2737, !2743, !2747, !2751, !2755, !2756, !2760, !2764, !2769, !2773}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2723, file: !395, line: 136, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!193, !397, !7}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2723, file: !395, line: 137, baseType: !2726, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2723, file: !395, line: 138, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!193, !2734, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2723, file: !395, line: 139, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!193, !2734, !7, !148, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2723, file: !395, line: 141, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!193, !2734}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2723, file: !395, line: 142, baseType: !2748, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!193, !397}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2723, file: !395, line: 143, baseType: !2752, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !397}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2723, file: !395, line: 144, baseType: !2752, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2723, file: !395, line: 145, baseType: !2757, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !397, !436}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2723, file: !395, line: 146, baseType: !2761, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!291, !397, !291, !193}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2723, file: !395, line: 147, baseType: !2765, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!393, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2723, file: !395, line: 148, baseType: !2770, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!193, !556, !497}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2723, file: !395, line: 149, baseType: !2774, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!397, !397, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !607, file: !44, line: 1500, baseType: !193, size: 32, offset: 7552)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !607, file: !44, line: 1502, baseType: !2781, size: 448, offset: 7616)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2425, line: 60, size: 448, elements: !2782)
!2782 = !{!2783, !2788, !2789, !2790, !2791, !2792, !2793}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2781, file: !2425, line: 61, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!152, !2787, !2423}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2781, file: !2425, line: 63, baseType: !2784, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2781, file: !2425, line: 66, baseType: !326, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2781, file: !2425, line: 67, baseType: !193, size: 32, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2425, line: 68, baseType: !7, size: 32, offset: 224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2781, file: !2425, line: 71, baseType: !164, size: 128, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2781, file: !2425, line: 77, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !607, file: !44, line: 1505, baseType: !782, size: 64, offset: 8064)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !607, file: !44, line: 1508, baseType: !782, size: 64, offset: 8128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !607, file: !44, line: 1511, baseType: !193, size: 32, offset: 8192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !607, file: !44, line: 1514, baseType: !919, size: 32, offset: 8224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !607, file: !44, line: 1517, baseType: !2800, size: 64, offset: 8256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1966, line: 18, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !607, file: !44, line: 1518, baseType: !645, size: 64, offset: 8320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !607, file: !44, line: 1525, baseType: !1720, size: 64, offset: 8384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !607, file: !44, line: 1532, baseType: !2805, size: 64, offset: 8448)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2806, line: 52, size: 64, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2805, file: !2806, line: 53, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2806, line: 40, size: 256, elements: !2811)
!2811 = !{!2812, !2813, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2810, file: !2806, line: 42, baseType: !250)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2810, file: !2806, line: 44, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2806, line: 28, size: 192, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2814, file: !2806, line: 29, baseType: !164, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2814, file: !2806, line: 31, baseType: !326, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2810, file: !2806, line: 49, baseType: !326, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !607, file: !44, line: 1533, baseType: !2805, size: 64, offset: 8512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !607, file: !44, line: 1534, baseType: !380, size: 128, align: 64, offset: 8576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !607, file: !44, line: 1535, baseType: !1965, size: 256, offset: 8704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !607, file: !44, line: 1537, baseType: !1181, size: 192, offset: 8960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !607, file: !44, line: 1542, baseType: !193, size: 32, offset: 9152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !607, file: !44, line: 1545, baseType: !250, offset: 9184)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !607, file: !44, line: 1546, baseType: !164, size: 128, offset: 9216)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !607, file: !44, line: 1548, baseType: !250, offset: 9344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !607, file: !44, line: 1549, baseType: !164, size: 128, offset: 9344)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !437, file: !44, line: 624, baseType: !744, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !437, file: !44, line: 631, baseType: !152, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !44, line: 639, baseType: !2831, size: 32, offset: 384)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !44, line: 639, size: 32, elements: !2832)
!2832 = !{!2833, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2831, file: !44, line: 640, baseType: !2834, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2831, file: !44, line: 641, baseType: !7, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !437, file: !44, line: 643, baseType: !520, size: 32, offset: 416)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !437, file: !44, line: 644, baseType: !538, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !437, file: !44, line: 645, baseType: !542, size: 128, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !437, file: !44, line: 646, baseType: !542, size: 128, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !437, file: !44, line: 647, baseType: !542, size: 128, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !437, file: !44, line: 648, baseType: !250, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !437, file: !44, line: 649, baseType: !229, size: 16, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !437, file: !44, line: 650, baseType: !1360, size: 8, offset: 912)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !437, file: !44, line: 651, baseType: !1360, size: 8, offset: 920)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !437, file: !44, line: 652, baseType: !2597, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !437, file: !44, line: 659, baseType: !152, size: 64, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !437, file: !44, line: 660, baseType: !778, size: 256, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !437, file: !44, line: 662, baseType: !152, size: 64, offset: 1344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !437, file: !44, line: 663, baseType: !152, size: 64, offset: 1408)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !437, file: !44, line: 665, baseType: !649, size: 128, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !437, file: !44, line: 666, baseType: !164, size: 128, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !437, file: !44, line: 675, baseType: !164, size: 128, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !437, file: !44, line: 676, baseType: !164, size: 128, offset: 1856)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !437, file: !44, line: 677, baseType: !164, size: 128, offset: 1984)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !44, line: 678, baseType: !2856, size: 128, offset: 2112)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !44, line: 678, size: 128, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2856, file: !44, line: 679, baseType: !645, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2856, file: !44, line: 680, baseType: !380, size: 128, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !437, file: !44, line: 682, baseType: !784, size: 64, offset: 2240)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !437, file: !44, line: 683, baseType: !784, size: 64, offset: 2304)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !437, file: !44, line: 684, baseType: !758, size: 32, offset: 2368)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !437, file: !44, line: 685, baseType: !758, size: 32, offset: 2400)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !437, file: !44, line: 686, baseType: !758, size: 32, offset: 2432)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !437, file: !44, line: 688, baseType: !758, size: 32, offset: 2464)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !44, line: 690, baseType: !2867, size: 64, offset: 2496)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !44, line: 690, size: 64, elements: !2868)
!2868 = !{!2869, !3092}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2867, file: !44, line: 691, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2873)
!2873 = !{!2874, !2875, !2879, !2884, !2888, !2889, !2890, !2894, !2907, !2908, !2916, !2920, !2921, !2925, !2926, !2930, !2935, !2936, !2940, !2944, !3052, !3056, !3057, !3061, !3062, !3066, !3070, !3075, !3079, !3083, !3087, !3091}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !44, line: 1823, baseType: !640, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2872, file: !44, line: 1824, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!538, !367, !538, !193}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2872, file: !44, line: 1825, baseType: !2880, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!322, !367, !291, !337, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2872, file: !44, line: 1826, baseType: !2885, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!322, !367, !148, !337, !2883}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2872, file: !44, line: 1827, baseType: !854, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2872, file: !44, line: 1828, baseType: !854, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2872, file: !44, line: 1829, baseType: !2891, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!193, !857, !497}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2872, file: !44, line: 1830, baseType: !2895, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!193, !367, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2900)
!2900 = !{!2901, !2906}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2899, file: !44, line: 1777, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!193, !2898, !148, !193, !538, !143, !7}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2899, file: !44, line: 1778, baseType: !538, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2872, file: !44, line: 1831, baseType: !2895, size: 64, offset: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2872, file: !44, line: 1832, baseType: !2909, size: 64, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!2912, !367, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2913, line: 52, baseType: !7)
!2913 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !626, line: 27, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2872, file: !44, line: 1833, baseType: !2917, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!326, !367, !7, !152}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2872, file: !44, line: 1834, baseType: !2917, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2872, file: !44, line: 1835, baseType: !2922, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!193, !367, !991}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2872, file: !44, line: 1836, baseType: !152, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2872, file: !44, line: 1837, baseType: !2927, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!193, !436, !367}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2872, file: !44, line: 1838, baseType: !2931, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!193, !367, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !127)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !44, line: 1839, baseType: !2927, size: 64, offset: 1024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2872, file: !44, line: 1840, baseType: !2937, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!193, !367, !538, !538, !193}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2872, file: !44, line: 1841, baseType: !2941, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!193, !193, !367, !193}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2872, file: !44, line: 1842, baseType: !2945, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!193, !367, !193, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2982, !2983, !2984, !2997, !3028}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2949, file: !44, line: 1063, baseType: !2948, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2949, file: !44, line: 1064, baseType: !164, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2949, file: !44, line: 1065, baseType: !649, size: 128, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2949, file: !44, line: 1066, baseType: !164, size: 128, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2949, file: !44, line: 1069, baseType: !164, size: 128, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2949, file: !44, line: 1072, baseType: !2934, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2949, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2949, file: !44, line: 1074, baseType: !220, size: 8, offset: 672)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2949, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2949, file: !44, line: 1076, baseType: !193, size: 32, offset: 736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2949, file: !44, line: 1077, baseType: !1488, size: 128, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2949, file: !44, line: 1078, baseType: !367, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2949, file: !44, line: 1079, baseType: !538, size: 64, offset: 960)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2949, file: !44, line: 1080, baseType: !538, size: 64, offset: 1024)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2949, file: !44, line: 1082, baseType: !2966, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2968)
!2968 = !{!2969, !2977, !2978, !2979, !2980, !2981}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2967, file: !44, line: 1315, baseType: !2970)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2971, line: 20, baseType: !2972)
!2971 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2971, line: 11, elements: !2973)
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2972, file: !2971, line: 12, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !262, line: 33, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 31, elements: !264)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2967, file: !44, line: 1316, baseType: !193, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2967, file: !44, line: 1317, baseType: !193, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2967, file: !44, line: 1318, baseType: !2966, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2967, file: !44, line: 1319, baseType: !367, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2967, file: !44, line: 1320, baseType: !380, size: 128, align: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2949, file: !44, line: 1084, baseType: !152, size: 64, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2949, file: !44, line: 1085, baseType: !152, size: 64, offset: 1216)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2949, file: !44, line: 1087, baseType: !2985, size: 64, offset: 1280)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2987)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2988)
!2988 = !{!2989, !2993}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2987, file: !44, line: 1012, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{null, !2948, !2948}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2987, file: !44, line: 1013, baseType: !2994, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !2948}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2949, file: !44, line: 1088, baseType: !2998, size: 64, offset: 1344)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3001)
!3001 = !{!3002, !3006, !3010, !3011, !3015, !3019, !3023, !3027}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3000, file: !44, line: 1017, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!2934, !2934}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3000, file: !44, line: 1018, baseType: !3007, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{null, !2934}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3000, file: !44, line: 1019, baseType: !2994, size: 64, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3000, file: !44, line: 1020, baseType: !3012, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!193, !2948, !193}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3000, file: !44, line: 1021, baseType: !3016, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!497, !2948}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3000, file: !44, line: 1022, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!193, !2948, !193, !167}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3000, file: !44, line: 1023, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2948, !126}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3000, file: !44, line: 1024, baseType: !3016, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2949, file: !44, line: 1097, baseType: !3029, size: 256, offset: 1408)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !44, line: 1089, size: 256, elements: !3030)
!3030 = !{!3031, !3040, !3046}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3029, file: !44, line: 1090, baseType: !3032, size: 256)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3033, line: 10, size: 256, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !{!3035, !3036, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3032, file: !3033, line: 11, baseType: !122, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3033, line: 12, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3033, line: 5, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !3033, line: 13, baseType: !164, size: 128, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3029, file: !44, line: 1091, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3033, line: 17, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3041, file: !3033, line: 18, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3033, line: 16, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3029, file: !44, line: 1096, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3029, file: !44, line: 1092, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3047, file: !44, line: 1093, baseType: !164, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3047, file: !44, line: 1094, baseType: !193, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3047, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2872, file: !44, line: 1843, baseType: !3053, size: 64, offset: 1280)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!322, !367, !731, !193, !337, !2883, !193}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2872, file: !44, line: 1844, baseType: !1111, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2872, file: !44, line: 1845, baseType: !3058, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!193, !193}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2872, file: !44, line: 1846, baseType: !2945, size: 64, offset: 1472)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2872, file: !44, line: 1847, baseType: !3063, size: 64, offset: 1536)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!322, !2106, !367, !2883, !337, !7}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2872, file: !44, line: 1848, baseType: !3067, size: 64, offset: 1600)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!322, !367, !2883, !2106, !337, !7}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2872, file: !44, line: 1849, baseType: !3071, size: 64, offset: 1664)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!193, !367, !326, !3074, !126}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2872, file: !44, line: 1850, baseType: !3076, size: 64, offset: 1728)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!326, !367, !193, !538, !538}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2872, file: !44, line: 1852, baseType: !3080, size: 64, offset: 1792)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !721, !367}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2872, file: !44, line: 1856, baseType: !3084, size: 64, offset: 1856)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!322, !367, !538, !367, !538, !337, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2872, file: !44, line: 1858, baseType: !3088, size: 64, offset: 1920)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!538, !367, !538, !367, !538, !538, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2872, file: !44, line: 1861, baseType: !2937, size: 64, offset: 1984)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2867, file: !44, line: 692, baseType: !674, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !437, file: !44, line: 694, baseType: !3094, size: 64, offset: 2560)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3095, file: !44, line: 1101, baseType: !250)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3095, file: !44, line: 1102, baseType: !164, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3095, file: !44, line: 1103, baseType: !164, size: 128, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3095, file: !44, line: 1104, baseType: !164, size: 128, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !437, file: !44, line: 695, baseType: !745, size: 1216, align: 64, offset: 2624)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !437, file: !44, line: 696, baseType: !164, size: 128, offset: 3840)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !44, line: 697, baseType: !3104, size: 64, offset: 3968)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !437, file: !44, line: 697, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3111, !3112}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3104, file: !44, line: 698, baseType: !2106, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3104, file: !44, line: 699, baseType: !2622, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3104, file: !44, line: 700, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3104, file: !44, line: 701, baseType: !291, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3104, file: !44, line: 702, baseType: !7, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !437, file: !44, line: 705, baseType: !124, size: 32, offset: 4032)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !437, file: !44, line: 708, baseType: !124, size: 32, offset: 4064)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !437, file: !44, line: 709, baseType: !2704, size: 64, offset: 4096)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !437, file: !44, line: 720, baseType: !127, size: 64, offset: 4160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !398, file: !395, line: 98, baseType: !3118, size: 256, offset: 448)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 256, elements: !2237)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !398, file: !395, line: 101, baseType: !3120, size: 32, offset: 704)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3121, line: 25, size: 32, elements: !3122)
!3121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3121, line: 26, baseType: !3124, size: 32)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3121, line: 26, size: 32, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3121, line: 30, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3121, line: 30, size: 32, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3127, file: !3121, line: 31, baseType: !250)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3127, file: !3121, line: 32, baseType: !193, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !398, file: !395, line: 102, baseType: !2721, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !398, file: !395, line: 103, baseType: !606, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !398, file: !395, line: 104, baseType: !152, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !398, file: !395, line: 105, baseType: !127, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !395, line: 107, baseType: !3136, size: 128, offset: 1024)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !395, line: 107, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3136, file: !395, line: 108, baseType: !164, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3136, file: !395, line: 109, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !398, file: !395, line: 111, baseType: !164, size: 128, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !398, file: !395, line: 112, baseType: !164, size: 128, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !398, file: !395, line: 120, baseType: !3144, size: 128, offset: 1408)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !395, line: 116, size: 128, elements: !3145)
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3144, file: !395, line: 117, baseType: !649, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3144, file: !395, line: 118, baseType: !412, size: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3144, file: !395, line: 119, baseType: !380, size: 128, align: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !368, file: !44, line: 922, baseType: !436, size: 64, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !368, file: !44, line: 923, baseType: !2870, size: 64, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !368, file: !44, line: 929, baseType: !250, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !368, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !368, file: !44, line: 931, baseType: !782, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !368, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !368, file: !44, line: 933, baseType: !2717, size: 32, offset: 544)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !368, file: !44, line: 934, baseType: !1181, size: 192, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !368, file: !44, line: 935, baseType: !538, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !368, file: !44, line: 936, baseType: !3159, size: 192, offset: 832)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !44, line: 886, baseType: !2970)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3159, file: !44, line: 887, baseType: !1478, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3159, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3159, file: !44, line: 889, baseType: !442, size: 32, offset: 96)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3159, file: !44, line: 889, baseType: !442, size: 32, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3159, file: !44, line: 890, baseType: !193, size: 32, offset: 160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !368, file: !44, line: 937, baseType: !1554, size: 64, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !368, file: !44, line: 938, baseType: !3169, size: 256, offset: 1088)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3169, file: !44, line: 897, baseType: !152, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3169, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3169, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3169, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3169, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3169, file: !44, line: 904, baseType: !538, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !368, file: !44, line: 940, baseType: !143, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !368, file: !44, line: 945, baseType: !127, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !368, file: !44, line: 949, baseType: !164, size: 128, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !368, file: !44, line: 950, baseType: !164, size: 128, offset: 1600)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !368, file: !44, line: 952, baseType: !744, size: 64, offset: 1728)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !368, file: !44, line: 953, baseType: !919, size: 32, offset: 1792)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !368, file: !44, line: 954, baseType: !919, size: 32, offset: 1824)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !358, file: !316, line: 174, baseType: !364, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !358, file: !316, line: 176, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!193, !367, !243, !357, !991}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !346, file: !316, line: 90, baseType: !341, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !346, file: !316, line: 91, baseType: !3191, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !238, line: 143, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!3196, !243}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3199)
!3199 = !{!3200, !3201, !3205, !3209, !3215, !3219}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3198, file: !61, line: 40, baseType: !60, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3198, file: !61, line: 41, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!497}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3198, file: !61, line: 42, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!127}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3198, file: !61, line: 43, baseType: !3210, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!2134, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3198, file: !61, line: 44, baseType: !3216, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!2134}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3198, file: !61, line: 45, baseType: !475, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !238, line: 144, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!2134, !243}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !238, line: 145, baseType: !3225, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !243, !3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !237, file: !238, line: 70, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !626, line: 123, size: 1024, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3362, !3363, !3364, !3365, !3366}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3232, file: !626, line: 124, baseType: !758, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3232, file: !626, line: 125, baseType: !758, size: 32, offset: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3232, file: !626, line: 135, baseType: !3231, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !626, line: 136, baseType: !148, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3232, file: !626, line: 138, baseType: !771, size: 192, align: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3232, file: !626, line: 140, baseType: !2134, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3232, file: !626, line: 141, baseType: !7, size: 32, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !626, line: 142, baseType: !3242, size: 256, offset: 512)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !626, line: 142, size: 256, elements: !3243)
!3243 = !{!3244, !3290, !3294}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3242, file: !626, line: 143, baseType: !3245, size: 192)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !626, line: 91, size: 192, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3245, file: !626, line: 92, baseType: !152, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3245, file: !626, line: 94, baseType: !767, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3245, file: !626, line: 100, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !626, line: 180, size: 704, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3262, !3263, !3264, !3288, !3289}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3251, file: !626, line: 182, baseType: !3231, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !626, line: 183, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3251, file: !626, line: 186, baseType: !3256, size: 192, offset: 128)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3257, line: 19, size: 192, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3256, file: !3257, line: 20, baseType: !749, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3256, file: !3257, line: 21, baseType: !7, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3256, file: !3257, line: 22, baseType: !7, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3251, file: !626, line: 187, baseType: !122, size: 32, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3251, file: !626, line: 188, baseType: !122, size: 32, offset: 352)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3251, file: !626, line: 189, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !626, line: 168, size: 320, elements: !3267)
!3267 = !{!3268, !3272, !3276, !3280, !3284}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3266, file: !626, line: 169, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!193, !721, !3250}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3266, file: !626, line: 171, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!193, !3231, !148, !332}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3266, file: !626, line: 173, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!193, !3231}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3266, file: !626, line: 174, baseType: !3281, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!193, !3231, !3231, !148}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3266, file: !626, line: 176, baseType: !3285, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!193, !721, !3231, !3250}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3251, file: !626, line: 192, baseType: !164, size: 128, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3251, file: !626, line: 194, baseType: !1488, size: 128, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3242, file: !626, line: 144, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !626, line: 103, size: 64, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3291, file: !626, line: 104, baseType: !3231, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3242, file: !626, line: 145, baseType: !3295, size: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !626, line: 107, size: 256, elements: !3296)
!3296 = !{!3297, !3357, !3360, !3361}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3295, file: !626, line: 108, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !626, line: 217, size: 768, elements: !3301)
!3301 = !{!3302, !3322, !3326, !3330, !3334, !3338, !3342, !3346, !3347, !3348, !3349, !3353}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3300, file: !626, line: 222, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!193, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !626, line: 197, size: 1088, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3307, file: !626, line: 199, baseType: !3231, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3307, file: !626, line: 200, baseType: !367, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3307, file: !626, line: 201, baseType: !721, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3307, file: !626, line: 202, baseType: !127, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3307, file: !626, line: 205, baseType: !1181, size: 192, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3307, file: !626, line: 206, baseType: !1181, size: 192, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3307, file: !626, line: 207, baseType: !193, size: 32, offset: 640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3307, file: !626, line: 208, baseType: !164, size: 128, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3307, file: !626, line: 209, baseType: !291, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3307, file: !626, line: 211, baseType: !337, size: 64, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3307, file: !626, line: 212, baseType: !497, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3307, file: !626, line: 213, baseType: !497, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3307, file: !626, line: 214, baseType: !1019, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3300, file: !626, line: 223, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3306}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3300, file: !626, line: 236, baseType: !3327, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!193, !721, !127}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3300, file: !626, line: 238, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!127, !721, !2883}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3300, file: !626, line: 239, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!127, !721, !127, !2883}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3300, file: !626, line: 240, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !721, !127}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3300, file: !626, line: 242, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!322, !3306, !291, !337, !538}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3300, file: !626, line: 252, baseType: !337, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3300, file: !626, line: 259, baseType: !497, size: 8, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3300, file: !626, line: 260, baseType: !3343, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3300, file: !626, line: 263, baseType: !3350, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!2912, !3306, !2914}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3300, file: !626, line: 266, baseType: !3354, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!193, !3306, !991}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3295, file: !626, line: 109, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !626, line: 31, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3295, file: !626, line: 110, baseType: !538, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3295, file: !626, line: 111, baseType: !3231, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3232, file: !626, line: 148, baseType: !127, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3232, file: !626, line: 154, baseType: !143, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !626, line: 156, baseType: !229, size: 16, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3232, file: !626, line: 157, baseType: !332, size: 16, offset: 912)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3232, file: !626, line: 158, baseType: !3367, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !626, line: 32, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !237, file: !238, line: 71, baseType: !3370, size: 32, offset: 448)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3371, line: 19, size: 32, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3370, file: !3371, line: 20, baseType: !1238, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !237, file: !238, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !237, file: !238, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !237, file: !238, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !237, file: !238, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !237, file: !238, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !73, line: 463, baseType: !233, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !234, file: !73, line: 465, baseType: !3381, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !234, file: !73, line: 467, baseType: !148, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !73, line: 468, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3395, !3400, !3404}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !73, line: 88, baseType: !148, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3387, file: !73, line: 89, baseType: !343, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3387, file: !73, line: 90, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!193, !233, !286}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3387, file: !73, line: 91, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!291, !233, !3399, !3228, !3229}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3387, file: !73, line: 93, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !233}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3387, file: !73, line: 95, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3408)
!3408 = !{!3409, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3407, file: !80, line: 279, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!193, !233}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3407, file: !80, line: 280, baseType: !3401, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !80, line: 281, baseType: !3410, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !80, line: 282, baseType: !3410, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3407, file: !80, line: 283, baseType: !3410, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3407, file: !80, line: 284, baseType: !3410, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3407, file: !80, line: 285, baseType: !3410, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3407, file: !80, line: 286, baseType: !3410, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3407, file: !80, line: 287, baseType: !3410, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3407, file: !80, line: 288, baseType: !3410, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3407, file: !80, line: 289, baseType: !3410, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3407, file: !80, line: 290, baseType: !3410, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3407, file: !80, line: 291, baseType: !3410, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3407, file: !80, line: 292, baseType: !3410, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3407, file: !80, line: 293, baseType: !3410, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3407, file: !80, line: 294, baseType: !3410, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3407, file: !80, line: 295, baseType: !3410, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3407, file: !80, line: 296, baseType: !3410, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3407, file: !80, line: 297, baseType: !3410, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3407, file: !80, line: 298, baseType: !3410, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3407, file: !80, line: 299, baseType: !3410, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3407, file: !80, line: 300, baseType: !3410, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3407, file: !80, line: 301, baseType: !3410, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !234, file: !73, line: 470, baseType: !3436, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3438, line: 82, size: 1408, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3521, !3524, !3525}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3437, file: !3438, line: 83, baseType: !148, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3437, file: !3438, line: 84, baseType: !148, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3437, file: !3438, line: 85, baseType: !233, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3437, file: !3438, line: 86, baseType: !343, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3437, file: !3438, line: 87, baseType: !343, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3437, file: !3438, line: 88, baseType: !343, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3437, file: !3438, line: 90, baseType: !3447, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!193, !233, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3472, !3485, !3486, !3487, !3488, !3489, !3497, !3498, !3499, !3500, !3501, !3502}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !67, line: 96, baseType: !148, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3451, file: !67, line: 97, baseType: !3436, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !67, line: 99, baseType: !640, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3451, file: !67, line: 100, baseType: !148, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3451, file: !67, line: 102, baseType: !497, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3451, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3451, file: !67, line: 105, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3463, line: 262, size: 1600, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !{!3465, !3466, !3467, !3471}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3462, file: !3463, line: 263, baseType: !2707, size: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3462, file: !3463, line: 264, baseType: !2707, size: 256, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3462, file: !3463, line: 265, baseType: !3468, size: 1024, offset: 512)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1024, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3462, file: !3463, line: 266, baseType: !2134, size: 64, offset: 1536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3451, file: !67, line: 106, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3463, line: 210, size: 256, elements: !3476)
!3476 = !{!3477, !3481, !3483, !3484}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3475, file: !3463, line: 211, baseType: !3478, size: 72)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 72, elements: !3479)
!3479 = !{!3480}
!3480 = !DISubrange(count: 9)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3475, file: !3463, line: 212, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3463, line: 14, baseType: !152)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3475, file: !3463, line: 213, baseType: !124, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3475, file: !3463, line: 214, baseType: !124, size: 32, offset: 224)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !67, line: 108, baseType: !3410, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !67, line: 109, baseType: !3401, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !67, line: 110, baseType: !3410, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !67, line: 111, baseType: !3401, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !67, line: 112, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!193, !233, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3494, file: !80, line: 51, baseType: !193, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !67, line: 113, baseType: !3410, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !67, line: 114, baseType: !343, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !67, line: 115, baseType: !343, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !67, line: 117, baseType: !3405, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3451, file: !67, line: 118, baseType: !3401, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !67, line: 120, baseType: !3503, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3437, file: !3438, line: 91, baseType: !3392, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3437, file: !3438, line: 92, baseType: !3410, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3437, file: !3438, line: 93, baseType: !3401, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3437, file: !3438, line: 94, baseType: !3410, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3437, file: !3438, line: 95, baseType: !3401, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3437, file: !3438, line: 97, baseType: !3410, size: 64, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3437, file: !3438, line: 98, baseType: !3410, size: 64, offset: 832)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3437, file: !3438, line: 100, baseType: !3490, size: 64, offset: 896)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3437, file: !3438, line: 101, baseType: !3410, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3437, file: !3438, line: 103, baseType: !3410, size: 64, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3437, file: !3438, line: 105, baseType: !3410, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3437, file: !3438, line: 107, baseType: !3405, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3437, file: !3438, line: 109, baseType: !3518, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3520)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3438, line: 109, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3437, file: !3438, line: 111, baseType: !3522, size: 64, offset: 1280)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3438, line: 111, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3437, file: !3438, line: 112, baseType: !655, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3437, file: !3438, line: 114, baseType: !497, size: 8, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !234, file: !73, line: 471, baseType: !3450, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !234, file: !73, line: 473, baseType: !127, size: 64, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !234, file: !73, line: 475, baseType: !127, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !234, file: !73, line: 480, baseType: !1181, size: 192, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !234, file: !73, line: 484, baseType: !3531, size: 576, offset: 1216)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3531, file: !73, line: 362, baseType: !164, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3531, file: !73, line: 363, baseType: !164, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3531, file: !73, line: 364, baseType: !164, size: 128, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3531, file: !73, line: 365, baseType: !164, size: 128, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3531, file: !73, line: 366, baseType: !497, size: 8, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3531, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !234, file: !73, line: 485, baseType: !3540, size: 2304, offset: 1792)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3637, !3641}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3540, file: !80, line: 566, baseType: !3493, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3540, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3540, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3540, file: !80, line: 569, baseType: !497, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3540, file: !80, line: 570, baseType: !497, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3540, file: !80, line: 571, baseType: !497, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3540, file: !80, line: 572, baseType: !497, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3540, file: !80, line: 573, baseType: !497, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3540, file: !80, line: 574, baseType: !497, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3540, file: !80, line: 575, baseType: !497, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3540, file: !80, line: 576, baseType: !497, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3540, file: !80, line: 577, baseType: !122, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !80, line: 578, baseType: !250, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !80, line: 580, baseType: !164, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3540, file: !80, line: 581, baseType: !1509, size: 192, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3540, file: !80, line: 582, baseType: !3558, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3560, line: 43, size: 1472, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3569, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3559, file: !3560, line: 44, baseType: !148, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !3560, line: 45, baseType: !193, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 46, baseType: !164, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !3560, line: 47, baseType: !250, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !3560, line: 48, baseType: !3567, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3559, file: !3560, line: 49, baseType: !3570, size: 320, offset: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3571, line: 11, size: 320, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3572 = !{!3573, !3574, !3575, !3580}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3570, file: !3571, line: 16, baseType: !649, size: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3570, file: !3571, line: 17, baseType: !152, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3570, file: !3571, line: 18, baseType: !3576, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !3571, line: 19, baseType: !122, size: 32, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !3560, line: 50, baseType: !152, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3559, file: !3560, line: 51, baseType: !1308, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3559, file: !3560, line: 52, baseType: !1308, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3559, file: !3560, line: 53, baseType: !1308, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3559, file: !3560, line: 54, baseType: !1308, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3559, file: !3560, line: 55, baseType: !1308, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3559, file: !3560, line: 56, baseType: !152, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3559, file: !3560, line: 57, baseType: !152, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3559, file: !3560, line: 58, baseType: !152, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3559, file: !3560, line: 59, baseType: !152, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3559, file: !3560, line: 60, baseType: !152, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3559, file: !3560, line: 61, baseType: !233, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3559, file: !3560, line: 62, baseType: !497, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3559, file: !3560, line: 63, baseType: !497, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3540, file: !80, line: 583, baseType: !497, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3540, file: !80, line: 584, baseType: !497, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3540, file: !80, line: 585, baseType: !497, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3540, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3540, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3540, file: !80, line: 592, baseType: !1300, size: 512, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3540, file: !80, line: 593, baseType: !143, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3540, file: !80, line: 594, baseType: !1965, size: 256, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3540, file: !80, line: 595, baseType: !1488, size: 128, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3540, file: !80, line: 596, baseType: !3567, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3540, file: !80, line: 597, baseType: !758, size: 32, offset: 1600)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3540, file: !80, line: 598, baseType: !758, size: 32, offset: 1632)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3540, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3540, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3540, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3540, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3540, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3540, file: !80, line: 604, baseType: !497, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3540, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3540, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3540, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3540, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3540, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3540, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3540, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3540, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3540, file: !80, line: 613, baseType: !193, size: 32, offset: 1792)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3540, file: !80, line: 614, baseType: !193, size: 32, offset: 1824)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3540, file: !80, line: 615, baseType: !143, size: 64, offset: 1856)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3540, file: !80, line: 616, baseType: !143, size: 64, offset: 1920)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3540, file: !80, line: 617, baseType: !143, size: 64, offset: 1984)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3540, file: !80, line: 618, baseType: !143, size: 64, offset: 2048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3540, file: !80, line: 620, baseType: !3628, size: 64, offset: 2112)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !80, line: 537, baseType: !250)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3629, file: !80, line: 538, baseType: !7, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3629, file: !80, line: 540, baseType: !164, size: 128, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3629, file: !80, line: 543, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3540, file: !80, line: 621, baseType: !3638, size: 64, offset: 2176)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !233, !1451}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3540, file: !80, line: 622, baseType: !3642, size: 64, offset: 2240)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !234, file: !73, line: 486, baseType: !3645, size: 64, offset: 4096)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3654, !3655, !3656}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3646, file: !80, line: 643, baseType: !3407, size: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3646, file: !80, line: 644, baseType: !3410, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3646, file: !80, line: 645, baseType: !3651, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !233, !497}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3646, file: !80, line: 646, baseType: !3410, size: 64, offset: 1600)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3646, file: !80, line: 647, baseType: !3401, size: 64, offset: 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3646, file: !80, line: 648, baseType: !3401, size: 64, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !234, file: !73, line: 493, baseType: !3658, size: 64, offset: 4160)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3836, !3837, !3838, !3839, !3840, !3841, !3844, !3845, !3846, !3847, !3848, !3849, !3850}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3659, file: !94, line: 163, baseType: !164, size: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3659, file: !94, line: 164, baseType: !148, size: 64, offset: 128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3659, file: !94, line: 165, baseType: !3664, size: 64, offset: 192)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3666)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3667)
!3667 = !{!3668, !3786, !3797, !3802, !3806, !3813, !3817, !3821, !3828, !3832}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3666, file: !94, line: 106, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!193, !3658, !3672, !93}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3674, line: 51, size: 1344, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !{!3676, !3677, !3679, !3680, !3770, !3779, !3780, !3781, !3782, !3783, !3784, !3785}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3673, file: !3674, line: 52, baseType: !148, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3673, file: !3674, line: 53, baseType: !3678, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3674, line: 28, baseType: !122)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3673, file: !3674, line: 54, baseType: !148, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3673, file: !3674, line: 55, baseType: !3681, size: 192, offset: 192)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3682, line: 17, size: 192, elements: !3683)
!3682 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !{!3684, !3686, !3769}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3681, file: !3682, line: 18, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3681, file: !3682, line: 19, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3682, line: 110, size: 1152, elements: !3690)
!3690 = !{!3691, !3695, !3699, !3705, !3711, !3715, !3719, !3724, !3728, !3729, !3733, !3737, !3741, !3752, !3753, !3754, !3755, !3765}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3689, file: !3682, line: 111, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3685, !3685}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3689, file: !3682, line: 112, baseType: !3696, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3685}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3689, file: !3682, line: 113, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!497, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3689, file: !3682, line: 114, baseType: !3706, size: 64, offset: 192)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!2134, !3703, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3689, file: !3682, line: 116, baseType: !3712, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!497, !3703, !148}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3689, file: !3682, line: 118, baseType: !3716, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!193, !3703, !148, !7, !127, !337}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3689, file: !3682, line: 123, baseType: !3720, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!193, !3703, !148, !3723, !337}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3689, file: !3682, line: 126, baseType: !3725, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!148, !3703}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3689, file: !3682, line: 127, baseType: !3725, size: 64, offset: 512)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3689, file: !3682, line: 128, baseType: !3730, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3685, !3703}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3689, file: !3682, line: 130, baseType: !3734, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!3685, !3703, !3685}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3689, file: !3682, line: 133, baseType: !3738, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3685, !3703, !148}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3689, file: !3682, line: 135, baseType: !3742, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!193, !3703, !148, !148, !7, !7, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3682, line: 43, size: 640, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3746, file: !3682, line: 44, baseType: !3685, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3746, file: !3682, line: 45, baseType: !7, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3746, file: !3682, line: 46, baseType: !3751, size: 512, offset: 128)
!3751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, elements: !1338)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3689, file: !3682, line: 140, baseType: !3734, size: 64, offset: 832)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3689, file: !3682, line: 143, baseType: !3730, size: 64, offset: 896)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3689, file: !3682, line: 145, baseType: !3692, size: 64, offset: 960)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3689, file: !3682, line: 146, baseType: !3756, size: 64, offset: 1024)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!193, !3703, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3682, line: 29, size: 128, elements: !3761)
!3761 = !{!3762, !3763, !3764}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3760, file: !3682, line: 30, baseType: !7, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3760, file: !3682, line: 31, baseType: !7, size: 32, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3760, file: !3682, line: 32, baseType: !3703, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3689, file: !3682, line: 148, baseType: !3766, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!193, !3703, !233}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3681, file: !3682, line: 20, baseType: !233, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3673, file: !3674, line: 57, baseType: !3771, size: 64, offset: 384)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3674, line: 31, size: 704, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3674, line: 32, baseType: !291, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3772, file: !3674, line: 33, baseType: !193, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3772, file: !3674, line: 34, baseType: !127, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3772, file: !3674, line: 35, baseType: !3771, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3772, file: !3674, line: 43, baseType: !358, size: 448, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3673, file: !3674, line: 58, baseType: !3771, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3673, file: !3674, line: 59, baseType: !3672, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3673, file: !3674, line: 60, baseType: !3672, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3673, file: !3674, line: 61, baseType: !3672, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3673, file: !3674, line: 63, baseType: !237, size: 512, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3673, file: !3674, line: 65, baseType: !152, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3673, file: !3674, line: 66, baseType: !127, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3666, file: !94, line: 108, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!193, !3658, !3790, !93}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3791, file: !94, line: 64, baseType: !3685, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3791, file: !94, line: 65, baseType: !193, size: 32, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3791, file: !94, line: 66, baseType: !3796, size: 512, offset: 96)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 512, elements: !1742)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3666, file: !94, line: 110, baseType: !3798, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!193, !3658, !7, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !141, line: 164, baseType: !152)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3666, file: !94, line: 111, baseType: !3803, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !3658, !7}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3666, file: !94, line: 112, baseType: !3807, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!193, !3658, !3672, !3810, !7, !3812, !2690}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3666, file: !94, line: 117, baseType: !3814, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!193, !3658, !7, !7, !127}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3666, file: !94, line: 119, baseType: !3818, size: 64, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{null, !3658, !7, !7}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3666, file: !94, line: 121, baseType: !3822, size: 64, offset: 448)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!193, !3658, !3825, !497}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3827, line: 11, flags: DIFlagFwdDecl)
!3827 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3666, file: !94, line: 122, baseType: !3829, size: 64, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{null, !3658, !3825}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3666, file: !94, line: 123, baseType: !3833, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!193, !3658, !3790, !3812, !2690}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3659, file: !94, line: 166, baseType: !127, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3659, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3659, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3659, file: !94, line: 171, baseType: !3685, size: 64, offset: 384)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3659, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3659, file: !94, line: 173, baseType: !3842, size: 64, offset: 512)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3659, file: !94, line: 175, baseType: !3658, size: 64, offset: 576)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3659, file: !94, line: 182, baseType: !3801, size: 64, offset: 640)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3659, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3659, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3659, file: !94, line: 185, baseType: !749, size: 128, offset: 768)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3659, file: !94, line: 186, baseType: !1181, size: 192, offset: 896)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3659, file: !94, line: 187, baseType: !3851, offset: 1088)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2338)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !234, file: !73, line: 499, baseType: !164, size: 128, offset: 4224)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !234, file: !73, line: 502, baseType: !3854, size: 64, offset: 4352)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !234, file: !73, line: 504, baseType: !3858, size: 64, offset: 4416)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !234, file: !73, line: 505, baseType: !143, size: 64, offset: 4480)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !234, file: !73, line: 510, baseType: !143, size: 64, offset: 4544)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !234, file: !73, line: 511, baseType: !3862, size: 64, offset: 4608)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3864)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !234, file: !73, line: 513, baseType: !3866, size: 64, offset: 4672)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3868)
!3868 = !{!3869, !3870}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3867, file: !73, line: 293, baseType: !7, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3867, file: !73, line: 294, baseType: !152, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !234, file: !73, line: 515, baseType: !164, size: 128, offset: 4736)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !234, file: !73, line: 526, baseType: !3873, offset: 4864)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3874, line: 5, elements: !264)
!3874 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !234, file: !73, line: 528, baseType: !3672, size: 64, offset: 4864)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !234, file: !73, line: 529, baseType: !3685, size: 64, offset: 4928)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !234, file: !73, line: 534, baseType: !520, size: 32, offset: 4992)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !234, file: !73, line: 535, baseType: !122, size: 32, offset: 5024)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !234, file: !73, line: 537, baseType: !250, offset: 5056)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !234, file: !73, line: 538, baseType: !164, size: 128, offset: 5056)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !234, file: !73, line: 540, baseType: !3882, size: 64, offset: 5184)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3884, line: 54, size: 960, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892, !3896, !3900, !3901, !3902, !3903, !3907, !3911, !3912}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3883, file: !3884, line: 55, baseType: !148, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3883, file: !3884, line: 56, baseType: !640, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3883, file: !3884, line: 58, baseType: !343, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3883, file: !3884, line: 59, baseType: !343, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3883, file: !3884, line: 60, baseType: !243, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3883, file: !3884, line: 62, baseType: !3392, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3883, file: !3884, line: 63, baseType: !3893, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!291, !233, !3399}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3883, file: !3884, line: 65, baseType: !3897, size: 64, offset: 448)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3882}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3883, file: !3884, line: 66, baseType: !3401, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3883, file: !3884, line: 68, baseType: !3410, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3883, file: !3884, line: 70, baseType: !3196, size: 64, offset: 640)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3883, file: !3884, line: 71, baseType: !3904, size: 64, offset: 704)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!2134, !233}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3883, file: !3884, line: 73, baseType: !3908, size: 64, offset: 768)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !233, !3228, !3229}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3883, file: !3884, line: 75, baseType: !3405, size: 64, offset: 832)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3883, file: !3884, line: 77, baseType: !3522, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !234, file: !73, line: 541, baseType: !343, size: 64, offset: 5248)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !234, file: !73, line: 543, baseType: !3401, size: 64, offset: 5312)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !234, file: !73, line: 544, baseType: !3916, size: 64, offset: 5376)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !234, file: !73, line: 545, baseType: !3919, size: 64, offset: 5440)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !234, file: !73, line: 547, baseType: !497, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !234, file: !73, line: 548, baseType: !497, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !234, file: !73, line: 549, baseType: !497, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !234, file: !73, line: 550, baseType: !497, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !171, file: !161, line: 635, baseType: !234, size: 5568, offset: 2304)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !171, file: !161, line: 636, baseType: !357, size: 64, offset: 7872)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !171, file: !161, line: 637, baseType: !357, size: 64, offset: 7936)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !171, file: !161, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !160, file: !161, line: 312, baseType: !170, size: 64, offset: 192)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !160, file: !161, line: 314, baseType: !127, size: 64, offset: 256)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !160, file: !161, line: 315, baseType: !216, size: 64, offset: 320)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !160, file: !161, line: 316, baseType: !3933, size: 64, offset: 384)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !161, line: 69, size: 832, elements: !3935)
!3935 = !{!3936, !3937, !3938, !3941, !3942}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3934, file: !161, line: 70, baseType: !170, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3934, file: !161, line: 71, baseType: !164, size: 128, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3934, file: !161, line: 72, baseType: !3939, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !161, line: 72, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3934, file: !161, line: 73, baseType: !220, size: 8, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3934, file: !161, line: 74, baseType: !237, size: 512, offset: 320)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !160, file: !161, line: 318, baseType: !7, size: 32, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !160, file: !161, line: 319, baseType: !229, size: 16, offset: 480)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !160, file: !161, line: 320, baseType: !229, size: 16, offset: 496)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !160, file: !161, line: 321, baseType: !229, size: 16, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !160, file: !161, line: 322, baseType: !229, size: 16, offset: 528)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !160, file: !161, line: 323, baseType: !7, size: 32, offset: 544)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !160, file: !161, line: 324, baseType: !1360, size: 8, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !160, file: !161, line: 325, baseType: !1360, size: 8, offset: 584)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !160, file: !161, line: 330, baseType: !1360, size: 8, offset: 592)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !160, file: !161, line: 331, baseType: !1360, size: 8, offset: 600)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !160, file: !161, line: 332, baseType: !1360, size: 8, offset: 608)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !160, file: !161, line: 333, baseType: !1360, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !160, file: !161, line: 334, baseType: !1360, size: 8, offset: 624)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !160, file: !161, line: 335, baseType: !1360, size: 8, offset: 632)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !160, file: !161, line: 336, baseType: !869, size: 16, offset: 640)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !160, file: !161, line: 337, baseType: !3812, size: 64, offset: 704)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !160, file: !161, line: 339, baseType: !3960, size: 64, offset: 768)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !161, line: 858, size: 2048, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3977, !3981, !3985, !3989, !3993, !3994, !3998, !4017, !4018, !4019}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3961, file: !161, line: 859, baseType: !164, size: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3961, file: !161, line: 860, baseType: !148, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3961, file: !161, line: 861, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3463, line: 38, size: 256, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !3974, !3975, !3976}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3968, file: !3463, line: 39, baseType: !124, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3968, file: !3463, line: 39, baseType: !124, size: 32, offset: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3968, file: !3463, line: 40, baseType: !124, size: 32, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3968, file: !3463, line: 40, baseType: !124, size: 32, offset: 96)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3968, file: !3463, line: 41, baseType: !124, size: 32, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3968, file: !3463, line: 41, baseType: !124, size: 32, offset: 160)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3968, file: !3463, line: 42, baseType: !3482, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3961, file: !161, line: 862, baseType: !3978, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!193, !159, !3966}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3961, file: !161, line: 863, baseType: !3982, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !159}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3961, file: !161, line: 864, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!193, !159, !3493}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3961, file: !161, line: 865, baseType: !3990, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!193, !159}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3961, file: !161, line: 866, baseType: !3982, size: 64, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3961, file: !161, line: 867, baseType: !3995, size: 64, offset: 576)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!193, !159, !193}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3961, file: !161, line: 868, baseType: !3999, size: 64, offset: 640)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4001)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !161, line: 795, size: 384, elements: !4002)
!4002 = !{!4003, !4009, !4013, !4014, !4015, !4016}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4001, file: !161, line: 797, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!4007, !159, !4008}
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !161, line: 772, baseType: !7)
!4008 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !161, line: 180, baseType: !7)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4001, file: !161, line: 801, baseType: !4010, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!4007, !159}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4001, file: !161, line: 804, baseType: !4010, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4001, file: !161, line: 807, baseType: !3982, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4001, file: !161, line: 808, baseType: !3982, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4001, file: !161, line: 811, baseType: !3982, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3961, file: !161, line: 869, baseType: !343, size: 64, offset: 704)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3961, file: !161, line: 870, baseType: !3451, size: 1152, offset: 768)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3961, file: !161, line: 871, baseType: !4020, size: 128, offset: 1920)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !161, line: 759, size: 128, elements: !4021)
!4021 = !{!4022, !4023}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4020, file: !161, line: 760, baseType: !250)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4020, file: !161, line: 761, baseType: !164, size: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !160, file: !161, line: 340, baseType: !143, size: 64, offset: 832)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !160, file: !161, line: 346, baseType: !3867, size: 128, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !160, file: !161, line: 348, baseType: !4027, size: 32, offset: 1024)
!4027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !161, line: 155, baseType: !193)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !160, file: !161, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !160, file: !161, line: 352, baseType: !1360, size: 8, offset: 1064)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !160, file: !161, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !160, file: !161, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !160, file: !161, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !160, file: !161, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !160, file: !161, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !160, file: !161, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !160, file: !161, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !160, file: !161, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !160, file: !161, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !160, file: !161, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !160, file: !161, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !160, file: !161, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !160, file: !161, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !160, file: !161, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !160, file: !161, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !160, file: !161, line: 376, baseType: !7, size: 32, offset: 1120)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !160, file: !161, line: 377, baseType: !7, size: 32, offset: 1152)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !160, file: !161, line: 380, baseType: !4048, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !161, line: 303, flags: DIFlagFwdDecl)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !160, file: !161, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !160, file: !161, line: 383, baseType: !193, size: 32, offset: 1312)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !160, file: !161, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !160, file: !161, line: 387, baseType: !4008, size: 32, offset: 1376)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !160, file: !161, line: 388, baseType: !234, size: 5568, offset: 1408)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !160, file: !161, line: 390, baseType: !193, size: 32, offset: 6976)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !160, file: !161, line: 396, baseType: !7, size: 32, offset: 7008)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !160, file: !161, line: 397, baseType: !4058, size: 8704, offset: 7040)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 8704, elements: !4059)
!4059 = !{!4060}
!4060 = !DISubrange(count: 17)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !160, file: !161, line: 399, baseType: !497, size: 8, offset: 15744)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !160, file: !161, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !160, file: !161, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !160, file: !161, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !160, file: !161, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !160, file: !161, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !160, file: !161, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !160, file: !161, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !160, file: !161, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !160, file: !161, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !160, file: !161, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !160, file: !161, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !160, file: !161, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !160, file: !161, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !160, file: !161, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !160, file: !161, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !160, file: !161, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !160, file: !161, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !160, file: !161, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !160, file: !161, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !160, file: !161, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !160, file: !161, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !160, file: !161, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !160, file: !161, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !160, file: !161, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !160, file: !161, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !160, file: !161, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !160, file: !161, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !160, file: !161, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !160, file: !161, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !160, file: !161, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !160, file: !161, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !160, file: !161, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !160, file: !161, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !160, file: !161, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !160, file: !161, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !160, file: !161, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !160, file: !161, line: 450, baseType: !4099, size: 16, offset: 15792)
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !161, line: 206, baseType: !229)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !160, file: !161, line: 451, baseType: !758, size: 32, offset: 15808)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !160, file: !161, line: 453, baseType: !3796, size: 512, offset: 15840)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !160, file: !161, line: 454, baseType: !645, size: 64, offset: 16384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !160, file: !161, line: 455, baseType: !357, size: 64, offset: 16448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !160, file: !161, line: 456, baseType: !193, size: 32, offset: 16512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !160, file: !161, line: 457, baseType: !4106, size: 1088, offset: 16576)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 1088, elements: !4059)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !160, file: !161, line: 458, baseType: !4106, size: 1088, offset: 17664)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !160, file: !161, line: 469, baseType: !343, size: 64, offset: 18752)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !160, file: !161, line: 471, baseType: !4110, size: 64, offset: 18816)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !161, line: 304, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !161, line: 478, baseType: !4113, size: 64, offset: 18880)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !161, line: 478, size: 64, elements: !4114)
!4114 = !{!4115, !4118}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4113, file: !161, line: 479, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !161, line: 305, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4113, file: !161, line: 480, baseType: !159, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !160, file: !161, line: 482, baseType: !869, size: 16, offset: 18944)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !160, file: !161, line: 483, baseType: !1360, size: 8, offset: 18960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !160, file: !161, line: 497, baseType: !869, size: 16, offset: 18976)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !160, file: !161, line: 498, baseType: !142, size: 64, offset: 19008)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !160, file: !161, line: 499, baseType: !337, size: 64, offset: 19072)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !160, file: !161, line: 500, baseType: !291, size: 64, offset: 19136)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !160, file: !161, line: 502, baseType: !152, size: 64, offset: 19200)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !129, file: !3, line: 34, baseType: !164, size: 128, offset: 768)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !167)
!4130 = !{!0, !4131}
!4131 = !DIGlobalVariableExpression(var: !4132, expr: !DIExpression())
!4132 = distinct !DIGlobalVariable(name: "ioapic_list", scope: !2, file: !3, line: 37, type: !164, isLocal: true, isDefinition: true)
!4133 = !{i32 7, !"Dwarf Version", i32 4}
!4134 = !{i32 2, !"Debug Info Version", i32 3}
!4135 = !{i32 1, !"wchar_size", i32 2}
!4136 = !{i32 1, !"Code Model", i32 2}
!4137 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4138 = distinct !DISubprogram(name: "acpi_ioapic_add", scope: !3, file: !3, line: 201, type: !4139, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!193, !132}
!4141 = !DILocalVariable(name: "root_handle", arg: 1, scope: !4138, file: !3, line: 201, type: !132)
!4142 = !DILocation(line: 201, column: 33, scope: !4138)
!4143 = !DILocalVariable(name: "status", scope: !4138, file: !3, line: 203, type: !120)
!4144 = !DILocation(line: 203, column: 14, scope: !4138)
!4145 = !DILocalVariable(name: "retval", scope: !4138, file: !3, line: 203, type: !120)
!4146 = !DILocation(line: 203, column: 22, scope: !4138)
!4147 = !DILocation(line: 205, column: 49, scope: !4138)
!4148 = !DILocation(line: 207, column: 10, scope: !4138)
!4149 = !DILocation(line: 207, column: 23, scope: !4138)
!4150 = !DILocation(line: 205, column: 11, scope: !4138)
!4151 = !DILocation(line: 205, column: 9, scope: !4138)
!4152 = !DILocation(line: 209, column: 9, scope: !4138)
!4153 = !DILocation(line: 209, column: 30, scope: !4138)
!4154 = !DILocation(line: 209, column: 33, scope: !4138)
!4155 = !DILocation(line: 0, scope: !4138)
!4156 = !DILocation(line: 209, column: 2, scope: !4138)
!4157 = distinct !DISubprogram(name: "handle_ioapic_add", scope: !3, file: !3, line: 96, type: !4158, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4158 = !DISubroutineType(types: !4159)
!4159 = !{!120, !132, !122, !127, !126}
!4160 = !DILocalVariable(name: "handle", arg: 1, scope: !4157, file: !3, line: 96, type: !132)
!4161 = !DILocation(line: 96, column: 50, scope: !4157)
!4162 = !DILocalVariable(name: "lvl", arg: 2, scope: !4157, file: !3, line: 96, type: !122)
!4163 = !DILocation(line: 96, column: 62, scope: !4157)
!4164 = !DILocalVariable(name: "context", arg: 3, scope: !4157, file: !3, line: 97, type: !127)
!4165 = !DILocation(line: 97, column: 16, scope: !4157)
!4166 = !DILocalVariable(name: "rv", arg: 4, scope: !4157, file: !3, line: 97, type: !126)
!4167 = !DILocation(line: 97, column: 32, scope: !4157)
!4168 = !DILocalVariable(name: "status", scope: !4157, file: !3, line: 99, type: !120)
!4169 = !DILocation(line: 99, column: 14, scope: !4157)
!4170 = !DILocalVariable(name: "gsi_base", scope: !4157, file: !3, line: 100, type: !145)
!4171 = !DILocation(line: 100, column: 21, scope: !4157)
!4172 = !DILocalVariable(name: "ioapic", scope: !4157, file: !3, line: 101, type: !128)
!4173 = !DILocation(line: 101, column: 26, scope: !4157)
!4174 = !DILocalVariable(name: "dev", scope: !4157, file: !3, line: 102, type: !159)
!4175 = !DILocation(line: 102, column: 18, scope: !4157)
!4176 = !DILocalVariable(name: "res", scope: !4157, file: !3, line: 103, type: !155)
!4177 = !DILocation(line: 103, column: 19, scope: !4157)
!4178 = !DILocalVariable(name: "pci_res", scope: !4157, file: !3, line: 103, type: !155)
!4179 = !DILocation(line: 103, column: 32, scope: !4157)
!4180 = !DILocalVariable(name: "crs_res", scope: !4157, file: !3, line: 103, type: !155)
!4181 = !DILocation(line: 103, column: 49, scope: !4157)
!4182 = !DILocalVariable(name: "type", scope: !4157, file: !3, line: 104, type: !291)
!4183 = !DILocation(line: 104, column: 8, scope: !4157)
!4184 = !DILocation(line: 106, column: 22, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 106, column: 6)
!4186 = !DILocation(line: 106, column: 7, scope: !4185)
!4187 = !DILocation(line: 106, column: 6, scope: !4157)
!4188 = !DILocation(line: 107, column: 3, scope: !4185)
!4189 = !DILocation(line: 109, column: 2, scope: !4157)
!4190 = !DILocalVariable(name: "__mptr", scope: !4191, file: !3, line: 110, type: !127)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 110, column: 2)
!4192 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 110, column: 2)
!4193 = !DILocation(line: 110, column: 2, scope: !4191)
!4194 = !DILocation(line: 110, column: 2, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 110, column: 2)
!4196 = !DILocation(line: 110, column: 2, scope: !4192)
!4197 = !DILocation(line: 110, column: 2, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 110, column: 2)
!4199 = !DILocation(line: 111, column: 7, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 111, column: 7)
!4201 = !DILocation(line: 111, column: 15, scope: !4200)
!4202 = !DILocation(line: 111, column: 25, scope: !4200)
!4203 = !DILocation(line: 111, column: 22, scope: !4200)
!4204 = !DILocation(line: 111, column: 7, scope: !4198)
!4205 = !DILocation(line: 112, column: 4, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 111, column: 33)
!4207 = !DILocation(line: 113, column: 4, scope: !4206)
!4208 = !DILocalVariable(name: "__mptr", scope: !4209, file: !3, line: 110, type: !127)
!4209 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 110, column: 2)
!4210 = !DILocation(line: 110, column: 2, scope: !4209)
!4211 = !DILocation(line: 110, column: 2, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 110, column: 2)
!4213 = distinct !{!4213, !4196, !4214}
!4214 = !DILocation(line: 114, column: 3, scope: !4192)
!4215 = !DILocation(line: 116, column: 33, scope: !4157)
!4216 = !DILocation(line: 116, column: 11, scope: !4157)
!4217 = !DILocation(line: 116, column: 9, scope: !4157)
!4218 = !DILocation(line: 117, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 117, column: 6)
!4220 = !DILocation(line: 117, column: 6, scope: !4157)
!4221 = !DILocation(line: 118, column: 3, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 117, column: 28)
!4223 = !DILocation(line: 119, column: 3, scope: !4222)
!4224 = !DILocation(line: 122, column: 11, scope: !4157)
!4225 = !DILocation(line: 122, column: 9, scope: !4157)
!4226 = !DILocation(line: 123, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 123, column: 6)
!4228 = !DILocation(line: 123, column: 6, scope: !4157)
!4229 = !DILocation(line: 124, column: 3, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 123, column: 15)
!4231 = !DILocation(line: 125, column: 3, scope: !4230)
!4232 = !DILocation(line: 127, column: 38, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 126, column: 9)
!4234 = !DILocation(line: 127, column: 3, scope: !4233)
!4235 = !DILocation(line: 127, column: 11, scope: !4233)
!4236 = !DILocation(line: 127, column: 23, scope: !4233)
!4237 = !DILocation(line: 128, column: 20, scope: !4233)
!4238 = !DILocation(line: 128, column: 3, scope: !4233)
!4239 = !DILocation(line: 128, column: 11, scope: !4233)
!4240 = !DILocation(line: 128, column: 18, scope: !4233)
!4241 = !DILocation(line: 129, column: 27, scope: !4233)
!4242 = !DILocation(line: 129, column: 22, scope: !4233)
!4243 = !DILocation(line: 129, column: 3, scope: !4233)
!4244 = !DILocation(line: 129, column: 11, scope: !4233)
!4245 = !DILocation(line: 129, column: 20, scope: !4233)
!4246 = !DILocation(line: 130, column: 19, scope: !4233)
!4247 = !DILocation(line: 130, column: 27, scope: !4233)
!4248 = !DILocation(line: 130, column: 3, scope: !4233)
!4249 = !DILocation(line: 133, column: 29, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 133, column: 6)
!4251 = !DILocation(line: 133, column: 42, scope: !4250)
!4252 = !DILocation(line: 133, column: 37, scope: !4250)
!4253 = !DILocation(line: 133, column: 6, scope: !4250)
!4254 = !DILocation(line: 133, column: 6, scope: !4157)
!4255 = !DILocation(line: 134, column: 3, scope: !4250)
!4256 = !DILocation(line: 136, column: 25, scope: !4157)
!4257 = !DILocation(line: 136, column: 8, scope: !4157)
!4258 = !DILocation(line: 136, column: 6, scope: !4157)
!4259 = !DILocation(line: 137, column: 6, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 137, column: 6)
!4261 = !DILocation(line: 137, column: 10, scope: !4260)
!4262 = !DILocation(line: 137, column: 13, scope: !4260)
!4263 = !DILocation(line: 137, column: 6, scope: !4157)
!4264 = !DILocation(line: 138, column: 25, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 138, column: 7)
!4266 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 137, column: 39)
!4267 = !DILocation(line: 138, column: 7, scope: !4265)
!4268 = !DILocation(line: 138, column: 30, scope: !4265)
!4269 = !DILocation(line: 138, column: 7, scope: !4266)
!4270 = !DILocation(line: 139, column: 4, scope: !4265)
!4271 = !DILocation(line: 140, column: 18, scope: !4266)
!4272 = !DILocation(line: 140, column: 3, scope: !4266)
!4273 = !DILocation(line: 141, column: 26, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 141, column: 7)
!4275 = !DILocation(line: 141, column: 34, scope: !4274)
!4276 = !DILocation(line: 141, column: 7, scope: !4274)
!4277 = !DILocation(line: 141, column: 7, scope: !4266)
!4278 = !DILocation(line: 142, column: 4, scope: !4274)
!4279 = !DILocation(line: 143, column: 14, scope: !4266)
!4280 = !DILocation(line: 143, column: 19, scope: !4266)
!4281 = !DILocation(line: 143, column: 11, scope: !4266)
!4282 = !DILocation(line: 144, column: 18, scope: !4266)
!4283 = !DILocation(line: 144, column: 3, scope: !4266)
!4284 = !DILocation(line: 144, column: 11, scope: !4266)
!4285 = !DILocation(line: 144, column: 16, scope: !4266)
!4286 = !DILocation(line: 145, column: 2, scope: !4266)
!4287 = !DILocation(line: 146, column: 15, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 145, column: 9)
!4289 = !DILocation(line: 146, column: 3, scope: !4288)
!4290 = !DILocation(line: 147, column: 7, scope: !4288)
!4291 = !DILocation(line: 150, column: 13, scope: !4157)
!4292 = !DILocation(line: 150, column: 21, scope: !4157)
!4293 = !DILocation(line: 150, column: 10, scope: !4157)
!4294 = !DILocation(line: 151, column: 22, scope: !4157)
!4295 = !DILocation(line: 151, column: 59, scope: !4157)
!4296 = !DILocation(line: 151, column: 2, scope: !4157)
!4297 = !DILocation(line: 152, column: 18, scope: !4157)
!4298 = !DILocation(line: 152, column: 2, scope: !4157)
!4299 = !DILocation(line: 152, column: 11, scope: !4157)
!4300 = !DILocation(line: 152, column: 16, scope: !4157)
!4301 = !DILocation(line: 153, column: 2, scope: !4157)
!4302 = !DILocation(line: 153, column: 11, scope: !4157)
!4303 = !DILocation(line: 153, column: 17, scope: !4157)
!4304 = !DILocation(line: 154, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 154, column: 6)
!4306 = !DILocation(line: 154, column: 15, scope: !4305)
!4307 = !DILocation(line: 154, column: 21, scope: !4305)
!4308 = !DILocation(line: 154, column: 6, scope: !4157)
!4309 = !DILocation(line: 155, column: 3, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 154, column: 27)
!4311 = !DILocation(line: 156, column: 3, scope: !4310)
!4312 = !DILocation(line: 157, column: 46, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 157, column: 13)
!4314 = !DILocation(line: 157, column: 13, scope: !4313)
!4315 = !DILocation(line: 157, column: 13, scope: !4305)
!4316 = !DILocation(line: 158, column: 3, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 157, column: 56)
!4318 = !DILocation(line: 159, column: 3, scope: !4317)
!4319 = !DILocation(line: 163, column: 8, scope: !4157)
!4320 = !DILocation(line: 163, column: 6, scope: !4157)
!4321 = !DILocation(line: 164, column: 7, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 164, column: 6)
!4323 = !DILocation(line: 164, column: 11, scope: !4322)
!4324 = !DILocation(line: 164, column: 15, scope: !4322)
!4325 = !DILocation(line: 164, column: 20, scope: !4322)
!4326 = !DILocation(line: 164, column: 6, scope: !4157)
!4327 = !DILocation(line: 165, column: 9, scope: !4322)
!4328 = !DILocation(line: 165, column: 7, scope: !4322)
!4329 = !DILocation(line: 165, column: 3, scope: !4322)
!4330 = !DILocation(line: 167, column: 27, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 167, column: 6)
!4332 = !DILocation(line: 167, column: 35, scope: !4331)
!4333 = !DILocation(line: 167, column: 40, scope: !4331)
!4334 = !DILocation(line: 167, column: 52, scope: !4331)
!4335 = !DILocation(line: 167, column: 47, scope: !4331)
!4336 = !DILocation(line: 167, column: 6, scope: !4331)
!4337 = !DILocation(line: 167, column: 6, scope: !4157)
!4338 = !DILocation(line: 168, column: 3, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 167, column: 63)
!4340 = !DILocation(line: 169, column: 3, scope: !4339)
!4341 = !DILocation(line: 167, column: 60, scope: !4331)
!4342 = !DILabel(scope: !4157, name: "done", file: !3, line: 171)
!4343 = !DILocation(line: 171, column: 1, scope: !4157)
!4344 = !DILocation(line: 172, column: 12, scope: !4157)
!4345 = !DILocation(line: 172, column: 20, scope: !4157)
!4346 = !DILocation(line: 172, column: 2, scope: !4157)
!4347 = !DILocation(line: 173, column: 2, scope: !4157)
!4348 = !DILocation(line: 175, column: 6, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 175, column: 6)
!4350 = !DILocation(line: 175, column: 6, scope: !4157)
!4351 = !DILocation(line: 176, column: 3, scope: !4349)
!4352 = !DILocation(line: 179, column: 3, scope: !4349)
!4353 = !DILocation(line: 182, column: 2, scope: !4157)
!4354 = !DILabel(scope: !4157, name: "exit_release", file: !3, line: 184)
!4355 = !DILocation(line: 184, column: 1, scope: !4157)
!4356 = !DILocation(line: 185, column: 6, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 185, column: 6)
!4358 = !DILocation(line: 185, column: 6, scope: !4157)
!4359 = !DILocation(line: 186, column: 22, scope: !4357)
!4360 = !DILocation(line: 186, column: 3, scope: !4357)
!4361 = !DILocation(line: 187, column: 6, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 187, column: 6)
!4363 = !DILocation(line: 187, column: 14, scope: !4362)
!4364 = !DILocation(line: 187, column: 18, scope: !4362)
!4365 = !DILocation(line: 187, column: 24, scope: !4362)
!4366 = !DILocation(line: 187, column: 27, scope: !4362)
!4367 = !DILocation(line: 187, column: 35, scope: !4362)
!4368 = !DILocation(line: 187, column: 39, scope: !4362)
!4369 = !DILocation(line: 187, column: 6, scope: !4157)
!4370 = !DILocation(line: 188, column: 21, scope: !4362)
!4371 = !DILocation(line: 188, column: 29, scope: !4362)
!4372 = !DILocation(line: 188, column: 3, scope: !4362)
!4373 = !DILabel(scope: !4157, name: "exit_disable", file: !3, line: 189)
!4374 = !DILocation(line: 189, column: 1, scope: !4157)
!4375 = !DILocation(line: 190, column: 6, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 190, column: 6)
!4377 = !DILocation(line: 190, column: 6, scope: !4157)
!4378 = !DILocation(line: 191, column: 22, scope: !4376)
!4379 = !DILocation(line: 191, column: 3, scope: !4376)
!4380 = !DILabel(scope: !4157, name: "exit_put", file: !3, line: 192)
!4381 = !DILocation(line: 192, column: 1, scope: !4157)
!4382 = !DILocation(line: 193, column: 14, scope: !4157)
!4383 = !DILocation(line: 193, column: 2, scope: !4157)
!4384 = !DILocation(line: 194, column: 8, scope: !4157)
!4385 = !DILocation(line: 194, column: 2, scope: !4157)
!4386 = !DILabel(scope: !4157, name: "exit", file: !3, line: 195)
!4387 = !DILocation(line: 195, column: 1, scope: !4157)
!4388 = !DILocation(line: 196, column: 2, scope: !4157)
!4389 = !DILocation(line: 197, column: 18, scope: !4157)
!4390 = !DILocation(line: 197, column: 2, scope: !4157)
!4391 = !DILocation(line: 197, column: 21, scope: !4157)
!4392 = !DILocation(line: 198, column: 2, scope: !4157)
!4393 = !DILocation(line: 199, column: 1, scope: !4157)
!4394 = distinct !DISubprogram(name: "pci_ioapic_remove", scope: !3, file: !3, line: 212, type: !4395, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{null, !4397}
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_root", file: !218, line: 574, size: 832, elements: !4399)
!4399 = !{!4400, !4678, !4679, !4680, !4681, !4682, !4683}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4398, file: !218, line: 575, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !218, line: 351, size: 10880, elements: !4403)
!4403 = !{!4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4421, !4438, !4512, !4541, !4565, !4586, !4590, !4599, !4631, !4645, !4667, !4671, !4672, !4673, !4674, !4675, !4676, !4677}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !4402, file: !218, line: 352, baseType: !193, size: 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4402, file: !218, line: 353, baseType: !132, size: 64, offset: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4402, file: !218, line: 354, baseType: !3681, size: 192, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4402, file: !218, line: 355, baseType: !4401, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4402, file: !218, line: 356, baseType: !164, size: 128, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4402, file: !218, line: 357, baseType: !164, size: 128, offset: 512)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !4402, file: !218, line: 358, baseType: !164, size: 128, offset: 640)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !4402, file: !218, line: 359, baseType: !164, size: 128, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4402, file: !218, line: 360, baseType: !4413, size: 32, offset: 896)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !218, line: 179, size: 32, elements: !4414)
!4414 = !{!4415, !4416, !4417, !4418, !4419, !4420}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4413, file: !218, line: 180, baseType: !122, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4413, file: !218, line: 181, baseType: !122, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !4413, file: !218, line: 182, baseType: !122, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !4413, file: !218, line: 183, baseType: !122, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !4413, file: !218, line: 184, baseType: !122, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4413, file: !218, line: 185, baseType: !122, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4402, file: !218, line: 361, baseType: !4422, size: 32, offset: 928)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !218, line: 190, size: 32, elements: !4423)
!4423 = !{!4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !4422, file: !218, line: 191, baseType: !122, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4422, file: !218, line: 192, baseType: !122, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !4422, file: !218, line: 193, baseType: !122, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !4422, file: !218, line: 194, baseType: !122, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4422, file: !218, line: 195, baseType: !122, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !4422, file: !218, line: 196, baseType: !122, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !4422, file: !218, line: 197, baseType: !122, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !4422, file: !218, line: 198, baseType: !122, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !4422, file: !218, line: 199, baseType: !122, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !4422, file: !218, line: 200, baseType: !122, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !4422, file: !218, line: 201, baseType: !122, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !4422, file: !218, line: 202, baseType: !122, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !4422, file: !218, line: 203, baseType: !122, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4422, file: !218, line: 204, baseType: !122, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !4402, file: !218, line: 362, baseType: !4439, size: 960, offset: 960)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !218, line: 234, size: 960, elements: !4440)
!4440 = !{!4441, !4443, !4450, !4452, !4453, !4454, !4459, !4462}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !4439, file: !218, line: 235, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !218, line: 217, baseType: !2040)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4439, file: !218, line: 236, baseType: !4444, size: 32, offset: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !218, line: 227, size: 32, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4444, file: !218, line: 228, baseType: !122, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4444, file: !218, line: 229, baseType: !122, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !4444, file: !218, line: 230, baseType: !122, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4444, file: !218, line: 231, baseType: !122, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !4439, file: !218, line: 237, baseType: !4451, size: 64, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !218, line: 218, baseType: !143)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4439, file: !218, line: 238, baseType: !291, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4439, file: !218, line: 239, baseType: !164, size: 128, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !4439, file: !218, line: 240, baseType: !4455, size: 320, offset: 384)
!4455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !218, line: 219, baseType: !4456)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 320, elements: !4457)
!4457 = !{!4458}
!4458 = !DISubrange(count: 40)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !4439, file: !218, line: 241, baseType: !4460, size: 160, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !218, line: 220, baseType: !4461)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 160, elements: !2208)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !4439, file: !218, line: 242, baseType: !4463, size: 64, offset: 896)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !121, line: 899, size: 192, elements: !4465)
!4465 = !{!4466, !4468, !4473, !4479, !4486, !4492, !4498, !4506}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4464, file: !121, line: 900, baseType: !4467, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !121, line: 635, baseType: !122)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !4464, file: !121, line: 904, baseType: !4469, size: 128)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 901, size: 128, elements: !4470)
!4470 = !{!4471, !4472}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4469, file: !121, line: 902, baseType: !4467, size: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4469, file: !121, line: 903, baseType: !143, size: 64, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4464, file: !121, line: 910, baseType: !4474, size: 128)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 906, size: 128, elements: !4475)
!4475 = !{!4476, !4477, !4478}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4474, file: !121, line: 907, baseType: !4467, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4474, file: !121, line: 908, baseType: !122, size: 32, offset: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4474, file: !121, line: 909, baseType: !291, size: 64, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4464, file: !121, line: 916, baseType: !4480, size: 128)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 912, size: 128, elements: !4481)
!4481 = !{!4482, !4483, !4484}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4480, file: !121, line: 913, baseType: !4467, size: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4480, file: !121, line: 914, baseType: !122, size: 32, offset: 32)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4480, file: !121, line: 915, baseType: !4485, size: 64, offset: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !4464, file: !121, line: 922, baseType: !4487, size: 128)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 918, size: 128, elements: !4488)
!4488 = !{!4489, !4490, !4491}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4487, file: !121, line: 919, baseType: !4467, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4487, file: !121, line: 920, baseType: !122, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !4487, file: !121, line: 921, baseType: !4463, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !4464, file: !121, line: 928, baseType: !4493, size: 128)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 924, size: 128, elements: !4494)
!4494 = !{!4495, !4496, !4497}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4493, file: !121, line: 925, baseType: !4467, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !4493, file: !121, line: 926, baseType: !4467, size: 32, offset: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4493, file: !121, line: 927, baseType: !132, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !4464, file: !121, line: 935, baseType: !4499, size: 192)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 930, size: 192, elements: !4500)
!4500 = !{!4501, !4502, !4503, !4505}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4499, file: !121, line: 931, baseType: !4467, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !4499, file: !121, line: 932, baseType: !122, size: 32, offset: 32)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !4499, file: !121, line: 933, baseType: !4504, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !121, line: 128, baseType: !143)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !4499, file: !121, line: 934, baseType: !122, size: 32, offset: 128)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !4464, file: !121, line: 941, baseType: !4507, size: 96)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4464, file: !121, line: 937, size: 96, elements: !4508)
!4508 = !{!4509, !4510, !4511}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4507, file: !121, line: 938, baseType: !4467, size: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !4507, file: !121, line: 939, baseType: !122, size: 32, offset: 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !4507, file: !121, line: 940, baseType: !122, size: 32, offset: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4402, file: !218, line: 363, baseType: !4513, size: 1344, offset: 1920)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !218, line: 275, size: 1344, elements: !4514)
!4514 = !{!4515, !4516, !4526}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4513, file: !218, line: 276, baseType: !193, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4513, file: !218, line: 277, baseType: !4517, size: 32, offset: 32)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !218, line: 254, size: 32, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4522, !4523, !4524, !4525}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !4517, file: !218, line: 255, baseType: !122, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !4517, file: !218, line: 256, baseType: !122, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !4517, file: !218, line: 257, baseType: !122, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !4517, file: !218, line: 258, baseType: !122, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !4517, file: !218, line: 259, baseType: !122, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !4517, file: !218, line: 260, baseType: !122, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4517, file: !218, line: 261, baseType: !122, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4513, file: !218, line: 278, baseType: !4527, size: 1280, offset: 64)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4528, size: 1280, elements: !4539)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !218, line: 264, size: 256, elements: !4529)
!4529 = !{!4530, !4536, !4537, !4538}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4528, file: !218, line: 269, baseType: !4531, size: 8)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4528, file: !218, line: 265, size: 8, elements: !4532)
!4532 = !{!4533, !4534, !4535}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4531, file: !218, line: 266, baseType: !1360, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !4531, file: !218, line: 267, baseType: !1360, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4531, file: !218, line: 268, baseType: !1360, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4528, file: !218, line: 270, baseType: !193, size: 32, offset: 32)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4528, file: !218, line: 271, baseType: !193, size: 32, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4528, file: !218, line: 272, baseType: !164, size: 128, offset: 128)
!4539 = !{!4540}
!4540 = !DISubrange(count: 5)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4402, file: !218, line: 364, baseType: !4542, size: 640, offset: 3264)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !218, line: 315, size: 640, elements: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4553, !4562, !4563, !4564}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !4542, file: !218, line: 316, baseType: !132, size: 64)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !4542, file: !218, line: 317, baseType: !143, size: 64, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !4542, file: !218, line: 318, baseType: !143, size: 64, offset: 128)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4542, file: !218, line: 319, baseType: !164, size: 128, offset: 192)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4542, file: !218, line: 320, baseType: !4549, size: 8, offset: 320)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !218, line: 305, size: 8, elements: !4550)
!4550 = !{!4551, !4552}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4549, file: !218, line: 306, baseType: !1360, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !4549, file: !218, line: 307, baseType: !1360, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4542, file: !218, line: 321, baseType: !4554, size: 128, offset: 384)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !218, line: 310, size: 128, elements: !4555)
!4555 = !{!4556, !4561}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4554, file: !218, line: 311, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4554, file: !218, line: 312, baseType: !233, size: 64, offset: 64)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !4542, file: !218, line: 322, baseType: !3558, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !4542, file: !218, line: 323, baseType: !193, size: 32, offset: 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !4542, file: !218, line: 324, baseType: !193, size: 32, offset: 608)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4402, file: !218, line: 365, baseType: !4566, size: 192, offset: 3904)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !218, line: 297, size: 192, elements: !4567)
!4567 = !{!4568, !4569, !4573, !4574}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4566, file: !218, line: 298, baseType: !193, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4566, file: !218, line: 299, baseType: !4570, size: 8, offset: 32)
!4570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !218, line: 283, size: 8, elements: !4571)
!4571 = !{!4572}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4570, file: !218, line: 284, baseType: !1360, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4566, file: !218, line: 300, baseType: !193, size: 32, offset: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4566, file: !218, line: 301, baseType: !4575, size: 64, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !218, line: 287, size: 64, elements: !4577)
!4577 = !{!4578, !4583, !4584, !4585}
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4576, file: !218, line: 291, baseType: !4579, size: 8)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4576, file: !218, line: 288, size: 8, elements: !4580)
!4580 = !{!4581, !4582}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4579, file: !218, line: 289, baseType: !1360, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4579, file: !218, line: 290, baseType: !1360, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4576, file: !218, line: 292, baseType: !1360, size: 8, offset: 8)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4576, file: !218, line: 293, baseType: !1360, size: 8, offset: 16)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4576, file: !218, line: 294, baseType: !193, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4402, file: !218, line: 366, baseType: !4587, size: 64, offset: 4096)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !218, line: 209, size: 64, elements: !4588)
!4588 = !{!4589}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4587, file: !218, line: 210, baseType: !216, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4402, file: !218, line: 367, baseType: !4591, size: 384, offset: 4160)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !218, line: 341, size: 384, elements: !4592)
!4592 = !{!4593, !4596, !4597, !4598}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4591, file: !218, line: 342, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4464)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4591, file: !218, line: 343, baseType: !164, size: 128, offset: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4591, file: !218, line: 344, baseType: !4594, size: 64, offset: 192)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4591, file: !218, line: 345, baseType: !164, size: 128, offset: 256)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4402, file: !218, line: 368, baseType: !4600, size: 64, offset: 4544)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !218, line: 122, size: 1216, elements: !4602)
!4602 = !{!4603, !4604, !4605, !4610, !4614, !4618, !4619, !4620}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4601, file: !218, line: 123, baseType: !3473, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4601, file: !218, line: 124, baseType: !164, size: 128, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4601, file: !218, line: 125, baseType: !4606, size: 64, offset: 192)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!497, !148, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4601, file: !218, line: 126, baseType: !4611, size: 64, offset: 256)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!193, !4401, !3473}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4601, file: !218, line: 127, baseType: !4615, size: 64, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4401}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4601, file: !218, line: 128, baseType: !3401, size: 64, offset: 384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4601, file: !218, line: 129, baseType: !3401, size: 64, offset: 448)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4601, file: !218, line: 130, baseType: !4621, size: 704, offset: 512)
!4621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !218, line: 108, size: 704, elements: !4622)
!4622 = !{!4623, !4624, !4628, !4629, !4630}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4621, file: !218, line: 109, baseType: !237, size: 512)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4621, file: !218, line: 110, baseType: !4625, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!193, !4401}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4621, file: !218, line: 111, baseType: !4615, size: 64, offset: 576)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4621, file: !218, line: 112, baseType: !497, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4621, file: !218, line: 113, baseType: !497, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !4402, file: !218, line: 369, baseType: !4632, size: 64, offset: 4608)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !218, line: 138, size: 256, elements: !4634)
!4634 = !{!4635, !4636, !4640, !4644}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4633, file: !218, line: 139, baseType: !4401, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4633, file: !218, line: 140, baseType: !4637, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!193, !4401, !122}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4633, file: !218, line: 141, baseType: !4641, size: 64, offset: 128)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{null, !4401, !122}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4633, file: !218, line: 142, baseType: !4615, size: 64, offset: 192)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4402, file: !218, line: 370, baseType: !4646, size: 64, offset: 4672)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !218, line: 162, size: 2816, elements: !4648)
!4648 = !{!4649, !4653, !4654, !4655, !4656, !4665, !4666}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4647, file: !218, line: 163, baseType: !4650, size: 640)
!4650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 640, elements: !4651)
!4651 = !{!4652}
!4652 = !DISubrange(count: 80)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4647, file: !218, line: 164, baseType: !4650, size: 640, offset: 640)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4647, file: !218, line: 165, baseType: !3473, size: 64, offset: 1280)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4647, file: !218, line: 166, baseType: !7, size: 32, offset: 1344)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4647, file: !218, line: 167, baseType: !4657, size: 192, offset: 1408)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !218, line: 154, size: 192, elements: !4658)
!4658 = !{!4659, !4661, !4663}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4657, file: !218, line: 155, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !218, line: 150, baseType: !4625)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4657, file: !218, line: 156, baseType: !4662, size: 64, offset: 64)
!4662 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !218, line: 151, baseType: !4625)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4657, file: !218, line: 157, baseType: !4664, size: 64, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !218, line: 152, baseType: !4641)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4647, file: !218, line: 168, baseType: !3451, size: 1152, offset: 1600)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4647, file: !218, line: 169, baseType: !640, size: 64, offset: 2752)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !4402, file: !218, line: 371, baseType: !4668, size: 64, offset: 4736)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4670)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !218, line: 348, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4402, file: !218, line: 372, baseType: !127, size: 64, offset: 4800)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4402, file: !218, line: 373, baseType: !234, size: 5568, offset: 4864)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !4402, file: !218, line: 374, baseType: !7, size: 32, offset: 10432)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !4402, file: !218, line: 375, baseType: !7, size: 32, offset: 10464)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !4402, file: !218, line: 376, baseType: !164, size: 128, offset: 10496)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !4402, file: !218, line: 377, baseType: !1181, size: 192, offset: 10624)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4402, file: !218, line: 378, baseType: !4615, size: 64, offset: 10816)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4398, file: !218, line: 576, baseType: !170, size: 64, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4398, file: !218, line: 577, baseType: !869, size: 16, offset: 128)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4398, file: !218, line: 578, baseType: !136, size: 512, offset: 192)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "osc_support_set", scope: !4398, file: !218, line: 580, baseType: !122, size: 32, offset: 704)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "osc_control_set", scope: !4398, file: !218, line: 581, baseType: !122, size: 32, offset: 736)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mcfg_addr", scope: !4398, file: !218, line: 582, baseType: !142, size: 64, offset: 768)
!4684 = !DILocalVariable(name: "root", arg: 1, scope: !4394, file: !3, line: 212, type: !4397)
!4685 = !DILocation(line: 212, column: 46, scope: !4394)
!4686 = !DILocalVariable(name: "ioapic", scope: !4394, file: !3, line: 214, type: !128)
!4687 = !DILocation(line: 214, column: 26, scope: !4394)
!4688 = !DILocalVariable(name: "tmp", scope: !4394, file: !3, line: 214, type: !128)
!4689 = !DILocation(line: 214, column: 35, scope: !4394)
!4690 = !DILocation(line: 216, column: 2, scope: !4394)
!4691 = !DILocalVariable(name: "__mptr", scope: !4692, file: !3, line: 217, type: !127)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 217, column: 2)
!4693 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 217, column: 2)
!4694 = !DILocation(line: 217, column: 2, scope: !4692)
!4695 = !DILocation(line: 217, column: 2, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4692, file: !3, line: 217, column: 2)
!4697 = !DILocation(line: 217, column: 2, scope: !4693)
!4698 = !DILocalVariable(name: "__mptr", scope: !4699, file: !3, line: 217, type: !127)
!4699 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 217, column: 2)
!4700 = !DILocation(line: 217, column: 2, scope: !4699)
!4701 = !DILocation(line: 217, column: 2, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 217, column: 2)
!4703 = !DILocation(line: 217, column: 2, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 217, column: 2)
!4705 = !DILocation(line: 218, column: 7, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 218, column: 7)
!4707 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 217, column: 60)
!4708 = !DILocation(line: 218, column: 13, scope: !4706)
!4709 = !DILocation(line: 218, column: 21, scope: !4706)
!4710 = !DILocation(line: 218, column: 31, scope: !4706)
!4711 = !DILocation(line: 218, column: 39, scope: !4706)
!4712 = !DILocation(line: 218, column: 28, scope: !4706)
!4713 = !DILocation(line: 218, column: 7, scope: !4707)
!4714 = !DILocation(line: 219, column: 4, scope: !4706)
!4715 = !DILocation(line: 220, column: 7, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 220, column: 7)
!4717 = !DILocation(line: 220, column: 15, scope: !4716)
!4718 = !DILocation(line: 220, column: 7, scope: !4707)
!4719 = !DILocation(line: 221, column: 23, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 220, column: 21)
!4721 = !DILocation(line: 221, column: 31, scope: !4720)
!4722 = !DILocation(line: 221, column: 4, scope: !4720)
!4723 = !DILocation(line: 222, column: 23, scope: !4720)
!4724 = !DILocation(line: 222, column: 31, scope: !4720)
!4725 = !DILocation(line: 222, column: 4, scope: !4720)
!4726 = !DILocation(line: 223, column: 16, scope: !4720)
!4727 = !DILocation(line: 223, column: 24, scope: !4720)
!4728 = !DILocation(line: 223, column: 4, scope: !4720)
!4729 = !DILocation(line: 224, column: 3, scope: !4720)
!4730 = !DILocation(line: 225, column: 2, scope: !4707)
!4731 = !DILocalVariable(name: "__mptr", scope: !4732, file: !3, line: 217, type: !127)
!4732 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 217, column: 2)
!4733 = !DILocation(line: 217, column: 2, scope: !4732)
!4734 = !DILocation(line: 217, column: 2, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 217, column: 2)
!4736 = distinct !{!4736, !4697, !4737}
!4737 = !DILocation(line: 225, column: 2, scope: !4693)
!4738 = !DILocation(line: 226, column: 2, scope: !4394)
!4739 = !DILocation(line: 227, column: 1, scope: !4394)
!4740 = distinct !DISubprogram(name: "acpi_ioapic_remove", scope: !3, file: !3, line: 229, type: !4741, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!193, !4397}
!4743 = !DILocalVariable(name: "root", arg: 1, scope: !4740, file: !3, line: 229, type: !4397)
!4744 = !DILocation(line: 229, column: 46, scope: !4740)
!4745 = !DILocalVariable(name: "retval", scope: !4740, file: !3, line: 231, type: !193)
!4746 = !DILocation(line: 231, column: 6, scope: !4740)
!4747 = !DILocalVariable(name: "ioapic", scope: !4740, file: !3, line: 232, type: !128)
!4748 = !DILocation(line: 232, column: 26, scope: !4740)
!4749 = !DILocalVariable(name: "tmp", scope: !4740, file: !3, line: 232, type: !128)
!4750 = !DILocation(line: 232, column: 35, scope: !4740)
!4751 = !DILocation(line: 234, column: 2, scope: !4740)
!4752 = !DILocalVariable(name: "__mptr", scope: !4753, file: !3, line: 235, type: !127)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 235, column: 2)
!4754 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 235, column: 2)
!4755 = !DILocation(line: 235, column: 2, scope: !4753)
!4756 = !DILocation(line: 235, column: 2, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 235, column: 2)
!4758 = !DILocation(line: 235, column: 2, scope: !4754)
!4759 = !DILocalVariable(name: "__mptr", scope: !4760, file: !3, line: 235, type: !127)
!4760 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 235, column: 2)
!4761 = !DILocation(line: 235, column: 2, scope: !4760)
!4762 = !DILocation(line: 235, column: 2, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 235, column: 2)
!4764 = !DILocation(line: 235, column: 2, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 235, column: 2)
!4766 = !DILocation(line: 236, column: 7, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 236, column: 7)
!4768 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 235, column: 60)
!4769 = !DILocation(line: 236, column: 13, scope: !4767)
!4770 = !DILocation(line: 236, column: 21, scope: !4767)
!4771 = !DILocation(line: 236, column: 31, scope: !4767)
!4772 = !DILocation(line: 236, column: 39, scope: !4767)
!4773 = !DILocation(line: 236, column: 28, scope: !4767)
!4774 = !DILocation(line: 236, column: 7, scope: !4768)
!4775 = !DILocation(line: 237, column: 4, scope: !4767)
!4776 = !DILocation(line: 238, column: 30, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 238, column: 7)
!4778 = !DILocation(line: 238, column: 38, scope: !4777)
!4779 = !DILocation(line: 238, column: 46, scope: !4777)
!4780 = !DILocation(line: 238, column: 54, scope: !4777)
!4781 = !DILocation(line: 238, column: 7, scope: !4777)
!4782 = !DILocation(line: 238, column: 7, scope: !4768)
!4783 = !DILocation(line: 239, column: 11, scope: !4777)
!4784 = !DILocation(line: 239, column: 4, scope: !4777)
!4785 = !DILocation(line: 240, column: 7, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 240, column: 7)
!4787 = !DILocation(line: 240, column: 15, scope: !4786)
!4788 = !DILocation(line: 240, column: 19, scope: !4786)
!4789 = !DILocation(line: 240, column: 25, scope: !4786)
!4790 = !DILocation(line: 240, column: 28, scope: !4786)
!4791 = !DILocation(line: 240, column: 36, scope: !4786)
!4792 = !DILocation(line: 240, column: 40, scope: !4786)
!4793 = !DILocation(line: 240, column: 7, scope: !4768)
!4794 = !DILocation(line: 241, column: 22, scope: !4786)
!4795 = !DILocation(line: 241, column: 30, scope: !4786)
!4796 = !DILocation(line: 241, column: 4, scope: !4786)
!4797 = !DILocation(line: 242, column: 13, scope: !4768)
!4798 = !DILocation(line: 242, column: 21, scope: !4768)
!4799 = !DILocation(line: 242, column: 3, scope: !4768)
!4800 = !DILocation(line: 243, column: 9, scope: !4768)
!4801 = !DILocation(line: 243, column: 3, scope: !4768)
!4802 = !DILocation(line: 244, column: 2, scope: !4768)
!4803 = !DILocalVariable(name: "__mptr", scope: !4804, file: !3, line: 235, type: !127)
!4804 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 235, column: 2)
!4805 = !DILocation(line: 235, column: 2, scope: !4804)
!4806 = !DILocation(line: 235, column: 2, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 235, column: 2)
!4808 = distinct !{!4808, !4758, !4809}
!4809 = !DILocation(line: 244, column: 2, scope: !4754)
!4810 = !DILocation(line: 245, column: 2, scope: !4740)
!4811 = !DILocation(line: 247, column: 9, scope: !4740)
!4812 = !DILocation(line: 247, column: 2, scope: !4740)
!4813 = distinct !DISubprogram(name: "list_del", scope: !4814, file: !4814, line: 144, type: !4815, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4814 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4815 = !DISubroutineType(types: !4816)
!4816 = !{null, !167}
!4817 = !DILocalVariable(name: "entry", arg: 1, scope: !4813, file: !4814, line: 144, type: !167)
!4818 = !DILocation(line: 144, column: 47, scope: !4813)
!4819 = !DILocation(line: 146, column: 19, scope: !4813)
!4820 = !DILocation(line: 146, column: 2, scope: !4813)
!4821 = !DILocation(line: 147, column: 2, scope: !4813)
!4822 = !DILocation(line: 147, column: 9, scope: !4813)
!4823 = !DILocation(line: 147, column: 14, scope: !4813)
!4824 = !DILocation(line: 148, column: 2, scope: !4813)
!4825 = !DILocation(line: 148, column: 9, scope: !4813)
!4826 = !DILocation(line: 148, column: 14, scope: !4813)
!4827 = !DILocation(line: 149, column: 1, scope: !4813)
!4828 = distinct !DISubprogram(name: "acpi_is_ioapic", scope: !3, file: !3, line: 67, type: !4829, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!497, !132, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4832 = !DILocalVariable(name: "handle", arg: 1, scope: !4828, file: !3, line: 67, type: !132)
!4833 = !DILocation(line: 67, column: 40, scope: !4828)
!4834 = !DILocalVariable(name: "type", arg: 2, scope: !4828, file: !3, line: 67, type: !4831)
!4835 = !DILocation(line: 67, column: 55, scope: !4828)
!4836 = !DILocalVariable(name: "status", scope: !4828, file: !3, line: 69, type: !120)
!4837 = !DILocation(line: 69, column: 14, scope: !4828)
!4838 = !DILocalVariable(name: "info", scope: !4828, file: !3, line: 70, type: !4839)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_info", file: !121, line: 1156, size: 768, elements: !4841)
!4841 = !{!4842, !4843, !4844, !4845, !4846, !4847, !4848, !4850, !4852, !4853, !4858, !4859, !4860}
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "info_size", scope: !4840, file: !121, line: 1157, baseType: !122, size: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4840, file: !121, line: 1158, baseType: !122, size: 32, offset: 32)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4840, file: !121, line: 1159, baseType: !4467, size: 32, offset: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4840, file: !121, line: 1160, baseType: !1360, size: 8, offset: 96)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4840, file: !121, line: 1161, baseType: !869, size: 16, offset: 112)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4840, file: !121, line: 1162, baseType: !1360, size: 8, offset: 128)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "highest_dstates", scope: !4840, file: !121, line: 1163, baseType: !4849, size: 32, offset: 136)
!4849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 32, elements: !181)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_dstates", scope: !4840, file: !121, line: 1164, baseType: !4851, size: 40, offset: 168)
!4851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 40, elements: !4539)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4840, file: !121, line: 1165, baseType: !143, size: 64, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !4840, file: !121, line: 1166, baseType: !4854, size: 128, offset: 320)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !121, line: 1141, size: 128, elements: !4855)
!4855 = !{!4856, !4857}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4854, file: !121, line: 1142, baseType: !122, size: 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4854, file: !121, line: 1143, baseType: !291, size: 64, offset: 64)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !4840, file: !121, line: 1167, baseType: !4854, size: 128, offset: 448)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "class_code", scope: !4840, file: !121, line: 1168, baseType: !4854, size: 128, offset: 576)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "compatible_id_list", scope: !4840, file: !121, line: 1169, baseType: !4861, size: 64, offset: 704)
!4861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !121, line: 1146, size: 64, elements: !4862)
!4862 = !{!4863, !4864, !4865}
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4861, file: !121, line: 1147, baseType: !122, size: 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !4861, file: !121, line: 1148, baseType: !122, size: 32, offset: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4861, file: !121, line: 1149, baseType: !4866, offset: 64)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4854, elements: !2338)
!4867 = !DILocation(line: 70, column: 27, scope: !4828)
!4868 = !DILocalVariable(name: "hid", scope: !4828, file: !3, line: 71, type: !291)
!4869 = !DILocation(line: 71, column: 8, scope: !4828)
!4870 = !DILocalVariable(name: "match", scope: !4828, file: !3, line: 72, type: !497)
!4871 = !DILocation(line: 72, column: 7, scope: !4828)
!4872 = !DILocation(line: 74, column: 23, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 74, column: 6)
!4874 = !DILocation(line: 74, column: 7, scope: !4873)
!4875 = !DILocation(line: 74, column: 6, scope: !4828)
!4876 = !DILocation(line: 75, column: 3, scope: !4873)
!4877 = !DILocation(line: 77, column: 32, scope: !4828)
!4878 = !DILocation(line: 77, column: 11, scope: !4828)
!4879 = !DILocation(line: 77, column: 9, scope: !4828)
!4880 = !DILocation(line: 78, column: 6, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 78, column: 6)
!4882 = !DILocation(line: 78, column: 6, scope: !4828)
!4883 = !DILocation(line: 79, column: 7, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 79, column: 7)
!4885 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 78, column: 28)
!4886 = !DILocation(line: 79, column: 13, scope: !4884)
!4887 = !DILocation(line: 79, column: 19, scope: !4884)
!4888 = !DILocation(line: 79, column: 7, scope: !4885)
!4889 = !DILocation(line: 80, column: 10, scope: !4884)
!4890 = !DILocation(line: 80, column: 16, scope: !4884)
!4891 = !DILocation(line: 80, column: 28, scope: !4884)
!4892 = !DILocation(line: 80, column: 8, scope: !4884)
!4893 = !DILocation(line: 80, column: 4, scope: !4884)
!4894 = !DILocation(line: 81, column: 7, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 81, column: 7)
!4896 = !DILocation(line: 81, column: 7, scope: !4885)
!4897 = !DILocation(line: 82, column: 15, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 82, column: 8)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 81, column: 12)
!4900 = !DILocation(line: 82, column: 8, scope: !4898)
!4901 = !DILocation(line: 82, column: 32, scope: !4898)
!4902 = !DILocation(line: 82, column: 8, scope: !4899)
!4903 = !DILocation(line: 83, column: 6, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 82, column: 38)
!4905 = !DILocation(line: 83, column: 11, scope: !4904)
!4906 = !DILocation(line: 84, column: 11, scope: !4904)
!4907 = !DILocation(line: 85, column: 4, scope: !4904)
!4908 = !DILocation(line: 85, column: 22, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 85, column: 15)
!4910 = !DILocation(line: 85, column: 15, scope: !4909)
!4911 = !DILocation(line: 85, column: 39, scope: !4909)
!4912 = !DILocation(line: 85, column: 15, scope: !4898)
!4913 = !DILocation(line: 86, column: 6, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 85, column: 45)
!4915 = !DILocation(line: 86, column: 11, scope: !4914)
!4916 = !DILocation(line: 87, column: 11, scope: !4914)
!4917 = !DILocation(line: 88, column: 4, scope: !4914)
!4918 = !DILocation(line: 89, column: 3, scope: !4899)
!4919 = !DILocation(line: 90, column: 9, scope: !4885)
!4920 = !DILocation(line: 90, column: 3, scope: !4885)
!4921 = !DILocation(line: 91, column: 2, scope: !4885)
!4922 = !DILocation(line: 93, column: 9, scope: !4828)
!4923 = !DILocation(line: 93, column: 2, scope: !4828)
!4924 = !DILocation(line: 94, column: 1, scope: !4828)
!4925 = distinct !DISubprogram(name: "kzalloc", scope: !113, file: !113, line: 662, type: !4926, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!127, !337, !754}
!4928 = !DILocalVariable(name: "s", arg: 1, scope: !4929, file: !113, line: 445, type: !945)
!4929 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !113, file: !113, line: 445, type: !4930, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!127, !945, !754, !337}
!4932 = !DILocation(line: 445, column: 72, scope: !4929, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 552, column: 10, scope: !4934, inlinedAt: !4937)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !113, line: 540, column: 34)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !113, line: 540, column: 6)
!4936 = distinct !DISubprogram(name: "kmalloc", scope: !113, file: !113, line: 538, type: !4926, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4937 = distinct !DILocation(line: 664, column: 9, scope: !4925)
!4938 = !DILocalVariable(name: "flags", arg: 2, scope: !4929, file: !113, line: 446, type: !754)
!4939 = !DILocation(line: 446, column: 9, scope: !4929, inlinedAt: !4933)
!4940 = !DILocalVariable(name: "size", arg: 3, scope: !4929, file: !113, line: 446, type: !337)
!4941 = !DILocation(line: 446, column: 23, scope: !4929, inlinedAt: !4933)
!4942 = !DILocalVariable(name: "ret", scope: !4929, file: !113, line: 448, type: !127)
!4943 = !DILocation(line: 448, column: 8, scope: !4929, inlinedAt: !4933)
!4944 = !DILocalVariable(name: "flags", arg: 1, scope: !4945, file: !113, line: 318, type: !754)
!4945 = distinct !DISubprogram(name: "kmalloc_type", scope: !113, file: !113, line: 318, type: !4946, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!112, !754}
!4948 = !DILocation(line: 318, column: 67, scope: !4945, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 553, column: 20, scope: !4934, inlinedAt: !4937)
!4950 = !DILocalVariable(name: "size", arg: 1, scope: !4951, file: !113, line: 346, type: !337)
!4951 = distinct !DISubprogram(name: "kmalloc_index", scope: !113, file: !113, line: 346, type: !4952, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!7, !337}
!4954 = !DILocation(line: 346, column: 58, scope: !4951, inlinedAt: !4955)
!4955 = distinct !DILocation(line: 547, column: 11, scope: !4934, inlinedAt: !4937)
!4956 = !DILocalVariable(name: "size", arg: 1, scope: !4957, file: !113, line: 472, type: !337)
!4957 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !113, file: !113, line: 472, type: !4958, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!127, !337, !754, !7}
!4960 = !DILocation(line: 472, column: 28, scope: !4957, inlinedAt: !4961)
!4961 = distinct !DILocation(line: 481, column: 9, scope: !4962, inlinedAt: !4963)
!4962 = distinct !DISubprogram(name: "kmalloc_large", scope: !113, file: !113, line: 478, type: !4926, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!4963 = distinct !DILocation(line: 545, column: 11, scope: !4964, inlinedAt: !4937)
!4964 = distinct !DILexicalBlock(scope: !4934, file: !113, line: 544, column: 7)
!4965 = !DILocalVariable(name: "flags", arg: 2, scope: !4957, file: !113, line: 472, type: !754)
!4966 = !DILocation(line: 472, column: 40, scope: !4957, inlinedAt: !4961)
!4967 = !DILocalVariable(name: "order", arg: 3, scope: !4957, file: !113, line: 472, type: !7)
!4968 = !DILocation(line: 472, column: 60, scope: !4957, inlinedAt: !4961)
!4969 = !DILocalVariable(name: "size", arg: 1, scope: !4962, file: !113, line: 478, type: !337)
!4970 = !DILocation(line: 478, column: 51, scope: !4962, inlinedAt: !4963)
!4971 = !DILocalVariable(name: "flags", arg: 2, scope: !4962, file: !113, line: 478, type: !754)
!4972 = !DILocation(line: 478, column: 63, scope: !4962, inlinedAt: !4963)
!4973 = !DILocalVariable(name: "order", scope: !4962, file: !113, line: 480, type: !7)
!4974 = !DILocation(line: 480, column: 15, scope: !4962, inlinedAt: !4963)
!4975 = !DILocalVariable(name: "size", arg: 1, scope: !4936, file: !113, line: 538, type: !337)
!4976 = !DILocation(line: 538, column: 45, scope: !4936, inlinedAt: !4937)
!4977 = !DILocalVariable(name: "flags", arg: 2, scope: !4936, file: !113, line: 538, type: !754)
!4978 = !DILocation(line: 538, column: 57, scope: !4936, inlinedAt: !4937)
!4979 = !DILocalVariable(name: "index", scope: !4934, file: !113, line: 542, type: !7)
!4980 = !DILocation(line: 542, column: 16, scope: !4934, inlinedAt: !4937)
!4981 = !DILocalVariable(name: "size", arg: 1, scope: !4925, file: !113, line: 662, type: !337)
!4982 = !DILocation(line: 662, column: 36, scope: !4925)
!4983 = !DILocalVariable(name: "flags", arg: 2, scope: !4925, file: !113, line: 662, type: !754)
!4984 = !DILocation(line: 662, column: 48, scope: !4925)
!4985 = !DILocation(line: 664, column: 17, scope: !4925)
!4986 = !DILocation(line: 664, column: 23, scope: !4925)
!4987 = !DILocation(line: 664, column: 29, scope: !4925)
!4988 = !DILocation(line: 540, column: 27, scope: !4935, inlinedAt: !4937)
!4989 = !DILocation(line: 540, column: 6, scope: !4935, inlinedAt: !4937)
!4990 = !DILocation(line: 540, column: 6, scope: !4936, inlinedAt: !4937)
!4991 = !DILocation(line: 544, column: 7, scope: !4964, inlinedAt: !4937)
!4992 = !DILocation(line: 544, column: 12, scope: !4964, inlinedAt: !4937)
!4993 = !DILocation(line: 544, column: 7, scope: !4934, inlinedAt: !4937)
!4994 = !DILocation(line: 545, column: 25, scope: !4964, inlinedAt: !4937)
!4995 = !DILocation(line: 545, column: 31, scope: !4964, inlinedAt: !4937)
!4996 = !DILocation(line: 480, column: 33, scope: !4962, inlinedAt: !4963)
!4997 = !DILocation(line: 480, column: 23, scope: !4962, inlinedAt: !4963)
!4998 = !DILocation(line: 481, column: 29, scope: !4962, inlinedAt: !4963)
!4999 = !DILocation(line: 481, column: 35, scope: !4962, inlinedAt: !4963)
!5000 = !DILocation(line: 481, column: 42, scope: !4962, inlinedAt: !4963)
!5001 = !DILocation(line: 474, column: 23, scope: !4957, inlinedAt: !4961)
!5002 = !DILocation(line: 474, column: 29, scope: !4957, inlinedAt: !4961)
!5003 = !DILocation(line: 474, column: 36, scope: !4957, inlinedAt: !4961)
!5004 = !DILocation(line: 474, column: 9, scope: !4957, inlinedAt: !4961)
!5005 = !DILocation(line: 545, column: 4, scope: !4964, inlinedAt: !4937)
!5006 = !DILocation(line: 547, column: 25, scope: !4934, inlinedAt: !4937)
!5007 = !DILocation(line: 348, column: 7, scope: !5008, inlinedAt: !4955)
!5008 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 348, column: 6)
!5009 = !DILocation(line: 348, column: 6, scope: !4951, inlinedAt: !4955)
!5010 = !DILocation(line: 349, column: 3, scope: !5008, inlinedAt: !4955)
!5011 = !DILocation(line: 351, column: 6, scope: !5012, inlinedAt: !4955)
!5012 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 351, column: 6)
!5013 = !DILocation(line: 351, column: 11, scope: !5012, inlinedAt: !4955)
!5014 = !DILocation(line: 351, column: 6, scope: !4951, inlinedAt: !4955)
!5015 = !DILocation(line: 352, column: 3, scope: !5012, inlinedAt: !4955)
!5016 = !DILocation(line: 354, column: 32, scope: !5017, inlinedAt: !4955)
!5017 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 354, column: 6)
!5018 = !DILocation(line: 354, column: 37, scope: !5017, inlinedAt: !4955)
!5019 = !DILocation(line: 354, column: 42, scope: !5017, inlinedAt: !4955)
!5020 = !DILocation(line: 354, column: 45, scope: !5017, inlinedAt: !4955)
!5021 = !DILocation(line: 354, column: 50, scope: !5017, inlinedAt: !4955)
!5022 = !DILocation(line: 354, column: 6, scope: !4951, inlinedAt: !4955)
!5023 = !DILocation(line: 355, column: 3, scope: !5017, inlinedAt: !4955)
!5024 = !DILocation(line: 356, column: 32, scope: !5025, inlinedAt: !4955)
!5025 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 356, column: 6)
!5026 = !DILocation(line: 356, column: 37, scope: !5025, inlinedAt: !4955)
!5027 = !DILocation(line: 356, column: 43, scope: !5025, inlinedAt: !4955)
!5028 = !DILocation(line: 356, column: 46, scope: !5025, inlinedAt: !4955)
!5029 = !DILocation(line: 356, column: 51, scope: !5025, inlinedAt: !4955)
!5030 = !DILocation(line: 356, column: 6, scope: !4951, inlinedAt: !4955)
!5031 = !DILocation(line: 357, column: 3, scope: !5025, inlinedAt: !4955)
!5032 = !DILocation(line: 358, column: 6, scope: !5033, inlinedAt: !4955)
!5033 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 358, column: 6)
!5034 = !DILocation(line: 358, column: 11, scope: !5033, inlinedAt: !4955)
!5035 = !DILocation(line: 358, column: 6, scope: !4951, inlinedAt: !4955)
!5036 = !DILocation(line: 358, column: 26, scope: !5033, inlinedAt: !4955)
!5037 = !DILocation(line: 359, column: 6, scope: !5038, inlinedAt: !4955)
!5038 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 359, column: 6)
!5039 = !DILocation(line: 359, column: 11, scope: !5038, inlinedAt: !4955)
!5040 = !DILocation(line: 359, column: 6, scope: !4951, inlinedAt: !4955)
!5041 = !DILocation(line: 359, column: 26, scope: !5038, inlinedAt: !4955)
!5042 = !DILocation(line: 360, column: 6, scope: !5043, inlinedAt: !4955)
!5043 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 360, column: 6)
!5044 = !DILocation(line: 360, column: 11, scope: !5043, inlinedAt: !4955)
!5045 = !DILocation(line: 360, column: 6, scope: !4951, inlinedAt: !4955)
!5046 = !DILocation(line: 360, column: 26, scope: !5043, inlinedAt: !4955)
!5047 = !DILocation(line: 361, column: 6, scope: !5048, inlinedAt: !4955)
!5048 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 361, column: 6)
!5049 = !DILocation(line: 361, column: 11, scope: !5048, inlinedAt: !4955)
!5050 = !DILocation(line: 361, column: 6, scope: !4951, inlinedAt: !4955)
!5051 = !DILocation(line: 361, column: 26, scope: !5048, inlinedAt: !4955)
!5052 = !DILocation(line: 362, column: 6, scope: !5053, inlinedAt: !4955)
!5053 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 362, column: 6)
!5054 = !DILocation(line: 362, column: 11, scope: !5053, inlinedAt: !4955)
!5055 = !DILocation(line: 362, column: 6, scope: !4951, inlinedAt: !4955)
!5056 = !DILocation(line: 362, column: 26, scope: !5053, inlinedAt: !4955)
!5057 = !DILocation(line: 363, column: 6, scope: !5058, inlinedAt: !4955)
!5058 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 363, column: 6)
!5059 = !DILocation(line: 363, column: 11, scope: !5058, inlinedAt: !4955)
!5060 = !DILocation(line: 363, column: 6, scope: !4951, inlinedAt: !4955)
!5061 = !DILocation(line: 363, column: 26, scope: !5058, inlinedAt: !4955)
!5062 = !DILocation(line: 364, column: 6, scope: !5063, inlinedAt: !4955)
!5063 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 364, column: 6)
!5064 = !DILocation(line: 364, column: 11, scope: !5063, inlinedAt: !4955)
!5065 = !DILocation(line: 364, column: 6, scope: !4951, inlinedAt: !4955)
!5066 = !DILocation(line: 364, column: 26, scope: !5063, inlinedAt: !4955)
!5067 = !DILocation(line: 365, column: 6, scope: !5068, inlinedAt: !4955)
!5068 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 365, column: 6)
!5069 = !DILocation(line: 365, column: 11, scope: !5068, inlinedAt: !4955)
!5070 = !DILocation(line: 365, column: 6, scope: !4951, inlinedAt: !4955)
!5071 = !DILocation(line: 365, column: 26, scope: !5068, inlinedAt: !4955)
!5072 = !DILocation(line: 366, column: 6, scope: !5073, inlinedAt: !4955)
!5073 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 366, column: 6)
!5074 = !DILocation(line: 366, column: 11, scope: !5073, inlinedAt: !4955)
!5075 = !DILocation(line: 366, column: 6, scope: !4951, inlinedAt: !4955)
!5076 = !DILocation(line: 366, column: 26, scope: !5073, inlinedAt: !4955)
!5077 = !DILocation(line: 367, column: 6, scope: !5078, inlinedAt: !4955)
!5078 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 367, column: 6)
!5079 = !DILocation(line: 367, column: 11, scope: !5078, inlinedAt: !4955)
!5080 = !DILocation(line: 367, column: 6, scope: !4951, inlinedAt: !4955)
!5081 = !DILocation(line: 367, column: 26, scope: !5078, inlinedAt: !4955)
!5082 = !DILocation(line: 368, column: 6, scope: !5083, inlinedAt: !4955)
!5083 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 368, column: 6)
!5084 = !DILocation(line: 368, column: 11, scope: !5083, inlinedAt: !4955)
!5085 = !DILocation(line: 368, column: 6, scope: !4951, inlinedAt: !4955)
!5086 = !DILocation(line: 368, column: 26, scope: !5083, inlinedAt: !4955)
!5087 = !DILocation(line: 369, column: 6, scope: !5088, inlinedAt: !4955)
!5088 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 369, column: 6)
!5089 = !DILocation(line: 369, column: 11, scope: !5088, inlinedAt: !4955)
!5090 = !DILocation(line: 369, column: 6, scope: !4951, inlinedAt: !4955)
!5091 = !DILocation(line: 369, column: 26, scope: !5088, inlinedAt: !4955)
!5092 = !DILocation(line: 370, column: 6, scope: !5093, inlinedAt: !4955)
!5093 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 370, column: 6)
!5094 = !DILocation(line: 370, column: 11, scope: !5093, inlinedAt: !4955)
!5095 = !DILocation(line: 370, column: 6, scope: !4951, inlinedAt: !4955)
!5096 = !DILocation(line: 370, column: 26, scope: !5093, inlinedAt: !4955)
!5097 = !DILocation(line: 371, column: 6, scope: !5098, inlinedAt: !4955)
!5098 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 371, column: 6)
!5099 = !DILocation(line: 371, column: 11, scope: !5098, inlinedAt: !4955)
!5100 = !DILocation(line: 371, column: 6, scope: !4951, inlinedAt: !4955)
!5101 = !DILocation(line: 371, column: 26, scope: !5098, inlinedAt: !4955)
!5102 = !DILocation(line: 372, column: 6, scope: !5103, inlinedAt: !4955)
!5103 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 372, column: 6)
!5104 = !DILocation(line: 372, column: 11, scope: !5103, inlinedAt: !4955)
!5105 = !DILocation(line: 372, column: 6, scope: !4951, inlinedAt: !4955)
!5106 = !DILocation(line: 372, column: 26, scope: !5103, inlinedAt: !4955)
!5107 = !DILocation(line: 373, column: 6, scope: !5108, inlinedAt: !4955)
!5108 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 373, column: 6)
!5109 = !DILocation(line: 373, column: 11, scope: !5108, inlinedAt: !4955)
!5110 = !DILocation(line: 373, column: 6, scope: !4951, inlinedAt: !4955)
!5111 = !DILocation(line: 373, column: 26, scope: !5108, inlinedAt: !4955)
!5112 = !DILocation(line: 374, column: 6, scope: !5113, inlinedAt: !4955)
!5113 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 374, column: 6)
!5114 = !DILocation(line: 374, column: 11, scope: !5113, inlinedAt: !4955)
!5115 = !DILocation(line: 374, column: 6, scope: !4951, inlinedAt: !4955)
!5116 = !DILocation(line: 374, column: 26, scope: !5113, inlinedAt: !4955)
!5117 = !DILocation(line: 375, column: 6, scope: !5118, inlinedAt: !4955)
!5118 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 375, column: 6)
!5119 = !DILocation(line: 375, column: 11, scope: !5118, inlinedAt: !4955)
!5120 = !DILocation(line: 375, column: 6, scope: !4951, inlinedAt: !4955)
!5121 = !DILocation(line: 375, column: 27, scope: !5118, inlinedAt: !4955)
!5122 = !DILocation(line: 376, column: 6, scope: !5123, inlinedAt: !4955)
!5123 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 376, column: 6)
!5124 = !DILocation(line: 376, column: 11, scope: !5123, inlinedAt: !4955)
!5125 = !DILocation(line: 376, column: 6, scope: !4951, inlinedAt: !4955)
!5126 = !DILocation(line: 376, column: 32, scope: !5123, inlinedAt: !4955)
!5127 = !DILocation(line: 377, column: 6, scope: !5128, inlinedAt: !4955)
!5128 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 377, column: 6)
!5129 = !DILocation(line: 377, column: 11, scope: !5128, inlinedAt: !4955)
!5130 = !DILocation(line: 377, column: 6, scope: !4951, inlinedAt: !4955)
!5131 = !DILocation(line: 377, column: 32, scope: !5128, inlinedAt: !4955)
!5132 = !DILocation(line: 378, column: 6, scope: !5133, inlinedAt: !4955)
!5133 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 378, column: 6)
!5134 = !DILocation(line: 378, column: 11, scope: !5133, inlinedAt: !4955)
!5135 = !DILocation(line: 378, column: 6, scope: !4951, inlinedAt: !4955)
!5136 = !DILocation(line: 378, column: 32, scope: !5133, inlinedAt: !4955)
!5137 = !DILocation(line: 379, column: 6, scope: !5138, inlinedAt: !4955)
!5138 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 379, column: 6)
!5139 = !DILocation(line: 379, column: 11, scope: !5138, inlinedAt: !4955)
!5140 = !DILocation(line: 379, column: 6, scope: !4951, inlinedAt: !4955)
!5141 = !DILocation(line: 379, column: 33, scope: !5138, inlinedAt: !4955)
!5142 = !DILocation(line: 380, column: 6, scope: !5143, inlinedAt: !4955)
!5143 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 380, column: 6)
!5144 = !DILocation(line: 380, column: 11, scope: !5143, inlinedAt: !4955)
!5145 = !DILocation(line: 380, column: 6, scope: !4951, inlinedAt: !4955)
!5146 = !DILocation(line: 380, column: 33, scope: !5143, inlinedAt: !4955)
!5147 = !DILocation(line: 381, column: 6, scope: !5148, inlinedAt: !4955)
!5148 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 381, column: 6)
!5149 = !DILocation(line: 381, column: 11, scope: !5148, inlinedAt: !4955)
!5150 = !DILocation(line: 381, column: 6, scope: !4951, inlinedAt: !4955)
!5151 = !DILocation(line: 381, column: 33, scope: !5148, inlinedAt: !4955)
!5152 = !DILocation(line: 382, column: 2, scope: !5153, inlinedAt: !4955)
!5153 = distinct !DILexicalBlock(scope: !5154, file: !113, line: 382, column: 2)
!5154 = distinct !DILexicalBlock(scope: !4951, file: !113, line: 382, column: 2)
!5155 = !{i32 -2144649176, i32 -2144649147, i32 -2144649101, i32 -2144649043, i32 -2144648989, i32 -2144648935, i32 -2144648880, i32 -2144648849}
!5156 = !DILocation(line: 382, column: 2, scope: !5157, inlinedAt: !4955)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !113, line: 382, column: 2)
!5158 = distinct !DILexicalBlock(scope: !5154, file: !113, line: 382, column: 2)
!5159 = !{i32 -2144648406, i32 -2144648399, i32 -2144648345, i32 -2144648314, i32 -2144648284}
!5160 = !DILocation(line: 382, column: 2, scope: !5158, inlinedAt: !4955)
!5161 = !DILocation(line: 386, column: 1, scope: !4951, inlinedAt: !4955)
!5162 = !DILocation(line: 547, column: 9, scope: !4934, inlinedAt: !4937)
!5163 = !DILocation(line: 549, column: 8, scope: !5164, inlinedAt: !4937)
!5164 = distinct !DILexicalBlock(scope: !4934, file: !113, line: 549, column: 7)
!5165 = !DILocation(line: 549, column: 7, scope: !4934, inlinedAt: !4937)
!5166 = !DILocation(line: 550, column: 4, scope: !5164, inlinedAt: !4937)
!5167 = !DILocation(line: 553, column: 33, scope: !4934, inlinedAt: !4937)
!5168 = !DILocation(line: 325, column: 6, scope: !5169, inlinedAt: !4949)
!5169 = distinct !DILexicalBlock(scope: !4945, file: !113, line: 325, column: 6)
!5170 = !DILocation(line: 325, column: 6, scope: !4945, inlinedAt: !4949)
!5171 = !DILocation(line: 326, column: 3, scope: !5169, inlinedAt: !4949)
!5172 = !DILocation(line: 332, column: 9, scope: !4945, inlinedAt: !4949)
!5173 = !DILocation(line: 332, column: 15, scope: !4945, inlinedAt: !4949)
!5174 = !DILocation(line: 332, column: 2, scope: !4945, inlinedAt: !4949)
!5175 = !DILocation(line: 336, column: 1, scope: !4945, inlinedAt: !4949)
!5176 = !DILocation(line: 553, column: 5, scope: !4934, inlinedAt: !4937)
!5177 = !DILocation(line: 553, column: 41, scope: !4934, inlinedAt: !4937)
!5178 = !DILocation(line: 554, column: 5, scope: !4934, inlinedAt: !4937)
!5179 = !DILocation(line: 554, column: 12, scope: !4934, inlinedAt: !4937)
!5180 = !DILocation(line: 448, column: 31, scope: !4929, inlinedAt: !4933)
!5181 = !DILocation(line: 448, column: 34, scope: !4929, inlinedAt: !4933)
!5182 = !DILocation(line: 448, column: 14, scope: !4929, inlinedAt: !4933)
!5183 = !DILocation(line: 450, column: 22, scope: !4929, inlinedAt: !4933)
!5184 = !DILocation(line: 450, column: 25, scope: !4929, inlinedAt: !4933)
!5185 = !DILocation(line: 450, column: 30, scope: !4929, inlinedAt: !4933)
!5186 = !DILocation(line: 450, column: 36, scope: !4929, inlinedAt: !4933)
!5187 = !DILocation(line: 450, column: 8, scope: !4929, inlinedAt: !4933)
!5188 = !DILocation(line: 450, column: 6, scope: !4929, inlinedAt: !4933)
!5189 = !DILocation(line: 451, column: 9, scope: !4929, inlinedAt: !4933)
!5190 = !DILocation(line: 552, column: 3, scope: !4934, inlinedAt: !4937)
!5191 = !DILocation(line: 557, column: 19, scope: !4936, inlinedAt: !4937)
!5192 = !DILocation(line: 557, column: 25, scope: !4936, inlinedAt: !4937)
!5193 = !DILocation(line: 557, column: 9, scope: !4936, inlinedAt: !4937)
!5194 = !DILocation(line: 557, column: 2, scope: !4936, inlinedAt: !4937)
!5195 = !DILocation(line: 558, column: 1, scope: !4936, inlinedAt: !4937)
!5196 = !DILocation(line: 664, column: 2, scope: !4925)
!5197 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4814, file: !4814, line: 33, type: !4815, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5198 = !DILocalVariable(name: "list", arg: 1, scope: !5197, file: !4814, line: 33, type: !167)
!5199 = !DILocation(line: 33, column: 53, scope: !5197)
!5200 = !DILocation(line: 35, column: 2, scope: !5197)
!5201 = !DILocation(line: 35, column: 2, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5197, file: !4814, line: 35, column: 2)
!5203 = !DILocation(line: 35, column: 2, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5202, file: !4814, line: 35, column: 2)
!5205 = !DILocation(line: 35, column: 2, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5202, file: !4814, line: 35, column: 2)
!5207 = !DILocation(line: 36, column: 15, scope: !5197)
!5208 = !DILocation(line: 36, column: 2, scope: !5197)
!5209 = !DILocation(line: 36, column: 8, scope: !5197)
!5210 = !DILocation(line: 36, column: 13, scope: !5197)
!5211 = !DILocation(line: 37, column: 1, scope: !5197)
!5212 = distinct !DISubprogram(name: "setup_res", scope: !3, file: !3, line: 40, type: !5213, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!120, !5215, !127}
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !5217, line: 651, size: 544, elements: !5218)
!5217 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!5218 = !{!5219, !5220, !5221}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5216, file: !5217, line: 652, baseType: !122, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5216, file: !5217, line: 653, baseType: !122, size: 32, offset: 32)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5216, file: !5217, line: 654, baseType: !5222, size: 480, offset: 64)
!5222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !5217, line: 614, size: 480, elements: !5223)
!5223 = !{!5224, !5235, !5243, !5249, !5257, !5262, !5268, !5273, !5281, !5285, !5293, !5301, !5307, !5347, !5365, !5383, !5395, !5407, !5415, !5435, !5451, !5471, !5493, !5506, !5518, !5531, !5545, !5556, !5568}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5222, file: !5217, line: 615, baseType: !5225, size: 56)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !5217, line: 138, size: 56, elements: !5226)
!5226 = !{!5227, !5228, !5229, !5230, !5231, !5232, !5233}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5225, file: !5217, line: 139, baseType: !1360, size: 8)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5225, file: !5217, line: 140, baseType: !1360, size: 8, offset: 8)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5225, file: !5217, line: 141, baseType: !1360, size: 8, offset: 16)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5225, file: !5217, line: 142, baseType: !1360, size: 8, offset: 24)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5225, file: !5217, line: 143, baseType: !1360, size: 8, offset: 32)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5225, file: !5217, line: 144, baseType: !1360, size: 8, offset: 40)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5225, file: !5217, line: 145, baseType: !5234, size: 8, offset: 48)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 8, elements: !1379)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !5222, file: !5217, line: 616, baseType: !5236, size: 40)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !5217, line: 148, size: 40, elements: !5237)
!5237 = !{!5238, !5239, !5240, !5241, !5242}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5236, file: !5217, line: 149, baseType: !1360, size: 8)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !5236, file: !5217, line: 150, baseType: !1360, size: 8, offset: 8)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !5236, file: !5217, line: 151, baseType: !1360, size: 8, offset: 16)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !5236, file: !5217, line: 152, baseType: !1360, size: 8, offset: 24)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5236, file: !5217, line: 153, baseType: !5234, size: 8, offset: 32)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !5222, file: !5217, line: 617, baseType: !5244, size: 24)
!5244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !5217, line: 156, size: 24, elements: !5245)
!5245 = !{!5246, !5247, !5248}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !5244, file: !5217, line: 157, baseType: !1360, size: 8)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !5244, file: !5217, line: 158, baseType: !1360, size: 8, offset: 8)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !5244, file: !5217, line: 159, baseType: !1360, size: 8, offset: 16)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5222, file: !5217, line: 618, baseType: !5250, size: 56)
!5250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !5217, line: 167, size: 56, elements: !5251)
!5251 = !{!5252, !5253, !5254, !5255, !5256}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !5250, file: !5217, line: 168, baseType: !1360, size: 8)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5250, file: !5217, line: 169, baseType: !1360, size: 8, offset: 8)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5250, file: !5217, line: 170, baseType: !1360, size: 8, offset: 16)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5250, file: !5217, line: 171, baseType: !869, size: 16, offset: 24)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5250, file: !5217, line: 172, baseType: !869, size: 16, offset: 40)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !5222, file: !5217, line: 619, baseType: !5258, size: 24)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !5217, line: 175, size: 24, elements: !5259)
!5259 = !{!5260, !5261}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5258, file: !5217, line: 176, baseType: !869, size: 16)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5258, file: !5217, line: 177, baseType: !1360, size: 8, offset: 16)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !5222, file: !5217, line: 620, baseType: !5263, size: 40)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !5217, line: 180, size: 40, elements: !5264)
!5264 = !{!5265, !5266, !5267}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !5263, file: !5217, line: 181, baseType: !869, size: 16)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !5263, file: !5217, line: 182, baseType: !869, size: 16, offset: 16)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5263, file: !5217, line: 183, baseType: !1360, size: 8, offset: 32)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5222, file: !5217, line: 621, baseType: !5269, size: 24)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !5217, line: 195, size: 24, elements: !5270)
!5270 = !{!5271, !5272}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5269, file: !5217, line: 196, baseType: !869, size: 16)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5269, file: !5217, line: 197, baseType: !5234, size: 8, offset: 16)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !5222, file: !5217, line: 622, baseType: !5274, size: 160)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !5217, line: 202, size: 160, elements: !5275)
!5275 = !{!5276, !5277, !5278, !5280}
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !5274, file: !5217, line: 203, baseType: !869, size: 16)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !5274, file: !5217, line: 204, baseType: !1360, size: 8, offset: 16)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !5274, file: !5217, line: 205, baseType: !5279, size: 128, offset: 24)
!5279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 128, elements: !1742)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !5274, file: !5217, line: 206, baseType: !5234, size: 8, offset: 152)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !5222, file: !5217, line: 623, baseType: !5282, size: 8)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !5217, line: 209, size: 8, elements: !5283)
!5283 = !{!5284}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !5282, file: !5217, line: 210, baseType: !1360, size: 8)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !5222, file: !5217, line: 624, baseType: !5286, size: 72)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !5217, line: 213, size: 72, elements: !5287)
!5287 = !{!5288, !5289, !5290, !5291, !5292}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5286, file: !5217, line: 214, baseType: !1360, size: 8)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5286, file: !5217, line: 215, baseType: !869, size: 16, offset: 8)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5286, file: !5217, line: 216, baseType: !869, size: 16, offset: 24)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5286, file: !5217, line: 217, baseType: !869, size: 16, offset: 40)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5286, file: !5217, line: 218, baseType: !869, size: 16, offset: 56)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !5222, file: !5217, line: 625, baseType: !5294, size: 136)
!5294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !5217, line: 221, size: 136, elements: !5295)
!5295 = !{!5296, !5297, !5298, !5299, !5300}
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5294, file: !5217, line: 222, baseType: !1360, size: 8)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5294, file: !5217, line: 223, baseType: !122, size: 32, offset: 8)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5294, file: !5217, line: 224, baseType: !122, size: 32, offset: 40)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !5294, file: !5217, line: 225, baseType: !122, size: 32, offset: 72)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5294, file: !5217, line: 226, baseType: !122, size: 32, offset: 104)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !5222, file: !5217, line: 626, baseType: !5302, size: 72)
!5302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !5217, line: 229, size: 72, elements: !5303)
!5303 = !{!5304, !5305, !5306}
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5302, file: !5217, line: 230, baseType: !1360, size: 8)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5302, file: !5217, line: 231, baseType: !122, size: 32, offset: 8)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5302, file: !5217, line: 232, baseType: !122, size: 32, offset: 40)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !5222, file: !5217, line: 627, baseType: !5308, size: 240)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !5217, line: 306, size: 240, elements: !5309)
!5309 = !{!5310, !5311, !5312, !5313, !5314, !5315, !5333, !5341}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5308, file: !5217, line: 307, baseType: !1360, size: 8)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5308, file: !5217, line: 307, baseType: !1360, size: 8, offset: 8)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5308, file: !5217, line: 307, baseType: !1360, size: 8, offset: 16)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5308, file: !5217, line: 307, baseType: !1360, size: 8, offset: 24)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5308, file: !5217, line: 307, baseType: !1360, size: 8, offset: 32)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5308, file: !5217, line: 307, baseType: !5316, size: 32, offset: 40)
!5316 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !5217, line: 249, size: 32, elements: !5317)
!5317 = !{!5318, !5325, !5332}
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5316, file: !5217, line: 250, baseType: !5319, size: 32)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !5217, line: 235, size: 32, elements: !5320)
!5320 = !{!5321, !5322, !5323, !5324}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !5319, file: !5217, line: 236, baseType: !1360, size: 8)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5319, file: !5217, line: 237, baseType: !1360, size: 8, offset: 8)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5319, file: !5217, line: 238, baseType: !1360, size: 8, offset: 16)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5319, file: !5217, line: 239, baseType: !1360, size: 8, offset: 24)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !5316, file: !5217, line: 251, baseType: !5326, size: 32)
!5326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !5217, line: 242, size: 32, elements: !5327)
!5327 = !{!5328, !5329, !5330, !5331}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !5326, file: !5217, line: 243, baseType: !1360, size: 8)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !5326, file: !5217, line: 244, baseType: !1360, size: 8, offset: 8)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !5326, file: !5217, line: 245, baseType: !1360, size: 8, offset: 16)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !5326, file: !5217, line: 246, baseType: !1360, size: 8, offset: 24)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5316, file: !5217, line: 255, baseType: !1360, size: 8)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5308, file: !5217, line: 307, baseType: !5334, size: 80, offset: 72)
!5334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !5217, line: 279, size: 80, elements: !5335)
!5335 = !{!5336, !5337, !5338, !5339, !5340}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5334, file: !5217, line: 280, baseType: !869, size: 16)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5334, file: !5217, line: 281, baseType: !869, size: 16, offset: 16)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5334, file: !5217, line: 282, baseType: !869, size: 16, offset: 32)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5334, file: !5217, line: 283, baseType: !869, size: 16, offset: 48)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5334, file: !5217, line: 284, baseType: !869, size: 16, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5308, file: !5217, line: 308, baseType: !5342, size: 88, offset: 152)
!5342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !5217, line: 263, size: 88, elements: !5343)
!5343 = !{!5344, !5345, !5346}
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5342, file: !5217, line: 264, baseType: !1360, size: 8)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5342, file: !5217, line: 265, baseType: !869, size: 16, offset: 8)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5342, file: !5217, line: 266, baseType: !291, size: 64, offset: 24)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !5222, file: !5217, line: 628, baseType: !5348, size: 320)
!5348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !5217, line: 311, size: 320, elements: !5349)
!5349 = !{!5350, !5351, !5352, !5353, !5354, !5355, !5356, !5364}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5348, file: !5217, line: 312, baseType: !1360, size: 8)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5348, file: !5217, line: 312, baseType: !1360, size: 8, offset: 8)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5348, file: !5217, line: 312, baseType: !1360, size: 8, offset: 16)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5348, file: !5217, line: 312, baseType: !1360, size: 8, offset: 24)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5348, file: !5217, line: 312, baseType: !1360, size: 8, offset: 32)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5348, file: !5217, line: 312, baseType: !5316, size: 32, offset: 40)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5348, file: !5217, line: 312, baseType: !5357, size: 160, offset: 72)
!5357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !5217, line: 287, size: 160, elements: !5358)
!5358 = !{!5359, !5360, !5361, !5362, !5363}
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5357, file: !5217, line: 288, baseType: !122, size: 32)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5357, file: !5217, line: 289, baseType: !122, size: 32, offset: 32)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5357, file: !5217, line: 290, baseType: !122, size: 32, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5357, file: !5217, line: 291, baseType: !122, size: 32, offset: 96)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5357, file: !5217, line: 292, baseType: !122, size: 32, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5348, file: !5217, line: 313, baseType: !5342, size: 88, offset: 232)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !5222, file: !5217, line: 629, baseType: !5366, size: 480)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !5217, line: 316, size: 480, elements: !5367)
!5367 = !{!5368, !5369, !5370, !5371, !5372, !5373, !5374, !5382}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5366, file: !5217, line: 317, baseType: !1360, size: 8)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5366, file: !5217, line: 317, baseType: !1360, size: 8, offset: 8)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5366, file: !5217, line: 317, baseType: !1360, size: 8, offset: 16)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5366, file: !5217, line: 317, baseType: !1360, size: 8, offset: 24)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5366, file: !5217, line: 317, baseType: !1360, size: 8, offset: 32)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5366, file: !5217, line: 317, baseType: !5316, size: 32, offset: 40)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5366, file: !5217, line: 317, baseType: !5375, size: 320, offset: 72)
!5375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !5217, line: 295, size: 320, elements: !5376)
!5376 = !{!5377, !5378, !5379, !5380, !5381}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !5375, file: !5217, line: 296, baseType: !143, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !5375, file: !5217, line: 297, baseType: !143, size: 64, offset: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !5375, file: !5217, line: 298, baseType: !143, size: 64, offset: 128)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !5375, file: !5217, line: 299, baseType: !143, size: 64, offset: 192)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !5375, file: !5217, line: 300, baseType: !143, size: 64, offset: 256)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5366, file: !5217, line: 318, baseType: !5342, size: 88, offset: 392)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !5222, file: !5217, line: 630, baseType: !5384, size: 464)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !5217, line: 321, size: 464, elements: !5385)
!5385 = !{!5386, !5387, !5388, !5389, !5390, !5391, !5392, !5393, !5394}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8, offset: 8)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8, offset: 16)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8, offset: 24)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8, offset: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5384, file: !5217, line: 322, baseType: !5316, size: 32, offset: 40)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !5384, file: !5217, line: 322, baseType: !1360, size: 8, offset: 72)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5384, file: !5217, line: 323, baseType: !5375, size: 320, offset: 80)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !5384, file: !5217, line: 324, baseType: !143, size: 64, offset: 400)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !5222, file: !5217, line: 631, baseType: !5396, size: 168)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !5217, line: 327, size: 168, elements: !5397)
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5396, file: !5217, line: 328, baseType: !1360, size: 8)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5396, file: !5217, line: 329, baseType: !1360, size: 8, offset: 8)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5396, file: !5217, line: 330, baseType: !1360, size: 8, offset: 16)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5396, file: !5217, line: 331, baseType: !1360, size: 8, offset: 24)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5396, file: !5217, line: 332, baseType: !1360, size: 8, offset: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !5396, file: !5217, line: 333, baseType: !1360, size: 8, offset: 40)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5396, file: !5217, line: 334, baseType: !5342, size: 88, offset: 48)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !5396, file: !5217, line: 335, baseType: !5406, size: 32, offset: 136)
!5406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !1379)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !5222, file: !5217, line: 632, baseType: !5408, size: 96)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !5217, line: 338, size: 96, elements: !5409)
!5409 = !{!5410, !5411, !5412, !5413, !5414}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !5408, file: !5217, line: 339, baseType: !1360, size: 8)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !5408, file: !5217, line: 340, baseType: !1360, size: 8, offset: 8)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !5408, file: !5217, line: 341, baseType: !1360, size: 8, offset: 16)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !5408, file: !5217, line: 342, baseType: !1360, size: 8, offset: 24)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5408, file: !5217, line: 343, baseType: !143, size: 64, offset: 32)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !5222, file: !5217, line: 633, baseType: !5416, size: 352)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !5217, line: 346, size: 352, elements: !5417)
!5417 = !{!5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426, !5427, !5428, !5429, !5430, !5431, !5432, !5434}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5416, file: !5217, line: 347, baseType: !1360, size: 8)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !5416, file: !5217, line: 348, baseType: !1360, size: 8, offset: 8)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5416, file: !5217, line: 349, baseType: !1360, size: 8, offset: 16)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5416, file: !5217, line: 350, baseType: !1360, size: 8, offset: 24)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5416, file: !5217, line: 351, baseType: !1360, size: 8, offset: 32)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !5416, file: !5217, line: 352, baseType: !1360, size: 8, offset: 40)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !5416, file: !5217, line: 353, baseType: !1360, size: 8, offset: 48)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !5416, file: !5217, line: 354, baseType: !1360, size: 8, offset: 56)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5416, file: !5217, line: 355, baseType: !1360, size: 8, offset: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !5416, file: !5217, line: 356, baseType: !869, size: 16, offset: 72)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !5416, file: !5217, line: 357, baseType: !869, size: 16, offset: 88)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5416, file: !5217, line: 358, baseType: !869, size: 16, offset: 104)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5416, file: !5217, line: 359, baseType: !869, size: 16, offset: 120)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5416, file: !5217, line: 360, baseType: !5342, size: 88, offset: 136)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5416, file: !5217, line: 361, baseType: !5433, size: 64, offset: 224)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5416, file: !5217, line: 362, baseType: !4485, size: 64, offset: 288)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !5222, file: !5217, line: 634, baseType: !5436, size: 288)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !5217, line: 412, size: 288, elements: !5437)
!5437 = !{!5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 8)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 16)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 24)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 32)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 40)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5436, file: !5217, line: 413, baseType: !869, size: 16, offset: 48)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5436, file: !5217, line: 413, baseType: !869, size: 16, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5436, file: !5217, line: 413, baseType: !5342, size: 88, offset: 80)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5436, file: !5217, line: 413, baseType: !4485, size: 64, offset: 168)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !5436, file: !5217, line: 413, baseType: !1360, size: 8, offset: 232)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !5436, file: !5217, line: 414, baseType: !869, size: 16, offset: 240)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5436, file: !5217, line: 415, baseType: !122, size: 32, offset: 256)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !5222, file: !5217, line: 635, baseType: !5452, size: 320)
!5452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !5217, line: 423, size: 320, elements: !5453)
!5453 = !{!5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 8)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 16)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 24)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 40)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5452, file: !5217, line: 424, baseType: !869, size: 16, offset: 48)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5452, file: !5217, line: 424, baseType: !869, size: 16, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5452, file: !5217, line: 424, baseType: !5342, size: 88, offset: 80)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5452, file: !5217, line: 424, baseType: !4485, size: 64, offset: 168)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !5452, file: !5217, line: 424, baseType: !1360, size: 8, offset: 232)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !5452, file: !5217, line: 425, baseType: !1360, size: 8, offset: 240)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !5452, file: !5217, line: 426, baseType: !1360, size: 8, offset: 248)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !5452, file: !5217, line: 427, baseType: !1360, size: 8, offset: 256)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !5452, file: !5217, line: 428, baseType: !1360, size: 8, offset: 264)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !5452, file: !5217, line: 429, baseType: !869, size: 16, offset: 272)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !5452, file: !5217, line: 430, baseType: !122, size: 32, offset: 288)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !5222, file: !5217, line: 636, baseType: !5472, size: 344)
!5472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !5217, line: 453, size: 344, elements: !5473)
!5473 = !{!5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492}
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 8)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 16)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 24)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 32)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 40)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5472, file: !5217, line: 454, baseType: !869, size: 16, offset: 48)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5472, file: !5217, line: 454, baseType: !869, size: 16, offset: 64)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5472, file: !5217, line: 454, baseType: !5342, size: 88, offset: 80)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5472, file: !5217, line: 454, baseType: !4485, size: 64, offset: 168)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !5472, file: !5217, line: 454, baseType: !1360, size: 8, offset: 232)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !5472, file: !5217, line: 455, baseType: !1360, size: 8, offset: 240)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !5472, file: !5217, line: 456, baseType: !1360, size: 8, offset: 248)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !5472, file: !5217, line: 457, baseType: !1360, size: 8, offset: 256)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5472, file: !5217, line: 458, baseType: !1360, size: 8, offset: 264)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !5472, file: !5217, line: 459, baseType: !1360, size: 8, offset: 272)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !5472, file: !5217, line: 460, baseType: !869, size: 16, offset: 280)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !5472, file: !5217, line: 461, baseType: !869, size: 16, offset: 296)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !5472, file: !5217, line: 462, baseType: !122, size: 32, offset: 312)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !5222, file: !5217, line: 637, baseType: !5494, size: 232)
!5494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !5217, line: 398, size: 232, elements: !5495)
!5495 = !{!5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8, offset: 8)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8, offset: 16)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8, offset: 24)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8, offset: 32)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !5494, file: !5217, line: 399, baseType: !1360, size: 8, offset: 40)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !5494, file: !5217, line: 399, baseType: !869, size: 16, offset: 48)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5494, file: !5217, line: 399, baseType: !869, size: 16, offset: 64)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5494, file: !5217, line: 399, baseType: !5342, size: 88, offset: 80)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5494, file: !5217, line: 399, baseType: !4485, size: 64, offset: 168)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !5222, file: !5217, line: 638, baseType: !5507, size: 288)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !5217, line: 508, size: 288, elements: !5508)
!5508 = !{!5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5507, file: !5217, line: 509, baseType: !1360, size: 8)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5507, file: !5217, line: 510, baseType: !1360, size: 8, offset: 8)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5507, file: !5217, line: 511, baseType: !1360, size: 8, offset: 16)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5507, file: !5217, line: 512, baseType: !869, size: 16, offset: 24)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5507, file: !5217, line: 513, baseType: !869, size: 16, offset: 40)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5507, file: !5217, line: 514, baseType: !869, size: 16, offset: 56)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5507, file: !5217, line: 515, baseType: !5342, size: 88, offset: 72)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5507, file: !5217, line: 516, baseType: !5433, size: 64, offset: 160)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5507, file: !5217, line: 517, baseType: !4485, size: 64, offset: 224)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !5222, file: !5217, line: 639, baseType: !5519, size: 312)
!5519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !5217, line: 520, size: 312, elements: !5520)
!5520 = !{!5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5519, file: !5217, line: 521, baseType: !1360, size: 8)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5519, file: !5217, line: 522, baseType: !1360, size: 8, offset: 8)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5519, file: !5217, line: 523, baseType: !1360, size: 8, offset: 16)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5519, file: !5217, line: 524, baseType: !1360, size: 8, offset: 24)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5519, file: !5217, line: 525, baseType: !122, size: 32, offset: 32)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5519, file: !5217, line: 526, baseType: !869, size: 16, offset: 64)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5519, file: !5217, line: 527, baseType: !869, size: 16, offset: 80)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5519, file: !5217, line: 528, baseType: !5342, size: 88, offset: 96)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5519, file: !5217, line: 529, baseType: !5433, size: 64, offset: 184)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5519, file: !5217, line: 530, baseType: !4485, size: 64, offset: 248)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !5222, file: !5217, line: 640, baseType: !5532, size: 256)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !5217, line: 550, size: 256, elements: !5533)
!5533 = !{!5534, !5535, !5536, !5537, !5538, !5539, !5544}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5532, file: !5217, line: 551, baseType: !1360, size: 8)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5532, file: !5217, line: 552, baseType: !1360, size: 8, offset: 8)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !5532, file: !5217, line: 553, baseType: !869, size: 16, offset: 16)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5532, file: !5217, line: 554, baseType: !869, size: 16, offset: 32)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !5532, file: !5217, line: 555, baseType: !5433, size: 64, offset: 48)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !5532, file: !5217, line: 556, baseType: !5540, size: 80, offset: 112)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !5217, line: 258, size: 80, elements: !5541)
!5541 = !{!5542, !5543}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !5540, file: !5217, line: 259, baseType: !869, size: 16)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !5540, file: !5217, line: 260, baseType: !291, size: 64, offset: 16)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5532, file: !5217, line: 557, baseType: !4485, size: 64, offset: 192)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !5222, file: !5217, line: 641, baseType: !5546, size: 288)
!5546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !5217, line: 560, size: 288, elements: !5547)
!5547 = !{!5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5546, file: !5217, line: 561, baseType: !1360, size: 8)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5546, file: !5217, line: 562, baseType: !1360, size: 8, offset: 8)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5546, file: !5217, line: 563, baseType: !1360, size: 8, offset: 16)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !5546, file: !5217, line: 564, baseType: !869, size: 16, offset: 24)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5546, file: !5217, line: 565, baseType: !869, size: 16, offset: 40)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5546, file: !5217, line: 566, baseType: !5342, size: 88, offset: 56)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5546, file: !5217, line: 567, baseType: !5540, size: 80, offset: 144)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5546, file: !5217, line: 568, baseType: !4485, size: 64, offset: 224)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !5222, file: !5217, line: 642, baseType: !5557, size: 312)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !5217, line: 571, size: 312, elements: !5558)
!5558 = !{!5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567}
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !5557, file: !5217, line: 572, baseType: !1360, size: 8)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5557, file: !5217, line: 573, baseType: !1360, size: 8, offset: 8)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !5557, file: !5217, line: 574, baseType: !1360, size: 8, offset: 16)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !5557, file: !5217, line: 575, baseType: !1360, size: 8, offset: 24)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !5557, file: !5217, line: 576, baseType: !122, size: 32, offset: 32)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !5557, file: !5217, line: 577, baseType: !869, size: 16, offset: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !5557, file: !5217, line: 578, baseType: !5342, size: 88, offset: 80)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !5557, file: !5217, line: 579, baseType: !5540, size: 80, offset: 168)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !5557, file: !5217, line: 580, baseType: !4485, size: 64, offset: 248)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !5222, file: !5217, line: 646, baseType: !5569, size: 72)
!5569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !5217, line: 303, size: 72, elements: !5570)
!5570 = !{!5571, !5572, !5573, !5574, !5575, !5576}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !5569, file: !5217, line: 304, baseType: !1360, size: 8)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !5569, file: !5217, line: 304, baseType: !1360, size: 8, offset: 8)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !5569, file: !5217, line: 304, baseType: !1360, size: 8, offset: 16)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !5569, file: !5217, line: 304, baseType: !1360, size: 8, offset: 24)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !5569, file: !5217, line: 304, baseType: !1360, size: 8, offset: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5569, file: !5217, line: 304, baseType: !5316, size: 32, offset: 40)
!5577 = !DILocalVariable(name: "acpi_res", arg: 1, scope: !5212, file: !3, line: 40, type: !5215)
!5578 = !DILocation(line: 40, column: 52, scope: !5212)
!5579 = !DILocalVariable(name: "data", arg: 2, scope: !5212, file: !3, line: 40, type: !127)
!5580 = !DILocation(line: 40, column: 68, scope: !5212)
!5581 = !DILocalVariable(name: "res", scope: !5212, file: !3, line: 42, type: !155)
!5582 = !DILocation(line: 42, column: 19, scope: !5212)
!5583 = !DILocation(line: 42, column: 25, scope: !5212)
!5584 = !DILocalVariable(name: "win", scope: !5212, file: !3, line: 43, type: !5585)
!5585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_win", file: !5586, line: 14, size: 576, elements: !5587)
!5586 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!5587 = !{!5588, !5589}
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5585, file: !5586, line: 15, baseType: !136, size: 512)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5585, file: !5586, line: 16, baseType: !140, size: 64, offset: 512)
!5590 = !DILocation(line: 43, column: 22, scope: !5212)
!5591 = !DILocation(line: 49, column: 2, scope: !5212)
!5592 = !DILocation(line: 51, column: 2, scope: !5212)
!5593 = !DILocation(line: 51, column: 7, scope: !5212)
!5594 = !DILocation(line: 51, column: 13, scope: !5212)
!5595 = !DILocation(line: 52, column: 36, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 52, column: 6)
!5597 = !DILocation(line: 52, column: 6, scope: !5596)
!5598 = !DILocation(line: 52, column: 6, scope: !5212)
!5599 = !DILocation(line: 53, column: 3, scope: !5596)
!5600 = !DILocation(line: 55, column: 32, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 55, column: 6)
!5602 = !DILocation(line: 55, column: 42, scope: !5601)
!5603 = !DILocation(line: 55, column: 7, scope: !5601)
!5604 = !DILocation(line: 55, column: 6, scope: !5212)
!5605 = !DILocation(line: 56, column: 39, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 56, column: 7)
!5607 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 55, column: 48)
!5608 = !DILocation(line: 56, column: 7, scope: !5606)
!5609 = !DILocation(line: 56, column: 55, scope: !5606)
!5610 = !DILocation(line: 57, column: 43, scope: !5606)
!5611 = !DILocation(line: 57, column: 7, scope: !5606)
!5612 = !DILocation(line: 56, column: 7, scope: !5607)
!5613 = !DILocation(line: 58, column: 5, scope: !5606)
!5614 = !DILocation(line: 58, column: 15, scope: !5606)
!5615 = !DILocation(line: 58, column: 4, scope: !5606)
!5616 = !DILocation(line: 59, column: 2, scope: !5607)
!5617 = !DILocation(line: 60, column: 7, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 60, column: 6)
!5619 = !DILocation(line: 60, column: 12, scope: !5618)
!5620 = !DILocation(line: 60, column: 18, scope: !5618)
!5621 = !DILocation(line: 60, column: 41, scope: !5618)
!5622 = !DILocation(line: 61, column: 7, scope: !5618)
!5623 = !DILocation(line: 61, column: 12, scope: !5618)
!5624 = !DILocation(line: 61, column: 18, scope: !5618)
!5625 = !DILocation(line: 60, column: 6, scope: !5212)
!5626 = !DILocation(line: 62, column: 3, scope: !5618)
!5627 = !DILocation(line: 62, column: 8, scope: !5618)
!5628 = !DILocation(line: 62, column: 14, scope: !5618)
!5629 = !DILocation(line: 64, column: 2, scope: !5212)
!5630 = !DILocation(line: 65, column: 1, scope: !5212)
!5631 = distinct !DISubprogram(name: "list_add", scope: !4814, file: !4814, line: 84, type: !5632, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{null, !167, !167}
!5634 = !DILocalVariable(name: "new", arg: 1, scope: !5631, file: !4814, line: 84, type: !167)
!5635 = !DILocation(line: 84, column: 47, scope: !5631)
!5636 = !DILocalVariable(name: "head", arg: 2, scope: !5631, file: !4814, line: 84, type: !167)
!5637 = !DILocation(line: 84, column: 70, scope: !5631)
!5638 = !DILocation(line: 86, column: 13, scope: !5631)
!5639 = !DILocation(line: 86, column: 18, scope: !5631)
!5640 = !DILocation(line: 86, column: 24, scope: !5631)
!5641 = !DILocation(line: 86, column: 30, scope: !5631)
!5642 = !DILocation(line: 86, column: 2, scope: !5631)
!5643 = !DILocation(line: 87, column: 1, scope: !5631)
!5644 = distinct !DISubprogram(name: "get_order", scope: !5645, file: !5645, line: 29, type: !5646, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5645 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5646 = !DISubroutineType(types: !5647)
!5647 = !{!193, !152}
!5648 = !DILocalVariable(name: "x", arg: 1, scope: !5649, file: !5650, line: 366, type: !144)
!5649 = distinct !DISubprogram(name: "fls64", scope: !5650, file: !5650, line: 366, type: !5651, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5650 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!193, !144}
!5653 = !DILocation(line: 366, column: 40, scope: !5649, inlinedAt: !5654)
!5654 = distinct !DILocation(line: 46, column: 9, scope: !5644)
!5655 = !DILocalVariable(name: "bitpos", scope: !5649, file: !5650, line: 368, type: !193)
!5656 = !DILocation(line: 368, column: 6, scope: !5649, inlinedAt: !5654)
!5657 = !DILocalVariable(name: "size", arg: 1, scope: !5644, file: !5645, line: 29, type: !152)
!5658 = !DILocation(line: 29, column: 63, scope: !5644)
!5659 = !DILocation(line: 31, column: 27, scope: !5660)
!5660 = distinct !DILexicalBlock(scope: !5644, file: !5645, line: 31, column: 6)
!5661 = !DILocation(line: 31, column: 6, scope: !5660)
!5662 = !DILocation(line: 31, column: 6, scope: !5644)
!5663 = !DILocation(line: 32, column: 8, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5665, file: !5645, line: 32, column: 7)
!5665 = distinct !DILexicalBlock(scope: !5660, file: !5645, line: 31, column: 34)
!5666 = !DILocation(line: 32, column: 7, scope: !5665)
!5667 = !DILocation(line: 33, column: 4, scope: !5664)
!5668 = !DILocation(line: 35, column: 7, scope: !5669)
!5669 = distinct !DILexicalBlock(scope: !5665, file: !5645, line: 35, column: 7)
!5670 = !DILocation(line: 35, column: 12, scope: !5669)
!5671 = !DILocation(line: 35, column: 7, scope: !5665)
!5672 = !DILocation(line: 36, column: 4, scope: !5669)
!5673 = !DILocation(line: 38, column: 10, scope: !5665)
!5674 = !DILocation(line: 38, column: 28, scope: !5665)
!5675 = !DILocation(line: 38, column: 41, scope: !5665)
!5676 = !DILocation(line: 38, column: 3, scope: !5665)
!5677 = !DILocation(line: 41, column: 6, scope: !5644)
!5678 = !DILocation(line: 42, column: 7, scope: !5644)
!5679 = !DILocation(line: 46, column: 15, scope: !5644)
!5680 = !DILocation(line: 374, column: 2, scope: !5649, inlinedAt: !5654)
!5681 = !DILocation(line: 376, column: 14, scope: !5649, inlinedAt: !5654)
!5682 = !{i32 306119}
!5683 = !DILocation(line: 377, column: 9, scope: !5649, inlinedAt: !5654)
!5684 = !DILocation(line: 377, column: 16, scope: !5649, inlinedAt: !5654)
!5685 = !DILocation(line: 46, column: 2, scope: !5644)
!5686 = !DILocation(line: 48, column: 1, scope: !5644)
!5687 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5688, file: !5688, line: 30, type: !5689, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5688 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!193, !143}
!5691 = !DILocation(line: 366, column: 40, scope: !5649, inlinedAt: !5692)
!5692 = distinct !DILocation(line: 32, column: 9, scope: !5687)
!5693 = !DILocation(line: 368, column: 6, scope: !5649, inlinedAt: !5692)
!5694 = !DILocalVariable(name: "n", arg: 1, scope: !5687, file: !5688, line: 30, type: !143)
!5695 = !DILocation(line: 30, column: 21, scope: !5687)
!5696 = !DILocation(line: 32, column: 15, scope: !5687)
!5697 = !DILocation(line: 374, column: 2, scope: !5649, inlinedAt: !5692)
!5698 = !DILocation(line: 376, column: 14, scope: !5649, inlinedAt: !5692)
!5699 = !DILocation(line: 377, column: 9, scope: !5649, inlinedAt: !5692)
!5700 = !DILocation(line: 377, column: 16, scope: !5649, inlinedAt: !5692)
!5701 = !DILocation(line: 32, column: 18, scope: !5687)
!5702 = !DILocation(line: 32, column: 2, scope: !5687)
!5703 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5704, file: !5704, line: 137, type: !5705, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5704 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5705 = !DISubroutineType(types: !5706)
!5706 = !{!127, !945, !2134, !337, !754}
!5707 = !DILocalVariable(name: "s", arg: 1, scope: !5703, file: !5704, line: 137, type: !945)
!5708 = !DILocation(line: 137, column: 54, scope: !5703)
!5709 = !DILocalVariable(name: "object", arg: 2, scope: !5703, file: !5704, line: 137, type: !2134)
!5710 = !DILocation(line: 137, column: 69, scope: !5703)
!5711 = !DILocalVariable(name: "size", arg: 3, scope: !5703, file: !5704, line: 138, type: !337)
!5712 = !DILocation(line: 138, column: 12, scope: !5703)
!5713 = !DILocalVariable(name: "flags", arg: 4, scope: !5703, file: !5704, line: 138, type: !754)
!5714 = !DILocation(line: 138, column: 24, scope: !5703)
!5715 = !DILocation(line: 140, column: 17, scope: !5703)
!5716 = !DILocation(line: 140, column: 2, scope: !5703)
!5717 = distinct !DISubprogram(name: "__list_add", scope: !4814, file: !4814, line: 63, type: !5718, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5718 = !DISubroutineType(types: !5719)
!5719 = !{null, !167, !167, !167}
!5720 = !DILocalVariable(name: "new", arg: 1, scope: !5717, file: !4814, line: 63, type: !167)
!5721 = !DILocation(line: 63, column: 49, scope: !5717)
!5722 = !DILocalVariable(name: "prev", arg: 2, scope: !5717, file: !4814, line: 64, type: !167)
!5723 = !DILocation(line: 64, column: 28, scope: !5717)
!5724 = !DILocalVariable(name: "next", arg: 3, scope: !5717, file: !4814, line: 65, type: !167)
!5725 = !DILocation(line: 65, column: 28, scope: !5717)
!5726 = !DILocation(line: 67, column: 24, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5717, file: !4814, line: 67, column: 6)
!5728 = !DILocation(line: 67, column: 29, scope: !5727)
!5729 = !DILocation(line: 67, column: 35, scope: !5727)
!5730 = !DILocation(line: 67, column: 7, scope: !5727)
!5731 = !DILocation(line: 67, column: 6, scope: !5717)
!5732 = !DILocation(line: 68, column: 3, scope: !5727)
!5733 = !DILocation(line: 70, column: 15, scope: !5717)
!5734 = !DILocation(line: 70, column: 2, scope: !5717)
!5735 = !DILocation(line: 70, column: 8, scope: !5717)
!5736 = !DILocation(line: 70, column: 13, scope: !5717)
!5737 = !DILocation(line: 71, column: 14, scope: !5717)
!5738 = !DILocation(line: 71, column: 2, scope: !5717)
!5739 = !DILocation(line: 71, column: 7, scope: !5717)
!5740 = !DILocation(line: 71, column: 12, scope: !5717)
!5741 = !DILocation(line: 72, column: 14, scope: !5717)
!5742 = !DILocation(line: 72, column: 2, scope: !5717)
!5743 = !DILocation(line: 72, column: 7, scope: !5717)
!5744 = !DILocation(line: 72, column: 12, scope: !5717)
!5745 = !DILocation(line: 73, column: 2, scope: !5717)
!5746 = !DILocation(line: 73, column: 2, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5717, file: !4814, line: 73, column: 2)
!5748 = !DILocation(line: 73, column: 2, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5747, file: !4814, line: 73, column: 2)
!5750 = !DILocation(line: 73, column: 2, scope: !5751)
!5751 = distinct !DILexicalBlock(scope: !5747, file: !4814, line: 73, column: 2)
!5752 = !DILocation(line: 74, column: 1, scope: !5717)
!5753 = distinct !DISubprogram(name: "__list_add_valid", scope: !4814, file: !4814, line: 45, type: !5754, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!497, !167, !167, !167}
!5756 = !DILocalVariable(name: "new", arg: 1, scope: !5753, file: !4814, line: 45, type: !167)
!5757 = !DILocation(line: 45, column: 55, scope: !5753)
!5758 = !DILocalVariable(name: "prev", arg: 2, scope: !5753, file: !4814, line: 46, type: !167)
!5759 = !DILocation(line: 46, column: 23, scope: !5753)
!5760 = !DILocalVariable(name: "next", arg: 3, scope: !5753, file: !4814, line: 47, type: !167)
!5761 = !DILocation(line: 47, column: 23, scope: !5753)
!5762 = !DILocation(line: 49, column: 2, scope: !5753)
!5763 = distinct !DISubprogram(name: "__list_del_entry", scope: !4814, file: !4814, line: 130, type: !4815, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5764 = !DILocalVariable(name: "entry", arg: 1, scope: !5763, file: !4814, line: 130, type: !167)
!5765 = !DILocation(line: 130, column: 55, scope: !5763)
!5766 = !DILocation(line: 132, column: 30, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5763, file: !4814, line: 132, column: 6)
!5768 = !DILocation(line: 132, column: 7, scope: !5767)
!5769 = !DILocation(line: 132, column: 6, scope: !5763)
!5770 = !DILocation(line: 133, column: 3, scope: !5767)
!5771 = !DILocation(line: 135, column: 13, scope: !5763)
!5772 = !DILocation(line: 135, column: 20, scope: !5763)
!5773 = !DILocation(line: 135, column: 26, scope: !5763)
!5774 = !DILocation(line: 135, column: 33, scope: !5763)
!5775 = !DILocation(line: 135, column: 2, scope: !5763)
!5776 = !DILocation(line: 136, column: 1, scope: !5763)
!5777 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4814, file: !4814, line: 51, type: !5778, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5778 = !DISubroutineType(types: !5779)
!5779 = !{!497, !167}
!5780 = !DILocalVariable(name: "entry", arg: 1, scope: !5777, file: !4814, line: 51, type: !167)
!5781 = !DILocation(line: 51, column: 61, scope: !5777)
!5782 = !DILocation(line: 53, column: 2, scope: !5777)
!5783 = distinct !DISubprogram(name: "__list_del", scope: !4814, file: !4814, line: 110, type: !5632, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !264)
!5784 = !DILocalVariable(name: "prev", arg: 1, scope: !5783, file: !4814, line: 110, type: !167)
!5785 = !DILocation(line: 110, column: 50, scope: !5783)
!5786 = !DILocalVariable(name: "next", arg: 2, scope: !5783, file: !4814, line: 110, type: !167)
!5787 = !DILocation(line: 110, column: 75, scope: !5783)
!5788 = !DILocation(line: 112, column: 15, scope: !5783)
!5789 = !DILocation(line: 112, column: 2, scope: !5783)
!5790 = !DILocation(line: 112, column: 8, scope: !5783)
!5791 = !DILocation(line: 112, column: 13, scope: !5783)
!5792 = !DILocation(line: 113, column: 2, scope: !5783)
!5793 = !DILocation(line: 113, column: 2, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5783, file: !4814, line: 113, column: 2)
!5795 = !DILocation(line: 113, column: 2, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5794, file: !4814, line: 113, column: 2)
!5797 = !DILocation(line: 113, column: 2, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5794, file: !4814, line: 113, column: 2)
!5799 = !DILocation(line: 114, column: 1, scope: !5783)
