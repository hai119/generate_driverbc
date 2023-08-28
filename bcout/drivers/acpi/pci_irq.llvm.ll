; ModuleID = '../bcout/drivers/acpi/pci_irq.llvm.bc'
source_filename = "drivers/acpi/pci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.kmem_cache = type opaque
%struct.prt_quirk = type { %struct.dmi_system_id*, i32, i32, i32, i8, i8*, i8* }
%struct.dmi_system_id = type { i32 (%struct.dmi_system_id*)*, i8*, [4 x %struct.dmi_strmatch], i8* }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, {}*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
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
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.acpi_prt_entry = type { %struct.acpi_pci_id, i8, i8*, i32 }
%struct.acpi_pci_id = type { i16, i16, i16, i16 }
%struct.acpi_pci_routing_table = type { i32, i32, i64, i32, [4 x i8] }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.73, i32, i32, %struct.list_head }
%struct.anon.73 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.74, i8, i8, i32 }
%struct.anon.74 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.pci_sysdata = type { i32, i32, %struct.acpi_device*, i8*, i8*, %struct.pci_dev* }

@acpi_irq_model = external dso_local global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"PCI INT %c: no GSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"PCI INT %c: failed to register GSI\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" -> Link[%s]\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"can't derive routing for PCI INT %c\0A\00", align 1
@__const.acpi_pci_irq_find_prt_entry.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@prt_quirks = internal constant [3 x %struct.prt_quirk] [%struct.prt_quirk { %struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* @medion_md9580, i32 0, i32 0), i32 0, i32 0, i32 9, i8 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.prt_quirk { %struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* @dell_optiplex, i32 0, i32 0), i32 0, i32 0, i32 13, i8 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0) }, %struct.prt_quirk { %struct.dmi_system_id* getelementptr inbounds ([2 x %struct.dmi_system_id], [2 x %struct.dmi_system_id]* @hp_t5710, i32 0, i32 0), i32 0, i32 0, i32 1, i8 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0) }], align 16, !dbg !0
@.str.5 = private unnamed_addr constant [84 x i8] c"\014ACPI: firmware reports %04x:%02x:%02x PCI INT %c connected to %s; changing to %s\0A\00", align 1
@medion_md9580 = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"MEDIONNB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"A555\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4142
@.str.6 = private unnamed_addr constant [21 x i8] c"\\_SB_.PCI0.ISA_.LNKA\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\\_SB_.PCI0.ISA_.LNKB\00", align 1
@dell_optiplex = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"OptiPlex GX1 600S+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], i8* null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4165
@.str.8 = private unnamed_addr constant [11 x i8] c"\\_SB_.LNKB\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\\_SB_.LNKA\00", align 1
@hp_t5710 = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { i32 (%struct.dmi_system_id*)* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"hp t5000 series\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 14, [79 x i8] c"098Ch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer], i8* null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !4167
@.str.10 = private unnamed_addr constant [16 x i8] c"\\_SB_.PCI0.LNK1\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\\_SB_.PCI0.LNK3\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Medion MD9580-F laptop\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Dell Optiplex GX1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"HP t5710\00", align 1
@noioapicquirk = external dso_local global i32, align 4
@noioapicreroute = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"PCI IRQ %d -> rerouted to legacy IRQ %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"Cannot reroute IRQ %d to legacy IRQ: unknown mapping\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"PCI INT %c: not connected\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_pci_irq_enable(%struct.pci_dev* %dev) #0 !dbg !4185 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %entry1 = alloca %struct.acpi_prt_entry*, align 8
  %gsi = alloca i32, align 4
  %pin = alloca i8, align 1
  %triggering = alloca i32, align 4
  %polarity = alloca i32, align 4
  %link = alloca i8*, align 8
  %link_desc = alloca [16 x i8], align 16
  %rc = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4460, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry1, metadata !4462, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.declare(metadata i32* %gsi, metadata !4477, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.declare(metadata i32* %triggering, metadata !4481, metadata !DIExpression()), !dbg !4482
  store i32 0, i32* %triggering, align 4, !dbg !4482
  call void @llvm.dbg.declare(metadata i32* %polarity, metadata !4483, metadata !DIExpression()), !dbg !4484
  %0 = load i32, i32* @acpi_irq_model, align 4, !dbg !4485
  %cmp = icmp eq i32 %0, 4, !dbg !4486
  %1 = zext i1 %cmp to i64, !dbg !4485
  %cond = select i1 %cmp, i32 0, i32 1, !dbg !4485
  store i32 %cond, i32* %polarity, align 4, !dbg !4484
  call void @llvm.dbg.declare(metadata i8** %link, metadata !4487, metadata !DIExpression()), !dbg !4488
  store i8* null, i8** %link, align 8, !dbg !4488
  call void @llvm.dbg.declare(metadata [16 x i8]* %link_desc, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4491, metadata !DIExpression()), !dbg !4492
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4493
  %pin2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 19, !dbg !4494
  %3 = load i8, i8* %pin2, align 1, !dbg !4494
  store i8 %3, i8* %pin, align 1, !dbg !4495
  %4 = load i8, i8* %pin, align 1, !dbg !4496
  %tobool = icmp ne i8 %4, 0, !dbg !4496
  br i1 %tobool, label %if.end, label %if.then, !dbg !4498

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4499
  br label %return, !dbg !4499

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4501
  %irq_managed = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 46, !dbg !4503
  %6 = bitcast [5 x i8]* %irq_managed to i40*, !dbg !4503
  %bf.load = load i40, i40* %6, align 1, !dbg !4503
  %bf.lshr = lshr i40 %bf.load, 31, !dbg !4503
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4503
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4503
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !4501
  br i1 %tobool3, label %land.lhs.true, label %if.end6, !dbg !4504

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4505
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 43, !dbg !4506
  %8 = load i32, i32* %irq, align 4, !dbg !4506
  %cmp4 = icmp ugt i32 %8, 0, !dbg !4507
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4508

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4509
  br label %return, !dbg !4509

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4510
  %10 = load i8, i8* %pin, align 1, !dbg !4511
  %conv = zext i8 %10 to i32, !dbg !4511
  %call = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %9, i32 %conv) #8, !dbg !4512
  store %struct.acpi_prt_entry* %call, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4513
  %11 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4514
  %tobool7 = icmp ne %struct.acpi_prt_entry* %11, null, !dbg !4514
  br i1 %tobool7, label %if.end17, label %if.then8, !dbg !4516

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4517
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 11, !dbg !4520
  %13 = load i32, i32* %class, align 4, !dbg !4520
  %shr = lshr i32 %13, 8, !dbg !4521
  %cmp9 = icmp eq i32 %shr, 257, !dbg !4522
  br i1 %cmp9, label %land.lhs.true11, label %if.end16, !dbg !4523

land.lhs.true11:                                  ; preds = %if.then8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4524
  %class12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 11, !dbg !4525
  %15 = load i32, i32* %class12, align 4, !dbg !4525
  %and = and i32 %15, 5, !dbg !4526
  %cmp13 = icmp eq i32 %and, 0, !dbg !4527
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4528

if.then15:                                        ; preds = %land.lhs.true11
  store i32 0, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

if.end16:                                         ; preds = %land.lhs.true11, %if.then8
  br label %if.end17, !dbg !4530

if.end17:                                         ; preds = %if.end16, %if.end6
  %16 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4531
  %tobool18 = icmp ne %struct.acpi_prt_entry* %16, null, !dbg !4531
  br i1 %tobool18, label %if.then19, label %if.else27, !dbg !4533

if.then19:                                        ; preds = %if.end17
  %17 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4534
  %link20 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %17, i32 0, i32 2, !dbg !4537
  %18 = load i8*, i8** %link20, align 8, !dbg !4537
  %tobool21 = icmp ne i8* %18, null, !dbg !4534
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !4538

if.then22:                                        ; preds = %if.then19
  %19 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4539
  %link23 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %19, i32 0, i32 2, !dbg !4540
  %20 = load i8*, i8** %link23, align 8, !dbg !4540
  %21 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4541
  %index = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %21, i32 0, i32 3, !dbg !4542
  %22 = load i32, i32* %index, align 8, !dbg !4542
  %call24 = call i32 @acpi_pci_link_allocate_irq(i8* %20, i32 %22, i32* %triggering, i32* %polarity, i8** %link) #8, !dbg !4543
  store i32 %call24, i32* %gsi, align 4, !dbg !4544
  br label %if.end26, !dbg !4545

if.else:                                          ; preds = %if.then19
  %23 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4546
  %index25 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %23, i32 0, i32 3, !dbg !4547
  %24 = load i32, i32* %index25, align 8, !dbg !4547
  store i32 %24, i32* %gsi, align 4, !dbg !4548
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  br label %if.end28, !dbg !4549

if.else27:                                        ; preds = %if.end17
  store i32 -1, i32* %gsi, align 4, !dbg !4550
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.end26
  %25 = load i32, i32* %gsi, align 4, !dbg !4551
  %cmp29 = icmp slt i32 %25, 0, !dbg !4553
  br i1 %cmp29, label %if.then31, label %if.end43, !dbg !4554

if.then31:                                        ; preds = %if.end28
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4555
  %27 = load i8, i8* %pin, align 1, !dbg !4558
  %call32 = call zeroext i1 @acpi_pci_irq_valid(%struct.pci_dev* %26, i8 zeroext %27) #8, !dbg !4559
  br i1 %call32, label %if.end34, label %if.then33, !dbg !4560

if.then33:                                        ; preds = %if.then31
  %28 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4561
  %29 = bitcast %struct.acpi_prt_entry* %28 to i8*, !dbg !4561
  call void @kfree(i8* %29) #8, !dbg !4563
  store i32 0, i32* %retval, align 4, !dbg !4564
  br label %return, !dbg !4564

if.end34:                                         ; preds = %if.then31
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4565
  %call35 = call i32 @acpi_isa_register_gsi(%struct.pci_dev* %30) #8, !dbg !4567
  %tobool36 = icmp ne i32 %call35, 0, !dbg !4567
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !4568

if.then37:                                        ; preds = %if.end34
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4569
  %dev38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 41, !dbg !4569
  %32 = load i8, i8* %pin, align 1, !dbg !4569
  %conv39 = zext i8 %32 to i32, !dbg !4569
  %call40 = call signext i8 @pin_name(i32 %conv39) #8, !dbg !4569
  %conv41 = sext i8 %call40 to i32, !dbg !4569
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %conv41) #9, !dbg !4569
  br label %if.end42, !dbg !4569

if.end42:                                         ; preds = %if.then37, %if.end34
  %33 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4570
  %34 = bitcast %struct.acpi_prt_entry* %33 to i8*, !dbg !4570
  call void @kfree(i8* %34) #8, !dbg !4571
  store i32 0, i32* %retval, align 4, !dbg !4572
  br label %return, !dbg !4572

if.end43:                                         ; preds = %if.end28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4573
  %dev44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 41, !dbg !4574
  %36 = load i32, i32* %gsi, align 4, !dbg !4575
  %37 = load i32, i32* %triggering, align 4, !dbg !4576
  %38 = load i32, i32* %polarity, align 4, !dbg !4577
  %call45 = call i32 @acpi_register_gsi(%struct.device* %dev44, i32 %36, i32 %37, i32 %38) #8, !dbg !4578
  store i32 %call45, i32* %rc, align 4, !dbg !4579
  %39 = load i32, i32* %rc, align 4, !dbg !4580
  %cmp46 = icmp slt i32 %39, 0, !dbg !4582
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !4583

if.then48:                                        ; preds = %if.end43
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4584
  %dev49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 41, !dbg !4584
  %41 = load i8, i8* %pin, align 1, !dbg !4584
  %conv50 = zext i8 %41 to i32, !dbg !4584
  %call51 = call signext i8 @pin_name(i32 %conv50) #8, !dbg !4584
  %conv52 = sext i8 %call51 to i32, !dbg !4584
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %conv52) #9, !dbg !4584
  %42 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4586
  %43 = bitcast %struct.acpi_prt_entry* %42 to i8*, !dbg !4586
  call void @kfree(i8* %43) #8, !dbg !4587
  %44 = load i32, i32* %rc, align 4, !dbg !4588
  store i32 %44, i32* %retval, align 4, !dbg !4589
  br label %return, !dbg !4589

if.end53:                                         ; preds = %if.end43
  %45 = load i32, i32* %rc, align 4, !dbg !4590
  %46 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4591
  %irq54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 43, !dbg !4592
  store i32 %45, i32* %irq54, align 4, !dbg !4593
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4594
  %irq_managed55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 46, !dbg !4595
  %48 = bitcast [5 x i8]* %irq_managed55 to i40*, !dbg !4595
  %bf.load56 = load i40, i40* %48, align 1, !dbg !4596
  %bf.clear57 = and i40 %bf.load56, -2147483649, !dbg !4596
  %bf.set = or i40 %bf.clear57, 2147483648, !dbg !4596
  store i40 %bf.set, i40* %48, align 1, !dbg !4596
  %49 = load i8*, i8** %link, align 8, !dbg !4597
  %tobool58 = icmp ne i8* %49, null, !dbg !4597
  br i1 %tobool58, label %if.then59, label %if.else61, !dbg !4599

if.then59:                                        ; preds = %if.end53
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %link_desc, i64 0, i64 0, !dbg !4600
  %50 = load i8*, i8** %link, align 8, !dbg !4601
  %call60 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %50) #8, !dbg !4602
  br label %if.end62, !dbg !4602

if.else61:                                        ; preds = %if.end53
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %link_desc, i64 0, i64 0, !dbg !4603
  store i8 0, i8* %arrayidx, align 16, !dbg !4604
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then59
  %51 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4605
  %52 = bitcast %struct.acpi_prt_entry* %51 to i8*, !dbg !4605
  call void @kfree(i8* %52) #8, !dbg !4606
  store i32 0, i32* %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

return:                                           ; preds = %if.end62, %if.then48, %if.end42, %if.then33, %if.then15, %if.then5, %if.then
  %53 = load i32, i32* %retval, align 4, !dbg !4608
  ret i32 %53, !dbg !4608
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %dev, i32 %pin) #0 !dbg !4609 {
entry:
  %retval = alloca %struct.acpi_prt_entry*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pin.addr = alloca i32, align 4
  %entry1 = alloca %struct.acpi_prt_entry*, align 8
  %bridge = alloca %struct.pci_dev*, align 8
  %bridge_pin = alloca i8, align 1
  %orig_pin = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4612, metadata !DIExpression()), !dbg !4613
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry1, metadata !4616, metadata !DIExpression()), !dbg !4617
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4617
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %bridge, metadata !4618, metadata !DIExpression()), !dbg !4619
  call void @llvm.dbg.declare(metadata i8* %bridge_pin, metadata !4620, metadata !DIExpression()), !dbg !4621
  call void @llvm.dbg.declare(metadata i8* %orig_pin, metadata !4622, metadata !DIExpression()), !dbg !4623
  %0 = load i32, i32* %pin.addr, align 4, !dbg !4624
  %conv = trunc i32 %0 to i8, !dbg !4624
  store i8 %conv, i8* %orig_pin, align 1, !dbg !4623
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4625, metadata !DIExpression()), !dbg !4626
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4627
  %2 = load i32, i32* %pin.addr, align 4, !dbg !4628
  %call = call i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %1, i32 %2, %struct.acpi_prt_entry** %entry1) #8, !dbg !4629
  store i32 %call, i32* %ret, align 4, !dbg !4630
  %3 = load i32, i32* %ret, align 4, !dbg !4631
  %tobool = icmp ne i32 %3, 0, !dbg !4631
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4633

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4634
  %tobool2 = icmp ne %struct.acpi_prt_entry* %4, null, !dbg !4634
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4635

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4636
  %6 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4638
  %call3 = call i32 @acpi_reroute_boot_interrupt(%struct.pci_dev* %5, %struct.acpi_prt_entry* %6) #8, !dbg !4639
  %7 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4640
  store %struct.acpi_prt_entry* %7, %struct.acpi_prt_entry** %retval, align 8, !dbg !4641
  br label %return, !dbg !4641

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4642
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !4643
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4643
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 4, !dbg !4644
  %10 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4644
  store %struct.pci_dev* %10, %struct.pci_dev** %bridge, align 8, !dbg !4645
  br label %while.cond, !dbg !4646

while.cond:                                       ; preds = %if.end21, %if.end
  %11 = load %struct.pci_dev*, %struct.pci_dev** %bridge, align 8, !dbg !4647
  %tobool4 = icmp ne %struct.pci_dev* %11, null, !dbg !4646
  br i1 %tobool4, label %while.body, label %while.end, !dbg !4646

while.body:                                       ; preds = %while.cond
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4648
  %13 = load i32, i32* %pin.addr, align 4, !dbg !4650
  %conv5 = trunc i32 %13 to i8, !dbg !4650
  %call6 = call zeroext i8 @pci_swizzle_interrupt_pin(%struct.pci_dev* %12, i8 zeroext %conv5) #8, !dbg !4651
  %conv7 = zext i8 %call6 to i32, !dbg !4651
  store i32 %conv7, i32* %pin.addr, align 4, !dbg !4652
  %14 = load %struct.pci_dev*, %struct.pci_dev** %bridge, align 8, !dbg !4653
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 11, !dbg !4655
  %15 = load i32, i32* %class, align 4, !dbg !4655
  %shr = lshr i32 %15, 8, !dbg !4656
  %cmp = icmp eq i32 %shr, 1543, !dbg !4657
  br i1 %cmp, label %if.then9, label %if.end15, !dbg !4658

if.then9:                                         ; preds = %while.body
  %16 = load %struct.pci_dev*, %struct.pci_dev** %bridge, align 8, !dbg !4659
  %pin10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 19, !dbg !4661
  %17 = load i8, i8* %pin10, align 1, !dbg !4661
  store i8 %17, i8* %bridge_pin, align 1, !dbg !4662
  %18 = load i8, i8* %bridge_pin, align 1, !dbg !4663
  %tobool11 = icmp ne i8 %18, 0, !dbg !4663
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4665

if.then12:                                        ; preds = %if.then9
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %retval, align 8, !dbg !4666
  br label %return, !dbg !4666

if.end13:                                         ; preds = %if.then9
  %19 = load i8, i8* %bridge_pin, align 1, !dbg !4668
  %conv14 = zext i8 %19 to i32, !dbg !4668
  store i32 %conv14, i32* %pin.addr, align 4, !dbg !4669
  br label %if.end15, !dbg !4670

if.end15:                                         ; preds = %if.end13, %while.body
  %20 = load %struct.pci_dev*, %struct.pci_dev** %bridge, align 8, !dbg !4671
  %21 = load i32, i32* %pin.addr, align 4, !dbg !4672
  %call16 = call i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %20, i32 %21, %struct.acpi_prt_entry** %entry1) #8, !dbg !4673
  store i32 %call16, i32* %ret, align 4, !dbg !4674
  %22 = load i32, i32* %ret, align 4, !dbg !4675
  %tobool17 = icmp ne i32 %22, 0, !dbg !4675
  br i1 %tobool17, label %if.end21, label %land.lhs.true18, !dbg !4677

land.lhs.true18:                                  ; preds = %if.end15
  %23 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4678
  %tobool19 = icmp ne %struct.acpi_prt_entry* %23, null, !dbg !4678
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4679

if.then20:                                        ; preds = %land.lhs.true18
  %24 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4680
  store %struct.acpi_prt_entry* %24, %struct.acpi_prt_entry** %retval, align 8, !dbg !4682
  br label %return, !dbg !4682

if.end21:                                         ; preds = %land.lhs.true18, %if.end15
  %25 = load %struct.pci_dev*, %struct.pci_dev** %bridge, align 8, !dbg !4683
  store %struct.pci_dev* %25, %struct.pci_dev** %dev.addr, align 8, !dbg !4684
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4685
  %bus22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1, !dbg !4686
  %27 = load %struct.pci_bus*, %struct.pci_bus** %bus22, align 8, !dbg !4686
  %self23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %27, i32 0, i32 4, !dbg !4687
  %28 = load %struct.pci_dev*, %struct.pci_dev** %self23, align 8, !dbg !4687
  store %struct.pci_dev* %28, %struct.pci_dev** %bridge, align 8, !dbg !4688
  br label %while.cond, !dbg !4646, !llvm.loop !4689

while.end:                                        ; preds = %while.cond
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4691
  %dev24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 41, !dbg !4691
  %30 = load i8, i8* %orig_pin, align 1, !dbg !4691
  %conv25 = zext i8 %30 to i32, !dbg !4691
  %call26 = call signext i8 @pin_name(i32 %conv25) #8, !dbg !4691
  %conv27 = sext i8 %call26 to i32, !dbg !4691
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %conv27) #9, !dbg !4691
  store %struct.acpi_prt_entry* null, %struct.acpi_prt_entry** %retval, align 8, !dbg !4692
  br label %return, !dbg !4692

return:                                           ; preds = %while.end, %if.then20, %if.then12, %if.then
  %31 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %retval, align 8, !dbg !4693
  ret %struct.acpi_prt_entry* %31, !dbg !4693
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_pci_link_allocate_irq(i8*, i32, i32*, i32*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @acpi_pci_irq_valid(%struct.pci_dev* %dev, i8 zeroext %pin) #0 !dbg !4694 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pin.addr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store i8 %pin, i8* %pin.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %pin.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4701
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 43, !dbg !4703
  %1 = load i32, i32* %irq, align 4, !dbg !4703
  %cmp = icmp eq i32 %1, 255, !dbg !4704
  br i1 %cmp, label %if.then, label %if.end, !dbg !4705

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4706
  %irq1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 43, !dbg !4708
  store i32 -2147483648, i32* %irq1, align 4, !dbg !4709
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4710
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 41, !dbg !4710
  %4 = load i8, i8* %pin.addr, align 1, !dbg !4710
  %conv = zext i8 %4 to i32, !dbg !4710
  %call = call signext i8 @pin_name(i32 %conv) #8, !dbg !4710
  %conv3 = sext i8 %call to i32, !dbg !4710
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %conv3) #9, !dbg !4710
  store i1 false, i1* %retval, align 1, !dbg !4711
  br label %return, !dbg !4711

if.end:                                           ; preds = %entry
  store i1 true, i1* %retval, align 1, !dbg !4712
  br label %return, !dbg !4712

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, i1* %retval, align 1, !dbg !4713
  ret i1 %5, !dbg !4713
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_isa_register_gsi(%struct.pci_dev* %dev) #0 !dbg !4714 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  ret i32 -19, !dbg !4717
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i8 @pin_name(i32 %pin) #0 !dbg !4718 {
entry:
  %pin.addr = alloca i32, align 4
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  %0 = load i32, i32* %pin.addr, align 4, !dbg !4723
  %add = add i32 65, %0, !dbg !4724
  %sub = sub i32 %add, 1, !dbg !4725
  %conv = trunc i32 %sub to i8, !dbg !4726
  ret i8 %conv, !dbg !4727
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_register_gsi(%struct.device*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_pci_irq_disable(%struct.pci_dev* %dev) #0 !dbg !4728 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %entry1 = alloca %struct.acpi_prt_entry*, align 8
  %gsi = alloca i32, align 4
  %pin = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry1, metadata !4731, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i32* %gsi, metadata !4733, metadata !DIExpression()), !dbg !4734
  call void @llvm.dbg.declare(metadata i8* %pin, metadata !4735, metadata !DIExpression()), !dbg !4736
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4737
  %pin2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 19, !dbg !4738
  %1 = load i8, i8* %pin2, align 1, !dbg !4738
  store i8 %1, i8* %pin, align 1, !dbg !4739
  %2 = load i8, i8* %pin, align 1, !dbg !4740
  %tobool = icmp ne i8 %2, 0, !dbg !4740
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4742

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4743
  %irq_managed = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 46, !dbg !4744
  %4 = bitcast [5 x i8]* %irq_managed to i40*, !dbg !4744
  %bf.load = load i40, i40* %4, align 1, !dbg !4744
  %bf.lshr = lshr i40 %bf.load, 31, !dbg !4744
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4744
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4744
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !4743
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !4745

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4746
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 43, !dbg !4747
  %6 = load i32, i32* %irq, align 4, !dbg !4747
  %cmp = icmp ule i32 %6, 0, !dbg !4748
  br i1 %cmp, label %if.then, label %if.end, !dbg !4749

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  br label %if.end31, !dbg !4750

if.end:                                           ; preds = %lor.lhs.false4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4751
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 41, !dbg !4753
  %power = getelementptr inbounds %struct.device, %struct.device* %dev5, i32 0, i32 11, !dbg !4754
  %is_prepared = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 1, !dbg !4755
  %bf.load6 = load i16, i16* %is_prepared, align 4, !dbg !4755
  %bf.lshr7 = lshr i16 %bf.load6, 3, !dbg !4755
  %bf.clear8 = and i16 %bf.lshr7, 1, !dbg !4755
  %bf.cast9 = trunc i16 %bf.clear8 to i1, !dbg !4755
  br i1 %bf.cast9, label %if.then10, label %if.end11, !dbg !4756

if.then10:                                        ; preds = %if.end
  br label %if.end31, !dbg !4757

if.end11:                                         ; preds = %if.end
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4758
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 41, !dbg !4760
  %power13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 11, !dbg !4761
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power13, i32 0, i32 18, !dbg !4762
  %9 = load i32, i32* %runtime_status, align 4, !dbg !4762
  %cmp14 = icmp eq i32 %9, 3, !dbg !4763
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4764

if.then15:                                        ; preds = %if.end11
  br label %if.end31, !dbg !4765

if.end16:                                         ; preds = %if.end11
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4766
  %11 = load i8, i8* %pin, align 1, !dbg !4767
  %conv = zext i8 %11 to i32, !dbg !4767
  %call = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %10, i32 %conv) #8, !dbg !4768
  store %struct.acpi_prt_entry* %call, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4769
  %12 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4770
  %tobool17 = icmp ne %struct.acpi_prt_entry* %12, null, !dbg !4770
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4772

if.then18:                                        ; preds = %if.end16
  br label %if.end31, !dbg !4773

if.end19:                                         ; preds = %if.end16
  %13 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4774
  %link = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %13, i32 0, i32 2, !dbg !4776
  %14 = load i8*, i8** %link, align 8, !dbg !4776
  %tobool20 = icmp ne i8* %14, null, !dbg !4774
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !4777

if.then21:                                        ; preds = %if.end19
  %15 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4778
  %link22 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %15, i32 0, i32 2, !dbg !4779
  %16 = load i8*, i8** %link22, align 8, !dbg !4779
  %call23 = call i32 @acpi_pci_link_free_irq(i8* %16) #8, !dbg !4780
  store i32 %call23, i32* %gsi, align 4, !dbg !4781
  br label %if.end24, !dbg !4782

if.else:                                          ; preds = %if.end19
  %17 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4783
  %index = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %17, i32 0, i32 3, !dbg !4784
  %18 = load i32, i32* %index, align 8, !dbg !4784
  store i32 %18, i32* %gsi, align 4, !dbg !4785
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %19 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry1, align 8, !dbg !4786
  %20 = bitcast %struct.acpi_prt_entry* %19 to i8*, !dbg !4786
  call void @kfree(i8* %20) #8, !dbg !4787
  %21 = load i32, i32* %gsi, align 4, !dbg !4788
  %cmp25 = icmp sge i32 %21, 0, !dbg !4790
  br i1 %cmp25, label %if.then27, label %if.end31, !dbg !4791

if.then27:                                        ; preds = %if.end24
  %22 = load i32, i32* %gsi, align 4, !dbg !4792
  call void @acpi_unregister_gsi(i32 %22) #8, !dbg !4794
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4795
  %irq_managed28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 46, !dbg !4796
  %24 = bitcast [5 x i8]* %irq_managed28 to i40*, !dbg !4796
  %bf.load29 = load i40, i40* %24, align 1, !dbg !4797
  %bf.clear30 = and i40 %bf.load29, -2147483649, !dbg !4797
  store i40 %bf.clear30, i40* %24, align 1, !dbg !4797
  br label %if.end31, !dbg !4798

if.end31:                                         ; preds = %if.then, %if.then10, %if.then15, %if.then18, %if.then27, %if.end24
  ret void, !dbg !4799
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_pci_link_free_irq(i8*) #2

; Function Attrs: noredzone
declare dso_local void @acpi_unregister_gsi(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %dev, i32 %pin, %struct.acpi_prt_entry** %entry_ptr) #0 !dbg !4800 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pin.addr = alloca i32, align 4
  %entry_ptr.addr = alloca %struct.acpi_prt_entry**, align 8
  %status = alloca i32, align 4
  %buffer = alloca %struct.acpi_buffer, align 8
  %entry1 = alloca %struct.acpi_pci_routing_table*, align 8
  %handle = alloca i8*, align 8
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp4 = alloca %struct.acpi_device*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !4806, metadata !DIExpression()), !dbg !4807
  store %struct.acpi_prt_entry** %entry_ptr, %struct.acpi_prt_entry*** %entry_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry*** %entry_ptr.addr, metadata !4808, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4810, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !4813, metadata !DIExpression()), !dbg !4819
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !4819
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_pci_irq_find_prt_entry.buffer to i8*), i64 16, i1 false), !dbg !4819
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_routing_table** %entry1, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.declare(metadata i8** %handle, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i8* null, i8** %handle, align 8, !dbg !4823
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4824
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 1, !dbg !4826
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4826
  %bridge = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 20, !dbg !4827
  %3 = load %struct.device*, %struct.device** %bridge, align 8, !dbg !4827
  %tobool = icmp ne %struct.device* %3, null, !dbg !4824
  br i1 %tobool, label %if.then, label %if.end, !dbg !4828

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !4829, metadata !DIExpression()), !dbg !4831
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4831
  %bus2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 1, !dbg !4831
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus2, align 8, !dbg !4831
  %bridge3 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 20, !dbg !4831
  %6 = load %struct.device*, %struct.device** %bridge3, align 8, !dbg !4831
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 24, !dbg !4831
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !4831
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4831
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4831
  %call = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %8) #8, !dbg !4831
  br i1 %call, label %cond.true, label %cond.false, !dbg !4831

cond.true:                                        ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4832, metadata !DIExpression()), !dbg !4834
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !4834
  %10 = bitcast %struct.fwnode_handle* %9 to i8*, !dbg !4834
  store i8* %10, i8** %__mptr, align 8, !dbg !4834
  br label %do.body, !dbg !4834

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !4835

do.end:                                           ; preds = %do.body
  %11 = load i8*, i8** %__mptr, align 8, !dbg !4834
  %add.ptr = getelementptr i8, i8* %11, i64 -16, !dbg !4834
  %12 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !4834
  store %struct.acpi_device* %12, %struct.acpi_device** %tmp4, align 8, !dbg !4835
  %13 = load %struct.acpi_device*, %struct.acpi_device** %tmp4, align 8, !dbg !4834
  br label %cond.end, !dbg !4831

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !4831

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %13, %do.end ], [ null, %cond.false ], !dbg !4831
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !4831
  %14 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !4831
  %call5 = call i8* @acpi_device_handle(%struct.acpi_device* %14) #8, !dbg !4837
  store i8* %call5, i8** %handle, align 8, !dbg !4838
  br label %if.end, !dbg !4839

if.end:                                           ; preds = %cond.end, %entry
  %15 = load i8*, i8** %handle, align 8, !dbg !4840
  %tobool6 = icmp ne i8* %15, null, !dbg !4840
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4842

if.then7:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !4843
  br label %return, !dbg !4843

if.end8:                                          ; preds = %if.end
  %16 = load i8*, i8** %handle, align 8, !dbg !4844
  %call9 = call i32 @acpi_get_irq_routing_table(i8* %16, %struct.acpi_buffer* %buffer) #8, !dbg !4845
  store i32 %call9, i32* %status, align 4, !dbg !4846
  %17 = load i32, i32* %status, align 4, !dbg !4847
  %tobool10 = icmp ne i32 %17, 0, !dbg !4847
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4849

if.then11:                                        ; preds = %if.end8
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4850
  %18 = load i8*, i8** %pointer, align 8, !dbg !4850
  call void @kfree(i8* %18) #8, !dbg !4852
  store i32 -19, i32* %retval, align 4, !dbg !4853
  br label %return, !dbg !4853

if.end12:                                         ; preds = %if.end8
  %pointer13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4854
  %19 = load i8*, i8** %pointer13, align 8, !dbg !4854
  %20 = bitcast i8* %19 to %struct.acpi_pci_routing_table*, !dbg !4855
  store %struct.acpi_pci_routing_table* %20, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4856
  br label %while.cond, !dbg !4857

while.cond:                                       ; preds = %if.end18, %if.end12
  %21 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4858
  %tobool14 = icmp ne %struct.acpi_pci_routing_table* %21, null, !dbg !4858
  br i1 %tobool14, label %land.rhs, label %land.end, !dbg !4859

land.rhs:                                         ; preds = %while.cond
  %22 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4860
  %length = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %22, i32 0, i32 0, !dbg !4861
  %23 = load i32, i32* %length, align 8, !dbg !4861
  %cmp = icmp ugt i32 %23, 0, !dbg !4862
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !4863
  br i1 %24, label %while.body, label %while.end, !dbg !4857

while.body:                                       ; preds = %land.end
  %25 = load i8*, i8** %handle, align 8, !dbg !4864
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4867
  %27 = load i32, i32* %pin.addr, align 4, !dbg !4868
  %28 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4869
  %29 = load %struct.acpi_prt_entry**, %struct.acpi_prt_entry*** %entry_ptr.addr, align 8, !dbg !4870
  %call15 = call i32 @acpi_pci_irq_check_entry(i8* %25, %struct.pci_dev* %26, i32 %27, %struct.acpi_pci_routing_table* %28, %struct.acpi_prt_entry** %29) #8, !dbg !4871
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4871
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4872

if.then17:                                        ; preds = %while.body
  br label %while.end, !dbg !4873

if.end18:                                         ; preds = %while.body
  %30 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4874
  %31 = ptrtoint %struct.acpi_pci_routing_table* %30 to i64, !dbg !4875
  %32 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4876
  %length19 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %32, i32 0, i32 0, !dbg !4877
  %33 = load i32, i32* %length19, align 8, !dbg !4877
  %conv = zext i32 %33 to i64, !dbg !4876
  %add = add i64 %31, %conv, !dbg !4878
  %34 = inttoptr i64 %add to %struct.acpi_pci_routing_table*, !dbg !4879
  store %struct.acpi_pci_routing_table* %34, %struct.acpi_pci_routing_table** %entry1, align 8, !dbg !4880
  br label %while.cond, !dbg !4857, !llvm.loop !4881

while.end:                                        ; preds = %if.then17, %land.end
  %pointer20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4883
  %35 = load i8*, i8** %pointer20, align 8, !dbg !4883
  call void @kfree(i8* %35) #8, !dbg !4884
  store i32 0, i32* %retval, align 4, !dbg !4885
  br label %return, !dbg !4885

return:                                           ; preds = %while.end, %if.then11, %if.then7
  %36 = load i32, i32* %retval, align 4, !dbg !4886
  ret i32 %36, !dbg !4886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_reroute_boot_interrupt(%struct.pci_dev* %dev, %struct.acpi_prt_entry* %entry1) #0 !dbg !4887 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %entry.addr = alloca %struct.acpi_prt_entry*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store %struct.acpi_prt_entry* %entry1, %struct.acpi_prt_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  %0 = load i32, i32* @noioapicquirk, align 4, !dbg !4894
  %tobool = icmp ne i32 %0, 0, !dbg !4894
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4896

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @noioapicreroute, align 4, !dbg !4897
  %tobool2 = icmp ne i32 %1, 0, !dbg !4897
  br i1 %tobool2, label %if.then, label %if.else, !dbg !4898

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !4899
  br label %return, !dbg !4899

if.else:                                          ; preds = %lor.lhs.false
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4901
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !4903
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4903
  %call = call i32 @bridge_has_boot_interrupt_variant(%struct.pci_bus* %3) #8, !dbg !4904
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ], !dbg !4905

sw.bb:                                            ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !4906
  br label %return, !dbg !4906

sw.bb3:                                           ; preds = %if.else
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4908
  %dev4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4908
  %5 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !4908
  %index = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %5, i32 0, i32 3, !dbg !4908
  %6 = load i32, i32* %index, align 8, !dbg !4908
  %7 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !4908
  %index5 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %7, i32 0, i32 3, !dbg !4908
  %8 = load i32, i32* %index5, align 8, !dbg !4908
  %rem = urem i32 %8, 4, !dbg !4908
  %add = add i32 %rem, 16, !dbg !4908
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %6, i32 %add) #9, !dbg !4908
  %9 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !4909
  %index6 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %9, i32 0, i32 3, !dbg !4910
  %10 = load i32, i32* %index6, align 8, !dbg !4910
  %rem7 = urem i32 %10, 4, !dbg !4911
  %add8 = add i32 %rem7, 16, !dbg !4912
  %11 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !4913
  %index9 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %11, i32 0, i32 3, !dbg !4914
  store i32 %add8, i32* %index9, align 8, !dbg !4915
  store i32 1, i32* %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

sw.default:                                       ; preds = %if.else
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4917
  %dev10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 41, !dbg !4917
  %13 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !4917
  %index11 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %13, i32 0, i32 3, !dbg !4917
  %14 = load i32, i32* %index11, align 8, !dbg !4917
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev10, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i32 %14) #9, !dbg !4917
  store i32 -1, i32* %retval, align 4, !dbg !4918
  br label %return, !dbg !4918

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4919
  ret i32 %15, !dbg !4919
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pci_swizzle_interrupt_pin(%struct.pci_dev*, i8 zeroext) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_device_handle(%struct.acpi_device* %adev) #0 !dbg !4920 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4925
  %tobool = icmp ne %struct.acpi_device* %0, null, !dbg !4925
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4925

cond.true:                                        ; preds = %entry
  %1 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !4926
  %handle = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %1, i32 0, i32 1, !dbg !4927
  %2 = load i8*, i8** %handle, align 8, !dbg !4927
  br label %cond.end, !dbg !4925

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4925

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ null, %cond.false ], !dbg !4925
  ret i8* %cond, !dbg !4928
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_irq_routing_table(i8*, %struct.acpi_buffer*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_pci_irq_check_entry(i8* %handle, %struct.pci_dev* %dev, i32 %pin, %struct.acpi_pci_routing_table* %prt, %struct.acpi_prt_entry** %entry_ptr) #0 !dbg !4929 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %pin.addr = alloca i32, align 4
  %prt.addr = alloca %struct.acpi_pci_routing_table*, align 8
  %entry_ptr.addr = alloca %struct.acpi_prt_entry**, align 8
  %segment = alloca i32, align 4
  %bus1 = alloca i32, align 4
  %device = alloca i32, align 4
  %entry6 = alloca %struct.acpi_prt_entry*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  store %struct.acpi_pci_routing_table* %prt, %struct.acpi_pci_routing_table** %prt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_routing_table** %prt.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  store %struct.acpi_prt_entry** %entry_ptr, %struct.acpi_prt_entry*** %entry_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry*** %entry_ptr.addr, metadata !4940, metadata !DIExpression()), !dbg !4941
  call void @llvm.dbg.declare(metadata i32* %segment, metadata !4942, metadata !DIExpression()), !dbg !4943
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4944
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4945
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4945
  %call = call i32 @pci_domain_nr(%struct.pci_bus* %1) #8, !dbg !4946
  store i32 %call, i32* %segment, align 4, !dbg !4943
  call void @llvm.dbg.declare(metadata i32* %bus1, metadata !4947, metadata !DIExpression()), !dbg !4948
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4949
  %bus2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 1, !dbg !4950
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus2, align 8, !dbg !4950
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 13, !dbg !4951
  %4 = load i8, i8* %number, align 8, !dbg !4951
  %conv = zext i8 %4 to i32, !dbg !4949
  store i32 %conv, i32* %bus1, align 4, !dbg !4948
  call void @llvm.dbg.declare(metadata i32* %device, metadata !4952, metadata !DIExpression()), !dbg !4953
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4954
  %bus3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !4955
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus3, align 8, !dbg !4955
  %call4 = call zeroext i1 @pci_ari_enabled(%struct.pci_bus* %6) #8, !dbg !4956
  br i1 %call4, label %cond.true, label %cond.false, !dbg !4956

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4956

cond.false:                                       ; preds = %entry
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4957
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 6, !dbg !4957
  %8 = load i32, i32* %devfn, align 8, !dbg !4957
  %shr = lshr i32 %8, 3, !dbg !4957
  %and = and i32 %shr, 31, !dbg !4957
  br label %cond.end, !dbg !4956

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %and, %cond.false ], !dbg !4956
  store i32 %cond, i32* %device, align 4, !dbg !4953
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry6, metadata !4958, metadata !DIExpression()), !dbg !4959
  %9 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !4960
  %address = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %9, i32 0, i32 2, !dbg !4962
  %10 = load i64, i64* %address, align 8, !dbg !4962
  %shr7 = lshr i64 %10, 16, !dbg !4963
  %and8 = and i64 %shr7, 65535, !dbg !4964
  %11 = load i32, i32* %device, align 4, !dbg !4965
  %conv9 = sext i32 %11 to i64, !dbg !4965
  %cmp = icmp ne i64 %and8, %conv9, !dbg !4966
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4967

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !4968
  %pin11 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %12, i32 0, i32 1, !dbg !4969
  %13 = load i32, i32* %pin11, align 4, !dbg !4969
  %add = add i32 %13, 1, !dbg !4970
  %14 = load i32, i32* %pin.addr, align 4, !dbg !4971
  %cmp12 = icmp ne i32 %add, %14, !dbg !4972
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4973

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !4974
  br label %return, !dbg !4974

if.end:                                           ; preds = %lor.lhs.false
  %call14 = call i8* @kzalloc(i64 32, i32 3264) #8, !dbg !4975
  %15 = bitcast i8* %call14 to %struct.acpi_prt_entry*, !dbg !4975
  store %struct.acpi_prt_entry* %15, %struct.acpi_prt_entry** %entry6, align 8, !dbg !4976
  %16 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !4977
  %tobool = icmp ne %struct.acpi_prt_entry* %16, null, !dbg !4977
  br i1 %tobool, label %if.end16, label %if.then15, !dbg !4979

if.then15:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4980
  br label %return, !dbg !4980

if.end16:                                         ; preds = %if.end
  %17 = load i32, i32* %segment, align 4, !dbg !4981
  %conv17 = trunc i32 %17 to i16, !dbg !4981
  %18 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !4982
  %id = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %18, i32 0, i32 0, !dbg !4983
  %segment18 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id, i32 0, i32 0, !dbg !4984
  store i16 %conv17, i16* %segment18, align 8, !dbg !4985
  %19 = load i32, i32* %bus1, align 4, !dbg !4986
  %conv19 = trunc i32 %19 to i16, !dbg !4986
  %20 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !4987
  %id20 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %20, i32 0, i32 0, !dbg !4988
  %bus21 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id20, i32 0, i32 1, !dbg !4989
  store i16 %conv19, i16* %bus21, align 2, !dbg !4990
  %21 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !4991
  %address22 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %21, i32 0, i32 2, !dbg !4992
  %22 = load i64, i64* %address22, align 8, !dbg !4992
  %shr23 = lshr i64 %22, 16, !dbg !4993
  %and24 = and i64 %shr23, 65535, !dbg !4994
  %conv25 = trunc i64 %and24 to i16, !dbg !4995
  %23 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !4996
  %id26 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %23, i32 0, i32 0, !dbg !4997
  %device27 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id26, i32 0, i32 2, !dbg !4998
  store i16 %conv25, i16* %device27, align 4, !dbg !4999
  %24 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5000
  %pin28 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %24, i32 0, i32 1, !dbg !5001
  %25 = load i32, i32* %pin28, align 4, !dbg !5001
  %add29 = add i32 %25, 1, !dbg !5002
  %conv30 = trunc i32 %add29 to i8, !dbg !5000
  %26 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !5003
  %pin31 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %26, i32 0, i32 1, !dbg !5004
  store i8 %conv30, i8* %pin31, align 8, !dbg !5005
  %27 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !5006
  %28 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5007
  call void @do_prt_fixups(%struct.acpi_prt_entry* %27, %struct.acpi_pci_routing_table* %28) #8, !dbg !5008
  %29 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5009
  %source_index = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %29, i32 0, i32 3, !dbg !5010
  %30 = load i32, i32* %source_index, align 8, !dbg !5010
  %31 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !5011
  %index = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %31, i32 0, i32 3, !dbg !5012
  store i32 %30, i32* %index, align 8, !dbg !5013
  %32 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5014
  %source = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %32, i32 0, i32 4, !dbg !5016
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %source, i64 0, i64 0, !dbg !5014
  %33 = load i8, i8* %arrayidx, align 4, !dbg !5014
  %tobool32 = icmp ne i8 %33, 0, !dbg !5014
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5017

if.then33:                                        ; preds = %if.end16
  %34 = load i8*, i8** %handle.addr, align 8, !dbg !5018
  %35 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5019
  %source34 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %35, i32 0, i32 4, !dbg !5020
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %source34, i64 0, i64 0, !dbg !5019
  %36 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !5021
  %link = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %36, i32 0, i32 2, !dbg !5022
  %call35 = call i32 @acpi_get_handle(i8* %34, i8* %arraydecay, i8** %link) #8, !dbg !5023
  br label %if.end36, !dbg !5023

if.end36:                                         ; preds = %if.then33, %if.end16
  %37 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry6, align 8, !dbg !5024
  %38 = load %struct.acpi_prt_entry**, %struct.acpi_prt_entry*** %entry_ptr.addr, align 8, !dbg !5025
  store %struct.acpi_prt_entry* %37, %struct.acpi_prt_entry** %38, align 8, !dbg !5026
  store i32 0, i32* %retval, align 4, !dbg !5027
  br label %return, !dbg !5027

return:                                           ; preds = %if.end36, %if.then15, %if.then
  %39 = load i32, i32* %retval, align 4, !dbg !5028
  ret i32 %39, !dbg !5028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_domain_nr(%struct.pci_bus* %bus) #0 !dbg !5029 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5033
  %call = call %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %0) #8, !dbg !5034
  %domain = getelementptr inbounds %struct.pci_sysdata, %struct.pci_sysdata* %call, i32 0, i32 0, !dbg !5035
  %1 = load i32, i32* %domain, align 8, !dbg !5035
  ret i32 %1, !dbg !5036
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_ari_enabled(%struct.pci_bus* %bus) #0 !dbg !5037 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5042
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 4, !dbg !5043
  %1 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !5043
  %tobool = icmp ne %struct.pci_dev* %1, null, !dbg !5042
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5044

land.rhs:                                         ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5045
  %self1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 4, !dbg !5046
  %3 = load %struct.pci_dev*, %struct.pci_dev** %self1, align 8, !dbg !5046
  %ari_enabled = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 46, !dbg !5047
  %4 = bitcast [5 x i8]* %ari_enabled to i40*, !dbg !5047
  %bf.load = load i40, i40* %4, align 1, !dbg !5047
  %bf.lshr = lshr i40 %bf.load, 14, !dbg !5047
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5047
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5047
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !5044
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ], !dbg !5048
  ret i1 %5, !dbg !5049
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5050 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5053, metadata !DIExpression()), !dbg !5057
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5063, metadata !DIExpression()), !dbg !5064
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5065, metadata !DIExpression()), !dbg !5066
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5067, metadata !DIExpression()), !dbg !5068
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5069, metadata !DIExpression()), !dbg !5073
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5075, metadata !DIExpression()), !dbg !5079
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5081, metadata !DIExpression()), !dbg !5085
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5090, metadata !DIExpression()), !dbg !5091
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5092, metadata !DIExpression()), !dbg !5093
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5094, metadata !DIExpression()), !dbg !5095
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5096, metadata !DIExpression()), !dbg !5097
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5098, metadata !DIExpression()), !dbg !5099
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5100, metadata !DIExpression()), !dbg !5101
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5102, metadata !DIExpression()), !dbg !5103
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5104, metadata !DIExpression()), !dbg !5105
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %0 = load i64, i64* %size.addr, align 8, !dbg !5110
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5111
  %or = or i32 %1, 256, !dbg !5112
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5113
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !5114
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5115

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5116
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5117
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5118

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5119
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5120
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5121
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !5122
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5099
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5123
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5124
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5125
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5126
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5127
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5128
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !5129
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5129
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5129
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5129
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !5129
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5130
  br label %kmalloc.exit, !dbg !5130

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5131
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5132
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5134

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5135
  br label %kmalloc_index.exit.i, !dbg !5135

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5136
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5138
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5139

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5140
  br label %kmalloc_index.exit.i, !dbg !5140

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5141
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5143
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5144

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5145
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5146
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5147

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5148
  br label %kmalloc_index.exit.i, !dbg !5148

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5149
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5151
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5152

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5153
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5154
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5155

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5156
  br label %kmalloc_index.exit.i, !dbg !5156

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5157
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5159
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5160

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5161
  br label %kmalloc_index.exit.i, !dbg !5161

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5162
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5164
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5165

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5166
  br label %kmalloc_index.exit.i, !dbg !5166

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5167
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5169
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5170

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5171
  br label %kmalloc_index.exit.i, !dbg !5171

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5174
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5175

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5176
  br label %kmalloc_index.exit.i, !dbg !5176

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5177
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5179
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5180

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5181
  br label %kmalloc_index.exit.i, !dbg !5181

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5182
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5184
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5185

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5186
  br label %kmalloc_index.exit.i, !dbg !5186

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5187
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5189
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5190

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5191
  br label %kmalloc_index.exit.i, !dbg !5191

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5192
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5194
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5195

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5196
  br label %kmalloc_index.exit.i, !dbg !5196

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5199
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5200

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5201
  br label %kmalloc_index.exit.i, !dbg !5201

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5202
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5204
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5205

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5206
  br label %kmalloc_index.exit.i, !dbg !5206

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5207
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5209
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5210

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5211
  br label %kmalloc_index.exit.i, !dbg !5211

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5212
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5214
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5215

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5216
  br label %kmalloc_index.exit.i, !dbg !5216

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5217
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5219
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5220

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5221
  br label %kmalloc_index.exit.i, !dbg !5221

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5222
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5224
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5225

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5226
  br label %kmalloc_index.exit.i, !dbg !5226

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5227
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5229
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5230

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5231
  br label %kmalloc_index.exit.i, !dbg !5231

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5232
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5234
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5235

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5236
  br label %kmalloc_index.exit.i, !dbg !5236

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5237
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5239
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5240

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5241
  br label %kmalloc_index.exit.i, !dbg !5241

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5242
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5244
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5245

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5246
  br label %kmalloc_index.exit.i, !dbg !5246

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5247
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5249
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5250

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5251
  br label %kmalloc_index.exit.i, !dbg !5251

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5252
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5254
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5255

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5256
  br label %kmalloc_index.exit.i, !dbg !5256

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5257
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5259
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5260

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5261
  br label %kmalloc_index.exit.i, !dbg !5261

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5262
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5264
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5265

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5266
  br label %kmalloc_index.exit.i, !dbg !5266

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5267
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5269
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5270

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5271
  br label %kmalloc_index.exit.i, !dbg !5271

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5272
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5274
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5275

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5276
  br label %kmalloc_index.exit.i, !dbg !5276

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5277, !srcloc !5280
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !5281, !srcloc !5284
  unreachable, !dbg !5285

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5286
  store i32 %45, i32* %index.i, align 4, !dbg !5287
  %46 = load i32, i32* %index.i, align 4, !dbg !5288
  %tobool.i = icmp ne i32 %46, 0, !dbg !5288
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5290

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5291
  br label %kmalloc.exit, !dbg !5291

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5292
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5293
  %and.i.i = and i32 %48, 17, !dbg !5293
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5293
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5293
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5293
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5293
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5295

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5296
  br label %kmalloc_type.exit.i, !dbg !5296

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5297
  %and2.i.i = and i32 %49, 1, !dbg !5298
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5297
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5297
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5297
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5299
  br label %kmalloc_type.exit.i, !dbg !5299

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5300
  %idxprom.i = zext i32 %51 to i64, !dbg !5301
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5301
  %52 = load i32, i32* %index.i, align 4, !dbg !5302
  %idxprom6.i = zext i32 %52 to i64, !dbg !5301
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5301
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5301
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5303
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5304
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5305
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5306
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5307
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5307
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5307
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5307
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5307
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5068
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5308
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5309
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5310
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5311
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5312
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5313
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5314
  store i8* %62, i8** %retval.i, align 8, !dbg !5315
  br label %kmalloc.exit, !dbg !5315

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5316
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5317
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5318
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5318
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5318
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5318
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5318
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5319
  br label %kmalloc.exit, !dbg !5319

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5320
  ret i8* %65, !dbg !5321
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_prt_fixups(%struct.acpi_prt_entry* %entry1, %struct.acpi_pci_routing_table* %prt) #0 !dbg !5322 {
entry:
  %entry.addr = alloca %struct.acpi_prt_entry*, align 8
  %prt.addr = alloca %struct.acpi_pci_routing_table*, align 8
  %i = alloca i32, align 4
  %quirk = alloca %struct.prt_quirk*, align 8
  store %struct.acpi_prt_entry* %entry1, %struct.acpi_prt_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_prt_entry** %entry.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store %struct.acpi_pci_routing_table* %prt, %struct.acpi_pci_routing_table** %prt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_routing_table** %prt.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5329, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.declare(metadata %struct.prt_quirk** %quirk, metadata !5331, metadata !DIExpression()), !dbg !5333
  store i32 0, i32* %i, align 4, !dbg !5334
  br label %for.cond, !dbg !5336

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5337
  %conv = sext i32 %0 to i64, !dbg !5337
  %cmp = icmp ult i64 %conv, 3, !dbg !5339
  br i1 %cmp, label %for.body, label %for.end, !dbg !5340

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5341
  %idxprom = sext i32 %1 to i64, !dbg !5343
  %arrayidx = getelementptr [3 x %struct.prt_quirk], [3 x %struct.prt_quirk]* @prt_quirks, i64 0, i64 %idxprom, !dbg !5343
  store %struct.prt_quirk* %arrayidx, %struct.prt_quirk** %quirk, align 8, !dbg !5344
  %2 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5345
  %system = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %2, i32 0, i32 0, !dbg !5347
  %3 = load %struct.dmi_system_id*, %struct.dmi_system_id** %system, align 8, !dbg !5347
  %call = call i32 @dmi_check_system(%struct.dmi_system_id* %3) #8, !dbg !5348
  %tobool = icmp ne i32 %call, 0, !dbg !5348
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5349

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5350
  %id = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %4, i32 0, i32 0, !dbg !5351
  %segment = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id, i32 0, i32 0, !dbg !5352
  %5 = load i16, i16* %segment, align 8, !dbg !5352
  %conv3 = zext i16 %5 to i32, !dbg !5350
  %6 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5353
  %segment4 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %6, i32 0, i32 1, !dbg !5354
  %7 = load i32, i32* %segment4, align 8, !dbg !5354
  %cmp5 = icmp eq i32 %conv3, %7, !dbg !5355
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !5356

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5357
  %id8 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %8, i32 0, i32 0, !dbg !5358
  %bus = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id8, i32 0, i32 1, !dbg !5359
  %9 = load i16, i16* %bus, align 2, !dbg !5359
  %conv9 = zext i16 %9 to i32, !dbg !5357
  %10 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5360
  %bus10 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %10, i32 0, i32 2, !dbg !5361
  %11 = load i32, i32* %bus10, align 4, !dbg !5361
  %cmp11 = icmp eq i32 %conv9, %11, !dbg !5362
  br i1 %cmp11, label %land.lhs.true13, label %if.end, !dbg !5363

land.lhs.true13:                                  ; preds = %land.lhs.true7
  %12 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5364
  %id14 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %12, i32 0, i32 0, !dbg !5365
  %device = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id14, i32 0, i32 2, !dbg !5366
  %13 = load i16, i16* %device, align 4, !dbg !5366
  %conv15 = zext i16 %13 to i32, !dbg !5364
  %14 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5367
  %device16 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %14, i32 0, i32 3, !dbg !5368
  %15 = load i32, i32* %device16, align 8, !dbg !5368
  %cmp17 = icmp eq i32 %conv15, %15, !dbg !5369
  br i1 %cmp17, label %land.lhs.true19, label %if.end, !dbg !5370

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %16 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5371
  %pin = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %16, i32 0, i32 1, !dbg !5372
  %17 = load i8, i8* %pin, align 8, !dbg !5372
  %conv20 = zext i8 %17 to i32, !dbg !5371
  %18 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5373
  %pin21 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %18, i32 0, i32 4, !dbg !5374
  %19 = load i8, i8* %pin21, align 4, !dbg !5374
  %conv22 = zext i8 %19 to i32, !dbg !5373
  %cmp23 = icmp eq i32 %conv20, %conv22, !dbg !5375
  br i1 %cmp23, label %land.lhs.true25, label %if.end, !dbg !5376

land.lhs.true25:                                  ; preds = %land.lhs.true19
  %20 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5377
  %source = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %20, i32 0, i32 4, !dbg !5378
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %source, i64 0, i64 0, !dbg !5377
  %21 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5379
  %source26 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %21, i32 0, i32 5, !dbg !5380
  %22 = load i8*, i8** %source26, align 8, !dbg !5380
  %call27 = call i32 @strcmp(i8* %arraydecay, i8* %22) #8, !dbg !5381
  %tobool28 = icmp ne i32 %call27, 0, !dbg !5381
  br i1 %tobool28, label %if.end, label %land.lhs.true29, !dbg !5382

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %23 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5383
  %source30 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %23, i32 0, i32 4, !dbg !5384
  %arraydecay31 = getelementptr inbounds [4 x i8], [4 x i8]* %source30, i64 0, i64 0, !dbg !5383
  %call32 = call i64 @strlen(i8* %arraydecay31) #8, !dbg !5385
  %24 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5386
  %actual_source = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %24, i32 0, i32 6, !dbg !5387
  %25 = load i8*, i8** %actual_source, align 8, !dbg !5387
  %call33 = call i64 @strlen(i8* %25) #8, !dbg !5388
  %cmp34 = icmp uge i64 %call32, %call33, !dbg !5389
  br i1 %cmp34, label %if.then, label %if.end, !dbg !5390

if.then:                                          ; preds = %land.lhs.true29
  %26 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5391
  %id36 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %26, i32 0, i32 0, !dbg !5393
  %segment37 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id36, i32 0, i32 0, !dbg !5394
  %27 = load i16, i16* %segment37, align 8, !dbg !5394
  %conv38 = zext i16 %27 to i32, !dbg !5391
  %28 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5395
  %id39 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %28, i32 0, i32 0, !dbg !5396
  %bus40 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id39, i32 0, i32 1, !dbg !5397
  %29 = load i16, i16* %bus40, align 2, !dbg !5397
  %conv41 = zext i16 %29 to i32, !dbg !5395
  %30 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5398
  %id42 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %30, i32 0, i32 0, !dbg !5399
  %device43 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %id42, i32 0, i32 2, !dbg !5400
  %31 = load i16, i16* %device43, align 4, !dbg !5400
  %conv44 = zext i16 %31 to i32, !dbg !5398
  %32 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %entry.addr, align 8, !dbg !5401
  %pin45 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %32, i32 0, i32 1, !dbg !5402
  %33 = load i8, i8* %pin45, align 8, !dbg !5402
  %conv46 = zext i8 %33 to i32, !dbg !5401
  %call47 = call signext i8 @pin_name(i32 %conv46) #8, !dbg !5403
  %conv48 = sext i8 %call47 to i32, !dbg !5403
  %34 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5404
  %source49 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %34, i32 0, i32 4, !dbg !5405
  %arraydecay50 = getelementptr inbounds [4 x i8], [4 x i8]* %source49, i64 0, i64 0, !dbg !5404
  %35 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5406
  %actual_source51 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %35, i32 0, i32 6, !dbg !5407
  %36 = load i8*, i8** %actual_source51, align 8, !dbg !5407
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %conv38, i32 %conv41, i32 %conv44, i32 %conv48, i8* %arraydecay50, i8* %36) #9, !dbg !5408
  %37 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %prt.addr, align 8, !dbg !5409
  %source53 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %37, i32 0, i32 4, !dbg !5410
  %arraydecay54 = getelementptr inbounds [4 x i8], [4 x i8]* %source53, i64 0, i64 0, !dbg !5409
  %38 = load %struct.prt_quirk*, %struct.prt_quirk** %quirk, align 8, !dbg !5411
  %actual_source55 = getelementptr inbounds %struct.prt_quirk, %struct.prt_quirk* %38, i32 0, i32 6, !dbg !5412
  %39 = load i8*, i8** %actual_source55, align 8, !dbg !5412
  %call56 = call i8* @strcpy(i8* %arraydecay54, i8* %39) #8, !dbg !5413
  br label %if.end, !dbg !5414

if.end:                                           ; preds = %if.then, %land.lhs.true29, %land.lhs.true25, %land.lhs.true19, %land.lhs.true13, %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5415

for.inc:                                          ; preds = %if.end
  %40 = load i32, i32* %i, align 4, !dbg !5416
  %inc = add i32 %40, 1, !dbg !5416
  store i32 %inc, i32* %i, align 4, !dbg !5416
  br label %for.cond, !dbg !5417, !llvm.loop !5418

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5420
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_handle(i8*, i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %bus) #0 !dbg !5421 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5437
  %sysdata = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 11, !dbg !5438
  %1 = load i8*, i8** %sysdata, align 8, !dbg !5438
  %2 = bitcast i8* %1 to %struct.pci_sysdata*, !dbg !5437
  ret %struct.pci_sysdata* %2, !dbg !5439
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5440 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5444, metadata !DIExpression()), !dbg !5449
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5451, metadata !DIExpression()), !dbg !5452
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  %0 = load i64, i64* %size.addr, align 8, !dbg !5455
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5457
  br i1 %1, label %if.then, label %if.end447, !dbg !5458

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5459
  %tobool = icmp ne i64 %2, 0, !dbg !5459
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5462

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5463
  br label %return, !dbg !5463

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5464
  %cmp = icmp ult i64 %3, 4096, !dbg !5466
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5467

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub = sub i64 %4, 1, !dbg !5469
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5469
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5469

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub4 = sub i64 %6, 1, !dbg !5469
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5469
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5469

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub6 = sub i64 %8, 1, !dbg !5469
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5469
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5469

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5469

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub9 = sub i64 %9, 1, !dbg !5469
  %and = and i64 %sub9, -9223372036854775808, !dbg !5469
  %tobool10 = icmp ne i64 %and, 0, !dbg !5469
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5469

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5469

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub13 = sub i64 %10, 1, !dbg !5469
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5469
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5469
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5469

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5469

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub18 = sub i64 %11, 1, !dbg !5469
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5469
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5469
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5469

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5469

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub23 = sub i64 %12, 1, !dbg !5469
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5469
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5469
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5469

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5469

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub28 = sub i64 %13, 1, !dbg !5469
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5469
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5469
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5469

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5469

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub33 = sub i64 %14, 1, !dbg !5469
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5469
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5469
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5469

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5469

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub38 = sub i64 %15, 1, !dbg !5469
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5469
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5469
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5469

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5469

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub43 = sub i64 %16, 1, !dbg !5469
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5469
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5469
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5469

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5469

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub48 = sub i64 %17, 1, !dbg !5469
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5469
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5469
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5469

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5469

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub53 = sub i64 %18, 1, !dbg !5469
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5469
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5469
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5469

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5469

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub58 = sub i64 %19, 1, !dbg !5469
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5469
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5469
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5469

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5469

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub63 = sub i64 %20, 1, !dbg !5469
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5469
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5469
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5469

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5469

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub68 = sub i64 %21, 1, !dbg !5469
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5469
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5469
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5469

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5469

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub73 = sub i64 %22, 1, !dbg !5469
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5469
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5469
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5469

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5469

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub78 = sub i64 %23, 1, !dbg !5469
  %and79 = and i64 %sub78, 562949953421312, !dbg !5469
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5469
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5469

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5469

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub83 = sub i64 %24, 1, !dbg !5469
  %and84 = and i64 %sub83, 281474976710656, !dbg !5469
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5469
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5469

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5469

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub88 = sub i64 %25, 1, !dbg !5469
  %and89 = and i64 %sub88, 140737488355328, !dbg !5469
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5469
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5469

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5469

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub93 = sub i64 %26, 1, !dbg !5469
  %and94 = and i64 %sub93, 70368744177664, !dbg !5469
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5469
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5469

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5469

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub98 = sub i64 %27, 1, !dbg !5469
  %and99 = and i64 %sub98, 35184372088832, !dbg !5469
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5469
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5469

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5469

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub103 = sub i64 %28, 1, !dbg !5469
  %and104 = and i64 %sub103, 17592186044416, !dbg !5469
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5469
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5469

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5469

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub108 = sub i64 %29, 1, !dbg !5469
  %and109 = and i64 %sub108, 8796093022208, !dbg !5469
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5469
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5469

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5469

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub113 = sub i64 %30, 1, !dbg !5469
  %and114 = and i64 %sub113, 4398046511104, !dbg !5469
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5469
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5469

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5469

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub118 = sub i64 %31, 1, !dbg !5469
  %and119 = and i64 %sub118, 2199023255552, !dbg !5469
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5469
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5469

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5469

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub123 = sub i64 %32, 1, !dbg !5469
  %and124 = and i64 %sub123, 1099511627776, !dbg !5469
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5469
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5469

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5469

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub128 = sub i64 %33, 1, !dbg !5469
  %and129 = and i64 %sub128, 549755813888, !dbg !5469
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5469
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5469

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5469

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub133 = sub i64 %34, 1, !dbg !5469
  %and134 = and i64 %sub133, 274877906944, !dbg !5469
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5469
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5469

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5469

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub138 = sub i64 %35, 1, !dbg !5469
  %and139 = and i64 %sub138, 137438953472, !dbg !5469
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5469
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5469

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5469

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub143 = sub i64 %36, 1, !dbg !5469
  %and144 = and i64 %sub143, 68719476736, !dbg !5469
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5469
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5469

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5469

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub148 = sub i64 %37, 1, !dbg !5469
  %and149 = and i64 %sub148, 34359738368, !dbg !5469
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5469
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5469

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5469

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub153 = sub i64 %38, 1, !dbg !5469
  %and154 = and i64 %sub153, 17179869184, !dbg !5469
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5469
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5469

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5469

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub158 = sub i64 %39, 1, !dbg !5469
  %and159 = and i64 %sub158, 8589934592, !dbg !5469
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5469
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5469

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5469

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub163 = sub i64 %40, 1, !dbg !5469
  %and164 = and i64 %sub163, 4294967296, !dbg !5469
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5469
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5469

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5469

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub168 = sub i64 %41, 1, !dbg !5469
  %and169 = and i64 %sub168, 2147483648, !dbg !5469
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5469
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5469

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5469

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub173 = sub i64 %42, 1, !dbg !5469
  %and174 = and i64 %sub173, 1073741824, !dbg !5469
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5469
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5469

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5469

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub178 = sub i64 %43, 1, !dbg !5469
  %and179 = and i64 %sub178, 536870912, !dbg !5469
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5469
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5469

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5469

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub183 = sub i64 %44, 1, !dbg !5469
  %and184 = and i64 %sub183, 268435456, !dbg !5469
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5469
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5469

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5469

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub188 = sub i64 %45, 1, !dbg !5469
  %and189 = and i64 %sub188, 134217728, !dbg !5469
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5469
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5469

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5469

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub193 = sub i64 %46, 1, !dbg !5469
  %and194 = and i64 %sub193, 67108864, !dbg !5469
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5469
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5469

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5469

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub198 = sub i64 %47, 1, !dbg !5469
  %and199 = and i64 %sub198, 33554432, !dbg !5469
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5469
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5469

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5469

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub203 = sub i64 %48, 1, !dbg !5469
  %and204 = and i64 %sub203, 16777216, !dbg !5469
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5469
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5469

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5469

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub208 = sub i64 %49, 1, !dbg !5469
  %and209 = and i64 %sub208, 8388608, !dbg !5469
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5469
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5469

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5469

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub213 = sub i64 %50, 1, !dbg !5469
  %and214 = and i64 %sub213, 4194304, !dbg !5469
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5469
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5469

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5469

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub218 = sub i64 %51, 1, !dbg !5469
  %and219 = and i64 %sub218, 2097152, !dbg !5469
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5469
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5469

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5469

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub223 = sub i64 %52, 1, !dbg !5469
  %and224 = and i64 %sub223, 1048576, !dbg !5469
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5469
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5469

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5469

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub228 = sub i64 %53, 1, !dbg !5469
  %and229 = and i64 %sub228, 524288, !dbg !5469
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5469
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5469

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5469

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub233 = sub i64 %54, 1, !dbg !5469
  %and234 = and i64 %sub233, 262144, !dbg !5469
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5469
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5469

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5469

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub238 = sub i64 %55, 1, !dbg !5469
  %and239 = and i64 %sub238, 131072, !dbg !5469
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5469
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5469

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5469

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub243 = sub i64 %56, 1, !dbg !5469
  %and244 = and i64 %sub243, 65536, !dbg !5469
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5469
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5469

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5469

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub248 = sub i64 %57, 1, !dbg !5469
  %and249 = and i64 %sub248, 32768, !dbg !5469
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5469
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5469

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5469

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub253 = sub i64 %58, 1, !dbg !5469
  %and254 = and i64 %sub253, 16384, !dbg !5469
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5469
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5469

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5469

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub258 = sub i64 %59, 1, !dbg !5469
  %and259 = and i64 %sub258, 8192, !dbg !5469
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5469
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5469

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5469

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub263 = sub i64 %60, 1, !dbg !5469
  %and264 = and i64 %sub263, 4096, !dbg !5469
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5469
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5469

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5469

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub268 = sub i64 %61, 1, !dbg !5469
  %and269 = and i64 %sub268, 2048, !dbg !5469
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5469
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5469

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5469

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub273 = sub i64 %62, 1, !dbg !5469
  %and274 = and i64 %sub273, 1024, !dbg !5469
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5469
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5469

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5469

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub278 = sub i64 %63, 1, !dbg !5469
  %and279 = and i64 %sub278, 512, !dbg !5469
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5469
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5469

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5469

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub283 = sub i64 %64, 1, !dbg !5469
  %and284 = and i64 %sub283, 256, !dbg !5469
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5469
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5469

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5469

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub288 = sub i64 %65, 1, !dbg !5469
  %and289 = and i64 %sub288, 128, !dbg !5469
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5469
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5469

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5469

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub293 = sub i64 %66, 1, !dbg !5469
  %and294 = and i64 %sub293, 64, !dbg !5469
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5469
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5469

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5469

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub298 = sub i64 %67, 1, !dbg !5469
  %and299 = and i64 %sub298, 32, !dbg !5469
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5469
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5469

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5469

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub303 = sub i64 %68, 1, !dbg !5469
  %and304 = and i64 %sub303, 16, !dbg !5469
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5469
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5469

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5469

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub308 = sub i64 %69, 1, !dbg !5469
  %and309 = and i64 %sub308, 8, !dbg !5469
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5469
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5469

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5469

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub313 = sub i64 %70, 1, !dbg !5469
  %and314 = and i64 %sub313, 4, !dbg !5469
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5469
  %71 = zext i1 %tobool315 to i64, !dbg !5469
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5469
  br label %cond.end, !dbg !5469

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5469
  br label %cond.end317, !dbg !5469

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5469
  br label %cond.end319, !dbg !5469

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5469
  br label %cond.end321, !dbg !5469

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5469
  br label %cond.end323, !dbg !5469

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5469
  br label %cond.end325, !dbg !5469

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5469
  br label %cond.end327, !dbg !5469

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5469
  br label %cond.end329, !dbg !5469

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5469
  br label %cond.end331, !dbg !5469

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5469
  br label %cond.end333, !dbg !5469

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5469
  br label %cond.end335, !dbg !5469

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5469
  br label %cond.end337, !dbg !5469

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5469
  br label %cond.end339, !dbg !5469

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5469
  br label %cond.end341, !dbg !5469

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5469
  br label %cond.end343, !dbg !5469

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5469
  br label %cond.end345, !dbg !5469

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5469
  br label %cond.end347, !dbg !5469

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5469
  br label %cond.end349, !dbg !5469

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5469
  br label %cond.end351, !dbg !5469

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5469
  br label %cond.end353, !dbg !5469

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5469
  br label %cond.end355, !dbg !5469

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5469
  br label %cond.end357, !dbg !5469

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5469
  br label %cond.end359, !dbg !5469

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5469
  br label %cond.end361, !dbg !5469

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5469
  br label %cond.end363, !dbg !5469

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5469
  br label %cond.end365, !dbg !5469

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5469
  br label %cond.end367, !dbg !5469

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5469
  br label %cond.end369, !dbg !5469

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5469
  br label %cond.end371, !dbg !5469

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5469
  br label %cond.end373, !dbg !5469

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5469
  br label %cond.end375, !dbg !5469

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5469
  br label %cond.end377, !dbg !5469

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5469
  br label %cond.end379, !dbg !5469

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5469
  br label %cond.end381, !dbg !5469

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5469
  br label %cond.end383, !dbg !5469

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5469
  br label %cond.end385, !dbg !5469

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5469
  br label %cond.end387, !dbg !5469

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5469
  br label %cond.end389, !dbg !5469

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5469
  br label %cond.end391, !dbg !5469

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5469
  br label %cond.end393, !dbg !5469

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5469
  br label %cond.end395, !dbg !5469

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5469
  br label %cond.end397, !dbg !5469

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5469
  br label %cond.end399, !dbg !5469

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5469
  br label %cond.end401, !dbg !5469

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5469
  br label %cond.end403, !dbg !5469

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5469
  br label %cond.end405, !dbg !5469

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5469
  br label %cond.end407, !dbg !5469

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5469
  br label %cond.end409, !dbg !5469

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5469
  br label %cond.end411, !dbg !5469

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5469
  br label %cond.end413, !dbg !5469

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5469
  br label %cond.end415, !dbg !5469

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5469
  br label %cond.end417, !dbg !5469

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5469
  br label %cond.end419, !dbg !5469

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5469
  br label %cond.end421, !dbg !5469

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5469
  br label %cond.end423, !dbg !5469

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5469
  br label %cond.end425, !dbg !5469

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5469
  br label %cond.end427, !dbg !5469

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5469
  br label %cond.end429, !dbg !5469

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5469
  br label %cond.end431, !dbg !5469

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5469
  br label %cond.end433, !dbg !5469

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5469
  br label %cond.end435, !dbg !5469

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5469
  br label %cond.end437, !dbg !5469

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5469
  br label %cond.end440, !dbg !5469

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5469

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5469
  br label %cond.end444, !dbg !5469

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5469
  %sub443 = sub i64 %72, 1, !dbg !5469
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5469
  br label %cond.end444, !dbg !5469

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5469
  %sub446 = sub i32 %cond445, 12, !dbg !5470
  %add = add i32 %sub446, 1, !dbg !5471
  store i32 %add, i32* %retval, align 4, !dbg !5472
  br label %return, !dbg !5472

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5473
  %dec = add i64 %73, -1, !dbg !5473
  store i64 %dec, i64* %size.addr, align 8, !dbg !5473
  %74 = load i64, i64* %size.addr, align 8, !dbg !5474
  %shr = lshr i64 %74, 12, !dbg !5474
  store i64 %shr, i64* %size.addr, align 8, !dbg !5474
  %75 = load i64, i64* %size.addr, align 8, !dbg !5475
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5452
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5476
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5477
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5476, !srcloc !5478
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5476
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5479
  %add.i = add i32 %79, 1, !dbg !5480
  store i32 %add.i, i32* %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5482
  ret i32 %80, !dbg !5482
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5483 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5444, metadata !DIExpression()), !dbg !5487
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5451, metadata !DIExpression()), !dbg !5489
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  %0 = load i64, i64* %n.addr, align 8, !dbg !5492
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5489
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5493
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5494
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5493, !srcloc !5478
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5493
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5495
  %add.i = add i32 %4, 1, !dbg !5496
  %sub = sub i32 %add.i, 1, !dbg !5497
  ret i32 %sub, !dbg !5498
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5499 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5511
  ret i8* %0, !dbg !5512
}

; Function Attrs: noredzone
declare dso_local i32 @dmi_check_system(%struct.dmi_system_id*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bridge_has_boot_interrupt_variant(%struct.pci_bus* %bus) #0 !dbg !5513 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %bus_it = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus_it, metadata !5516, metadata !DIExpression()), !dbg !5517
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5518
  store %struct.pci_bus* %0, %struct.pci_bus** %bus_it, align 8, !dbg !5520
  br label %for.cond, !dbg !5521

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus_it, align 8, !dbg !5522
  %tobool = icmp ne %struct.pci_bus* %1, null, !dbg !5524
  br i1 %tobool, label %for.body, label %for.end, !dbg !5524

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus_it, align 8, !dbg !5525
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 4, !dbg !5528
  %3 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !5528
  %tobool1 = icmp ne %struct.pci_dev* %3, null, !dbg !5525
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5529

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end:                                           ; preds = %for.body
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus_it, align 8, !dbg !5531
  %self2 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 4, !dbg !5533
  %5 = load %struct.pci_dev*, %struct.pci_dev** %self2, align 8, !dbg !5533
  %irq_reroute_variant = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 46, !dbg !5534
  %6 = bitcast [5 x i8]* %irq_reroute_variant to i40*, !dbg !5534
  %bf.load = load i40, i40* %6, align 1, !dbg !5534
  %bf.lshr = lshr i40 %bf.load, 10, !dbg !5534
  %bf.clear = and i40 %bf.lshr, 3, !dbg !5534
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5534
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5531
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !5535

if.then4:                                         ; preds = %if.end
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus_it, align 8, !dbg !5536
  %self5 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 4, !dbg !5537
  %8 = load %struct.pci_dev*, %struct.pci_dev** %self5, align 8, !dbg !5537
  %irq_reroute_variant6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 46, !dbg !5538
  %9 = bitcast [5 x i8]* %irq_reroute_variant6 to i40*, !dbg !5538
  %bf.load7 = load i40, i40* %9, align 1, !dbg !5538
  %bf.lshr8 = lshr i40 %bf.load7, 10, !dbg !5538
  %bf.clear9 = and i40 %bf.lshr8, 3, !dbg !5538
  %bf.cast10 = trunc i40 %bf.clear9 to i32, !dbg !5538
  store i32 %bf.cast10, i32* %retval, align 4, !dbg !5539
  br label %return, !dbg !5539

if.end11:                                         ; preds = %if.end
  br label %for.inc, !dbg !5540

for.inc:                                          ; preds = %if.end11
  %10 = load %struct.pci_bus*, %struct.pci_bus** %bus_it, align 8, !dbg !5541
  %parent = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 1, !dbg !5542
  %11 = load %struct.pci_bus*, %struct.pci_bus** %parent, align 8, !dbg !5542
  store %struct.pci_bus* %11, %struct.pci_bus** %bus_it, align 8, !dbg !5543
  br label %for.cond, !dbg !5544, !llvm.loop !5545

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5547
  br label %return, !dbg !5547

return:                                           ; preds = %for.end, %if.then4, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5548
  ret i32 %12, !dbg !5548
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4180, !4181, !4182, !4183}
!llvm.ident = !{!4184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "prt_quirks", scope: !2, file: !3, line: 100, type: !4169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !128, globals: !4141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/pci_irq.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !116, !123}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_irq_model_id", file: !108, line: 102, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PIC", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOAPIC", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "ACPI_IRQ_MODEL_IOSAPIC", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "ACPI_IRQ_MODEL_PLATFORM", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "ACPI_IRQ_MODEL_GIC", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "ACPI_IRQ_MODEL_COUNT", value: 5, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !117, line: 305, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!128 = !{!129, !134, !135, !4131, !295, !713, !140}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !130, line: 17, baseType: !131)
!130 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !132, line: 21, baseType: !133)
!132 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!133 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !137, line: 351, size: 10880, elements: !138)
!137 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!138 = !{!139, !141, !144, !3857, !3858, !3859, !3860, !3861, !3862, !3871, !3888, !3962, !3991, !4015, !4036, !4043, !4052, !4084, !4098, !4120, !4124, !4125, !4126, !4127, !4128, !4129, !4130}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !136, file: !137, line: 352, baseType: !140, size: 32)
!140 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !136, file: !137, line: 353, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !143, line: 424, baseType: !134)
!143 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !136, file: !137, line: 354, baseType: !145, size: 192, offset: 128)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !146, line: 17, size: 192, elements: !147)
!146 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !150, !3856}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !145, file: !146, line: 18, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !145, file: !146, line: 19, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !146, line: 110, size: 1152, elements: !154)
!154 = !{!155, !159, !163, !172, !3798, !3802, !3806, !3811, !3815, !3816, !3820, !3824, !3828, !3839, !3840, !3841, !3842, !3852}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !153, file: !146, line: 111, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!149, !149}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !153, file: !146, line: 112, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !149}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !153, file: !146, line: 113, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !170}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !168, line: 30, baseType: !169)
!168 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !153, file: !146, line: 114, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !170, !178}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !181)
!181 = !{!182, !3340, !3342, !3345, !3346, !3397, !3488, !3489, !3490, !3491, !3492, !3501, !3606, !3619, !3725, !3726, !3730, !3732, !3733, !3734, !3738, !3744, !3745, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3786, !3787, !3788, !3791, !3794, !3795, !3796, !3797}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !73, line: 462, baseType: !183, size: 512)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !184, line: 64, size: 512, elements: !185)
!184 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !190, !196, !198, !258, !3191, !3330, !3335, !3336, !3337, !3338, !3339}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 65, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !183, file: !184, line: 66, baseType: !191, size: 128, offset: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !168, line: 178, size: 128, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !168, line: 179, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !191, file: !168, line: 179, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !184, line: 67, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !183, file: !184, line: 68, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !184, line: 192, size: 704, elements: !201)
!201 = !{!202, !203, !219, !220}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !200, file: !184, line: 193, baseType: !191, size: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !200, file: !184, line: 194, baseType: !204, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !205, line: 83, baseType: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !205, line: 71, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 72, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 72, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !209, file: !205, line: 73, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !205, line: 20, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !212, file: !205, line: 21, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !216, line: 25, baseType: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 25, elements: !218)
!218 = !{}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !184, line: 195, baseType: !183, size: 512, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !200, file: !184, line: 196, baseType: !221, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !184, line: 156, size: 192, elements: !224)
!224 = !{!225, !230, !235}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !223, file: !184, line: 157, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!140, !199, !197}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !184, line: 158, baseType: !231, size: 64, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!187, !199, !197}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !223, file: !184, line: 159, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!140, !199, !197, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !184, line: 148, size: 20736, elements: !242)
!242 = !{!243, !248, !252, !253, !257}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !241, file: !184, line: 149, baseType: !244, size: 192)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 192, elements: !246)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!246 = !{!247}
!247 = !DISubrange(count: 3)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !241, file: !184, line: 150, baseType: !249, size: 4096, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 4096, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !241, file: !184, line: 151, baseType: !140, size: 32, offset: 4288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !241, file: !184, line: 152, baseType: !254, size: 16384, offset: 4320)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 16384, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !241, file: !184, line: 153, baseType: !140, size: 32, offset: 20704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !183, file: !184, line: 69, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !184, line: 138, size: 448, elements: !261)
!261 = !{!262, !266, !296, !298, !3153, !3181, !3185}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !260, file: !184, line: 139, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !197}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !260, file: !184, line: 140, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !270, line: 230, size: 128, elements: !271)
!270 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !288}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !269, file: !270, line: 231, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !197, !281, !245}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 60, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !278, line: 73, baseType: !279)
!278 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !278, line: 15, baseType: !280)
!280 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !270, line: 30, size: 128, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !270, line: 31, baseType: !187, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !282, file: !270, line: 32, baseType: !286, size: 16, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !168, line: 19, baseType: !287)
!287 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !269, file: !270, line: 232, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!276, !197, !281, !187, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 55, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !278, line: 72, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !278, line: 16, baseType: !295)
!295 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !260, file: !184, line: 141, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !260, file: !184, line: 142, baseType: !299, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !270, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !3150, !3151}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !270, line: 85, baseType: !187, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !270, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!286, !197, !281, !140}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !270, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!286, !197, !313, !140}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !270, line: 168, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !3145, !3146}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !270, line: 169, baseType: !282, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !270, line: 170, baseType: !292, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !270, line: 171, baseType: !134, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !270, line: 172, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!276, !323, !197, !313, !245, !497, !292}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !325)
!325 = !{!326, !344, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3128, !3129, !3138, !3139, !3140, !3141, !3142, !3143, !3144}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !324, file: !44, line: 920, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !44, line: 917, size: 128, elements: !328)
!328 = !{!329, !335}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !327, file: !44, line: 918, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !331, line: 58, size: 64, elements: !332)
!331 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !331, line: 59, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !327, file: !44, line: 919, baseType: !336, size: 128, align: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !168, line: 216, size: 128, align: 64, elements: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !168, line: 217, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !336, file: !168, line: 218, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !339}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !324, file: !44, line: 921, baseType: !345, size: 128, offset: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !346, line: 8, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !345, file: !346, line: 9, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !351, line: 18, flags: DIFlagFwdDecl)
!351 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !345, file: !346, line: 10, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !351, line: 89, size: 1536, elements: !355)
!355 = !{!356, !357, !367, !375, !376, !396, !3078, !3080, !3092, !3093, !3094, !3095, !3096, !3102, !3103, !3104}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !354, file: !351, line: 91, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !354, file: !351, line: 92, baseType: !358, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !359, line: 277, baseType: !360)
!359 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !359, line: 277, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !360, file: !359, line: 277, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !359, line: 70, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !359, line: 65, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !364, file: !359, line: 66, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !354, file: !351, line: 93, baseType: !368, size: 128, offset: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !369, line: 38, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !369, line: 39, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !368, file: !369, line: 39, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !354, file: !351, line: 94, baseType: !353, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !354, file: !351, line: 95, baseType: !377, size: 128, offset: 256)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !351, line: 47, size: 128, elements: !378)
!378 = !{!379, !393}
!379 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !351, line: 48, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !351, line: 48, size: 64, elements: !381)
!381 = !{!382, !389}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !351, line: 49, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !351, line: 49, size: 64, elements: !384)
!384 = !{!385, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !383, file: !351, line: 50, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !130, line: 21, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !132, line: 27, baseType: !7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !383, file: !351, line: 50, baseType: !386, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !380, file: !351, line: 52, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !130, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !132, line: 31, baseType: !392)
!392 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !351, line: 54, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !354, file: !351, line: 96, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !399)
!399 = !{!400, !401, !402, !410, !417, !418, !564, !2789, !2790, !2791, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !3054, !3062, !3063, !3064, !3074, !3075, !3076, !3077}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !398, file: !44, line: 611, baseType: !286, size: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !398, file: !44, line: 612, baseType: !287, size: 16, offset: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !398, file: !44, line: 613, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !404, line: 23, baseType: !405)
!404 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 21, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !404, line: 22, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !168, line: 32, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !278, line: 49, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !398, file: !44, line: 614, baseType: !411, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !404, line: 28, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 26, size: 32, elements: !413)
!413 = !{!414}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !404, line: 27, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !168, line: 33, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !278, line: 50, baseType: !7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !398, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !398, file: !44, line: 622, baseType: !419, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !422)
!422 = !{!423, !427, !440, !444, !450, !454, !458, !462, !466, !470, !474, !475, !481, !485, !511, !540, !544, !550, !555, !559, !560}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !421, file: !44, line: 1865, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!353, !397, !353, !7}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !421, file: !44, line: 1866, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!187, !353, !397, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !433, line: 10, size: 128, elements: !434)
!433 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!434 = !{!435, !439}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !432, file: !433, line: 11, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !134}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !432, file: !433, line: 12, baseType: !134, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !421, file: !44, line: 1867, baseType: !441, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!140, !397, !140}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !421, file: !44, line: 1868, baseType: !445, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !397, !140}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !421, file: !44, line: 1870, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!140, !353, !245, !140}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !421, file: !44, line: 1872, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!140, !397, !353, !286, !167}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !421, file: !44, line: 1873, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!140, !353, !397, !353}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !421, file: !44, line: 1874, baseType: !463, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!140, !397, !353}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !421, file: !44, line: 1875, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!140, !397, !353, !187}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !421, file: !44, line: 1876, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!140, !397, !353, !286}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !421, file: !44, line: 1877, baseType: !463, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !421, file: !44, line: 1878, baseType: !476, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!140, !397, !353, !286, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !168, line: 16, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !168, line: 13, baseType: !386)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !421, file: !44, line: 1879, baseType: !482, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!140, !397, !353, !397, !353, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !421, file: !44, line: 1881, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!140, !353, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !500, !508, !509, !510}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !490, file: !44, line: 220, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !490, file: !44, line: 221, baseType: !286, size: 16, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !490, file: !44, line: 222, baseType: !403, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !490, file: !44, line: 223, baseType: !411, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !490, file: !44, line: 224, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !168, line: 46, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !278, line: 88, baseType: !499)
!499 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !490, file: !44, line: 225, baseType: !501, size: 128, offset: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !502, line: 13, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !501, file: !502, line: 14, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !502, line: 8, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !132, line: 30, baseType: !499)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !501, file: !502, line: 15, baseType: !280, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !490, file: !44, line: 226, baseType: !501, size: 128, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !490, file: !44, line: 227, baseType: !501, size: 128, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !490, file: !44, line: 234, baseType: !323, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !421, file: !44, line: 1882, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!140, !515, !517, !386, !7}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !519, line: 22, size: 1152, elements: !520)
!519 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !522, !523, !524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !518, file: !519, line: 23, baseType: !386, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !518, file: !519, line: 24, baseType: !286, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !518, file: !519, line: 25, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !518, file: !519, line: 26, baseType: !525, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !168, line: 104, baseType: !386)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !518, file: !519, line: 27, baseType: !390, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !518, file: !519, line: 28, baseType: !390, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !518, file: !519, line: 37, baseType: !390, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !518, file: !519, line: 38, baseType: !479, size: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !518, file: !519, line: 39, baseType: !479, size: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !518, file: !519, line: 40, baseType: !403, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !518, file: !519, line: 41, baseType: !411, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !518, file: !519, line: 42, baseType: !497, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !518, file: !519, line: 43, baseType: !501, size: 128, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !518, file: !519, line: 44, baseType: !501, size: 128, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !518, file: !519, line: 45, baseType: !501, size: 128, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !518, file: !519, line: 46, baseType: !501, size: 128, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !518, file: !519, line: 47, baseType: !390, size: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !518, file: !519, line: 48, baseType: !390, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !421, file: !44, line: 1883, baseType: !541, size: 64, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!276, !353, !245, !292}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !421, file: !44, line: 1884, baseType: !545, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!140, !397, !548, !390, !390}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !421, file: !44, line: 1886, baseType: !551, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!140, !397, !554, !140}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !421, file: !44, line: 1887, baseType: !556, size: 64, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!140, !397, !353, !323, !7, !286}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !421, file: !44, line: 1890, baseType: !471, size: 64, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !421, file: !44, line: 1891, baseType: !561, size: 64, offset: 1280)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!140, !397, !448, !140}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !398, file: !44, line: 623, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !623, !2396, !2478, !2561, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2577, !2581, !2582, !2585, !2586, !2589, !2590, !2591, !2632, !2659, !2660, !2661, !2662, !2663, !2664, !2667, !2669, !2676, !2677, !2679, !2680, !2681, !2740, !2741, !2756, !2757, !2758, !2759, !2760, !2763, !2764, !2765, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !566, file: !44, line: 1417, baseType: !191, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !566, file: !44, line: 1418, baseType: !479, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !566, file: !44, line: 1419, baseType: !133, size: 8, offset: 160)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !566, file: !44, line: 1420, baseType: !295, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !566, file: !44, line: 1421, baseType: !497, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !566, file: !44, line: 1422, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !576)
!576 = !{!577, !578, !579, !586, !590, !594, !598, !602, !603, !613, !616, !617, !618, !620, !621, !622}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !44, line: 2229, baseType: !187, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !575, file: !44, line: 2230, baseType: !140, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !575, file: !44, line: 2238, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!140, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !585, line: 28, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !575, file: !44, line: 2239, baseType: !587, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !575, file: !44, line: 2240, baseType: !591, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!353, !574, !140, !187, !134}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !575, file: !44, line: 2242, baseType: !595, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !565}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !575, file: !44, line: 2243, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !601, line: 76, flags: DIFlagFwdDecl)
!601 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !44, line: 2244, baseType: !574, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !575, file: !44, line: 2245, baseType: !604, size: 64, offset: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !168, line: 182, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !604, file: !168, line: 183, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !168, line: 186, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !168, line: 187, baseType: !607, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !608, file: !168, line: 187, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !575, file: !44, line: 2247, baseType: !614, offset: 576)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !615, line: 187, elements: !218)
!615 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !575, file: !44, line: 2248, baseType: !614, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !575, file: !44, line: 2249, baseType: !614, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !575, file: !44, line: 2250, baseType: !619, offset: 576)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, elements: !246)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !575, file: !44, line: 2252, baseType: !614, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !575, file: !44, line: 2253, baseType: !614, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !575, file: !44, line: 2254, baseType: !614, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !566, file: !44, line: 1423, baseType: !624, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !627)
!627 = !{!628, !632, !636, !637, !641, !647, !651, !652, !653, !657, !661, !662, !663, !664, !670, !675, !676, !683, !684, !685, !686, !2380, !2395}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !626, file: !44, line: 1936, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!397, !565}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !626, file: !44, line: 1937, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !397}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !626, file: !44, line: 1938, baseType: !633, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !626, file: !44, line: 1940, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !397, !140}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !626, file: !44, line: 1941, baseType: !642, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!140, !397, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !626, file: !44, line: 1942, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!140, !397}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !626, file: !44, line: 1943, baseType: !633, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !626, file: !44, line: 1944, baseType: !595, size: 64, offset: 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !626, file: !44, line: 1945, baseType: !654, size: 64, offset: 512)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!140, !565, !140}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !626, file: !44, line: 1946, baseType: !658, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!140, !565}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !626, file: !44, line: 1947, baseType: !658, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !626, file: !44, line: 1948, baseType: !658, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !626, file: !44, line: 1949, baseType: !658, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !626, file: !44, line: 1950, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!140, !353, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !626, file: !44, line: 1951, baseType: !671, size: 64, offset: 896)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!140, !565, !674, !245}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !626, file: !44, line: 1952, baseType: !595, size: 64, offset: 960)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !626, file: !44, line: 1954, baseType: !677, size: 64, offset: 1024)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!140, !680, !353}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !682, line: 539, flags: DIFlagFwdDecl)
!682 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !626, file: !44, line: 1955, baseType: !677, size: 64, offset: 1088)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !626, file: !44, line: 1956, baseType: !677, size: 64, offset: 1152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !626, file: !44, line: 1957, baseType: !677, size: 64, offset: 1216)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !626, file: !44, line: 1963, baseType: !687, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!140, !565, !690, !713}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !692, line: 68, size: 512, align: 128, elements: !693)
!692 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!693 = !{!694, !695, !2372, !2379}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 69, baseType: !295, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 77, baseType: !696, size: 320, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 77, size: 320, elements: !697)
!697 = !{!698, !886, !891, !919, !927, !933, !2303, !2371}
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 78, baseType: !699, size: 320)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 78, size: 320, elements: !700)
!700 = !{!701, !702, !884, !885}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !699, file: !692, line: 84, baseType: !191, size: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !699, file: !692, line: 86, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !705)
!705 = !{!706, !707, !715, !716, !721, !736, !752, !753, !754, !755, !877, !878, !881, !882, !883}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !704, file: !44, line: 452, baseType: !397, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !704, file: !44, line: 453, baseType: !708, size: 128, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !709, line: 292, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712, !714}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !708, file: !709, line: 293, baseType: !204)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !708, file: !709, line: 295, baseType: !713, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !168, line: 148, baseType: !7)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !708, file: !709, line: 296, baseType: !134, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !704, file: !44, line: 454, baseType: !713, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !704, file: !44, line: 455, baseType: !717, size: 32, offset: 224)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !168, line: 168, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 166, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !718, file: !168, line: 167, baseType: !140, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !704, file: !44, line: 460, baseType: !722, size: 128, offset: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !723, line: 125, size: 128, elements: !724)
!723 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!724 = !{!725, !735}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !722, file: !723, line: 126, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !723, line: 31, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !726, file: !723, line: 32, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !723, line: 24, size: 192, align: 64, elements: !731)
!731 = !{!732, !733, !734}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !730, file: !723, line: 25, baseType: !295, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !730, file: !723, line: 26, baseType: !729, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !730, file: !723, line: 27, baseType: !729, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !722, file: !723, line: 127, baseType: !729, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !704, file: !44, line: 461, baseType: !737, size: 256, offset: 384)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !738, line: 35, size: 256, elements: !739)
!738 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!739 = !{!740, !748, !749, !751}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !737, file: !738, line: 36, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !742, line: 13, baseType: !743)
!742 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !168, line: 175, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 173, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !744, file: !168, line: 174, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !130, line: 22, baseType: !506)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !737, file: !738, line: 42, baseType: !741, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !737, file: !738, line: 46, baseType: !750, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !205, line: 29, baseType: !212)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !737, file: !738, line: 47, baseType: !191, size: 128, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !704, file: !44, line: 462, baseType: !295, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !704, file: !44, line: 463, baseType: !295, size: 64, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !704, file: !44, line: 464, baseType: !295, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !704, file: !44, line: 465, baseType: !756, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !759)
!759 = !{!760, !764, !768, !772, !776, !780, !786, !792, !796, !801, !805, !809, !813, !841, !845, !851, !852, !853, !857, !862, !866, !873}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !758, file: !44, line: 368, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!140, !690, !645}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !758, file: !44, line: 369, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!140, !323, !690}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !758, file: !44, line: 372, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!140, !703, !645}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !758, file: !44, line: 375, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!140, !690}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !758, file: !44, line: 381, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!140, !323, !703, !194, !7}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !758, file: !44, line: 383, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !758, file: !44, line: 385, baseType: !787, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!140, !323, !703, !497, !7, !7, !790, !791}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !758, file: !44, line: 388, baseType: !793, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!140, !323, !703, !497, !7, !7, !690, !134}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !758, file: !44, line: 393, baseType: !797, size: 64, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!800, !703, !800}
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !168, line: 125, baseType: !390)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !758, file: !44, line: 394, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !690, !7, !7}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !758, file: !44, line: 395, baseType: !806, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!140, !690, !713}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !758, file: !44, line: 396, baseType: !810, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !690}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !758, file: !44, line: 397, baseType: !814, size: 64, offset: 768)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!276, !817, !839}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !819)
!819 = !{!820, !821, !822, !826, !827, !828, !831, !832}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !818, file: !44, line: 321, baseType: !323, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !818, file: !44, line: 326, baseType: !497, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !818, file: !44, line: 327, baseType: !823, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !817, !280, !280}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !818, file: !44, line: 328, baseType: !134, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !818, file: !44, line: 329, baseType: !140, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !818, file: !44, line: 330, baseType: !829, size: 16, offset: 288)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !130, line: 19, baseType: !830)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !132, line: 24, baseType: !287)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !818, file: !44, line: 331, baseType: !829, size: 16, offset: 304)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !44, line: 332, baseType: !833, size: 64, offset: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !44, line: 332, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !833, file: !44, line: 333, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !833, file: !44, line: 334, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !758, file: !44, line: 402, baseType: !842, size: 64, offset: 832)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!140, !703, !690, !690, !5}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !758, file: !44, line: 404, baseType: !846, size: 64, offset: 896)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!167, !690, !849}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !850, line: 305, baseType: !7)
!850 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!851 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !758, file: !44, line: 405, baseType: !810, size: 64, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !758, file: !44, line: 406, baseType: !773, size: 64, offset: 1024)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !758, file: !44, line: 407, baseType: !854, size: 64, offset: 1088)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!140, !690, !295, !295}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !758, file: !44, line: 409, baseType: !858, size: 64, offset: 1152)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !690, !861, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !758, file: !44, line: 410, baseType: !863, size: 64, offset: 1216)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!140, !703, !690}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !758, file: !44, line: 413, baseType: !867, size: 64, offset: 1280)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!140, !870, !323, !872}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !758, file: !44, line: 415, baseType: !874, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !323}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !44, line: 466, baseType: !295, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !704, file: !44, line: 467, baseType: !879, size: 32, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !880, line: 8, baseType: !386)
!880 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !704, file: !44, line: 468, baseType: !204, offset: 992)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !704, file: !44, line: 469, baseType: !191, size: 128, offset: 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !704, file: !44, line: 470, baseType: !134, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !699, file: !692, line: 87, baseType: !295, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !699, file: !692, line: 94, baseType: !295, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 96, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 96, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !887, file: !692, line: 101, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !168, line: 143, baseType: !390)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 103, baseType: !892, size: 320)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 103, size: 320, elements: !893)
!893 = !{!894, !904, !907, !908}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !692, line: 104, baseType: !895, size: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !692, line: 104, size: 128, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !895, file: !692, line: 105, baseType: !191, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !692, line: 106, baseType: !899, size: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !692, line: 106, size: 128, elements: !900)
!900 = !{!901, !902, !903}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !692, line: 107, baseType: !690, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !899, file: !692, line: 109, baseType: !140, size: 32, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !899, file: !692, line: 110, baseType: !140, size: 32, offset: 96)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !892, file: !692, line: 117, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !692, line: 117, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !892, file: !692, line: 119, baseType: !134, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !692, line: 120, baseType: !909, size: 64, offset: 256)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !692, line: 120, size: 64, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !909, file: !692, line: 121, baseType: !134, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !909, file: !692, line: 122, baseType: !295, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !909, file: !692, line: 123, baseType: !914, size: 32)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !909, file: !692, line: 123, size: 32, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !914, file: !692, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !914, file: !692, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !914, file: !692, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!919 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 130, baseType: !920, size: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 130, size: 192, elements: !921)
!921 = !{!922, !923, !924, !925, !926}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !920, file: !692, line: 131, baseType: !295, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !920, file: !692, line: 134, baseType: !133, size: 8, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !920, file: !692, line: 135, baseType: !133, size: 8, offset: 72)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !920, file: !692, line: 136, baseType: !717, size: 32, offset: 96)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !920, file: !692, line: 137, baseType: !7, size: 32, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 139, baseType: !928, size: 256)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 139, size: 256, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !928, file: !692, line: 140, baseType: !295, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !928, file: !692, line: 141, baseType: !717, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !928, file: !692, line: 143, baseType: !191, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 145, baseType: !934, size: 256)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 145, size: 256, elements: !935)
!935 = !{!936, !937, !939, !940, !2302}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !934, file: !692, line: 146, baseType: !295, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !934, file: !692, line: 147, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !682, line: 509, baseType: !690)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !934, file: !692, line: 148, baseType: !295, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !692, line: 149, baseType: !941, size: 64, offset: 192)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !934, file: !692, line: 149, size: 64, elements: !942)
!942 = !{!943, !2301}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !941, file: !692, line: 150, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !692, line: 388, size: 7296, elements: !946)
!946 = !{!947, !2297}
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !945, file: !692, line: 389, baseType: !948, size: 7296)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !692, line: 389, size: 7296, elements: !949)
!949 = !{!950, !1068, !1069, !1070, !1074, !1075, !1076, !1077, !1078, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1119, !1127, !1130, !1176, !1177, !2281, !2282, !2285, !2286, !2287, !2290, !2291, !2292, !2295, !2296}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !948, file: !692, line: 390, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !692, line: 305, size: 1472, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959, !960, !961, !968, !969, !974, !975, !978, !1062, !1063, !1064, !1065, !1066}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !952, file: !692, line: 308, baseType: !295, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !952, file: !692, line: 309, baseType: !295, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !952, file: !692, line: 313, baseType: !951, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !952, file: !692, line: 313, baseType: !951, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !952, file: !692, line: 315, baseType: !730, size: 192, align: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !952, file: !692, line: 323, baseType: !295, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !952, file: !692, line: 327, baseType: !944, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !952, file: !692, line: 333, baseType: !962, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !682, line: 284, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !682, line: 284, size: 64, elements: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !963, file: !682, line: 284, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !967, line: 19, baseType: !295)
!967 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !952, file: !692, line: 334, baseType: !295, size: 64, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !952, file: !692, line: 343, baseType: !970, size: 256, offset: 704)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !692, line: 340, size: 256, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !970, file: !692, line: 341, baseType: !730, size: 192, align: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !970, file: !692, line: 342, baseType: !295, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !952, file: !692, line: 351, baseType: !191, size: 128, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !952, file: !692, line: 353, baseType: !976, size: 64, offset: 1088)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !692, line: 353, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !952, file: !692, line: 356, baseType: !979, size: 64, offset: 1152)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !982)
!982 = !{!983, !987, !988, !992, !996, !1036, !1040, !1044, !1048, !1049, !1050, !1054, !1058}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !981, file: !14, line: 558, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !951}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !981, file: !14, line: 559, baseType: !984, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !981, file: !14, line: 560, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!140, !951, !295}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !981, file: !14, line: 561, baseType: !993, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!140, !951}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !981, file: !14, line: 562, baseType: !997, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !692, line: 682, baseType: !7)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1007, !1008, !1009, !1016, !1023, !1029, !1030, !1031, !1033, !1035}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1002, file: !14, line: 509, baseType: !951, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1002, file: !14, line: 511, baseType: !713, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1002, file: !14, line: 512, baseType: !295, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1002, file: !14, line: 513, baseType: !295, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1002, file: !14, line: 514, baseType: !1010, size: 64, offset: 256)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !682, line: 385, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 385, size: 64, elements: !1013)
!1013 = !{!1014}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1012, file: !682, line: 385, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !967, line: 15, baseType: !295)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1002, file: !14, line: 516, baseType: !1017, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !682, line: 359, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 359, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1019, file: !682, line: 359, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !967, line: 16, baseType: !295)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1002, file: !14, line: 519, baseType: !1024, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !967, line: 21, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !967, line: 21, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1025, file: !967, line: 21, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !967, line: 14, baseType: !295)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1002, file: !14, line: 521, baseType: !690, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1002, file: !14, line: 522, baseType: !690, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1002, file: !14, line: 528, baseType: !1032, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1002, file: !14, line: 532, baseType: !1034, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1002, file: !14, line: 536, baseType: !938, size: 64, offset: 704)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !981, file: !14, line: 563, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!1000, !1001, !13}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !981, file: !14, line: 565, baseType: !1041, size: 64, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !1001, !295, !295}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !981, file: !14, line: 567, baseType: !1045, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!295, !951}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !981, file: !14, line: 571, baseType: !997, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !981, file: !14, line: 574, baseType: !997, size: 64, offset: 576)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !981, file: !14, line: 579, baseType: !1051, size: 64, offset: 640)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!140, !951, !295, !134, !140, !140}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !981, file: !14, line: 585, baseType: !1055, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!187, !951}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !981, file: !14, line: 615, baseType: !1059, size: 64, offset: 768)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!690, !951, !295}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !952, file: !692, line: 359, baseType: !295, size: 64, offset: 1216)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !952, file: !692, line: 361, baseType: !323, size: 64, offset: 1280)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !952, file: !692, line: 362, baseType: !134, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !952, file: !692, line: 365, baseType: !741, size: 64, offset: 1408)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !952, file: !692, line: 373, baseType: !1067, offset: 1472)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !692, line: 296, elements: !218)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !948, file: !692, line: 391, baseType: !726, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !948, file: !692, line: 392, baseType: !390, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !948, file: !692, line: 394, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!295, !323, !295, !295, !295, !295}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !948, file: !692, line: 398, baseType: !295, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !948, file: !692, line: 399, baseType: !295, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !948, file: !692, line: 405, baseType: !295, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !948, file: !692, line: 406, baseType: !295, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !948, file: !692, line: 407, baseType: !1079, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !682, line: 286, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 286, size: 64, elements: !1082)
!1082 = !{!1083}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1081, file: !682, line: 286, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !967, line: 18, baseType: !295)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !948, file: !692, line: 416, baseType: !717, size: 32, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !948, file: !692, line: 428, baseType: !717, size: 32, offset: 608)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !948, file: !692, line: 437, baseType: !717, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !948, file: !692, line: 447, baseType: !717, size: 32, offset: 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !948, file: !692, line: 450, baseType: !741, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !948, file: !692, line: 452, baseType: !140, size: 32, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !948, file: !692, line: 454, baseType: !204, offset: 800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !948, file: !692, line: 457, baseType: !737, size: 256, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !948, file: !692, line: 459, baseType: !191, size: 128, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !948, file: !692, line: 466, baseType: !295, size: 64, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !948, file: !692, line: 467, baseType: !295, size: 64, offset: 1280)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !948, file: !692, line: 469, baseType: !295, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !948, file: !692, line: 470, baseType: !295, size: 64, offset: 1408)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !948, file: !692, line: 471, baseType: !743, size: 64, offset: 1472)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !948, file: !692, line: 472, baseType: !295, size: 64, offset: 1536)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !948, file: !692, line: 473, baseType: !295, size: 64, offset: 1600)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !948, file: !692, line: 474, baseType: !295, size: 64, offset: 1664)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !948, file: !692, line: 475, baseType: !295, size: 64, offset: 1728)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !948, file: !692, line: 477, baseType: !204, offset: 1792)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !948, file: !692, line: 478, baseType: !295, size: 64, offset: 1792)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !948, file: !692, line: 478, baseType: !295, size: 64, offset: 1856)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !948, file: !692, line: 478, baseType: !295, size: 64, offset: 1920)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !948, file: !692, line: 478, baseType: !295, size: 64, offset: 1984)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !948, file: !692, line: 479, baseType: !295, size: 64, offset: 2048)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !948, file: !692, line: 479, baseType: !295, size: 64, offset: 2112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !948, file: !692, line: 479, baseType: !295, size: 64, offset: 2176)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !948, file: !692, line: 480, baseType: !295, size: 64, offset: 2240)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !948, file: !692, line: 480, baseType: !295, size: 64, offset: 2304)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !948, file: !692, line: 480, baseType: !295, size: 64, offset: 2368)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !948, file: !692, line: 480, baseType: !295, size: 64, offset: 2432)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !948, file: !692, line: 482, baseType: !1116, size: 2816, offset: 2496)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 2816, elements: !1117)
!1117 = !{!1118}
!1118 = !DISubrange(count: 44)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !948, file: !692, line: 488, baseType: !1120, size: 256, offset: 5312)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1121, line: 60, size: 256, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1120, file: !1121, line: 61, baseType: !1124, size: 256)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !1125)
!1125 = !{!1126}
!1126 = !DISubrange(count: 4)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !948, file: !692, line: 490, baseType: !1128, size: 64, offset: 5568)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !692, line: 490, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !948, file: !692, line: 493, baseType: !1131, size: 896, offset: 5632)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1132, line: 53, baseType: !1133)
!1132 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1132, line: 13, size: 896, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1141, !1142, !1149, !1150, !1170, !1171, !1172}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1133, file: !1132, line: 18, baseType: !390, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1133, file: !1132, line: 28, baseType: !743, size: 64, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1133, file: !1132, line: 31, baseType: !737, size: 256, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1133, file: !1132, line: 32, baseType: !1139, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1132, line: 32, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1133, file: !1132, line: 37, baseType: !287, size: 16, offset: 448)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1132, line: 40, baseType: !1143, size: 192, offset: 512)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1144, line: 53, size: 192, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1147, !1148}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1143, file: !1144, line: 54, baseType: !741, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1143, file: !1144, line: 55, baseType: !204, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1143, file: !1144, line: 59, baseType: !191, size: 128, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1133, file: !1132, line: 41, baseType: !134, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1133, file: !1132, line: 42, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1154, line: 13, size: 896, elements: !1155)
!1154 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1153, file: !1154, line: 14, baseType: !134, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !1154, line: 15, baseType: !295, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1153, file: !1154, line: 17, baseType: !295, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1153, file: !1154, line: 17, baseType: !295, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1153, file: !1154, line: 19, baseType: !280, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1153, file: !1154, line: 21, baseType: !280, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1153, file: !1154, line: 22, baseType: !280, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1153, file: !1154, line: 23, baseType: !280, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1153, file: !1154, line: 24, baseType: !280, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1153, file: !1154, line: 25, baseType: !280, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1153, file: !1154, line: 26, baseType: !280, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1153, file: !1154, line: 27, baseType: !280, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1153, file: !1154, line: 28, baseType: !280, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1153, file: !1154, line: 29, baseType: !280, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1133, file: !1132, line: 44, baseType: !717, size: 32, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1133, file: !1132, line: 50, baseType: !829, size: 16, offset: 864)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1133, file: !1132, line: 51, baseType: !1173, size: 16, offset: 880)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !130, line: 18, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !132, line: 23, baseType: !1175)
!1175 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !692, line: 495, baseType: !295, size: 64, offset: 6528)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !948, file: !692, line: 497, baseType: !1178, size: 64, offset: 6592)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !692, line: 381, size: 384, elements: !1180)
!1180 = !{!1181, !1182, !2280}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1179, file: !692, line: 382, baseType: !717, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1179, file: !692, line: 383, baseType: !1183, size: 128, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !692, line: 376, size: 128, elements: !1184)
!1184 = !{!1185, !2278}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1183, file: !692, line: 377, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1188, line: 640, size: 48640, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1196, !1198, !1199, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1216, !1234, !1245, !1328, !1329, !1330, !1341, !1342, !1344, !1345, !1346, !1347, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1426, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1464, !1466, !1467, !1468, !1480, !1481, !1482, !1483, !1484, !1485, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1509, !1514, !1698, !1699, !1700, !1701, !1705, !1708, !1711, !1714, !1717, !1721, !1822, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1868, !1869, !1870, !1871, !1872, !1877, !1878, !1879, !1882, !1883, !1886, !1889, !1892, !1895, !1938, !1941, !1942, !2021, !2022, !2025, !2026, !2029, !2030, !2031, !2035, !2036, !2037, !2050, !2051, !2052, !2062, !2067, !2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1187, file: !1188, line: 646, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1192, line: 56, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 57, baseType: !295, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1191, file: !1192, line: 58, baseType: !386, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1187, file: !1188, line: 649, baseType: !1197, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !280)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1187, file: !1188, line: 657, baseType: !134, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1187, file: !1188, line: 658, baseType: !1200, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1201, line: 113, baseType: !1202)
!1201 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1201, line: 111, size: 32, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1202, file: !1201, line: 112, baseType: !717, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 660, baseType: !7, size: 32, offset: 288)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1187, file: !1188, line: 661, baseType: !7, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1187, file: !1188, line: 684, baseType: !140, size: 32, offset: 352)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1187, file: !1188, line: 686, baseType: !140, size: 32, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1187, file: !1188, line: 687, baseType: !140, size: 32, offset: 416)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1187, file: !1188, line: 688, baseType: !140, size: 32, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1187, file: !1188, line: 689, baseType: !7, size: 32, offset: 480)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1187, file: !1188, line: 691, baseType: !1213, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1188, line: 691, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1187, file: !1188, line: 692, baseType: !1217, size: 832, offset: 576)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1188, line: 451, size: 832, elements: !1218)
!1218 = !{!1219, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1217, file: !1188, line: 453, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1188, line: 325, size: 128, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1220, file: !1188, line: 326, baseType: !295, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1220, file: !1188, line: 327, baseType: !386, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1217, file: !1188, line: 454, baseType: !730, size: 192, align: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1217, file: !1188, line: 455, baseType: !191, size: 128, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1217, file: !1188, line: 456, baseType: !7, size: 32, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1217, file: !1188, line: 458, baseType: !390, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1217, file: !1188, line: 459, baseType: !390, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1217, file: !1188, line: 460, baseType: !390, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1217, file: !1188, line: 461, baseType: !390, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1217, file: !1188, line: 463, baseType: !390, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1217, file: !1188, line: 465, baseType: !1233, offset: 832)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1188, line: 415, elements: !218)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1187, file: !1188, line: 693, baseType: !1235, size: 384, offset: 1408)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1188, line: 489, size: 384, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1235, file: !1188, line: 490, baseType: !191, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1235, file: !1188, line: 491, baseType: !295, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1235, file: !1188, line: 492, baseType: !295, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1235, file: !1188, line: 493, baseType: !7, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1235, file: !1188, line: 494, baseType: !287, size: 16, offset: 288)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1235, file: !1188, line: 495, baseType: !287, size: 16, offset: 304)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1235, file: !1188, line: 497, baseType: !1244, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1187, file: !1188, line: 697, baseType: !1246, size: 1792, offset: 1792)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1188, line: 507, size: 1792, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1325, !1326}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1246, file: !1188, line: 508, baseType: !730, size: 192, align: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1246, file: !1188, line: 515, baseType: !390, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1246, file: !1188, line: 516, baseType: !390, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1246, file: !1188, line: 517, baseType: !390, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1246, file: !1188, line: 518, baseType: !390, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1246, file: !1188, line: 519, baseType: !390, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1246, file: !1188, line: 526, baseType: !747, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1246, file: !1188, line: 527, baseType: !390, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !1188, line: 528, baseType: !7, size: 32, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1246, file: !1188, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1246, file: !1188, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1246, file: !1188, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1246, file: !1188, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1246, file: !1188, line: 563, baseType: !1262, size: 512, offset: 704)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1263)
!1263 = !{!1264, !1272, !1273, !1278, !1321, !1322, !1323, !1324}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1262, file: !20, line: 119, baseType: !1265, size: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1266, line: 9, size: 256, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1265, file: !1266, line: 10, baseType: !730, size: 192, align: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1265, file: !1266, line: 11, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1271, line: 29, baseType: !747)
!1271 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1262, file: !20, line: 120, baseType: !1270, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1262, file: !20, line: 121, baseType: !1274, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!19, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1262, file: !20, line: 122, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1281)
!1281 = !{!1282, !1302, !1303, !1306, !1311, !1312, !1316, !1320}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1280, file: !20, line: 160, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1284, file: !20, line: 215, baseType: !750)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1284, file: !20, line: 216, baseType: !7, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1284, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1284, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1284, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1284, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1284, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1284, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1284, file: !20, line: 233, baseType: !1270, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1284, file: !20, line: 234, baseType: !1277, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1284, file: !20, line: 235, baseType: !1270, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1284, file: !20, line: 236, baseType: !1277, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1284, file: !20, line: 237, baseType: !1299, size: 4096, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 4096, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 8)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1280, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1280, file: !20, line: 162, baseType: !1304, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !168, line: 27, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !278, line: 96, baseType: !140)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1280, file: !20, line: 163, baseType: !1307, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !359, line: 276, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !359, line: 276, size: 32, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1308, file: !359, line: 276, baseType: !363, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1280, file: !20, line: 164, baseType: !1277, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1280, file: !20, line: 165, baseType: !1313, size: 128, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1266, line: 14, size: 128, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1313, file: !1266, line: 15, baseType: !722, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1280, file: !20, line: 166, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1270}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1280, file: !20, line: 167, baseType: !1270, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1262, file: !20, line: 123, baseType: !129, size: 8, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1262, file: !20, line: 124, baseType: !129, size: 8, offset: 456)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1262, file: !20, line: 125, baseType: !129, size: 8, offset: 464)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1262, file: !20, line: 126, baseType: !129, size: 8, offset: 472)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1246, file: !1188, line: 572, baseType: !1262, size: 512, offset: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1246, file: !1188, line: 580, baseType: !1327, size: 64, offset: 1728)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1187, file: !1188, line: 721, baseType: !7, size: 32, offset: 3584)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1187, file: !1188, line: 722, baseType: !140, size: 32, offset: 3616)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1187, file: !1188, line: 723, baseType: !1331, size: 64, offset: 3648)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1334, line: 17, baseType: !1335)
!1334 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1334, line: 17, size: 64, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1335, file: !1334, line: 17, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 1)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1187, file: !1188, line: 724, baseType: !1333, size: 64, offset: 3712)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1187, file: !1188, line: 749, baseType: !1343, offset: 3776)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1188, line: 290, elements: !218)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1187, file: !1188, line: 751, baseType: !191, size: 128, offset: 3776)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1187, file: !1188, line: 757, baseType: !944, size: 64, offset: 3904)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1187, file: !1188, line: 758, baseType: !944, size: 64, offset: 3968)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1187, file: !1188, line: 761, baseType: !1348, size: 320, offset: 4032)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1121, line: 34, size: 320, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1348, file: !1121, line: 35, baseType: !390, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1348, file: !1121, line: 36, baseType: !1352, size: 256, offset: 64)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 256, elements: !1125)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1187, file: !1188, line: 766, baseType: !140, size: 32, offset: 4352)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1187, file: !1188, line: 767, baseType: !140, size: 32, offset: 4384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1187, file: !1188, line: 768, baseType: !140, size: 32, offset: 4416)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1187, file: !1188, line: 770, baseType: !140, size: 32, offset: 4448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1187, file: !1188, line: 772, baseType: !295, size: 64, offset: 4480)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1187, file: !1188, line: 775, baseType: !7, size: 32, offset: 4544)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1187, file: !1188, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1187, file: !1188, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1187, file: !1188, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1187, file: !1188, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1187, file: !1188, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1187, file: !1188, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1187, file: !1188, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1187, file: !1188, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1187, file: !1188, line: 831, baseType: !295, size: 64, offset: 4672)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1187, file: !1188, line: 833, baseType: !1369, size: 384, offset: 4736)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1370)
!1370 = !{!1371, !1376}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1369, file: !25, line: 26, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!280, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !25, line: 27, baseType: !1377, size: 320, offset: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1369, file: !25, line: 27, size: 320, elements: !1378)
!1378 = !{!1379, !1389, !1416}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1377, file: !25, line: 36, baseType: !1380, size: 320)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 29, size: 320, elements: !1381)
!1381 = !{!1382, !1384, !1385, !1386, !1387, !1388}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1380, file: !25, line: 30, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1380, file: !25, line: 31, baseType: !386, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1380, file: !25, line: 32, baseType: !386, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1380, file: !25, line: 33, baseType: !386, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1380, file: !25, line: 34, baseType: !390, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1380, file: !25, line: 35, baseType: !1383, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1377, file: !25, line: 46, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 38, size: 192, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1415}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1390, file: !25, line: 39, baseType: !1304, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1390, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !25, line: 41, baseType: !1395, size: 64, offset: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1390, file: !25, line: 41, size: 64, elements: !1396)
!1396 = !{!1397, !1405}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1395, file: !25, line: 42, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1400, line: 7, size: 128, elements: !1401)
!1400 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1401 = !{!1402, !1404}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1399, file: !1400, line: 8, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !278, line: 93, baseType: !499)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1399, file: !1400, line: 9, baseType: !499, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1395, file: !25, line: 43, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1408, line: 7, size: 64, elements: !1409)
!1408 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1414}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1407, file: !1408, line: 8, baseType: !1411, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1408, line: 5, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !130, line: 20, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !132, line: 26, baseType: !140)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1407, file: !1408, line: 9, baseType: !1412, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1390, file: !25, line: 45, baseType: !390, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1377, file: !25, line: 54, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1377, file: !25, line: 48, size: 256, elements: !1418)
!1418 = !{!1419, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1417, file: !25, line: 49, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1417, file: !25, line: 50, baseType: !140, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1417, file: !25, line: 51, baseType: !140, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1417, file: !25, line: 52, baseType: !295, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1417, file: !25, line: 53, baseType: !295, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1187, file: !1188, line: 835, baseType: !1427, size: 32, offset: 5120)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !168, line: 22, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !278, line: 28, baseType: !140)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1187, file: !1188, line: 836, baseType: !1427, size: 32, offset: 5152)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1187, file: !1188, line: 840, baseType: !295, size: 64, offset: 5184)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1187, file: !1188, line: 849, baseType: !1186, size: 64, offset: 5248)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1187, file: !1188, line: 852, baseType: !1186, size: 64, offset: 5312)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1187, file: !1188, line: 857, baseType: !191, size: 128, offset: 5376)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1187, file: !1188, line: 858, baseType: !191, size: 128, offset: 5504)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1187, file: !1188, line: 859, baseType: !1186, size: 64, offset: 5632)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1187, file: !1188, line: 867, baseType: !191, size: 128, offset: 5696)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1187, file: !1188, line: 868, baseType: !191, size: 128, offset: 5824)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1187, file: !1188, line: 871, baseType: !1439, size: 64, offset: 5952)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1441)
!1441 = !{!1442, !1443, !1444, !1445, !1447, !1448, !1455, !1456}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1440, file: !53, line: 61, baseType: !1200, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1440, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !53, line: 63, baseType: !204, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1440, file: !53, line: 65, baseType: !1446, size: 256, offset: 64)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1125)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1440, file: !53, line: 66, baseType: !604, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1440, file: !53, line: 68, baseType: !1449, size: 128, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1450, line: 40, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1450, line: 36, size: 128, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1451, file: !1450, line: 37, baseType: !204)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1451, file: !1450, line: 38, baseType: !191, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1440, file: !53, line: 69, baseType: !336, size: 128, align: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1440, file: !53, line: 70, baseType: !1457, size: 128, offset: 640)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1458, size: 128, elements: !1339)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1458, file: !53, line: 55, baseType: !140, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1458, file: !53, line: 56, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1187, file: !1188, line: 872, baseType: !1465, size: 512, offset: 6016)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1125)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1187, file: !1188, line: 873, baseType: !191, size: 128, offset: 6528)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1187, file: !1188, line: 874, baseType: !191, size: 128, offset: 6656)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1187, file: !1188, line: 876, baseType: !1469, size: 64, offset: 6784)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1471, line: 26, size: 192, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1470, file: !1471, line: 27, baseType: !7, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1470, file: !1471, line: 28, baseType: !1475, size: 128, offset: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1476, line: 43, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1477 = !{!1478, !1479}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !1476, line: 44, baseType: !750)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1475, file: !1476, line: 45, baseType: !191, size: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1187, file: !1188, line: 879, baseType: !674, size: 64, offset: 6848)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1187, file: !1188, line: 882, baseType: !674, size: 64, offset: 6912)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1187, file: !1188, line: 884, baseType: !390, size: 64, offset: 6976)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1187, file: !1188, line: 885, baseType: !390, size: 64, offset: 7040)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1187, file: !1188, line: 890, baseType: !390, size: 64, offset: 7104)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1187, file: !1188, line: 891, baseType: !1486, size: 128, offset: 7168)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1188, line: 242, size: 128, elements: !1487)
!1487 = !{!1488, !1489, !1490}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1486, file: !1188, line: 244, baseType: !390, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1486, file: !1188, line: 245, baseType: !390, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1188, line: 246, baseType: !750, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1187, file: !1188, line: 900, baseType: !295, size: 64, offset: 7296)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1187, file: !1188, line: 901, baseType: !295, size: 64, offset: 7360)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1187, file: !1188, line: 904, baseType: !390, size: 64, offset: 7424)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1187, file: !1188, line: 907, baseType: !390, size: 64, offset: 7488)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1187, file: !1188, line: 910, baseType: !295, size: 64, offset: 7552)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1187, file: !1188, line: 911, baseType: !295, size: 64, offset: 7616)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1187, file: !1188, line: 914, baseType: !1498, size: 640, offset: 7680)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1499, line: 123, size: 640, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1507, !1508}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1498, file: !1499, line: 124, baseType: !1502, size: 576)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1503, size: 576, elements: !246)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1499, line: 108, size: 192, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1503, file: !1499, line: 109, baseType: !390, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1503, file: !1499, line: 110, baseType: !1313, size: 128, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1498, file: !1499, line: 125, baseType: !7, size: 32, offset: 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1498, file: !1499, line: 126, baseType: !7, size: 32, offset: 608)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1187, file: !1188, line: 917, baseType: !1510, size: 192, offset: 8320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1499, line: 134, size: 192, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1510, file: !1499, line: 135, baseType: !336, size: 128, align: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1510, file: !1499, line: 136, baseType: !7, size: 32, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1187, file: !1188, line: 923, baseType: !1515, size: 64, offset: 8512)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1518, line: 111, size: 1280, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1539, !1540, !1541, !1542, !1543, !1544, !1651, !1652, !1653, !1654, !1680, !1683, !1693}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1517, file: !1518, line: 112, baseType: !717, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1517, file: !1518, line: 120, baseType: !403, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1517, file: !1518, line: 121, baseType: !411, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1517, file: !1518, line: 122, baseType: !403, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1517, file: !1518, line: 123, baseType: !411, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1517, file: !1518, line: 124, baseType: !403, size: 32, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1517, file: !1518, line: 125, baseType: !411, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1517, file: !1518, line: 126, baseType: !403, size: 32, offset: 224)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1517, file: !1518, line: 127, baseType: !411, size: 32, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1517, file: !1518, line: 128, baseType: !7, size: 32, offset: 288)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1517, file: !1518, line: 129, baseType: !1531, size: 64, offset: 320)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1532, line: 26, baseType: !1533)
!1532 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1532, line: 24, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1533, file: !1532, line: 25, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DISubrange(count: 2)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1517, file: !1518, line: 130, baseType: !1531, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1517, file: !1518, line: 131, baseType: !1531, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1517, file: !1518, line: 132, baseType: !1531, size: 64, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1517, file: !1518, line: 133, baseType: !1531, size: 64, offset: 576)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1517, file: !1518, line: 135, baseType: !133, size: 8, offset: 640)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1517, file: !1518, line: 137, baseType: !1545, size: 64, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1547, line: 189, size: 1664, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1550, !1553, !1558, !1559, !1562, !1563, !1568, !1569, !1570, !1571, !1573, !1574, !1575, !1576, !1577, !1615, !1636}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1546, file: !1547, line: 190, baseType: !1200, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1546, file: !1547, line: 191, baseType: !1551, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1547, line: 28, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !168, line: 98, baseType: !1412)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 192, baseType: !1554, size: 192, offset: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 192, size: 192, elements: !1555)
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1554, file: !1547, line: 193, baseType: !191, size: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1554, file: !1547, line: 194, baseType: !730, size: 192, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1546, file: !1547, line: 199, baseType: !737, size: 256, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1546, file: !1547, line: 200, baseType: !1560, size: 64, offset: 512)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1547, line: 200, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1546, file: !1547, line: 201, baseType: !134, size: 64, offset: 576)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 202, baseType: !1564, size: 64, offset: 640)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 202, size: 64, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1564, file: !1547, line: 203, baseType: !505, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1564, file: !1547, line: 204, baseType: !505, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1546, file: !1547, line: 206, baseType: !505, size: 64, offset: 704)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1546, file: !1547, line: 207, baseType: !403, size: 32, offset: 768)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1546, file: !1547, line: 208, baseType: !411, size: 32, offset: 800)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1546, file: !1547, line: 209, baseType: !1572, size: 32, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1547, line: 31, baseType: !525)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1546, file: !1547, line: 210, baseType: !287, size: 16, offset: 864)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1546, file: !1547, line: 211, baseType: !287, size: 16, offset: 880)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1546, file: !1547, line: 215, baseType: !1175, size: 16, offset: 896)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1546, file: !1547, line: 222, baseType: !295, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 239, baseType: !1578, size: 320, offset: 1024)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 239, size: 320, elements: !1579)
!1579 = !{!1580, !1607}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1578, file: !1547, line: 240, baseType: !1581, size: 320)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1547, line: 108, size: 320, elements: !1582)
!1582 = !{!1583, !1584, !1596, !1599, !1606}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1581, file: !1547, line: 110, baseType: !295, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1547, line: 111, baseType: !1585, size: 64, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !1547, line: 111, size: 64, elements: !1586)
!1586 = !{!1587, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1585, file: !1547, line: 112, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1585, file: !1547, line: 112, size: 64, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1588, file: !1547, line: 114, baseType: !829, size: 16)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1588, file: !1547, line: 115, baseType: !1592, size: 48, offset: 16)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 48, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 6)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1585, file: !1547, line: 121, baseType: !295, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1581, file: !1547, line: 123, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1547, line: 96, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1581, file: !1547, line: 124, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1547, line: 102, size: 192, elements: !1602)
!1602 = !{!1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1601, file: !1547, line: 103, baseType: !336, size: 128, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1601, file: !1547, line: 104, baseType: !1200, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1601, file: !1547, line: 105, baseType: !167, size: 8, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1581, file: !1547, line: 125, baseType: !187, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, scope: !1578, file: !1547, line: 241, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1578, file: !1547, line: 241, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1547, line: 242, baseType: !295, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1608, file: !1547, line: 243, baseType: !295, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1547, line: 244, baseType: !1597, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1547, line: 245, baseType: !1600, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1547, line: 246, baseType: !245, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1547, line: 254, baseType: !1616, size: 256, offset: 1344)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !1547, line: 254, size: 256, elements: !1617)
!1617 = !{!1618, !1624}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1616, file: !1547, line: 255, baseType: !1619, size: 256)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1547, line: 128, size: 256, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1619, file: !1547, line: 129, baseType: !134, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1619, file: !1547, line: 130, baseType: !1623, size: 256)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !1125)
!1624 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1547, line: 256, baseType: !1625, size: 256)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1547, line: 256, size: 256, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1625, file: !1547, line: 258, baseType: !191, size: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1625, file: !1547, line: 259, baseType: !1629, size: 128, offset: 128)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1630, line: 22, size: 128, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1635}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1629, file: !1630, line: 23, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1630, line: 23, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1629, file: !1630, line: 24, baseType: !295, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1546, file: !1547, line: 274, baseType: !1637, size: 64, offset: 1600)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1547, line: 170, size: 192, elements: !1639)
!1639 = !{!1640, !1649, !1650}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1638, file: !1547, line: 171, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1547, line: 165, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!140, !1545, !1645, !1647, !1545}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1638, file: !1547, line: 172, baseType: !1545, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1638, file: !1547, line: 173, baseType: !1597, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1517, file: !1518, line: 138, baseType: !1545, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1517, file: !1518, line: 139, baseType: !1545, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1517, file: !1518, line: 140, baseType: !1545, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1517, file: !1518, line: 145, baseType: !1655, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1657, line: 13, size: 896, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1656, file: !1657, line: 14, baseType: !1200, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1656, file: !1657, line: 15, baseType: !717, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1656, file: !1657, line: 16, baseType: !717, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1656, file: !1657, line: 21, baseType: !741, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1656, file: !1657, line: 27, baseType: !295, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1656, file: !1657, line: 28, baseType: !295, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1656, file: !1657, line: 29, baseType: !741, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1656, file: !1657, line: 32, baseType: !608, size: 128, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1656, file: !1657, line: 33, baseType: !403, size: 32, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1656, file: !1657, line: 37, baseType: !741, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1656, file: !1657, line: 44, baseType: !1670, size: 256, offset: 640)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1671, line: 15, size: 256, elements: !1672)
!1671 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1670, file: !1671, line: 16, baseType: !750)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1670, file: !1671, line: 18, baseType: !140, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1670, file: !1671, line: 19, baseType: !140, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1670, file: !1671, line: 20, baseType: !140, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1670, file: !1671, line: 21, baseType: !140, size: 32, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1670, file: !1671, line: 22, baseType: !295, size: 64, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1670, file: !1671, line: 23, baseType: !295, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1517, file: !1518, line: 146, baseType: !1681, size: 64, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !692, line: 516, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1517, file: !1518, line: 147, baseType: !1684, size: 64, offset: 1088)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1518, line: 25, size: 64, elements: !1686)
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1685, file: !1518, line: 26, baseType: !717, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1685, file: !1518, line: 27, baseType: !140, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1685, file: !1518, line: 28, baseType: !1690, offset: 64)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 0)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !1518, line: 149, baseType: !1694, size: 128, offset: 1152)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !1518, line: 149, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1694, file: !1518, line: 150, baseType: !140, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1694, file: !1518, line: 151, baseType: !336, size: 128, align: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1187, file: !1188, line: 926, baseType: !1515, size: 64, offset: 8576)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1187, file: !1188, line: 929, baseType: !1515, size: 64, offset: 8640)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1187, file: !1188, line: 933, baseType: !1545, size: 64, offset: 8704)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1187, file: !1188, line: 943, baseType: !1702, size: 128, offset: 8768)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !1703)
!1703 = !{!1704}
!1704 = !DISubrange(count: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1187, file: !1188, line: 945, baseType: !1706, size: 64, offset: 8896)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1188, line: 49, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1187, file: !1188, line: 956, baseType: !1709, size: 64, offset: 8960)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1188, line: 45, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1187, file: !1188, line: 959, baseType: !1712, size: 64, offset: 9024)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1188, line: 959, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1187, file: !1188, line: 962, baseType: !1715, size: 64, offset: 9088)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1188, line: 66, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1187, file: !1188, line: 966, baseType: !1718, size: 64, offset: 9152)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1720, line: 35, flags: DIFlagFwdDecl)
!1720 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1187, file: !1188, line: 969, baseType: !1722, size: 64, offset: 9216)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1724, line: 82, size: 7296, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1761, !1770, !1771, !1773, !1774, !1775, !1778, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1808, !1809, !1816, !1817, !1818, !1819, !1820, !1821}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1723, file: !1724, line: 83, baseType: !1200, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1723, file: !1724, line: 84, baseType: !717, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1723, file: !1724, line: 85, baseType: !140, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1723, file: !1724, line: 86, baseType: !191, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1723, file: !1724, line: 88, baseType: !1449, size: 128, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1723, file: !1724, line: 91, baseType: !1186, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1723, file: !1724, line: 94, baseType: !1733, size: 192, offset: 448)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1734, line: 30, size: 192, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1734, line: 31, baseType: !191, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1733, file: !1734, line: 32, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1739, line: 25, baseType: !1740)
!1739 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 23, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1740, file: !1739, line: 24, baseType: !1338, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1723, file: !1724, line: 97, baseType: !604, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1723, file: !1724, line: 100, baseType: !140, size: 32, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1723, file: !1724, line: 106, baseType: !140, size: 32, offset: 736)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1723, file: !1724, line: 107, baseType: !1186, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1723, file: !1724, line: 110, baseType: !140, size: 32, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 111, baseType: !7, size: 32, offset: 864)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1723, file: !1724, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1723, file: !1724, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1723, file: !1724, line: 128, baseType: !140, size: 32, offset: 928)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1723, file: !1724, line: 129, baseType: !191, size: 128, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1723, file: !1724, line: 132, baseType: !1262, size: 512, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1723, file: !1724, line: 133, baseType: !1270, size: 64, offset: 1600)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1723, file: !1724, line: 140, baseType: !1756, size: 256, offset: 1664)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 256, elements: !1537)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1724, line: 38, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1757, file: !1724, line: 39, baseType: !390, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1757, file: !1724, line: 40, baseType: !390, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1723, file: !1724, line: 146, baseType: !1762, size: 192, offset: 1920)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1724, line: 66, size: 192, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1762, file: !1724, line: 67, baseType: !1765, size: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1724, line: 47, size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1765, file: !1724, line: 48, baseType: !743, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1765, file: !1724, line: 49, baseType: !743, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1765, file: !1724, line: 50, baseType: !743, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1723, file: !1724, line: 150, baseType: !1498, size: 640, offset: 2112)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1723, file: !1724, line: 153, baseType: !1772, size: 256, offset: 2752)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 256, elements: !1125)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1723, file: !1724, line: 159, baseType: !1439, size: 64, offset: 3008)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1723, file: !1724, line: 162, baseType: !140, size: 32, offset: 3072)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1723, file: !1724, line: 164, baseType: !1776, size: 64, offset: 3136)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1724, line: 164, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1723, file: !1724, line: 175, baseType: !1779, size: 32, offset: 3200)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !359, line: 805, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !359, line: 798, size: 32, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1780, file: !359, line: 803, baseType: !358, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !359, line: 804, baseType: !204, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3328)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3392)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1723, file: !1724, line: 176, baseType: !390, size: 64, offset: 3456)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1723, file: !1724, line: 177, baseType: !390, size: 64, offset: 3520)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1723, file: !1724, line: 178, baseType: !390, size: 64, offset: 3584)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1723, file: !1724, line: 179, baseType: !1486, size: 128, offset: 3648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1723, file: !1724, line: 180, baseType: !295, size: 64, offset: 3776)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1723, file: !1724, line: 180, baseType: !295, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1723, file: !1724, line: 180, baseType: !295, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1723, file: !1724, line: 180, baseType: !295, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1723, file: !1724, line: 181, baseType: !295, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1723, file: !1724, line: 181, baseType: !295, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1723, file: !1724, line: 181, baseType: !295, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1723, file: !1724, line: 181, baseType: !295, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1723, file: !1724, line: 182, baseType: !295, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1723, file: !1724, line: 182, baseType: !295, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1723, file: !1724, line: 182, baseType: !295, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1723, file: !1724, line: 182, baseType: !295, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1723, file: !1724, line: 183, baseType: !295, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1723, file: !1724, line: 183, baseType: !295, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1723, file: !1724, line: 184, baseType: !1806, offset: 4672)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1807, line: 12, elements: !218)
!1807 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1723, file: !1724, line: 192, baseType: !392, size: 64, offset: 4672)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1723, file: !1724, line: 203, baseType: !1810, size: 2048, offset: 4736)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 2048, elements: !1703)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1812, line: 43, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1811, file: !1812, line: 44, baseType: !294, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1811, file: !1812, line: 45, baseType: !294, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1723, file: !1724, line: 220, baseType: !167, size: 8, offset: 6784)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1723, file: !1724, line: 221, baseType: !1175, size: 16, offset: 6800)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1723, file: !1724, line: 222, baseType: !1175, size: 16, offset: 6816)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1723, file: !1724, line: 224, baseType: !944, size: 64, offset: 6848)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1723, file: !1724, line: 227, baseType: !1143, size: 192, offset: 6912)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1723, file: !1724, line: 233, baseType: !1143, size: 192, offset: 7104)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1187, file: !1188, line: 970, baseType: !1823, size: 64, offset: 9280)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1724, line: 20, size: 16576, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1824, file: !1724, line: 21, baseType: !204)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1824, file: !1724, line: 22, baseType: !1200, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1824, file: !1724, line: 23, baseType: !1449, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1824, file: !1724, line: 24, baseType: !1830, size: 16384, offset: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 16384, elements: !250)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1734, line: 49, size: 256, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1831, file: !1734, line: 50, baseType: !1834, size: 256)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1734, line: 35, size: 256, elements: !1835)
!1835 = !{!1836, !1843, !1844, !1850}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1834, file: !1734, line: 37, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1838, line: 19, baseType: !1839)
!1838 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1838, line: 18, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !140}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1834, file: !1734, line: 38, baseType: !295, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1834, file: !1734, line: 44, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1838, line: 22, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1838, line: 21, baseType: !1848)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1834, file: !1734, line: 46, baseType: !1738, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1187, file: !1188, line: 971, baseType: !1738, size: 64, offset: 9344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1187, file: !1188, line: 972, baseType: !1738, size: 64, offset: 9408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1187, file: !1188, line: 974, baseType: !1738, size: 64, offset: 9472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1187, file: !1188, line: 975, baseType: !1733, size: 192, offset: 9536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1187, file: !1188, line: 976, baseType: !295, size: 64, offset: 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1187, file: !1188, line: 977, baseType: !292, size: 64, offset: 9792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1187, file: !1188, line: 978, baseType: !7, size: 32, offset: 9856)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1187, file: !1188, line: 980, baseType: !339, size: 64, offset: 9920)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1187, file: !1188, line: 989, baseType: !1860, size: 128, offset: 9984)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1861, line: 35, size: 128, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1860, file: !1861, line: 36, baseType: !140, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1860, file: !1861, line: 37, baseType: !717, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1860, file: !1861, line: 38, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1861, line: 23, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1187, file: !1188, line: 992, baseType: !390, size: 64, offset: 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1187, file: !1188, line: 993, baseType: !390, size: 64, offset: 10176)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1187, file: !1188, line: 996, baseType: !204, offset: 10240)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1187, file: !1188, line: 999, baseType: !750, offset: 10240)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1187, file: !1188, line: 1001, baseType: !1873, size: 64, offset: 10240)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1188, line: 636, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1873, file: !1188, line: 637, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1187, file: !1188, line: 1005, baseType: !722, size: 128, offset: 10304)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1187, file: !1188, line: 1007, baseType: !1186, size: 64, offset: 10432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1187, file: !1188, line: 1009, baseType: !1880, size: 64, offset: 10496)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1188, line: 1009, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1187, file: !1188, line: 1043, baseType: !134, size: 64, offset: 10560)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1187, file: !1188, line: 1046, baseType: !1884, size: 64, offset: 10624)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1188, line: 41, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1187, file: !1188, line: 1050, baseType: !1887, size: 64, offset: 10688)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1188, line: 42, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1187, file: !1188, line: 1054, baseType: !1890, size: 64, offset: 10752)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1188, line: 55, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1187, file: !1188, line: 1056, baseType: !1893, size: 64, offset: 10816)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1188, line: 40, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1187, file: !1188, line: 1058, baseType: !1896, size: 64, offset: 10880)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1898, line: 99, size: 704, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1925, !1926}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1897, file: !1898, line: 100, baseType: !741, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1897, file: !1898, line: 101, baseType: !717, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1897, file: !1898, line: 102, baseType: !717, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 105, baseType: !204, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1897, file: !1898, line: 107, baseType: !287, size: 16, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1897, file: !1898, line: 109, baseType: !708, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1897, file: !1898, line: 110, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1898, line: 73, size: 448, elements: !1909)
!1909 = !{!1910, !1913, !1914, !1919, !1924}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1908, file: !1898, line: 74, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1898, line: 74, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1908, file: !1898, line: 75, baseType: !1896, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 83, baseType: !1915, size: 128, offset: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 83, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1915, file: !1898, line: 84, baseType: !191, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1915, file: !1898, line: 85, baseType: !905, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 87, baseType: !1920, size: 128, offset: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 87, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1920, file: !1898, line: 88, baseType: !608, size: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1920, file: !1898, line: 89, baseType: !336, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1898, line: 92, baseType: !7, size: 32, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1897, file: !1898, line: 111, baseType: !604, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1897, file: !1898, line: 113, baseType: !1927, size: 256, offset: 448)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1928, line: 102, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 103, baseType: !741, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1927, file: !1928, line: 104, baseType: !191, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1927, file: !1928, line: 105, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1928, line: 21, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1187, file: !1188, line: 1061, baseType: !1939, size: 64, offset: 10944)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1188, line: 43, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1187, file: !1188, line: 1064, baseType: !295, size: 64, offset: 11008)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1187, file: !1188, line: 1065, baseType: !1943, size: 64, offset: 11072)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1734, line: 14, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1734, line: 12, size: 384, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1734, line: 13, baseType: !1948, size: 384)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1734, line: 13, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1948, file: !1734, line: 13, baseType: !140, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1948, file: !1734, line: 13, baseType: !140, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1948, file: !1734, line: 13, baseType: !140, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1948, file: !1734, line: 13, baseType: !1954, size: 256, offset: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1955, line: 32, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1962, !1975, !1981, !1990, !2010, !2015}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1954, file: !1955, line: 37, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 34, size: 64, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1958, file: !1955, line: 35, baseType: !1428, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1958, file: !1955, line: 36, baseType: !409, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1954, file: !1955, line: 45, baseType: !1963, size: 192)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 40, size: 192, elements: !1964)
!1964 = !{!1965, !1967, !1968, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1963, file: !1955, line: 41, baseType: !1966, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !278, line: 95, baseType: !140)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1963, file: !1955, line: 42, baseType: !140, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1963, file: !1955, line: 43, baseType: !1969, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1955, line: 11, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1955, line: 8, size: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1970, file: !1955, line: 9, baseType: !140, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1970, file: !1955, line: 10, baseType: !134, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1963, file: !1955, line: 44, baseType: !140, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1954, file: !1955, line: 52, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 48, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1976, file: !1955, line: 49, baseType: !1428, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1976, file: !1955, line: 50, baseType: !409, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1955, line: 51, baseType: !1969, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1954, file: !1955, line: 61, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 55, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1982, file: !1955, line: 56, baseType: !1428, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1982, file: !1955, line: 57, baseType: !409, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1982, file: !1955, line: 58, baseType: !140, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1982, file: !1955, line: 59, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !278, line: 94, baseType: !279)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1982, file: !1955, line: 60, baseType: !1988, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1954, file: !1955, line: 95, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 64, size: 256, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1991, file: !1955, line: 65, baseType: !134, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1955, line: 77, baseType: !1995, size: 192, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1955, line: 77, size: 192, elements: !1996)
!1996 = !{!1997, !1998, !2005}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1995, file: !1955, line: 82, baseType: !1175, size: 16)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1995, file: !1955, line: 88, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 84, size: 192, elements: !2000)
!2000 = !{!2001, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1999, file: !1955, line: 85, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 64, elements: !1300)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1999, file: !1955, line: 86, baseType: !134, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1999, file: !1955, line: 87, baseType: !134, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1995, file: !1955, line: 93, baseType: !2006, size: 96)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 90, size: 96, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2006, file: !1955, line: 91, baseType: !2002, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2006, file: !1955, line: 92, baseType: !387, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1954, file: !1955, line: 101, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 98, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2011, file: !1955, line: 99, baseType: !280, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2011, file: !1955, line: 100, baseType: !140, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1954, file: !1955, line: 108, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 104, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2016, file: !1955, line: 105, baseType: !134, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2016, file: !1955, line: 106, baseType: !140, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2016, file: !1955, line: 107, baseType: !7, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1187, file: !1188, line: 1067, baseType: !1806, offset: 11136)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1187, file: !1188, line: 1099, baseType: !2023, size: 64, offset: 11136)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1188, line: 56, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1187, file: !1188, line: 1103, baseType: !191, size: 128, offset: 11200)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1187, file: !1188, line: 1104, baseType: !2027, size: 64, offset: 11328)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1188, line: 46, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1187, file: !1188, line: 1105, baseType: !1143, size: 192, offset: 11392)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1187, file: !1188, line: 1106, baseType: !7, size: 32, offset: 11584)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1187, file: !1188, line: 1109, baseType: !2032, size: 128, offset: 11648)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 128, elements: !1537)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1188, line: 51, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1187, file: !1188, line: 1110, baseType: !1143, size: 192, offset: 11776)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1187, file: !1188, line: 1111, baseType: !191, size: 128, offset: 11968)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1187, file: !1188, line: 1173, baseType: !2038, size: 64, offset: 12096)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2040, line: 62, size: 256, align: 256, elements: !2041)
!2040 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2049}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2039, file: !2040, line: 75, baseType: !387, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2039, file: !2040, line: 90, baseType: !387, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2039, file: !2040, line: 124, baseType: !2045, size: 64, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2040, line: 109, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2045, file: !2040, line: 110, baseType: !391, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2045, file: !2040, line: 112, baseType: !391, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 144, baseType: !387, size: 32, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1187, file: !1188, line: 1174, baseType: !386, size: 32, offset: 12160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1187, file: !1188, line: 1179, baseType: !295, size: 64, offset: 12224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1187, file: !1188, line: 1182, baseType: !2053, size: 128, offset: 12288)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1121, line: 76, size: 128, elements: !2054)
!2054 = !{!2055, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2053, file: !1121, line: 85, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2057, line: 7, size: 64, elements: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2056, file: !2057, line: 12, baseType: !1335, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2053, file: !1121, line: 88, baseType: !167, size: 8, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2053, file: !1121, line: 95, baseType: !167, size: 8, offset: 72)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1188, line: 1184, baseType: !2063, size: 128, offset: 12416)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 1184, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2063, file: !1188, line: 1185, baseType: !1200, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2063, file: !1188, line: 1186, baseType: !336, size: 128, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1187, file: !1188, line: 1190, baseType: !2068, size: 64, offset: 12544)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1188, line: 53, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1187, file: !1188, line: 1192, baseType: !2071, size: 128, offset: 12608)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1121, line: 64, size: 128, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !1121, line: 65, baseType: !690, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2071, file: !1121, line: 67, baseType: !387, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2071, file: !1121, line: 68, baseType: !387, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1187, file: !1188, line: 1206, baseType: !140, size: 32, offset: 12736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1187, file: !1188, line: 1207, baseType: !140, size: 32, offset: 12768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1187, file: !1188, line: 1209, baseType: !295, size: 64, offset: 12800)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1187, file: !1188, line: 1219, baseType: !390, size: 64, offset: 12864)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1187, file: !1188, line: 1220, baseType: !390, size: 64, offset: 12928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1187, file: !1188, line: 1317, baseType: !140, size: 32, offset: 12992)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1187, file: !1188, line: 1319, baseType: !1186, size: 64, offset: 13056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1187, file: !1188, line: 1322, baseType: !2084, size: 64, offset: 13120)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2086, line: 56, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !2086, line: 57, baseType: !2084, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2085, file: !2086, line: 58, baseType: !134, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 59, baseType: !295, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 60, baseType: !295, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2085, file: !2086, line: 61, baseType: !790, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2085, file: !2086, line: 62, baseType: !7, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2085, file: !2086, line: 63, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !168, line: 153, baseType: !390)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2085, file: !2086, line: 64, baseType: !176, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1187, file: !1188, line: 1326, baseType: !1200, size: 32, offset: 13184)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1187, file: !1188, line: 1342, baseType: !134, size: 64, offset: 13248)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1187, file: !1188, line: 1343, baseType: !391, size: 64, offset: 13312)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1187, file: !1188, line: 1344, baseType: !390, size: 64, offset: 13376)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1187, file: !1188, line: 1345, baseType: !391, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1187, file: !1188, line: 1346, baseType: !391, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1187, file: !1188, line: 1347, baseType: !391, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1187, file: !1188, line: 1348, baseType: !336, size: 128, align: 64, offset: 13504)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1187, file: !1188, line: 1358, baseType: !2106, size: 34816, offset: 13824)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2107, line: 485, size: 34816, elements: !2108)
!2107 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2108 = !{!2109, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2138, !2139, !2140, !2141, !2142, !2143, !2146, !2147, !2148}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2106, file: !2107, line: 487, baseType: !2110, size: 192)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 192, elements: !246)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2112, line: 16, size: 64, elements: !2113)
!2112 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2111, file: !2112, line: 17, baseType: !829, size: 16)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2111, file: !2112, line: 18, baseType: !829, size: 16, offset: 16)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2111, file: !2112, line: 19, baseType: !829, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2111, file: !2112, line: 19, baseType: !829, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2111, file: !2112, line: 19, baseType: !829, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2111, file: !2112, line: 19, baseType: !829, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2111, file: !2112, line: 19, baseType: !829, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2111, file: !2112, line: 20, baseType: !829, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2111, file: !2112, line: 20, baseType: !829, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2111, file: !2112, line: 20, baseType: !829, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2111, file: !2112, line: 20, baseType: !829, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2111, file: !2112, line: 20, baseType: !829, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2111, file: !2112, line: 20, baseType: !829, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2106, file: !2107, line: 491, baseType: !295, size: 64, offset: 192)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2106, file: !2107, line: 495, baseType: !287, size: 16, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2106, file: !2107, line: 496, baseType: !287, size: 16, offset: 272)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2106, file: !2107, line: 497, baseType: !287, size: 16, offset: 288)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2106, file: !2107, line: 498, baseType: !287, size: 16, offset: 304)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2106, file: !2107, line: 502, baseType: !295, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2106, file: !2107, line: 503, baseType: !295, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2106, file: !2107, line: 514, baseType: !2135, size: 256, offset: 448)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2136, size: 256, elements: !1125)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2107, line: 483, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2106, file: !2107, line: 516, baseType: !295, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2106, file: !2107, line: 518, baseType: !295, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2106, file: !2107, line: 520, baseType: !295, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2106, file: !2107, line: 521, baseType: !295, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2106, file: !2107, line: 522, baseType: !295, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2106, file: !2107, line: 528, baseType: !2144, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2107, line: 10, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2106, file: !2107, line: 535, baseType: !295, size: 64, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2106, file: !2107, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2106, file: !2107, line: 540, baseType: !2149, size: 33280, offset: 1536)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2150, line: 317, size: 33280, elements: !2151)
!2150 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2149, file: !2150, line: 330, baseType: !7, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2149, file: !2150, line: 337, baseType: !295, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2149, file: !2150, line: 348, baseType: !2155, size: 32768, offset: 512)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2150, line: 304, size: 32768, elements: !2156)
!2156 = !{!2157, !2172, !2211, !2261, !2274}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2155, file: !2150, line: 305, baseType: !2158, size: 896)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2150, line: 12, size: 896, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2171}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2158, file: !2150, line: 13, baseType: !386, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2158, file: !2150, line: 14, baseType: !386, size: 32, offset: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2158, file: !2150, line: 15, baseType: !386, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2158, file: !2150, line: 16, baseType: !386, size: 32, offset: 96)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2158, file: !2150, line: 17, baseType: !386, size: 32, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2158, file: !2150, line: 18, baseType: !386, size: 32, offset: 160)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2158, file: !2150, line: 19, baseType: !386, size: 32, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2158, file: !2150, line: 22, baseType: !2168, size: 640, offset: 224)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 640, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 20)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2158, file: !2150, line: 25, baseType: !386, size: 32, offset: 864)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2155, file: !2150, line: 306, baseType: !2173, size: 4096, align: 128)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2150, line: 34, size: 4096, align: 128, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2178, !2179, !2194, !2195, !2196, !2200, !2202, !2206}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2173, file: !2150, line: 35, baseType: !829, size: 16)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2173, file: !2150, line: 36, baseType: !829, size: 16, offset: 16)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2173, file: !2150, line: 37, baseType: !829, size: 16, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2173, file: !2150, line: 38, baseType: !829, size: 16, offset: 48)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !2150, line: 39, baseType: !2180, size: 128, offset: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2173, file: !2150, line: 39, size: 128, elements: !2181)
!2181 = !{!2182, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2150, line: 40, baseType: !2183, size: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2150, line: 40, size: 128, elements: !2184)
!2184 = !{!2185, !2186}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2183, file: !2150, line: 41, baseType: !390, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2183, file: !2150, line: 42, baseType: !390, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !2150, line: 44, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2180, file: !2150, line: 44, size: 128, elements: !2189)
!2189 = !{!2190, !2191, !2192, !2193}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2188, file: !2150, line: 45, baseType: !386, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2188, file: !2150, line: 46, baseType: !386, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2188, file: !2150, line: 47, baseType: !386, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2188, file: !2150, line: 48, baseType: !386, size: 32, offset: 96)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2173, file: !2150, line: 51, baseType: !386, size: 32, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2173, file: !2150, line: 52, baseType: !386, size: 32, offset: 224)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2173, file: !2150, line: 55, baseType: !2197, size: 1024, offset: 256)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 1024, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2173, file: !2150, line: 58, baseType: !2201, size: 2048, offset: 1280)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 2048, elements: !250)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2173, file: !2150, line: 60, baseType: !2203, size: 384, offset: 3328)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 12)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !2150, line: 62, baseType: !2207, size: 384, offset: 3712)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2173, file: !2150, line: 62, size: 384, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2207, file: !2150, line: 63, baseType: !2203, size: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2207, file: !2150, line: 64, baseType: !2203, size: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2155, file: !2150, line: 307, baseType: !2212, size: 1088)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2150, line: 79, size: 1088, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2260}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2212, file: !2150, line: 80, baseType: !386, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2212, file: !2150, line: 81, baseType: !386, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2212, file: !2150, line: 82, baseType: !386, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2212, file: !2150, line: 83, baseType: !386, size: 32, offset: 96)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2212, file: !2150, line: 84, baseType: !386, size: 32, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2212, file: !2150, line: 85, baseType: !386, size: 32, offset: 160)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2212, file: !2150, line: 86, baseType: !386, size: 32, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2212, file: !2150, line: 88, baseType: !2168, size: 640, offset: 224)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2212, file: !2150, line: 89, baseType: !129, size: 8, offset: 864)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2212, file: !2150, line: 90, baseType: !129, size: 8, offset: 872)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2212, file: !2150, line: 91, baseType: !129, size: 8, offset: 880)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2212, file: !2150, line: 92, baseType: !129, size: 8, offset: 888)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2212, file: !2150, line: 93, baseType: !129, size: 8, offset: 896)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2212, file: !2150, line: 94, baseType: !129, size: 8, offset: 904)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2212, file: !2150, line: 95, baseType: !2229, size: 64, offset: 960)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2231, line: 11, size: 128, elements: !2232)
!2231 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2230, file: !2231, line: 12, baseType: !280, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2230, file: !2231, line: 13, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2237, line: 56, size: 1344, elements: !2238)
!2237 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2236, file: !2237, line: 61, baseType: !295, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2236, file: !2237, line: 62, baseType: !295, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2236, file: !2237, line: 63, baseType: !295, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2236, file: !2237, line: 64, baseType: !295, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2236, file: !2237, line: 65, baseType: !295, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2236, file: !2237, line: 66, baseType: !295, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2236, file: !2237, line: 68, baseType: !295, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2236, file: !2237, line: 69, baseType: !295, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2236, file: !2237, line: 70, baseType: !295, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2236, file: !2237, line: 71, baseType: !295, size: 64, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2236, file: !2237, line: 72, baseType: !295, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2236, file: !2237, line: 73, baseType: !295, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2236, file: !2237, line: 74, baseType: !295, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2236, file: !2237, line: 75, baseType: !295, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2236, file: !2237, line: 76, baseType: !295, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2236, file: !2237, line: 81, baseType: !295, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2236, file: !2237, line: 83, baseType: !295, size: 64, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2236, file: !2237, line: 84, baseType: !295, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2236, file: !2237, line: 85, baseType: !295, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2236, file: !2237, line: 86, baseType: !295, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2236, file: !2237, line: 87, baseType: !295, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2212, file: !2150, line: 96, baseType: !386, size: 32, offset: 1024)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2155, file: !2150, line: 308, baseType: !2262, size: 4608, align: 512)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2150, line: 289, size: 4608, align: 512, elements: !2263)
!2263 = !{!2264, !2265, !2272}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2262, file: !2150, line: 290, baseType: !2173, size: 4096, align: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2262, file: !2150, line: 291, baseType: !2266, size: 512, offset: 4096)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2150, line: 268, size: 512, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2266, file: !2150, line: 269, baseType: !390, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2266, file: !2150, line: 270, baseType: !390, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2266, file: !2150, line: 271, baseType: !2271, size: 384, offset: 128)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 384, elements: !1593)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2262, file: !2150, line: 292, baseType: !2273, offset: 4608)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, elements: !1691)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2155, file: !2150, line: 309, baseType: !2275, size: 32768)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32768, elements: !2276)
!2276 = !{!2277}
!2277 = !DISubrange(count: 4096)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !692, line: 378, baseType: !2279, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1179, file: !692, line: 384, baseType: !1470, size: 192, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !948, file: !692, line: 500, baseType: !204, offset: 6656)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !948, file: !692, line: 501, baseType: !2283, size: 64, offset: 6656)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !692, line: 387, flags: DIFlagFwdDecl)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !948, file: !692, line: 516, baseType: !1681, size: 64, offset: 6720)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !948, file: !692, line: 519, baseType: !323, size: 64, offset: 6784)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !948, file: !692, line: 521, baseType: !2288, size: 64, offset: 6848)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !692, line: 521, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !948, file: !692, line: 545, baseType: !717, size: 32, offset: 6912)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !948, file: !692, line: 548, baseType: !167, size: 8, offset: 6944)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !948, file: !692, line: 550, baseType: !2293, offset: 6952)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2294, line: 142, elements: !218)
!2294 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !948, file: !692, line: 554, baseType: !1927, size: 256, offset: 6976)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !948, file: !692, line: 557, baseType: !386, size: 32, offset: 7232)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !945, file: !692, line: 565, baseType: !2298, offset: 7296)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: -1)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !941, file: !692, line: 151, baseType: !717, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !934, file: !692, line: 156, baseType: !204, offset: 256)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !692, line: 159, baseType: !2304, size: 128)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !696, file: !692, line: 159, size: 128, elements: !2305)
!2305 = !{!2306, !2370}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2304, file: !692, line: 161, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2309)
!2309 = !{!2310, !2320, !2341, !2342, !2343, !2344, !2345, !2357, !2358, !2359}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2308, file: !31, line: 111, baseType: !2311, size: 384)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2312)
!2312 = !{!2313, !2315, !2316, !2317, !2318, !2319}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2311, file: !31, line: 20, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2311, file: !31, line: 21, baseType: !2314, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2311, file: !31, line: 22, baseType: !2314, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2311, file: !31, line: 23, baseType: !295, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2311, file: !31, line: 24, baseType: !295, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2311, file: !31, line: 25, baseType: !295, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2308, file: !31, line: 112, baseType: !2321, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2323, line: 105, size: 128, elements: !2324)
!2323 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2322, file: !2323, line: 110, baseType: !295, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2322, file: !2323, line: 118, baseType: !2327, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2323, line: 95, size: 448, elements: !2329)
!2329 = !{!2330, !2331, !2336, !2337, !2338, !2339, !2340}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2328, file: !2323, line: 96, baseType: !741, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2328, file: !2323, line: 97, baseType: !2332, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2323, line: 60, baseType: !2334)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2321}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2328, file: !2323, line: 98, baseType: !2332, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2328, file: !2323, line: 99, baseType: !167, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2328, file: !2323, line: 100, baseType: !167, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2328, file: !2323, line: 101, baseType: !336, size: 128, align: 64, offset: 256)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2328, file: !2323, line: 102, baseType: !2321, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2308, file: !31, line: 113, baseType: !2322, size: 128, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2308, file: !31, line: 114, baseType: !1470, size: 192, offset: 576)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2308, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2308, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2308, file: !31, line: 117, baseType: !2346, size: 64, offset: 832)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2349)
!2349 = !{!2350, !2351, !2355, !2356}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2348, file: !31, line: 73, baseType: !810, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2348, file: !31, line: 78, baseType: !2352, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{null, !2307}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2348, file: !31, line: 83, baseType: !2352, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2348, file: !31, line: 89, baseType: !997, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2308, file: !31, line: 118, baseType: !134, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2308, file: !31, line: 119, baseType: !140, size: 32, offset: 960)
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !31, line: 120, baseType: !2360, size: 128, offset: 1024)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2308, file: !31, line: 120, size: 128, elements: !2361)
!2361 = !{!2362, !2368}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2360, file: !31, line: 121, baseType: !2363, size: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2364, line: 6, size: 128, elements: !2365)
!2364 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2363, file: !2364, line: 7, baseType: !390, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2363, file: !2364, line: 8, baseType: !390, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2360, file: !31, line: 122, baseType: !2369)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2363, elements: !1691)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2304, file: !692, line: 162, baseType: !134, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !696, file: !692, line: 176, baseType: !336, size: 128, align: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 179, baseType: !2373, size: 32, offset: 384)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 179, size: 32, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2373, file: !692, line: 184, baseType: !717, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2373, file: !692, line: 192, baseType: !7, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2373, file: !692, line: 194, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2373, file: !692, line: 195, baseType: !140, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !691, file: !692, line: 199, baseType: !717, size: 32, offset: 416)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !626, file: !44, line: 1964, baseType: !2381, size: 64, offset: 1344)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!280, !565, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2386, line: 12, size: 256, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389, !2390, !2391, !2392}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2385, file: !2386, line: 13, baseType: !713, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2385, file: !2386, line: 16, baseType: !140, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2385, file: !2386, line: 23, baseType: !295, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2385, file: !2386, line: 30, baseType: !295, size: 64, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2385, file: !2386, line: 33, baseType: !2393, size: 64, offset: 192)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !692, line: 27, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !626, file: !44, line: 1966, baseType: !2381, size: 64, offset: 1408)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !566, file: !44, line: 1424, baseType: !2397, size: 64, offset: 448)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2400)
!2400 = !{!2401, !2447, !2451, !2455, !2456, !2457, !2458, !2459, !2464, !2469, !2473}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2399, file: !38, line: 323, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!140, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2432, !2433, !2434}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2406, file: !38, line: 295, baseType: !608, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2406, file: !38, line: 296, baseType: !191, size: 128, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2406, file: !38, line: 297, baseType: !191, size: 128, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2406, file: !38, line: 298, baseType: !191, size: 128, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2406, file: !38, line: 299, baseType: !1143, size: 192, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2406, file: !38, line: 300, baseType: !204, offset: 704)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2406, file: !38, line: 301, baseType: !717, size: 32, offset: 704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2406, file: !38, line: 302, baseType: !565, size: 64, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2406, file: !38, line: 303, baseType: !2417, size: 64, offset: 832)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2418)
!2418 = !{!2419, !2431}
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !38, line: 69, baseType: !2420, size: 32)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !38, line: 69, size: 32, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2420, file: !38, line: 70, baseType: !403, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2420, file: !38, line: 71, baseType: !411, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2420, file: !38, line: 72, baseType: !2425, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2426, line: 24, baseType: !2427)
!2426 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2426, line: 22, size: 32, elements: !2428)
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2427, file: !2426, line: 23, baseType: !2430, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2426, line: 20, baseType: !409)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2417, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2406, file: !38, line: 304, baseType: !497, size: 64, offset: 896)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2406, file: !38, line: 305, baseType: !295, size: 64, offset: 960)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2406, file: !38, line: 306, baseType: !2435, size: 576, offset: 1024)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2436)
!2436 = !{!2437, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2435, file: !38, line: 206, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !499)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2435, file: !38, line: 207, baseType: !2438, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2435, file: !38, line: 208, baseType: !2438, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2435, file: !38, line: 209, baseType: !2438, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2435, file: !38, line: 210, baseType: !2438, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2435, file: !38, line: 211, baseType: !2438, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2435, file: !38, line: 212, baseType: !2438, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2435, file: !38, line: 213, baseType: !505, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2435, file: !38, line: 214, baseType: !505, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2399, file: !38, line: 324, baseType: !2448, size: 64, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2405, !565, !140}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2399, file: !38, line: 325, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{null, !2405}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2399, file: !38, line: 326, baseType: !2402, size: 64, offset: 192)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2399, file: !38, line: 327, baseType: !2402, size: 64, offset: 256)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2399, file: !38, line: 328, baseType: !2402, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2399, file: !38, line: 329, baseType: !654, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2399, file: !38, line: 332, baseType: !2460, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!2463, !397}
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2399, file: !38, line: 333, baseType: !2465, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!140, !397, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2399, file: !38, line: 335, baseType: !2470, size: 64, offset: 576)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!140, !397, !2463}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2399, file: !38, line: 337, baseType: !2474, size: 64, offset: 640)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!140, !565, !2477}
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !566, file: !44, line: 1425, baseType: !2479, size: 64, offset: 512)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2482)
!2482 = !{!2483, !2487, !2488, !2492, !2493, !2494, !2509, !2532, !2536, !2537, !2560}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2481, file: !38, line: 429, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!140, !565, !140, !140, !515}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2481, file: !38, line: 430, baseType: !654, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2481, file: !38, line: 431, baseType: !2489, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!140, !565, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2481, file: !38, line: 432, baseType: !2489, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2481, file: !38, line: 433, baseType: !654, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2481, file: !38, line: 434, baseType: !2495, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!140, !565, !140, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2499, file: !38, line: 416, baseType: !140, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2499, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2499, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2499, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2499, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2499, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2499, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2499, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2481, file: !38, line: 435, baseType: !2510, size: 64, offset: 384)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!140, !565, !2417, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2514, file: !38, line: 344, baseType: !140, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2514, file: !38, line: 345, baseType: !390, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2514, file: !38, line: 346, baseType: !390, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2514, file: !38, line: 347, baseType: !390, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2514, file: !38, line: 348, baseType: !390, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2514, file: !38, line: 349, baseType: !390, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2514, file: !38, line: 350, baseType: !390, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2514, file: !38, line: 351, baseType: !747, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2514, file: !38, line: 353, baseType: !747, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2514, file: !38, line: 354, baseType: !140, size: 32, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2514, file: !38, line: 355, baseType: !140, size: 32, offset: 608)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2514, file: !38, line: 356, baseType: !390, size: 64, offset: 640)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2514, file: !38, line: 357, baseType: !390, size: 64, offset: 704)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2514, file: !38, line: 358, baseType: !390, size: 64, offset: 768)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2514, file: !38, line: 359, baseType: !747, size: 64, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2514, file: !38, line: 360, baseType: !140, size: 32, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2481, file: !38, line: 436, baseType: !2533, size: 64, offset: 448)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!140, !565, !2477, !2513}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2481, file: !38, line: 438, baseType: !2510, size: 64, offset: 512)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2481, file: !38, line: 439, baseType: !2538, size: 64, offset: 576)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!140, !565, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2542, file: !38, line: 410, baseType: !7, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2542, file: !38, line: 411, baseType: !2546, size: 1344, offset: 64)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 1344, elements: !246)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2559}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2547, file: !38, line: 396, baseType: !7, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2547, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2547, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2547, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2547, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2547, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2547, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2547, file: !38, line: 404, baseType: !392, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2547, file: !38, line: 405, baseType: !2558, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !168, line: 126, baseType: !390)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2547, file: !38, line: 406, baseType: !2558, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2481, file: !38, line: 440, baseType: !2489, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !566, file: !44, line: 1426, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2564)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !566, file: !44, line: 1427, baseType: !295, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !566, file: !44, line: 1428, baseType: !295, size: 64, offset: 704)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !566, file: !44, line: 1429, baseType: !295, size: 64, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !566, file: !44, line: 1430, baseType: !353, size: 64, offset: 832)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !566, file: !44, line: 1431, baseType: !737, size: 256, offset: 896)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !566, file: !44, line: 1432, baseType: !140, size: 32, offset: 1152)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !566, file: !44, line: 1433, baseType: !717, size: 32, offset: 1184)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !566, file: !44, line: 1437, baseType: !2573, size: 64, offset: 1216)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !566, file: !44, line: 1449, baseType: !2578, size: 64, offset: 1280)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !369, line: 34, size: 64, elements: !2579)
!2579 = !{!2580}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2578, file: !369, line: 35, baseType: !372, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !566, file: !44, line: 1450, baseType: !191, size: 128, offset: 1344)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !566, file: !44, line: 1451, baseType: !2583, size: 64, offset: 1472)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !566, file: !44, line: 1452, baseType: !1893, size: 64, offset: 1536)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !566, file: !44, line: 1453, baseType: !2587, size: 64, offset: 1600)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !566, file: !44, line: 1454, baseType: !608, size: 128, offset: 1664)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !566, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !566, file: !44, line: 1456, baseType: !2592, size: 2432, offset: 1856)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2593)
!2593 = !{!2594, !2595, !2596, !2598, !2630}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !38, line: 519, baseType: !7, size: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2592, file: !38, line: 520, baseType: !737, size: 256, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2592, file: !38, line: 521, baseType: !2597, size: 192, offset: 320)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 192, elements: !246)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2592, file: !38, line: 522, baseType: !2599, size: 1728, offset: 512)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2600, size: 1728, elements: !246)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2601)
!2601 = !{!2602, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2600, file: !38, line: 223, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2605)
!2605 = !{!2606, !2607, !2620, !2621}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2604, file: !38, line: 444, baseType: !140, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2604, file: !38, line: 445, baseType: !2608, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2610, file: !38, line: 311, baseType: !654, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2610, file: !38, line: 312, baseType: !654, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2610, file: !38, line: 313, baseType: !654, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2610, file: !38, line: 314, baseType: !654, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2610, file: !38, line: 315, baseType: !2402, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2610, file: !38, line: 316, baseType: !2402, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2610, file: !38, line: 317, baseType: !2402, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2610, file: !38, line: 318, baseType: !2474, size: 64, offset: 448)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2604, file: !38, line: 446, baseType: !599, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2604, file: !38, line: 447, baseType: !2603, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2600, file: !38, line: 224, baseType: !140, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2600, file: !38, line: 226, baseType: !191, size: 128, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2600, file: !38, line: 227, baseType: !295, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2600, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2600, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2600, file: !38, line: 230, baseType: !2438, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2600, file: !38, line: 231, baseType: !2438, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2600, file: !38, line: 232, baseType: !134, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !38, line: 523, baseType: !2631, size: 192, offset: 2240)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 192, elements: !246)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !566, file: !44, line: 1458, baseType: !2633, size: 2112, offset: 4288)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2633, file: !44, line: 1411, baseType: !140, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2633, file: !44, line: 1412, baseType: !1449, size: 128, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2633, file: !44, line: 1413, baseType: !2638, size: 1920, offset: 192)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1920, elements: !246)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2640, line: 12, size: 640, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2641 = !{!2642, !2650, !2652, !2657, !2658}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2639, file: !2640, line: 13, baseType: !2643, size: 320)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2644, line: 17, size: 320, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2643, file: !2644, line: 18, baseType: !140, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2643, file: !2644, line: 19, baseType: !140, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2643, file: !2644, line: 20, baseType: !1449, size: 128, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2643, file: !2644, line: 22, baseType: !336, size: 128, align: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2639, file: !2640, line: 14, baseType: !2651, size: 64, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2639, file: !2640, line: 15, baseType: !2653, size: 64, offset: 384)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2654, line: 16, size: 64, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2653, file: !2654, line: 17, baseType: !1186, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2639, file: !2640, line: 16, baseType: !1449, size: 128, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2639, file: !2640, line: 17, baseType: !717, size: 32, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !566, file: !44, line: 1465, baseType: !134, size: 64, offset: 6400)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !566, file: !44, line: 1468, baseType: !386, size: 32, offset: 6464)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !566, file: !44, line: 1470, baseType: !505, size: 64, offset: 6528)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !566, file: !44, line: 1471, baseType: !505, size: 64, offset: 6592)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !566, file: !44, line: 1473, baseType: !387, size: 32, offset: 6656)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !566, file: !44, line: 1474, baseType: !2665, size: 64, offset: 6720)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !566, file: !44, line: 1477, baseType: !2668, size: 256, offset: 6784)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !2198)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !566, file: !44, line: 1478, baseType: !2670, size: 128, offset: 7040)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2671, line: 18, baseType: !2672)
!2671 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2671, line: 16, size: 128, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2672, file: !2671, line: 17, baseType: !2675, size: 128)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !1703)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !566, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !566, file: !44, line: 1481, baseType: !2678, size: 32, offset: 7200)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !168, line: 150, baseType: !7)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !566, file: !44, line: 1487, baseType: !1143, size: 192, offset: 7232)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !566, file: !44, line: 1493, baseType: !187, size: 64, offset: 7424)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !566, file: !44, line: 1495, baseType: !2682, size: 64, offset: 7488)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !351, line: 135, size: 1024, align: 512, elements: !2685)
!2685 = !{!2686, !2690, !2691, !2698, !2704, !2708, !2712, !2716, !2717, !2721, !2725, !2730, !2734}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2684, file: !351, line: 136, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!140, !353, !7}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2684, file: !351, line: 137, baseType: !2687, size: 64, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2684, file: !351, line: 138, baseType: !2692, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!140, !2695, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2684, file: !351, line: 139, baseType: !2699, size: 64, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!140, !2695, !7, !187, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2684, file: !351, line: 141, baseType: !2705, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!140, !2695}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2684, file: !351, line: 142, baseType: !2709, size: 64, offset: 320)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!140, !353}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2684, file: !351, line: 143, baseType: !2713, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{null, !353}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2684, file: !351, line: 144, baseType: !2713, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2684, file: !351, line: 145, baseType: !2718, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !353, !397}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2684, file: !351, line: 146, baseType: !2722, size: 64, offset: 576)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!245, !353, !245, !140}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2684, file: !351, line: 147, baseType: !2726, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!349, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2684, file: !351, line: 148, baseType: !2731, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!140, !515, !167}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2684, file: !351, line: 149, baseType: !2735, size: 64, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!353, !353, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !566, file: !44, line: 1500, baseType: !140, size: 32, offset: 7552)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !566, file: !44, line: 1502, baseType: !2742, size: 448, offset: 7616)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2386, line: 60, size: 448, elements: !2743)
!2743 = !{!2744, !2749, !2750, !2751, !2752, !2753, !2754}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2742, file: !2386, line: 61, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!295, !2748, !2384}
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2742, file: !2386, line: 63, baseType: !2745, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2742, file: !2386, line: 66, baseType: !280, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2742, file: !2386, line: 67, baseType: !140, size: 32, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2742, file: !2386, line: 68, baseType: !7, size: 32, offset: 224)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2742, file: !2386, line: 71, baseType: !191, size: 128, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2742, file: !2386, line: 77, baseType: !2755, size: 64, offset: 384)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !566, file: !44, line: 1505, baseType: !741, size: 64, offset: 8064)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !566, file: !44, line: 1508, baseType: !741, size: 64, offset: 8128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !566, file: !44, line: 1511, baseType: !140, size: 32, offset: 8192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !566, file: !44, line: 1514, baseType: !879, size: 32, offset: 8224)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !566, file: !44, line: 1517, baseType: !2761, size: 64, offset: 8256)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1928, line: 18, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !566, file: !44, line: 1518, baseType: !604, size: 64, offset: 8320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !566, file: !44, line: 1525, baseType: !1681, size: 64, offset: 8384)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !566, file: !44, line: 1532, baseType: !2766, size: 64, offset: 8448)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2767, line: 52, size: 64, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2768 = !{!2769}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2766, file: !2767, line: 53, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2767, line: 40, size: 256, elements: !2772)
!2772 = !{!2773, !2774, !2779}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2771, file: !2767, line: 42, baseType: !204)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2771, file: !2767, line: 44, baseType: !2775, size: 192)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2767, line: 28, size: 192, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2775, file: !2767, line: 29, baseType: !191, size: 128)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2775, file: !2767, line: 31, baseType: !280, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2771, file: !2767, line: 49, baseType: !280, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !566, file: !44, line: 1533, baseType: !2766, size: 64, offset: 8512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !566, file: !44, line: 1534, baseType: !336, size: 128, align: 64, offset: 8576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !566, file: !44, line: 1535, baseType: !1927, size: 256, offset: 8704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !566, file: !44, line: 1537, baseType: !1143, size: 192, offset: 8960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !566, file: !44, line: 1542, baseType: !140, size: 32, offset: 9152)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !566, file: !44, line: 1545, baseType: !204, offset: 9184)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !566, file: !44, line: 1546, baseType: !191, size: 128, offset: 9216)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !566, file: !44, line: 1548, baseType: !204, offset: 9344)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !566, file: !44, line: 1549, baseType: !191, size: 128, offset: 9344)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !398, file: !44, line: 624, baseType: !703, size: 64, offset: 256)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !398, file: !44, line: 631, baseType: !295, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !44, line: 639, baseType: !2792, size: 32, offset: 384)
!2792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !44, line: 639, size: 32, elements: !2793)
!2793 = !{!2794, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2792, file: !44, line: 640, baseType: !2795, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2792, file: !44, line: 641, baseType: !7, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !398, file: !44, line: 643, baseType: !479, size: 32, offset: 416)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !398, file: !44, line: 644, baseType: !497, size: 64, offset: 448)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !398, file: !44, line: 645, baseType: !501, size: 128, offset: 512)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !398, file: !44, line: 646, baseType: !501, size: 128, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !398, file: !44, line: 647, baseType: !501, size: 128, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !398, file: !44, line: 648, baseType: !204, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !398, file: !44, line: 649, baseType: !287, size: 16, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !398, file: !44, line: 650, baseType: !129, size: 8, offset: 912)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !398, file: !44, line: 651, baseType: !129, size: 8, offset: 920)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !398, file: !44, line: 652, baseType: !2558, size: 64, offset: 960)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !398, file: !44, line: 659, baseType: !295, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !398, file: !44, line: 660, baseType: !737, size: 256, offset: 1088)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !398, file: !44, line: 662, baseType: !295, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !398, file: !44, line: 663, baseType: !295, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !398, file: !44, line: 665, baseType: !608, size: 128, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !398, file: !44, line: 666, baseType: !191, size: 128, offset: 1600)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !398, file: !44, line: 675, baseType: !191, size: 128, offset: 1728)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !398, file: !44, line: 676, baseType: !191, size: 128, offset: 1856)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !398, file: !44, line: 677, baseType: !191, size: 128, offset: 1984)
!2816 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !44, line: 678, baseType: !2817, size: 128, offset: 2112)
!2817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !44, line: 678, size: 128, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2817, file: !44, line: 679, baseType: !604, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2817, file: !44, line: 680, baseType: !336, size: 128, align: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !398, file: !44, line: 682, baseType: !743, size: 64, offset: 2240)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !398, file: !44, line: 683, baseType: !743, size: 64, offset: 2304)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !398, file: !44, line: 684, baseType: !717, size: 32, offset: 2368)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !398, file: !44, line: 685, baseType: !717, size: 32, offset: 2400)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !398, file: !44, line: 686, baseType: !717, size: 32, offset: 2432)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !398, file: !44, line: 688, baseType: !717, size: 32, offset: 2464)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !44, line: 690, baseType: !2828, size: 64, offset: 2496)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !44, line: 690, size: 64, elements: !2829)
!2829 = !{!2830, !3053}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2828, file: !44, line: 691, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2834)
!2834 = !{!2835, !2836, !2840, !2845, !2849, !2850, !2851, !2855, !2868, !2869, !2877, !2881, !2882, !2886, !2887, !2891, !2896, !2897, !2901, !2905, !3013, !3017, !3018, !3022, !3023, !3027, !3031, !3036, !3040, !3044, !3048, !3052}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2833, file: !44, line: 1823, baseType: !599, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2833, file: !44, line: 1824, baseType: !2837, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!497, !323, !497, !140}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2833, file: !44, line: 1825, baseType: !2841, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!276, !323, !245, !292, !2844}
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2833, file: !44, line: 1826, baseType: !2846, size: 64, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!276, !323, !187, !292, !2844}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2833, file: !44, line: 1827, baseType: !814, size: 64, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2833, file: !44, line: 1828, baseType: !814, size: 64, offset: 320)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2833, file: !44, line: 1829, baseType: !2852, size: 64, offset: 384)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!140, !817, !167}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2833, file: !44, line: 1830, baseType: !2856, size: 64, offset: 448)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!140, !323, !2859}
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2861)
!2861 = !{!2862, !2867}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2860, file: !44, line: 1777, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2864)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!140, !2859, !187, !140, !497, !390, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2860, file: !44, line: 1778, baseType: !497, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2833, file: !44, line: 1831, baseType: !2856, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2833, file: !44, line: 1832, baseType: !2870, size: 64, offset: 576)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!2873, !323, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2874, line: 52, baseType: !7)
!2874 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !585, line: 27, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2833, file: !44, line: 1833, baseType: !2878, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!280, !323, !7, !295}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2833, file: !44, line: 1834, baseType: !2878, size: 64, offset: 704)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2833, file: !44, line: 1835, baseType: !2883, size: 64, offset: 768)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!140, !323, !951}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2833, file: !44, line: 1836, baseType: !295, size: 64, offset: 832)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2833, file: !44, line: 1837, baseType: !2888, size: 64, offset: 896)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!140, !397, !323}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2833, file: !44, line: 1838, baseType: !2892, size: 64, offset: 960)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!140, !323, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !134)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2833, file: !44, line: 1839, baseType: !2888, size: 64, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2833, file: !44, line: 1840, baseType: !2898, size: 64, offset: 1088)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!140, !323, !497, !497, !140}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2833, file: !44, line: 1841, baseType: !2902, size: 64, offset: 1152)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!140, !140, !323, !140}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2833, file: !44, line: 1842, baseType: !2906, size: 64, offset: 1216)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!140, !323, !140, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2943, !2944, !2945, !2958, !2989}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2910, file: !44, line: 1063, baseType: !2909, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2910, file: !44, line: 1064, baseType: !191, size: 128, offset: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2910, file: !44, line: 1065, baseType: !608, size: 128, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2910, file: !44, line: 1066, baseType: !191, size: 128, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2910, file: !44, line: 1069, baseType: !191, size: 128, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2910, file: !44, line: 1072, baseType: !2895, size: 64, offset: 576)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2910, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2910, file: !44, line: 1074, baseType: !133, size: 8, offset: 672)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2910, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2910, file: !44, line: 1076, baseType: !140, size: 32, offset: 736)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2910, file: !44, line: 1077, baseType: !1449, size: 128, offset: 768)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2910, file: !44, line: 1078, baseType: !323, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2910, file: !44, line: 1079, baseType: !497, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2910, file: !44, line: 1080, baseType: !497, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2910, file: !44, line: 1082, baseType: !2927, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2929)
!2929 = !{!2930, !2938, !2939, !2940, !2941, !2942}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2928, file: !44, line: 1315, baseType: !2931)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2932, line: 20, baseType: !2933)
!2932 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2932, line: 11, elements: !2934)
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2933, file: !2932, line: 12, baseType: !2936)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !216, line: 33, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 31, elements: !218)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2928, file: !44, line: 1316, baseType: !140, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2928, file: !44, line: 1317, baseType: !140, size: 32, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2928, file: !44, line: 1318, baseType: !2927, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2928, file: !44, line: 1319, baseType: !323, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2928, file: !44, line: 1320, baseType: !336, size: 128, align: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2910, file: !44, line: 1084, baseType: !295, size: 64, offset: 1152)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2910, file: !44, line: 1085, baseType: !295, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2910, file: !44, line: 1087, baseType: !2946, size: 64, offset: 1280)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2949)
!2949 = !{!2950, !2954}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2948, file: !44, line: 1012, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2909, !2909}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2948, file: !44, line: 1013, baseType: !2955, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{null, !2909}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2910, file: !44, line: 1088, baseType: !2959, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2962)
!2962 = !{!2963, !2967, !2971, !2972, !2976, !2980, !2984, !2988}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2961, file: !44, line: 1017, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!2895, !2895}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2961, file: !44, line: 1018, baseType: !2968, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{null, !2895}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2961, file: !44, line: 1019, baseType: !2955, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2961, file: !44, line: 1020, baseType: !2973, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!140, !2909, !140}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2961, file: !44, line: 1021, baseType: !2977, size: 64, offset: 256)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!167, !2909}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2961, file: !44, line: 1022, baseType: !2981, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!140, !2909, !140, !194}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2961, file: !44, line: 1023, baseType: !2985, size: 64, offset: 384)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{null, !2909, !791}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2961, file: !44, line: 1024, baseType: !2977, size: 64, offset: 448)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2910, file: !44, line: 1097, baseType: !2990, size: 256, offset: 1408)
!2990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2910, file: !44, line: 1089, size: 256, elements: !2991)
!2991 = !{!2992, !3001, !3007}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2990, file: !44, line: 1090, baseType: !2993, size: 256)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2994, line: 10, size: 256, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996, !2997, !3000}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2993, file: !2994, line: 11, baseType: !386, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2993, file: !2994, line: 12, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2994, line: 5, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2993, file: !2994, line: 13, baseType: !191, size: 128, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2990, file: !44, line: 1091, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2994, line: 17, size: 64, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3002, file: !2994, line: 18, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2994, line: 16, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2990, file: !44, line: 1096, baseType: !3008, size: 192)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2990, file: !44, line: 1092, size: 192, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3008, file: !44, line: 1093, baseType: !191, size: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3008, file: !44, line: 1094, baseType: !140, size: 32, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3008, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2833, file: !44, line: 1843, baseType: !3014, size: 64, offset: 1280)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!276, !323, !690, !140, !292, !2844, !140}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2833, file: !44, line: 1844, baseType: !1071, size: 64, offset: 1344)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2833, file: !44, line: 1845, baseType: !3019, size: 64, offset: 1408)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!140, !140}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2833, file: !44, line: 1846, baseType: !2906, size: 64, offset: 1472)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2833, file: !44, line: 1847, baseType: !3024, size: 64, offset: 1536)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!276, !2068, !323, !2844, !292, !7}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2833, file: !44, line: 1848, baseType: !3028, size: 64, offset: 1600)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!276, !323, !2844, !2068, !292, !7}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2833, file: !44, line: 1849, baseType: !3032, size: 64, offset: 1664)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!140, !323, !280, !3035, !791}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2833, file: !44, line: 1850, baseType: !3037, size: 64, offset: 1728)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!280, !323, !140, !497, !497}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2833, file: !44, line: 1852, baseType: !3041, size: 64, offset: 1792)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !680, !323}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2833, file: !44, line: 1856, baseType: !3045, size: 64, offset: 1856)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!276, !323, !497, !323, !497, !292, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2833, file: !44, line: 1858, baseType: !3049, size: 64, offset: 1920)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!497, !323, !497, !323, !497, !497, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2833, file: !44, line: 1861, baseType: !2898, size: 64, offset: 1984)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2828, file: !44, line: 692, baseType: !633, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !398, file: !44, line: 694, baseType: !3055, size: 64, offset: 2560)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3056, file: !44, line: 1101, baseType: !204)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3056, file: !44, line: 1102, baseType: !191, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3056, file: !44, line: 1103, baseType: !191, size: 128, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3056, file: !44, line: 1104, baseType: !191, size: 128, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !398, file: !44, line: 695, baseType: !704, size: 1216, align: 64, offset: 2624)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !398, file: !44, line: 696, baseType: !191, size: 128, offset: 3840)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !44, line: 697, baseType: !3065, size: 64, offset: 3968)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !44, line: 697, size: 64, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3072, !3073}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3065, file: !44, line: 698, baseType: !2068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3065, file: !44, line: 699, baseType: !2583, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3065, file: !44, line: 700, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3065, file: !44, line: 701, baseType: !245, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3065, file: !44, line: 702, baseType: !7, size: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !398, file: !44, line: 705, baseType: !387, size: 32, offset: 4032)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !398, file: !44, line: 708, baseType: !387, size: 32, offset: 4064)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !398, file: !44, line: 709, baseType: !2665, size: 64, offset: 4096)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !398, file: !44, line: 720, baseType: !134, size: 64, offset: 4160)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !354, file: !351, line: 98, baseType: !3079, size: 256, offset: 448)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !2198)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !354, file: !351, line: 101, baseType: !3081, size: 32, offset: 704)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3082, line: 25, size: 32, elements: !3083)
!3082 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, scope: !3081, file: !3082, line: 26, baseType: !3085, size: 32)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3081, file: !3082, line: 26, size: 32, elements: !3086)
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3082, line: 30, baseType: !3088, size: 32)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3085, file: !3082, line: 30, size: 32, elements: !3089)
!3089 = !{!3090, !3091}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3088, file: !3082, line: 31, baseType: !204)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3088, file: !3082, line: 32, baseType: !140, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !354, file: !351, line: 102, baseType: !2682, size: 64, offset: 768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !354, file: !351, line: 103, baseType: !565, size: 64, offset: 832)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !354, file: !351, line: 104, baseType: !295, size: 64, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !354, file: !351, line: 105, baseType: !134, size: 64, offset: 960)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !351, line: 107, baseType: !3097, size: 128, offset: 1024)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 107, size: 128, elements: !3098)
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3097, file: !351, line: 108, baseType: !191, size: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3097, file: !351, line: 109, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !354, file: !351, line: 111, baseType: !191, size: 128, offset: 1152)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !354, file: !351, line: 112, baseType: !191, size: 128, offset: 1280)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !354, file: !351, line: 120, baseType: !3105, size: 128, offset: 1408)
!3105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !351, line: 116, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3105, file: !351, line: 117, baseType: !608, size: 128)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3105, file: !351, line: 118, baseType: !368, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3105, file: !351, line: 119, baseType: !336, size: 128, align: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !324, file: !44, line: 922, baseType: !397, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !324, file: !44, line: 923, baseType: !2831, size: 64, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !324, file: !44, line: 929, baseType: !204, offset: 384)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !324, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !324, file: !44, line: 931, baseType: !741, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !324, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !324, file: !44, line: 933, baseType: !2678, size: 32, offset: 544)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !324, file: !44, line: 934, baseType: !1143, size: 192, offset: 576)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !324, file: !44, line: 935, baseType: !497, size: 64, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !324, file: !44, line: 936, baseType: !3120, size: 192, offset: 832)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !44, line: 886, baseType: !2931)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3120, file: !44, line: 887, baseType: !1439, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3120, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3120, file: !44, line: 889, baseType: !403, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3120, file: !44, line: 889, baseType: !403, size: 32, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3120, file: !44, line: 890, baseType: !140, size: 32, offset: 160)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !324, file: !44, line: 937, baseType: !1515, size: 64, offset: 1024)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !324, file: !44, line: 938, baseType: !3130, size: 256, offset: 1088)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3130, file: !44, line: 897, baseType: !295, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3130, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3130, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3130, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3130, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3130, file: !44, line: 904, baseType: !497, size: 64, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !324, file: !44, line: 940, baseType: !390, size: 64, offset: 1344)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !324, file: !44, line: 945, baseType: !134, size: 64, offset: 1408)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !324, file: !44, line: 949, baseType: !191, size: 128, offset: 1472)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !324, file: !44, line: 950, baseType: !191, size: 128, offset: 1600)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !324, file: !44, line: 952, baseType: !703, size: 64, offset: 1728)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !324, file: !44, line: 953, baseType: !879, size: 32, offset: 1792)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !324, file: !44, line: 954, baseType: !879, size: 32, offset: 1824)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !270, line: 174, baseType: !320, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !270, line: 176, baseType: !3147, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!140, !323, !197, !313, !951}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !270, line: 90, baseType: !297, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !270, line: 91, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !260, file: !184, line: 143, baseType: !3154, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!3157, !197}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3159)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3160)
!3160 = !{!3161, !3162, !3166, !3170, !3176, !3180}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3159, file: !61, line: 40, baseType: !60, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3159, file: !61, line: 41, baseType: !3163, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3159, file: !61, line: 42, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!134}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3159, file: !61, line: 43, baseType: !3171, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!176, !3174}
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3159, file: !61, line: 44, baseType: !3177, size: 64, offset: 256)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!176}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3159, file: !61, line: 45, baseType: !436, size: 64, offset: 320)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !260, file: !184, line: 144, baseType: !3182, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!176, !197}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !260, file: !184, line: 145, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !197, !3189, !3190}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !183, file: !184, line: 70, baseType: !3192, size: 64, offset: 384)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !585, line: 123, size: 1024, elements: !3194)
!3194 = !{!3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3323, !3324, !3325, !3326, !3327}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3193, file: !585, line: 124, baseType: !717, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3193, file: !585, line: 125, baseType: !717, size: 32, offset: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3193, file: !585, line: 135, baseType: !3192, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3193, file: !585, line: 136, baseType: !187, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3193, file: !585, line: 138, baseType: !730, size: 192, align: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3193, file: !585, line: 140, baseType: !176, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3193, file: !585, line: 141, baseType: !7, size: 32, offset: 448)
!3202 = !DIDerivedType(tag: DW_TAG_member, scope: !3193, file: !585, line: 142, baseType: !3203, size: 256, offset: 512)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3193, file: !585, line: 142, size: 256, elements: !3204)
!3204 = !{!3205, !3251, !3255}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3203, file: !585, line: 143, baseType: !3206, size: 192)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !585, line: 91, size: 192, elements: !3207)
!3207 = !{!3208, !3209, !3210}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3206, file: !585, line: 92, baseType: !295, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3206, file: !585, line: 94, baseType: !726, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3206, file: !585, line: 100, baseType: !3211, size: 64, offset: 128)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !585, line: 180, size: 704, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3223, !3224, !3225, !3249, !3250}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3212, file: !585, line: 182, baseType: !3192, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3212, file: !585, line: 183, baseType: !7, size: 32, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3212, file: !585, line: 186, baseType: !3217, size: 192, offset: 128)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3218, line: 19, size: 192, elements: !3219)
!3218 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3219 = !{!3220, !3221, !3222}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3217, file: !3218, line: 20, baseType: !708, size: 128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3217, file: !3218, line: 21, baseType: !7, size: 32, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3217, file: !3218, line: 22, baseType: !7, size: 32, offset: 160)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3212, file: !585, line: 187, baseType: !386, size: 32, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3212, file: !585, line: 188, baseType: !386, size: 32, offset: 352)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3212, file: !585, line: 189, baseType: !3226, size: 64, offset: 384)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !585, line: 168, size: 320, elements: !3228)
!3228 = !{!3229, !3233, !3237, !3241, !3245}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3227, file: !585, line: 169, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!140, !680, !3211}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3227, file: !585, line: 171, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!140, !3192, !187, !286}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3227, file: !585, line: 173, baseType: !3238, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!140, !3192}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3227, file: !585, line: 174, baseType: !3242, size: 64, offset: 192)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!140, !3192, !3192, !187}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3227, file: !585, line: 176, baseType: !3246, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!140, !680, !3192, !3211}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3212, file: !585, line: 192, baseType: !191, size: 128, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3212, file: !585, line: 194, baseType: !1449, size: 128, offset: 576)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3203, file: !585, line: 144, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !585, line: 103, size: 64, elements: !3253)
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3252, file: !585, line: 104, baseType: !3192, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3203, file: !585, line: 145, baseType: !3256, size: 256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !585, line: 107, size: 256, elements: !3257)
!3257 = !{!3258, !3318, !3321, !3322}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3256, file: !585, line: 108, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !585, line: 217, size: 768, elements: !3262)
!3262 = !{!3263, !3283, !3287, !3291, !3295, !3299, !3303, !3307, !3308, !3309, !3310, !3314}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3261, file: !585, line: 222, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!140, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !585, line: 197, size: 1088, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3268, file: !585, line: 199, baseType: !3192, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3268, file: !585, line: 200, baseType: !323, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3268, file: !585, line: 201, baseType: !680, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3268, file: !585, line: 202, baseType: !134, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3268, file: !585, line: 205, baseType: !1143, size: 192, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3268, file: !585, line: 206, baseType: !1143, size: 192, offset: 448)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3268, file: !585, line: 207, baseType: !140, size: 32, offset: 640)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3268, file: !585, line: 208, baseType: !191, size: 128, offset: 704)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3268, file: !585, line: 209, baseType: !245, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3268, file: !585, line: 211, baseType: !292, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3268, file: !585, line: 212, baseType: !167, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3268, file: !585, line: 213, baseType: !167, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3268, file: !585, line: 214, baseType: !979, size: 64, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3261, file: !585, line: 223, baseType: !3284, size: 64, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3267}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3261, file: !585, line: 236, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!140, !680, !134}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3261, file: !585, line: 238, baseType: !3292, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!134, !680, !2844}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3261, file: !585, line: 239, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!134, !680, !134, !2844}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3261, file: !585, line: 240, baseType: !3300, size: 64, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !680, !134}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3261, file: !585, line: 242, baseType: !3304, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!276, !3267, !245, !292, !497}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3261, file: !585, line: 252, baseType: !292, size: 64, offset: 448)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3261, file: !585, line: 259, baseType: !167, size: 8, offset: 512)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3261, file: !585, line: 260, baseType: !3304, size: 64, offset: 576)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3261, file: !585, line: 263, baseType: !3311, size: 64, offset: 640)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2873, !3267, !2875}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3261, file: !585, line: 266, baseType: !3315, size: 64, offset: 704)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!140, !3267, !951}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3256, file: !585, line: 109, baseType: !3319, size: 64, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !585, line: 31, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3256, file: !585, line: 110, baseType: !497, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3256, file: !585, line: 111, baseType: !3192, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3193, file: !585, line: 148, baseType: !134, size: 64, offset: 768)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3193, file: !585, line: 154, baseType: !390, size: 64, offset: 832)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3193, file: !585, line: 156, baseType: !287, size: 16, offset: 896)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3193, file: !585, line: 157, baseType: !286, size: 16, offset: 912)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3193, file: !585, line: 158, baseType: !3328, size: 64, offset: 960)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !585, line: 32, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !183, file: !184, line: 71, baseType: !3331, size: 32, offset: 448)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3332, line: 19, size: 32, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3333 = !{!3334}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3331, file: !3332, line: 20, baseType: !1200, size: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !183, file: !184, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !183, file: !184, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !183, file: !184, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !183, file: !184, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !183, file: !184, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !73, line: 463, baseType: !3341, size: 64, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !180, file: !73, line: 465, baseType: !3343, size: 64, offset: 576)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !180, file: !73, line: 467, baseType: !187, size: 64, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !73, line: 468, baseType: !3347, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3357, !3362, !3366}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3349, file: !73, line: 88, baseType: !187, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3349, file: !73, line: 89, baseType: !299, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3349, file: !73, line: 90, baseType: !3354, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!140, !3341, !240}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3349, file: !73, line: 91, baseType: !3358, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!245, !3341, !3361, !3189, !3190}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3349, file: !73, line: 93, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !3341}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3349, file: !73, line: 95, baseType: !3367, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3370)
!3370 = !{!3371, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3369, file: !80, line: 279, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!140, !3341}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3369, file: !80, line: 280, baseType: !3363, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3369, file: !80, line: 281, baseType: !3372, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3369, file: !80, line: 282, baseType: !3372, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3369, file: !80, line: 283, baseType: !3372, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3369, file: !80, line: 284, baseType: !3372, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3369, file: !80, line: 285, baseType: !3372, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3369, file: !80, line: 286, baseType: !3372, size: 64, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3369, file: !80, line: 287, baseType: !3372, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3369, file: !80, line: 288, baseType: !3372, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3369, file: !80, line: 289, baseType: !3372, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3369, file: !80, line: 290, baseType: !3372, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3369, file: !80, line: 291, baseType: !3372, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3369, file: !80, line: 292, baseType: !3372, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3369, file: !80, line: 293, baseType: !3372, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3369, file: !80, line: 294, baseType: !3372, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3369, file: !80, line: 295, baseType: !3372, size: 64, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3369, file: !80, line: 296, baseType: !3372, size: 64, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3369, file: !80, line: 297, baseType: !3372, size: 64, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3369, file: !80, line: 298, baseType: !3372, size: 64, offset: 1216)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3369, file: !80, line: 299, baseType: !3372, size: 64, offset: 1280)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3369, file: !80, line: 300, baseType: !3372, size: 64, offset: 1344)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3369, file: !80, line: 301, baseType: !3372, size: 64, offset: 1408)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !180, file: !73, line: 470, baseType: !3398, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3400, line: 82, size: 1408, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3401 = !{!3402, !3403, !3404, !3405, !3406, !3407, !3408, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3483, !3486, !3487}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3399, file: !3400, line: 83, baseType: !187, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3399, file: !3400, line: 84, baseType: !187, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3399, file: !3400, line: 85, baseType: !3341, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3399, file: !3400, line: 86, baseType: !299, size: 64, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3399, file: !3400, line: 87, baseType: !299, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3399, file: !3400, line: 88, baseType: !299, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3399, file: !3400, line: 90, baseType: !3409, size: 64, offset: 384)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!140, !3341, !3412}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3434, !3447, !3448, !3449, !3450, !3451, !3459, !3460, !3461, !3462, !3463, !3464}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !67, line: 96, baseType: !187, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3413, file: !67, line: 97, baseType: !3398, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3413, file: !67, line: 99, baseType: !599, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3413, file: !67, line: 100, baseType: !187, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3413, file: !67, line: 102, baseType: !167, size: 8, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3413, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3413, file: !67, line: 105, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3425, line: 262, size: 1600, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3426 = !{!3427, !3428, !3429, !3433}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !3425, line: 263, baseType: !2668, size: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3424, file: !3425, line: 264, baseType: !2668, size: 256, offset: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3424, file: !3425, line: 265, baseType: !3430, size: 1024, offset: 512)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 1024, elements: !3431)
!3431 = !{!3432}
!3432 = !DISubrange(count: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3424, file: !3425, line: 266, baseType: !176, size: 64, offset: 1536)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3413, file: !67, line: 106, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3437)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3425, line: 210, size: 256, elements: !3438)
!3438 = !{!3439, !3443, !3445, !3446}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3437, file: !3425, line: 211, baseType: !3440, size: 72)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 72, elements: !3441)
!3441 = !{!3442}
!3442 = !DISubrange(count: 9)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3437, file: !3425, line: 212, baseType: !3444, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3425, line: 14, baseType: !295)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3437, file: !3425, line: 213, baseType: !387, size: 32, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3437, file: !3425, line: 214, baseType: !387, size: 32, offset: 224)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3413, file: !67, line: 108, baseType: !3372, size: 64, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3413, file: !67, line: 109, baseType: !3363, size: 64, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3413, file: !67, line: 110, baseType: !3372, size: 64, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3413, file: !67, line: 111, baseType: !3363, size: 64, offset: 640)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3413, file: !67, line: 112, baseType: !3452, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!140, !3341, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3457)
!3457 = !{!3458}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3456, file: !80, line: 51, baseType: !140, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3413, file: !67, line: 113, baseType: !3372, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3413, file: !67, line: 114, baseType: !299, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3413, file: !67, line: 115, baseType: !299, size: 64, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3413, file: !67, line: 117, baseType: !3367, size: 64, offset: 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3413, file: !67, line: 118, baseType: !3363, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !67, line: 120, baseType: !3465, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3399, file: !3400, line: 91, baseType: !3354, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3399, file: !3400, line: 92, baseType: !3372, size: 64, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3399, file: !3400, line: 93, baseType: !3363, size: 64, offset: 576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3399, file: !3400, line: 94, baseType: !3372, size: 64, offset: 640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3399, file: !3400, line: 95, baseType: !3363, size: 64, offset: 704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3399, file: !3400, line: 97, baseType: !3372, size: 64, offset: 768)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3399, file: !3400, line: 98, baseType: !3372, size: 64, offset: 832)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3399, file: !3400, line: 100, baseType: !3452, size: 64, offset: 896)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3399, file: !3400, line: 101, baseType: !3372, size: 64, offset: 960)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3399, file: !3400, line: 103, baseType: !3372, size: 64, offset: 1024)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3399, file: !3400, line: 105, baseType: !3372, size: 64, offset: 1088)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3399, file: !3400, line: 107, baseType: !3367, size: 64, offset: 1152)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3399, file: !3400, line: 109, baseType: !3480, size: 64, offset: 1216)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3400, line: 109, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3399, file: !3400, line: 111, baseType: !3484, size: 64, offset: 1280)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3400, line: 111, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3399, file: !3400, line: 112, baseType: !614, offset: 1344)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3399, file: !3400, line: 114, baseType: !167, size: 8, offset: 1344)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !180, file: !73, line: 471, baseType: !3412, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !180, file: !73, line: 473, baseType: !134, size: 64, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !180, file: !73, line: 475, baseType: !134, size: 64, offset: 960)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !180, file: !73, line: 480, baseType: !1143, size: 192, offset: 1024)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !180, file: !73, line: 484, baseType: !3493, size: 576, offset: 1216)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3493, file: !73, line: 362, baseType: !191, size: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3493, file: !73, line: 363, baseType: !191, size: 128, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3493, file: !73, line: 364, baseType: !191, size: 128, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3493, file: !73, line: 365, baseType: !191, size: 128, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3493, file: !73, line: 366, baseType: !167, size: 8, offset: 512)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3493, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !180, file: !73, line: 485, baseType: !3502, size: 2304, offset: 1792)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3599, !3603}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3502, file: !80, line: 566, baseType: !3455, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3502, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3502, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3502, file: !80, line: 569, baseType: !167, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3502, file: !80, line: 570, baseType: !167, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3502, file: !80, line: 571, baseType: !167, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3502, file: !80, line: 572, baseType: !167, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3502, file: !80, line: 573, baseType: !167, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3502, file: !80, line: 574, baseType: !167, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3502, file: !80, line: 575, baseType: !167, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3502, file: !80, line: 576, baseType: !167, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3502, file: !80, line: 577, baseType: !386, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3502, file: !80, line: 578, baseType: !204, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3502, file: !80, line: 580, baseType: !191, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3502, file: !80, line: 581, baseType: !1470, size: 192, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3502, file: !80, line: 582, baseType: !3520, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3522, line: 43, size: 1472, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3531, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3521, file: !3522, line: 44, baseType: !187, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3521, file: !3522, line: 45, baseType: !140, size: 32, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3521, file: !3522, line: 46, baseType: !191, size: 128, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3521, file: !3522, line: 47, baseType: !204, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3521, file: !3522, line: 48, baseType: !3529, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3521, file: !3522, line: 49, baseType: !3532, size: 320, offset: 320)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3533, line: 11, size: 320, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3542}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3532, file: !3533, line: 16, baseType: !608, size: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3532, file: !3533, line: 17, baseType: !295, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3532, file: !3533, line: 18, baseType: !3538, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{null, !3541}
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3532, file: !3533, line: 19, baseType: !386, size: 32, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3521, file: !3522, line: 50, baseType: !295, size: 64, offset: 640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3521, file: !3522, line: 51, baseType: !1270, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3521, file: !3522, line: 52, baseType: !1270, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3521, file: !3522, line: 53, baseType: !1270, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3521, file: !3522, line: 54, baseType: !1270, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3521, file: !3522, line: 55, baseType: !1270, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3521, file: !3522, line: 56, baseType: !295, size: 64, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3521, file: !3522, line: 57, baseType: !295, size: 64, offset: 1088)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3521, file: !3522, line: 58, baseType: !295, size: 64, offset: 1152)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3521, file: !3522, line: 59, baseType: !295, size: 64, offset: 1216)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3521, file: !3522, line: 60, baseType: !295, size: 64, offset: 1280)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3521, file: !3522, line: 61, baseType: !3341, size: 64, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3521, file: !3522, line: 62, baseType: !167, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3521, file: !3522, line: 63, baseType: !167, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3502, file: !80, line: 583, baseType: !167, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3502, file: !80, line: 584, baseType: !167, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3502, file: !80, line: 585, baseType: !167, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3502, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3502, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3502, file: !80, line: 592, baseType: !1262, size: 512, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3502, file: !80, line: 593, baseType: !390, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3502, file: !80, line: 594, baseType: !1927, size: 256, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3502, file: !80, line: 595, baseType: !1449, size: 128, offset: 1408)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3502, file: !80, line: 596, baseType: !3529, size: 64, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3502, file: !80, line: 597, baseType: !717, size: 32, offset: 1600)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3502, file: !80, line: 598, baseType: !717, size: 32, offset: 1632)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3502, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3502, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3502, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3502, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3502, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3502, file: !80, line: 604, baseType: !167, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3502, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3502, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3502, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3502, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3502, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3502, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3502, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3502, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3502, file: !80, line: 613, baseType: !140, size: 32, offset: 1792)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3502, file: !80, line: 614, baseType: !140, size: 32, offset: 1824)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3502, file: !80, line: 615, baseType: !390, size: 64, offset: 1856)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3502, file: !80, line: 616, baseType: !390, size: 64, offset: 1920)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3502, file: !80, line: 617, baseType: !390, size: 64, offset: 1984)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3502, file: !80, line: 618, baseType: !390, size: 64, offset: 2048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3502, file: !80, line: 620, baseType: !3590, size: 64, offset: 2112)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3592)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !80, line: 537, baseType: !204)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3591, file: !80, line: 538, baseType: !7, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3591, file: !80, line: 540, baseType: !191, size: 128, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3591, file: !80, line: 543, baseType: !3597, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3502, file: !80, line: 621, baseType: !3600, size: 64, offset: 2176)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !3341, !1412}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3502, file: !80, line: 622, baseType: !3604, size: 64, offset: 2240)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !180, file: !73, line: 486, baseType: !3607, size: 64, offset: 4096)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3616, !3617, !3618}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3608, file: !80, line: 643, baseType: !3369, size: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3608, file: !80, line: 644, baseType: !3372, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3608, file: !80, line: 645, baseType: !3613, size: 64, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{null, !3341, !167}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3608, file: !80, line: 646, baseType: !3372, size: 64, offset: 1600)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3608, file: !80, line: 647, baseType: !3363, size: 64, offset: 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3608, file: !80, line: 648, baseType: !3363, size: 64, offset: 1728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !180, file: !73, line: 493, baseType: !3620, size: 64, offset: 4160)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3709, !3710, !3711, !3712, !3713, !3714, !3717, !3718, !3719, !3720, !3721, !3722, !3723}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3621, file: !94, line: 163, baseType: !191, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3621, file: !94, line: 164, baseType: !187, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3621, file: !94, line: 165, baseType: !3626, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3629)
!3629 = !{!3630, !3659, !3670, !3675, !3679, !3686, !3690, !3694, !3701, !3705}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3628, file: !94, line: 106, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!140, !3620, !3634, !93}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3636, line: 51, size: 1344, elements: !3637)
!3636 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3637 = !{!3638, !3639, !3641, !3642, !3643, !3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3635, file: !3636, line: 52, baseType: !187, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3635, file: !3636, line: 53, baseType: !3640, size: 32, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3636, line: 28, baseType: !386)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3635, file: !3636, line: 54, baseType: !187, size: 64, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3635, file: !3636, line: 55, baseType: !145, size: 192, offset: 192)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3635, file: !3636, line: 57, baseType: !3644, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3636, line: 31, size: 704, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3645, file: !3636, line: 32, baseType: !245, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3645, file: !3636, line: 33, baseType: !140, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3645, file: !3636, line: 34, baseType: !134, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3645, file: !3636, line: 35, baseType: !3644, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3645, file: !3636, line: 43, baseType: !314, size: 448, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3635, file: !3636, line: 58, baseType: !3644, size: 64, offset: 448)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3635, file: !3636, line: 59, baseType: !3634, size: 64, offset: 512)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3635, file: !3636, line: 60, baseType: !3634, size: 64, offset: 576)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3635, file: !3636, line: 61, baseType: !3634, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3635, file: !3636, line: 63, baseType: !183, size: 512, offset: 704)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3635, file: !3636, line: 65, baseType: !295, size: 64, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3635, file: !3636, line: 66, baseType: !134, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3628, file: !94, line: 108, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!140, !3620, !3663, !93}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3665)
!3665 = !{!3666, !3667, !3668}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3664, file: !94, line: 64, baseType: !149, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3664, file: !94, line: 65, baseType: !140, size: 32, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3664, file: !94, line: 66, baseType: !3669, size: 512, offset: 96)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 512, elements: !1703)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3628, file: !94, line: 110, baseType: !3671, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!140, !3620, !7, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !168, line: 164, baseType: !295)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3628, file: !94, line: 111, baseType: !3676, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{null, !3620, !7}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3628, file: !94, line: 112, baseType: !3680, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!140, !3620, !3634, !3683, !7, !3685, !2651}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3628, file: !94, line: 117, baseType: !3687, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!140, !3620, !7, !7, !134}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3628, file: !94, line: 119, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3620, !7, !7}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3628, file: !94, line: 121, baseType: !3695, size: 64, offset: 448)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!140, !3620, !3698, !167}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3700, line: 11, flags: DIFlagFwdDecl)
!3700 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3628, file: !94, line: 122, baseType: !3702, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3620, !3698}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3628, file: !94, line: 123, baseType: !3706, size: 64, offset: 576)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!140, !3620, !3663, !3685, !2651}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3621, file: !94, line: 166, baseType: !134, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3621, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3621, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3621, file: !94, line: 171, baseType: !149, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3621, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3621, file: !94, line: 173, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3621, file: !94, line: 175, baseType: !3620, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3621, file: !94, line: 182, baseType: !3674, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3621, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3621, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3621, file: !94, line: 185, baseType: !708, size: 128, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3621, file: !94, line: 186, baseType: !1143, size: 192, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3621, file: !94, line: 187, baseType: !3724, offset: 1088)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2299)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !180, file: !73, line: 499, baseType: !191, size: 128, offset: 4224)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !180, file: !73, line: 502, baseType: !3727, size: 64, offset: 4352)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !180, file: !73, line: 504, baseType: !3731, size: 64, offset: 4416)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !180, file: !73, line: 505, baseType: !390, size: 64, offset: 4480)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !180, file: !73, line: 510, baseType: !390, size: 64, offset: 4544)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !180, file: !73, line: 511, baseType: !3735, size: 64, offset: 4608)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3737)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !180, file: !73, line: 513, baseType: !3739, size: 64, offset: 4672)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3740, file: !73, line: 293, baseType: !7, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3740, file: !73, line: 294, baseType: !295, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !180, file: !73, line: 515, baseType: !191, size: 128, offset: 4736)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !180, file: !73, line: 526, baseType: !3746, offset: 4864)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3747, line: 5, elements: !218)
!3747 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !180, file: !73, line: 528, baseType: !3634, size: 64, offset: 4864)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !180, file: !73, line: 529, baseType: !149, size: 64, offset: 4928)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !180, file: !73, line: 534, baseType: !479, size: 32, offset: 4992)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !180, file: !73, line: 535, baseType: !386, size: 32, offset: 5024)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !180, file: !73, line: 537, baseType: !204, offset: 5056)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !180, file: !73, line: 538, baseType: !191, size: 128, offset: 5056)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !180, file: !73, line: 540, baseType: !3755, size: 64, offset: 5184)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3757, line: 54, size: 960, elements: !3758)
!3757 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3769, !3773, !3774, !3775, !3776, !3780, !3784, !3785}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3756, file: !3757, line: 55, baseType: !187, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3756, file: !3757, line: 56, baseType: !599, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3756, file: !3757, line: 58, baseType: !299, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3756, file: !3757, line: 59, baseType: !299, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3756, file: !3757, line: 60, baseType: !197, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3756, file: !3757, line: 62, baseType: !3354, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3756, file: !3757, line: 63, baseType: !3766, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!245, !3341, !3361}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3756, file: !3757, line: 65, baseType: !3770, size: 64, offset: 448)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3755}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3756, file: !3757, line: 66, baseType: !3363, size: 64, offset: 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3756, file: !3757, line: 68, baseType: !3372, size: 64, offset: 576)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3756, file: !3757, line: 70, baseType: !3157, size: 64, offset: 640)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3756, file: !3757, line: 71, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!176, !3341}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3756, file: !3757, line: 73, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3341, !3189, !3190}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3756, file: !3757, line: 75, baseType: !3367, size: 64, offset: 832)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3756, file: !3757, line: 77, baseType: !3484, size: 64, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !180, file: !73, line: 541, baseType: !299, size: 64, offset: 5248)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !180, file: !73, line: 543, baseType: !3363, size: 64, offset: 5312)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !180, file: !73, line: 544, baseType: !3789, size: 64, offset: 5376)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !180, file: !73, line: 545, baseType: !3792, size: 64, offset: 5440)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !180, file: !73, line: 547, baseType: !167, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !180, file: !73, line: 548, baseType: !167, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !180, file: !73, line: 549, baseType: !167, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !180, file: !73, line: 550, baseType: !167, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !153, file: !146, line: 116, baseType: !3799, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!167, !170, !187}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !153, file: !146, line: 118, baseType: !3803, size: 64, offset: 320)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!140, !170, !187, !7, !134, !292}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !153, file: !146, line: 123, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!140, !170, !187, !3810, !292}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !153, file: !146, line: 126, baseType: !3812, size: 64, offset: 448)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!187, !170}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !153, file: !146, line: 127, baseType: !3812, size: 64, offset: 512)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !153, file: !146, line: 128, baseType: !3817, size: 64, offset: 576)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!149, !170}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !153, file: !146, line: 130, baseType: !3821, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!149, !170, !149}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !153, file: !146, line: 133, baseType: !3825, size: 64, offset: 704)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!149, !170, !187}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !153, file: !146, line: 135, baseType: !3829, size: 64, offset: 768)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!140, !170, !187, !187, !7, !7, !3832}
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !146, line: 43, size: 640, elements: !3834)
!3834 = !{!3835, !3836, !3837}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3833, file: !146, line: 44, baseType: !149, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3833, file: !146, line: 45, baseType: !7, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3833, file: !146, line: 46, baseType: !3838, size: 512, offset: 128)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !1300)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !153, file: !146, line: 140, baseType: !3821, size: 64, offset: 832)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !153, file: !146, line: 143, baseType: !3817, size: 64, offset: 896)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !153, file: !146, line: 145, baseType: !156, size: 64, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !153, file: !146, line: 146, baseType: !3843, size: 64, offset: 1024)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!140, !170, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !146, line: 29, size: 128, elements: !3848)
!3848 = !{!3849, !3850, !3851}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3847, file: !146, line: 30, baseType: !7, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3847, file: !146, line: 31, baseType: !7, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3847, file: !146, line: 32, baseType: !170, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !153, file: !146, line: 148, baseType: !3853, size: 64, offset: 1088)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!140, !170, !3341}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !145, file: !146, line: 20, baseType: !3341, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 355, baseType: !135, size: 64, offset: 320)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !136, file: !137, line: 356, baseType: !191, size: 128, offset: 384)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !136, file: !137, line: 357, baseType: !191, size: 128, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !136, file: !137, line: 358, baseType: !191, size: 128, offset: 640)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !136, file: !137, line: 359, baseType: !191, size: 128, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !136, file: !137, line: 360, baseType: !3863, size: 32, offset: 896)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !137, line: 179, size: 32, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3863, file: !137, line: 180, baseType: !386, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3863, file: !137, line: 181, baseType: !386, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3863, file: !137, line: 182, baseType: !386, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3863, file: !137, line: 183, baseType: !386, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3863, file: !137, line: 184, baseType: !386, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3863, file: !137, line: 185, baseType: !386, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 361, baseType: !3872, size: 32, offset: 928)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !137, line: 190, size: 32, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3872, file: !137, line: 191, baseType: !386, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3872, file: !137, line: 192, baseType: !386, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3872, file: !137, line: 193, baseType: !386, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3872, file: !137, line: 194, baseType: !386, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3872, file: !137, line: 195, baseType: !386, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3872, file: !137, line: 196, baseType: !386, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3872, file: !137, line: 197, baseType: !386, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3872, file: !137, line: 198, baseType: !386, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3872, file: !137, line: 199, baseType: !386, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3872, file: !137, line: 200, baseType: !386, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3872, file: !137, line: 201, baseType: !386, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3872, file: !137, line: 202, baseType: !386, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3872, file: !137, line: 203, baseType: !386, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3872, file: !137, line: 204, baseType: !386, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !136, file: !137, line: 362, baseType: !3889, size: 960, offset: 960)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !137, line: 234, size: 960, elements: !3890)
!3890 = !{!3891, !3893, !3900, !3902, !3903, !3904, !3909, !3912}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3889, file: !137, line: 235, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !137, line: 217, baseType: !2002)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3889, file: !137, line: 236, baseType: !3894, size: 32, offset: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !137, line: 227, size: 32, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3899}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3894, file: !137, line: 228, baseType: !386, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3894, file: !137, line: 229, baseType: !386, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3894, file: !137, line: 230, baseType: !386, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3894, file: !137, line: 231, baseType: !386, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3889, file: !137, line: 237, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !137, line: 218, baseType: !390)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3889, file: !137, line: 238, baseType: !245, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3889, file: !137, line: 239, baseType: !191, size: 128, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3889, file: !137, line: 240, baseType: !3905, size: 320, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !137, line: 219, baseType: !3906)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !3907)
!3907 = !{!3908}
!3908 = !DISubrange(count: 40)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3889, file: !137, line: 241, baseType: !3910, size: 160, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !137, line: 220, baseType: !3911)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 160, elements: !2169)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3889, file: !137, line: 242, baseType: !3913, size: 64, offset: 896)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !143, line: 899, size: 192, elements: !3915)
!3915 = !{!3916, !3918, !3923, !3929, !3936, !3942, !3948, !3956}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3914, file: !143, line: 900, baseType: !3917, size: 32)
!3917 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !143, line: 635, baseType: !386)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3914, file: !143, line: 904, baseType: !3919, size: 128)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 901, size: 128, elements: !3920)
!3920 = !{!3921, !3922}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3919, file: !143, line: 902, baseType: !3917, size: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3919, file: !143, line: 903, baseType: !390, size: 64, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3914, file: !143, line: 910, baseType: !3924, size: 128)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 906, size: 128, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3924, file: !143, line: 907, baseType: !3917, size: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3924, file: !143, line: 908, baseType: !386, size: 32, offset: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3924, file: !143, line: 909, baseType: !245, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3914, file: !143, line: 916, baseType: !3930, size: 128)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 912, size: 128, elements: !3931)
!3931 = !{!3932, !3933, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3930, file: !143, line: 913, baseType: !3917, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3930, file: !143, line: 914, baseType: !386, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3930, file: !143, line: 915, baseType: !3935, size: 64, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3914, file: !143, line: 922, baseType: !3937, size: 128)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 918, size: 128, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3937, file: !143, line: 919, baseType: !3917, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3937, file: !143, line: 920, baseType: !386, size: 32, offset: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3937, file: !143, line: 921, baseType: !3913, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3914, file: !143, line: 928, baseType: !3943, size: 128)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 924, size: 128, elements: !3944)
!3944 = !{!3945, !3946, !3947}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3943, file: !143, line: 925, baseType: !3917, size: 32)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3943, file: !143, line: 926, baseType: !3917, size: 32, offset: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3943, file: !143, line: 927, baseType: !142, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3914, file: !143, line: 935, baseType: !3949, size: 192)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 930, size: 192, elements: !3950)
!3950 = !{!3951, !3952, !3953, !3955}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3949, file: !143, line: 931, baseType: !3917, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3949, file: !143, line: 932, baseType: !386, size: 32, offset: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3949, file: !143, line: 933, baseType: !3954, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !143, line: 128, baseType: !390)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3949, file: !143, line: 934, baseType: !386, size: 32, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3914, file: !143, line: 941, baseType: !3957, size: 96)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3914, file: !143, line: 937, size: 96, elements: !3958)
!3958 = !{!3959, !3960, !3961}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3957, file: !143, line: 938, baseType: !3917, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3957, file: !143, line: 939, baseType: !386, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3957, file: !143, line: 940, baseType: !386, size: 32, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !136, file: !137, line: 363, baseType: !3963, size: 1344, offset: 1920)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !137, line: 275, size: 1344, elements: !3964)
!3964 = !{!3965, !3966, !3976}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3963, file: !137, line: 276, baseType: !140, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3963, file: !137, line: 277, baseType: !3967, size: 32, offset: 32)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !137, line: 254, size: 32, elements: !3968)
!3968 = !{!3969, !3970, !3971, !3972, !3973, !3974, !3975}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3967, file: !137, line: 255, baseType: !386, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3967, file: !137, line: 256, baseType: !386, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3967, file: !137, line: 257, baseType: !386, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3967, file: !137, line: 258, baseType: !386, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3967, file: !137, line: 259, baseType: !386, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3967, file: !137, line: 260, baseType: !386, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3967, file: !137, line: 261, baseType: !386, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3963, file: !137, line: 278, baseType: !3977, size: 1280, offset: 64)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3978, size: 1280, elements: !3989)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !137, line: 264, size: 256, elements: !3979)
!3979 = !{!3980, !3986, !3987, !3988}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !137, line: 269, baseType: !3981, size: 8)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3978, file: !137, line: 265, size: 8, elements: !3982)
!3982 = !{!3983, !3984, !3985}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3981, file: !137, line: 266, baseType: !129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3981, file: !137, line: 267, baseType: !129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3981, file: !137, line: 268, baseType: !129, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3978, file: !137, line: 270, baseType: !140, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3978, file: !137, line: 271, baseType: !140, size: 32, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3978, file: !137, line: 272, baseType: !191, size: 128, offset: 128)
!3989 = !{!3990}
!3990 = !DISubrange(count: 5)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !136, file: !137, line: 364, baseType: !3992, size: 640, offset: 3264)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !137, line: 315, size: 640, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !4003, !4012, !4013, !4014}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3992, file: !137, line: 316, baseType: !142, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3992, file: !137, line: 317, baseType: !390, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3992, file: !137, line: 318, baseType: !390, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3992, file: !137, line: 319, baseType: !191, size: 128, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3992, file: !137, line: 320, baseType: !3999, size: 8, offset: 320)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !137, line: 305, size: 8, elements: !4000)
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3999, file: !137, line: 306, baseType: !129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3999, file: !137, line: 307, baseType: !129, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3992, file: !137, line: 321, baseType: !4004, size: 128, offset: 384)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !137, line: 310, size: 128, elements: !4005)
!4005 = !{!4006, !4011}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4004, file: !137, line: 311, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !4010}
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4004, file: !137, line: 312, baseType: !3341, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3992, file: !137, line: 322, baseType: !3520, size: 64, offset: 512)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3992, file: !137, line: 323, baseType: !140, size: 32, offset: 576)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3992, file: !137, line: 324, baseType: !140, size: 32, offset: 608)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !136, file: !137, line: 365, baseType: !4016, size: 192, offset: 3904)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !137, line: 297, size: 192, elements: !4017)
!4017 = !{!4018, !4019, !4023, !4024}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4016, file: !137, line: 298, baseType: !140, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4016, file: !137, line: 299, baseType: !4020, size: 8, offset: 32)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !137, line: 283, size: 8, elements: !4021)
!4021 = !{!4022}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4020, file: !137, line: 284, baseType: !129, size: 8, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !4016, file: !137, line: 300, baseType: !140, size: 32, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !4016, file: !137, line: 301, baseType: !4025, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !137, line: 287, size: 64, elements: !4027)
!4027 = !{!4028, !4033, !4034, !4035}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4026, file: !137, line: 291, baseType: !4029, size: 8)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4026, file: !137, line: 288, size: 8, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4029, file: !137, line: 289, baseType: !129, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4029, file: !137, line: 290, baseType: !129, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4026, file: !137, line: 292, baseType: !129, size: 8, offset: 8)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !4026, file: !137, line: 293, baseType: !129, size: 8, offset: 16)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !4026, file: !137, line: 294, baseType: !140, size: 32, offset: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !136, file: !137, line: 366, baseType: !4037, size: 64, offset: 4096)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !137, line: 209, size: 64, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4037, file: !137, line: 210, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4042, line: 123, flags: DIFlagFwdDecl)
!4042 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !137, line: 367, baseType: !4044, size: 384, offset: 4160)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !137, line: 341, size: 384, elements: !4045)
!4045 = !{!4046, !4049, !4050, !4051}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4044, file: !137, line: 342, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3914)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4044, file: !137, line: 343, baseType: !191, size: 128, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !4044, file: !137, line: 344, baseType: !4047, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !4044, file: !137, line: 345, baseType: !191, size: 128, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !136, file: !137, line: 368, baseType: !4053, size: 64, offset: 4544)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !137, line: 122, size: 1216, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4063, !4067, !4071, !4072, !4073}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4054, file: !137, line: 123, baseType: !3435, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !4054, file: !137, line: 124, baseType: !191, size: 128, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4054, file: !137, line: 125, baseType: !4059, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!167, !187, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4054, file: !137, line: 126, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!140, !135, !3435}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4054, file: !137, line: 127, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{null, !135}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4054, file: !137, line: 128, baseType: !3363, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4054, file: !137, line: 129, baseType: !3363, size: 64, offset: 448)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4054, file: !137, line: 130, baseType: !4074, size: 704, offset: 512)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !137, line: 108, size: 704, elements: !4075)
!4075 = !{!4076, !4077, !4081, !4082, !4083}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4074, file: !137, line: 109, baseType: !183, size: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !4074, file: !137, line: 110, baseType: !4078, size: 64, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!140, !135}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !4074, file: !137, line: 111, baseType: !4068, size: 64, offset: 576)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4074, file: !137, line: 112, baseType: !167, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !4074, file: !137, line: 113, baseType: !167, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !136, file: !137, line: 369, baseType: !4085, size: 64, offset: 4608)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !137, line: 138, size: 256, elements: !4087)
!4087 = !{!4088, !4089, !4093, !4097}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4086, file: !137, line: 139, baseType: !135, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4086, file: !137, line: 140, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!140, !135, !386}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4086, file: !137, line: 141, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{null, !135, !386}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4086, file: !137, line: 142, baseType: !4068, size: 64, offset: 192)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !136, file: !137, line: 370, baseType: !4099, size: 64, offset: 4672)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !137, line: 162, size: 2816, elements: !4101)
!4101 = !{!4102, !4106, !4107, !4108, !4109, !4118, !4119}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4100, file: !137, line: 163, baseType: !4103, size: 640)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 640, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 80)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4100, file: !137, line: 164, baseType: !4103, size: 640, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4100, file: !137, line: 165, baseType: !3435, size: 64, offset: 1280)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4100, file: !137, line: 166, baseType: !7, size: 32, offset: 1344)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4100, file: !137, line: 167, baseType: !4110, size: 192, offset: 1408)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !137, line: 154, size: 192, elements: !4111)
!4111 = !{!4112, !4114, !4116}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4110, file: !137, line: 155, baseType: !4113, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !137, line: 150, baseType: !4078)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4110, file: !137, line: 156, baseType: !4115, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !137, line: 151, baseType: !4078)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4110, file: !137, line: 157, baseType: !4117, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !137, line: 152, baseType: !4094)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4100, file: !137, line: 168, baseType: !3413, size: 1152, offset: 1600)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4100, file: !137, line: 169, baseType: !599, size: 64, offset: 2752)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !136, file: !137, line: 371, baseType: !4121, size: 64, offset: 4736)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4123)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !137, line: 348, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !136, file: !137, line: 372, baseType: !134, size: 64, offset: 4800)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !137, line: 373, baseType: !180, size: 5568, offset: 4864)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !136, file: !137, line: 374, baseType: !7, size: 32, offset: 10432)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !136, file: !137, line: 375, baseType: !7, size: 32, offset: 10464)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !136, file: !137, line: 376, baseType: !191, size: 128, offset: 10496)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !136, file: !137, line: 377, baseType: !1143, size: 192, offset: 10624)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !136, file: !137, line: 378, baseType: !4068, size: 64, offset: 10816)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_routing_table", file: !4133, line: 670, size: 192, elements: !4134)
!4133 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/lizy2001/genbc/linux")
!4134 = !{!4135, !4136, !4137, !4138, !4139}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4132, file: !4133, line: 671, baseType: !386, size: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4132, file: !4133, line: 672, baseType: !386, size: 32, offset: 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4132, file: !4133, line: 673, baseType: !390, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "source_index", scope: !4132, file: !4133, line: 674, baseType: !386, size: 32, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4132, file: !4133, line: 675, baseType: !4140, size: 32, offset: 160)
!4140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !1125)
!4141 = !{!0, !4142, !4165, !4167}
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "medion_md9580", scope: !2, file: !3, line: 47, type: !4144, isLocal: true, isDefinition: true)
!4144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4145, size: 5504, elements: !1537)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !3425, line: 566, size: 2752, elements: !4147)
!4147 = !{!4148, !4153, !4154, !4164}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4146, file: !3425, line: 567, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!140, !4152}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !4146, file: !3425, line: 568, baseType: !187, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !4146, file: !3425, line: 569, baseType: !4155, size: 2560, offset: 128)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4156, size: 2560, elements: !1125)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !3425, line: 560, size: 640, elements: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4156, file: !3425, line: 561, baseType: !133, size: 7, flags: DIFlagBitField, extraData: i64 0)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !4156, file: !3425, line: 562, baseType: !133, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !4156, file: !3425, line: 563, baseType: !4161, size: 632, offset: 8)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 632, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 79)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4146, file: !3425, line: 570, baseType: !134, size: 64, offset: 2688)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "dell_optiplex", scope: !2, file: !3, line: 59, type: !4144, isLocal: true, isDefinition: true)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "hp_t5710", scope: !2, file: !3, line: 71, type: !4144, isLocal: true, isDefinition: true)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4170, size: 960, elements: !246)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prt_quirk", file: !3, line: 83, size: 320, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4171, file: !3, line: 84, baseType: !4152, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4171, file: !3, line: 85, baseType: !7, size: 32, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4171, file: !3, line: 86, baseType: !7, size: 32, offset: 96)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4171, file: !3, line: 87, baseType: !7, size: 32, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4171, file: !3, line: 88, baseType: !133, size: 8, offset: 160)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4171, file: !3, line: 89, baseType: !187, size: 64, offset: 192)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "actual_source", scope: !4171, file: !3, line: 90, baseType: !187, size: 64, offset: 256)
!4180 = !{i32 7, !"Dwarf Version", i32 4}
!4181 = !{i32 2, !"Debug Info Version", i32 3}
!4182 = !{i32 1, !"wchar_size", i32 2}
!4183 = !{i32 1, !"Code Model", i32 2}
!4184 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4185 = distinct !DISubprogram(name: "acpi_pci_irq_enable", scope: !3, file: !3, line: 395, type: !4186, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!140, !4188}
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4190, line: 309, size: 19264, elements: !4191)
!4190 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!4191 = !{!4192, !4193, !4265, !4266, !4267, !4268, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4358, !4359, !4360, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4434, !4435, !4436, !4437, !4438, !4439, !4441, !4442, !4443, !4446, !4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4189, file: !4190, line: 310, baseType: !191, size: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4189, file: !4190, line: 311, baseType: !4194, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4190, line: 605, size: 8064, elements: !4196)
!4196 = !{!4197, !4198, !4199, !4200, !4201, !4202, !4203, !4218, !4219, !4220, !4244, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4257, !4258, !4260, !4261, !4262, !4263, !4264}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4195, file: !4190, line: 606, baseType: !191, size: 128)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4195, file: !4190, line: 607, baseType: !4194, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4195, file: !4190, line: 608, baseType: !191, size: 128, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4195, file: !4190, line: 609, baseType: !191, size: 128, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4195, file: !4190, line: 610, baseType: !4188, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4195, file: !4190, line: 611, baseType: !191, size: 128, offset: 512)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4195, file: !4190, line: 613, baseType: !4204, size: 256, offset: 640)
!4204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4205, size: 256, elements: !1125)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4207, line: 20, size: 512, elements: !4208)
!4207 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4208 = !{!4209, !4211, !4212, !4213, !4214, !4215, !4216, !4217}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4206, file: !4207, line: 21, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !168, line: 158, baseType: !2095)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4206, file: !4207, line: 22, baseType: !4210, size: 64, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4206, file: !4207, line: 23, baseType: !187, size: 64, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4206, file: !4207, line: 24, baseType: !295, size: 64, offset: 192)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4206, file: !4207, line: 25, baseType: !295, size: 64, offset: 256)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 320)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4206, file: !4207, line: 26, baseType: !4205, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4195, file: !4190, line: 614, baseType: !191, size: 128, offset: 896)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4195, file: !4190, line: 615, baseType: !4206, size: 512, offset: 1024)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4195, file: !4190, line: 617, baseType: !4221, size: 64, offset: 1536)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4190, line: 731, size: 320, elements: !4223)
!4223 = !{!4224, !4228, !4232, !4236, !4240}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4222, file: !4190, line: 732, baseType: !4225, size: 64)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!140, !4194}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4222, file: !4190, line: 733, baseType: !4229, size: 64, offset: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4194}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4222, file: !4190, line: 734, baseType: !4233, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!134, !4194, !7, !140}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4222, file: !4190, line: 735, baseType: !4237, size: 64, offset: 192)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!140, !4194, !7, !140, !140, !1383}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4222, file: !4190, line: 736, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!140, !4194, !7, !140, !140, !386}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4195, file: !4190, line: 618, baseType: !4245, size: 64, offset: 1600)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !4190, line: 537, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4195, file: !4190, line: 619, baseType: !134, size: 64, offset: 1664)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4195, file: !4190, line: 620, baseType: !4040, size: 64, offset: 1728)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4195, file: !4190, line: 622, baseType: !133, size: 8, offset: 1792)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4195, file: !4190, line: 623, baseType: !133, size: 8, offset: 1800)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4195, file: !4190, line: 624, baseType: !133, size: 8, offset: 1808)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4195, file: !4190, line: 625, baseType: !133, size: 8, offset: 1816)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4195, file: !4190, line: 630, baseType: !4254, size: 384, offset: 1824)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 384, elements: !4255)
!4255 = !{!4256}
!4256 = !DISubrange(count: 48)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4195, file: !4190, line: 632, baseType: !287, size: 16, offset: 2208)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4195, file: !4190, line: 633, baseType: !4259, size: 16, offset: 2224)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4190, line: 237, baseType: !287)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4195, file: !4190, line: 634, baseType: !3341, size: 64, offset: 2240)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4195, file: !4190, line: 635, baseType: !180, size: 5568, offset: 2304)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4195, file: !4190, line: 636, baseType: !313, size: 64, offset: 7872)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4195, file: !4190, line: 637, baseType: !313, size: 64, offset: 7936)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4195, file: !4190, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4189, file: !4190, line: 312, baseType: !4194, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4189, file: !4190, line: 314, baseType: !134, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4189, file: !4190, line: 315, baseType: !4040, size: 64, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4189, file: !4190, line: 316, baseType: !4269, size: 64, offset: 384)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4190, line: 69, size: 832, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4277, !4278}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4270, file: !4190, line: 70, baseType: !4194, size: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4270, file: !4190, line: 71, baseType: !191, size: 128, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4270, file: !4190, line: 72, baseType: !4275, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4190, line: 72, flags: DIFlagFwdDecl)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4270, file: !4190, line: 73, baseType: !133, size: 8, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4270, file: !4190, line: 74, baseType: !183, size: 512, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4189, file: !4190, line: 318, baseType: !7, size: 32, offset: 448)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4189, file: !4190, line: 319, baseType: !287, size: 16, offset: 480)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4189, file: !4190, line: 320, baseType: !287, size: 16, offset: 496)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4189, file: !4190, line: 321, baseType: !287, size: 16, offset: 512)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4189, file: !4190, line: 322, baseType: !287, size: 16, offset: 528)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4189, file: !4190, line: 323, baseType: !7, size: 32, offset: 544)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4189, file: !4190, line: 324, baseType: !129, size: 8, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4189, file: !4190, line: 325, baseType: !129, size: 8, offset: 584)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4189, file: !4190, line: 330, baseType: !129, size: 8, offset: 592)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4189, file: !4190, line: 331, baseType: !129, size: 8, offset: 600)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4189, file: !4190, line: 332, baseType: !129, size: 8, offset: 608)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4189, file: !4190, line: 333, baseType: !129, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4189, file: !4190, line: 334, baseType: !129, size: 8, offset: 624)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4189, file: !4190, line: 335, baseType: !129, size: 8, offset: 632)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4189, file: !4190, line: 336, baseType: !829, size: 16, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4189, file: !4190, line: 337, baseType: !3685, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4189, file: !4190, line: 339, baseType: !4296, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4190, line: 858, size: 2048, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4313, !4317, !4321, !4325, !4327, !4328, !4332, !4351, !4352, !4353}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4297, file: !4190, line: 859, baseType: !191, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4297, file: !4190, line: 860, baseType: !187, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4297, file: !4190, line: 861, baseType: !4302, size: 64, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3425, line: 38, size: 256, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4304, file: !3425, line: 39, baseType: !387, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4304, file: !3425, line: 39, baseType: !387, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4304, file: !3425, line: 40, baseType: !387, size: 32, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4304, file: !3425, line: 40, baseType: !387, size: 32, offset: 96)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4304, file: !3425, line: 41, baseType: !387, size: 32, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4304, file: !3425, line: 41, baseType: !387, size: 32, offset: 160)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4304, file: !3425, line: 42, baseType: !3444, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4297, file: !4190, line: 862, baseType: !4314, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!140, !4188, !4302}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4297, file: !4190, line: 863, baseType: !4318, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4188}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !4190, line: 864, baseType: !4322, size: 64, offset: 384)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!140, !4188, !3455}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !4190, line: 865, baseType: !4326, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4297, file: !4190, line: 866, baseType: !4318, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4297, file: !4190, line: 867, baseType: !4329, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!140, !4188, !140}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4297, file: !4190, line: 868, baseType: !4333, size: 64, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4335)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4190, line: 795, size: 384, elements: !4336)
!4336 = !{!4337, !4343, !4347, !4348, !4349, !4350}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4335, file: !4190, line: 797, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!4341, !4188, !4342}
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4190, line: 772, baseType: !7)
!4342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4190, line: 180, baseType: !7)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4335, file: !4190, line: 801, baseType: !4344, size: 64, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!4341, !4188}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4335, file: !4190, line: 804, baseType: !4344, size: 64, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4335, file: !4190, line: 807, baseType: !4318, size: 64, offset: 192)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4335, file: !4190, line: 808, baseType: !4318, size: 64, offset: 256)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4335, file: !4190, line: 811, baseType: !4318, size: 64, offset: 320)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4297, file: !4190, line: 869, baseType: !299, size: 64, offset: 704)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4297, file: !4190, line: 870, baseType: !3413, size: 1152, offset: 768)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4297, file: !4190, line: 871, baseType: !4354, size: 128, offset: 1920)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4190, line: 759, size: 128, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4354, file: !4190, line: 760, baseType: !204)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4354, file: !4190, line: 761, baseType: !191, size: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4189, file: !4190, line: 340, baseType: !390, size: 64, offset: 832)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4189, file: !4190, line: 346, baseType: !3740, size: 128, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4189, file: !4190, line: 348, baseType: !4361, size: 32, offset: 1024)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4190, line: 155, baseType: !140)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4189, file: !4190, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4189, file: !4190, line: 352, baseType: !129, size: 8, offset: 1064)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4189, file: !4190, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4189, file: !4190, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4189, file: !4190, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4189, file: !4190, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4189, file: !4190, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4189, file: !4190, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4189, file: !4190, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4189, file: !4190, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4189, file: !4190, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4189, file: !4190, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !4189, file: !4190, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4189, file: !4190, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4189, file: !4190, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4189, file: !4190, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4189, file: !4190, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4189, file: !4190, line: 376, baseType: !7, size: 32, offset: 1120)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4189, file: !4190, line: 377, baseType: !7, size: 32, offset: 1152)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4189, file: !4190, line: 380, baseType: !4382, size: 64, offset: 1216)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4190, line: 303, flags: DIFlagFwdDecl)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4189, file: !4190, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4189, file: !4190, line: 383, baseType: !140, size: 32, offset: 1312)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4189, file: !4190, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4189, file: !4190, line: 387, baseType: !4342, size: 32, offset: 1376)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4189, file: !4190, line: 388, baseType: !180, size: 5568, offset: 1408)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4189, file: !4190, line: 390, baseType: !140, size: 32, offset: 6976)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4189, file: !4190, line: 396, baseType: !7, size: 32, offset: 7008)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4189, file: !4190, line: 397, baseType: !4392, size: 8704, offset: 7040)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4206, size: 8704, elements: !4393)
!4393 = !{!4394}
!4394 = !DISubrange(count: 17)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4189, file: !4190, line: 399, baseType: !167, size: 8, offset: 15744)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4189, file: !4190, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4189, file: !4190, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4189, file: !4190, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4189, file: !4190, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4189, file: !4190, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4189, file: !4190, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4189, file: !4190, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4189, file: !4190, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4189, file: !4190, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4189, file: !4190, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4189, file: !4190, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4189, file: !4190, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4189, file: !4190, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4189, file: !4190, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4189, file: !4190, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4189, file: !4190, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4189, file: !4190, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4189, file: !4190, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4189, file: !4190, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4189, file: !4190, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4189, file: !4190, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4189, file: !4190, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !4189, file: !4190, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4189, file: !4190, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4189, file: !4190, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4189, file: !4190, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4189, file: !4190, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4189, file: !4190, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4189, file: !4190, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4189, file: !4190, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4189, file: !4190, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4189, file: !4190, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4189, file: !4190, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4189, file: !4190, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4189, file: !4190, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4189, file: !4190, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4189, file: !4190, line: 450, baseType: !4433, size: 16, offset: 15792)
!4433 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4190, line: 206, baseType: !287)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4189, file: !4190, line: 451, baseType: !717, size: 32, offset: 15808)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4189, file: !4190, line: 453, baseType: !3669, size: 512, offset: 15840)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4189, file: !4190, line: 454, baseType: !604, size: 64, offset: 16384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !4189, file: !4190, line: 455, baseType: !313, size: 64, offset: 16448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4189, file: !4190, line: 456, baseType: !140, size: 32, offset: 16512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4189, file: !4190, line: 457, baseType: !4440, size: 1088, offset: 16576)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 1088, elements: !4393)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4189, file: !4190, line: 458, baseType: !4440, size: 1088, offset: 17664)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !4189, file: !4190, line: 469, baseType: !299, size: 64, offset: 18752)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4189, file: !4190, line: 471, baseType: !4444, size: 64, offset: 18816)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4190, line: 304, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !4190, line: 478, baseType: !4447, size: 64, offset: 18880)
!4447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !4190, line: 478, size: 64, elements: !4448)
!4448 = !{!4449, !4452}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4447, file: !4190, line: 479, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4190, line: 305, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4447, file: !4190, line: 480, baseType: !4188, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4189, file: !4190, line: 482, baseType: !829, size: 16, offset: 18944)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4189, file: !4190, line: 483, baseType: !129, size: 8, offset: 18960)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4189, file: !4190, line: 497, baseType: !829, size: 16, offset: 18976)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4189, file: !4190, line: 498, baseType: !2095, size: 64, offset: 19008)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4189, file: !4190, line: 499, baseType: !292, size: 64, offset: 19072)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4189, file: !4190, line: 500, baseType: !245, size: 64, offset: 19136)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4189, file: !4190, line: 502, baseType: !295, size: 64, offset: 19200)
!4460 = !DILocalVariable(name: "dev", arg: 1, scope: !4185, file: !3, line: 395, type: !4188)
!4461 = !DILocation(line: 395, column: 41, scope: !4185)
!4462 = !DILocalVariable(name: "entry", scope: !4185, file: !3, line: 397, type: !4463)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_prt_entry", file: !3, line: 30, size: 256, elements: !4465)
!4465 = !{!4466, !4473, !4474, !4475}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4464, file: !3, line: 31, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !143, line: 1197, size: 64, elements: !4468)
!4468 = !{!4469, !4470, !4471, !4472}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !4467, file: !143, line: 1198, baseType: !829, size: 16)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4467, file: !143, line: 1199, baseType: !829, size: 16, offset: 16)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4467, file: !143, line: 1200, baseType: !829, size: 16, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !4467, file: !143, line: 1201, baseType: !829, size: 16, offset: 48)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4464, file: !3, line: 32, baseType: !129, size: 8, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4464, file: !3, line: 33, baseType: !142, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4464, file: !3, line: 34, baseType: !386, size: 32, offset: 192)
!4476 = !DILocation(line: 397, column: 25, scope: !4185)
!4477 = !DILocalVariable(name: "gsi", scope: !4185, file: !3, line: 398, type: !140)
!4478 = !DILocation(line: 398, column: 6, scope: !4185)
!4479 = !DILocalVariable(name: "pin", scope: !4185, file: !3, line: 399, type: !129)
!4480 = !DILocation(line: 399, column: 5, scope: !4185)
!4481 = !DILocalVariable(name: "triggering", scope: !4185, file: !3, line: 400, type: !140)
!4482 = !DILocation(line: 400, column: 6, scope: !4185)
!4483 = !DILocalVariable(name: "polarity", scope: !4185, file: !3, line: 408, type: !140)
!4484 = !DILocation(line: 408, column: 6, scope: !4185)
!4485 = !DILocation(line: 408, column: 17, scope: !4185)
!4486 = !DILocation(line: 408, column: 32, scope: !4185)
!4487 = !DILocalVariable(name: "link", scope: !4185, file: !3, line: 410, type: !245)
!4488 = !DILocation(line: 410, column: 8, scope: !4185)
!4489 = !DILocalVariable(name: "link_desc", scope: !4185, file: !3, line: 411, type: !1702)
!4490 = !DILocation(line: 411, column: 7, scope: !4185)
!4491 = !DILocalVariable(name: "rc", scope: !4185, file: !3, line: 412, type: !140)
!4492 = !DILocation(line: 412, column: 6, scope: !4185)
!4493 = !DILocation(line: 414, column: 8, scope: !4185)
!4494 = !DILocation(line: 414, column: 13, scope: !4185)
!4495 = !DILocation(line: 414, column: 6, scope: !4185)
!4496 = !DILocation(line: 415, column: 7, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 415, column: 6)
!4498 = !DILocation(line: 415, column: 6, scope: !4185)
!4499 = !DILocation(line: 419, column: 3, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 415, column: 12)
!4501 = !DILocation(line: 422, column: 6, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 422, column: 6)
!4503 = !DILocation(line: 422, column: 11, scope: !4502)
!4504 = !DILocation(line: 422, column: 23, scope: !4502)
!4505 = !DILocation(line: 422, column: 26, scope: !4502)
!4506 = !DILocation(line: 422, column: 31, scope: !4502)
!4507 = !DILocation(line: 422, column: 35, scope: !4502)
!4508 = !DILocation(line: 422, column: 6, scope: !4185)
!4509 = !DILocation(line: 423, column: 3, scope: !4502)
!4510 = !DILocation(line: 425, column: 30, scope: !4185)
!4511 = !DILocation(line: 425, column: 35, scope: !4185)
!4512 = !DILocation(line: 425, column: 10, scope: !4185)
!4513 = !DILocation(line: 425, column: 8, scope: !4185)
!4514 = !DILocation(line: 426, column: 7, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 426, column: 6)
!4516 = !DILocation(line: 426, column: 6, scope: !4185)
!4517 = !DILocation(line: 431, column: 7, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 431, column: 7)
!4519 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 426, column: 14)
!4520 = !DILocation(line: 431, column: 12, scope: !4518)
!4521 = !DILocation(line: 431, column: 18, scope: !4518)
!4522 = !DILocation(line: 431, column: 23, scope: !4518)
!4523 = !DILocation(line: 431, column: 48, scope: !4518)
!4524 = !DILocation(line: 432, column: 6, scope: !4518)
!4525 = !DILocation(line: 432, column: 11, scope: !4518)
!4526 = !DILocation(line: 432, column: 17, scope: !4518)
!4527 = !DILocation(line: 432, column: 25, scope: !4518)
!4528 = !DILocation(line: 431, column: 7, scope: !4519)
!4529 = !DILocation(line: 433, column: 4, scope: !4518)
!4530 = !DILocation(line: 434, column: 2, scope: !4519)
!4531 = !DILocation(line: 436, column: 6, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 436, column: 6)
!4533 = !DILocation(line: 436, column: 6, scope: !4185)
!4534 = !DILocation(line: 437, column: 7, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4536, file: !3, line: 437, column: 7)
!4536 = distinct !DILexicalBlock(scope: !4532, file: !3, line: 436, column: 13)
!4537 = !DILocation(line: 437, column: 14, scope: !4535)
!4538 = !DILocation(line: 437, column: 7, scope: !4536)
!4539 = !DILocation(line: 438, column: 37, scope: !4535)
!4540 = !DILocation(line: 438, column: 44, scope: !4535)
!4541 = !DILocation(line: 439, column: 9, scope: !4535)
!4542 = !DILocation(line: 439, column: 16, scope: !4535)
!4543 = !DILocation(line: 438, column: 10, scope: !4535)
!4544 = !DILocation(line: 438, column: 8, scope: !4535)
!4545 = !DILocation(line: 438, column: 4, scope: !4535)
!4546 = !DILocation(line: 443, column: 10, scope: !4535)
!4547 = !DILocation(line: 443, column: 17, scope: !4535)
!4548 = !DILocation(line: 443, column: 8, scope: !4535)
!4549 = !DILocation(line: 444, column: 2, scope: !4536)
!4550 = !DILocation(line: 445, column: 7, scope: !4532)
!4551 = !DILocation(line: 447, column: 6, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 447, column: 6)
!4553 = !DILocation(line: 447, column: 10, scope: !4552)
!4554 = !DILocation(line: 447, column: 6, scope: !4185)
!4555 = !DILocation(line: 452, column: 27, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 452, column: 7)
!4557 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 447, column: 15)
!4558 = !DILocation(line: 452, column: 32, scope: !4556)
!4559 = !DILocation(line: 452, column: 8, scope: !4556)
!4560 = !DILocation(line: 452, column: 7, scope: !4557)
!4561 = !DILocation(line: 453, column: 10, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 452, column: 38)
!4563 = !DILocation(line: 453, column: 4, scope: !4562)
!4564 = !DILocation(line: 454, column: 4, scope: !4562)
!4565 = !DILocation(line: 457, column: 29, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 457, column: 7)
!4567 = !DILocation(line: 457, column: 7, scope: !4566)
!4568 = !DILocation(line: 457, column: 7, scope: !4557)
!4569 = !DILocation(line: 458, column: 4, scope: !4566)
!4570 = !DILocation(line: 461, column: 9, scope: !4557)
!4571 = !DILocation(line: 461, column: 3, scope: !4557)
!4572 = !DILocation(line: 462, column: 3, scope: !4557)
!4573 = !DILocation(line: 465, column: 26, scope: !4185)
!4574 = !DILocation(line: 465, column: 31, scope: !4185)
!4575 = !DILocation(line: 465, column: 36, scope: !4185)
!4576 = !DILocation(line: 465, column: 41, scope: !4185)
!4577 = !DILocation(line: 465, column: 53, scope: !4185)
!4578 = !DILocation(line: 465, column: 7, scope: !4185)
!4579 = !DILocation(line: 465, column: 5, scope: !4185)
!4580 = !DILocation(line: 466, column: 6, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 466, column: 6)
!4582 = !DILocation(line: 466, column: 9, scope: !4581)
!4583 = !DILocation(line: 466, column: 6, scope: !4185)
!4584 = !DILocation(line: 467, column: 3, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 466, column: 14)
!4586 = !DILocation(line: 469, column: 9, scope: !4585)
!4587 = !DILocation(line: 469, column: 3, scope: !4585)
!4588 = !DILocation(line: 470, column: 10, scope: !4585)
!4589 = !DILocation(line: 470, column: 3, scope: !4585)
!4590 = !DILocation(line: 472, column: 13, scope: !4185)
!4591 = !DILocation(line: 472, column: 2, scope: !4185)
!4592 = !DILocation(line: 472, column: 7, scope: !4185)
!4593 = !DILocation(line: 472, column: 11, scope: !4185)
!4594 = !DILocation(line: 473, column: 2, scope: !4185)
!4595 = !DILocation(line: 473, column: 7, scope: !4185)
!4596 = !DILocation(line: 473, column: 19, scope: !4185)
!4597 = !DILocation(line: 475, column: 6, scope: !4598)
!4598 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 475, column: 6)
!4599 = !DILocation(line: 475, column: 6, scope: !4185)
!4600 = !DILocation(line: 476, column: 12, scope: !4598)
!4601 = !DILocation(line: 476, column: 58, scope: !4598)
!4602 = !DILocation(line: 476, column: 3, scope: !4598)
!4603 = !DILocation(line: 478, column: 3, scope: !4598)
!4604 = !DILocation(line: 478, column: 16, scope: !4598)
!4605 = !DILocation(line: 485, column: 8, scope: !4185)
!4606 = !DILocation(line: 485, column: 2, scope: !4185)
!4607 = !DILocation(line: 486, column: 2, scope: !4185)
!4608 = !DILocation(line: 487, column: 1, scope: !4185)
!4609 = distinct !DISubprogram(name: "acpi_pci_irq_lookup", scope: !3, file: !3, line: 298, type: !4610, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!4463, !4188, !140}
!4612 = !DILocalVariable(name: "dev", arg: 1, scope: !4609, file: !3, line: 298, type: !4188)
!4613 = !DILocation(line: 298, column: 67, scope: !4609)
!4614 = !DILocalVariable(name: "pin", arg: 2, scope: !4609, file: !3, line: 298, type: !140)
!4615 = !DILocation(line: 298, column: 76, scope: !4609)
!4616 = !DILocalVariable(name: "entry", scope: !4609, file: !3, line: 300, type: !4463)
!4617 = !DILocation(line: 300, column: 25, scope: !4609)
!4618 = !DILocalVariable(name: "bridge", scope: !4609, file: !3, line: 301, type: !4188)
!4619 = !DILocation(line: 301, column: 18, scope: !4609)
!4620 = !DILocalVariable(name: "bridge_pin", scope: !4609, file: !3, line: 302, type: !129)
!4621 = !DILocation(line: 302, column: 5, scope: !4609)
!4622 = !DILocalVariable(name: "orig_pin", scope: !4609, file: !3, line: 302, type: !129)
!4623 = !DILocation(line: 302, column: 17, scope: !4609)
!4624 = !DILocation(line: 302, column: 28, scope: !4609)
!4625 = !DILocalVariable(name: "ret", scope: !4609, file: !3, line: 303, type: !140)
!4626 = !DILocation(line: 303, column: 6, scope: !4609)
!4627 = !DILocation(line: 305, column: 36, scope: !4609)
!4628 = !DILocation(line: 305, column: 41, scope: !4609)
!4629 = !DILocation(line: 305, column: 8, scope: !4609)
!4630 = !DILocation(line: 305, column: 6, scope: !4609)
!4631 = !DILocation(line: 306, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 306, column: 6)
!4633 = !DILocation(line: 306, column: 11, scope: !4632)
!4634 = !DILocation(line: 306, column: 14, scope: !4632)
!4635 = !DILocation(line: 306, column: 6, scope: !4609)
!4636 = !DILocation(line: 308, column: 31, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 306, column: 21)
!4638 = !DILocation(line: 308, column: 36, scope: !4637)
!4639 = !DILocation(line: 308, column: 3, scope: !4637)
!4640 = !DILocation(line: 312, column: 10, scope: !4637)
!4641 = !DILocation(line: 312, column: 3, scope: !4637)
!4642 = !DILocation(line: 319, column: 11, scope: !4609)
!4643 = !DILocation(line: 319, column: 16, scope: !4609)
!4644 = !DILocation(line: 319, column: 21, scope: !4609)
!4645 = !DILocation(line: 319, column: 9, scope: !4609)
!4646 = !DILocation(line: 320, column: 2, scope: !4609)
!4647 = !DILocation(line: 320, column: 9, scope: !4609)
!4648 = !DILocation(line: 321, column: 35, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 320, column: 17)
!4650 = !DILocation(line: 321, column: 40, scope: !4649)
!4651 = !DILocation(line: 321, column: 9, scope: !4649)
!4652 = !DILocation(line: 321, column: 7, scope: !4649)
!4653 = !DILocation(line: 323, column: 8, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 323, column: 7)
!4655 = !DILocation(line: 323, column: 16, scope: !4654)
!4656 = !DILocation(line: 323, column: 22, scope: !4654)
!4657 = !DILocation(line: 323, column: 28, scope: !4654)
!4658 = !DILocation(line: 323, column: 7, scope: !4649)
!4659 = !DILocation(line: 325, column: 17, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 323, column: 57)
!4661 = !DILocation(line: 325, column: 25, scope: !4660)
!4662 = !DILocation(line: 325, column: 15, scope: !4660)
!4663 = !DILocation(line: 326, column: 9, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 326, column: 8)
!4665 = !DILocation(line: 326, column: 8, scope: !4660)
!4666 = !DILocation(line: 330, column: 5, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 326, column: 21)
!4668 = !DILocation(line: 332, column: 10, scope: !4660)
!4669 = !DILocation(line: 332, column: 8, scope: !4660)
!4670 = !DILocation(line: 333, column: 3, scope: !4660)
!4671 = !DILocation(line: 335, column: 37, scope: !4649)
!4672 = !DILocation(line: 335, column: 45, scope: !4649)
!4673 = !DILocation(line: 335, column: 9, scope: !4649)
!4674 = !DILocation(line: 335, column: 7, scope: !4649)
!4675 = !DILocation(line: 336, column: 8, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 336, column: 7)
!4677 = !DILocation(line: 336, column: 12, scope: !4676)
!4678 = !DILocation(line: 336, column: 15, scope: !4676)
!4679 = !DILocation(line: 336, column: 7, scope: !4649)
!4680 = !DILocation(line: 341, column: 11, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 336, column: 22)
!4682 = !DILocation(line: 341, column: 4, scope: !4681)
!4683 = !DILocation(line: 344, column: 9, scope: !4649)
!4684 = !DILocation(line: 344, column: 7, scope: !4649)
!4685 = !DILocation(line: 345, column: 12, scope: !4649)
!4686 = !DILocation(line: 345, column: 17, scope: !4649)
!4687 = !DILocation(line: 345, column: 22, scope: !4649)
!4688 = !DILocation(line: 345, column: 10, scope: !4649)
!4689 = distinct !{!4689, !4646, !4690}
!4690 = !DILocation(line: 346, column: 2, scope: !4609)
!4691 = !DILocation(line: 348, column: 2, scope: !4609)
!4692 = !DILocation(line: 350, column: 2, scope: !4609)
!4693 = !DILocation(line: 351, column: 1, scope: !4609)
!4694 = distinct !DISubprogram(name: "acpi_pci_irq_valid", scope: !3, file: !3, line: 378, type: !4695, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!167, !4188, !129}
!4697 = !DILocalVariable(name: "dev", arg: 1, scope: !4694, file: !3, line: 378, type: !4188)
!4698 = !DILocation(line: 378, column: 55, scope: !4694)
!4699 = !DILocalVariable(name: "pin", arg: 2, scope: !4694, file: !3, line: 378, type: !129)
!4700 = !DILocation(line: 378, column: 63, scope: !4694)
!4701 = !DILocation(line: 385, column: 6, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4694, file: !3, line: 385, column: 6)
!4703 = !DILocation(line: 385, column: 11, scope: !4702)
!4704 = !DILocation(line: 385, column: 15, scope: !4702)
!4705 = !DILocation(line: 385, column: 6, scope: !4694)
!4706 = !DILocation(line: 386, column: 3, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 385, column: 24)
!4708 = !DILocation(line: 386, column: 8, scope: !4707)
!4709 = !DILocation(line: 386, column: 12, scope: !4707)
!4710 = !DILocation(line: 387, column: 3, scope: !4707)
!4711 = !DILocation(line: 389, column: 3, scope: !4707)
!4712 = !DILocation(line: 392, column: 2, scope: !4694)
!4713 = !DILocation(line: 393, column: 1, scope: !4694)
!4714 = distinct !DISubprogram(name: "acpi_isa_register_gsi", scope: !3, file: !3, line: 372, type: !4186, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4715 = !DILocalVariable(name: "dev", arg: 1, scope: !4714, file: !3, line: 372, type: !4188)
!4716 = !DILocation(line: 372, column: 57, scope: !4714)
!4717 = !DILocation(line: 374, column: 2, scope: !4714)
!4718 = distinct !DISubprogram(name: "pin_name", scope: !3, file: !3, line: 37, type: !4719, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!189, !140}
!4721 = !DILocalVariable(name: "pin", arg: 1, scope: !4718, file: !3, line: 37, type: !140)
!4722 = !DILocation(line: 37, column: 33, scope: !4718)
!4723 = !DILocation(line: 39, column: 15, scope: !4718)
!4724 = !DILocation(line: 39, column: 13, scope: !4718)
!4725 = !DILocation(line: 39, column: 19, scope: !4718)
!4726 = !DILocation(line: 39, column: 9, scope: !4718)
!4727 = !DILocation(line: 39, column: 2, scope: !4718)
!4728 = distinct !DISubprogram(name: "acpi_pci_irq_disable", scope: !3, file: !3, line: 489, type: !4319, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4729 = !DILocalVariable(name: "dev", arg: 1, scope: !4728, file: !3, line: 489, type: !4188)
!4730 = !DILocation(line: 489, column: 43, scope: !4728)
!4731 = !DILocalVariable(name: "entry", scope: !4728, file: !3, line: 491, type: !4463)
!4732 = !DILocation(line: 491, column: 25, scope: !4728)
!4733 = !DILocalVariable(name: "gsi", scope: !4728, file: !3, line: 492, type: !140)
!4734 = !DILocation(line: 492, column: 6, scope: !4728)
!4735 = !DILocalVariable(name: "pin", scope: !4728, file: !3, line: 493, type: !129)
!4736 = !DILocation(line: 493, column: 5, scope: !4728)
!4737 = !DILocation(line: 495, column: 8, scope: !4728)
!4738 = !DILocation(line: 495, column: 13, scope: !4728)
!4739 = !DILocation(line: 495, column: 6, scope: !4728)
!4740 = !DILocation(line: 496, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 496, column: 6)
!4742 = !DILocation(line: 496, column: 11, scope: !4741)
!4743 = !DILocation(line: 496, column: 15, scope: !4741)
!4744 = !DILocation(line: 496, column: 20, scope: !4741)
!4745 = !DILocation(line: 496, column: 32, scope: !4741)
!4746 = !DILocation(line: 496, column: 35, scope: !4741)
!4747 = !DILocation(line: 496, column: 40, scope: !4741)
!4748 = !DILocation(line: 496, column: 44, scope: !4741)
!4749 = !DILocation(line: 496, column: 6, scope: !4728)
!4750 = !DILocation(line: 497, column: 3, scope: !4741)
!4751 = !DILocation(line: 500, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 500, column: 6)
!4753 = !DILocation(line: 500, column: 11, scope: !4752)
!4754 = !DILocation(line: 500, column: 15, scope: !4752)
!4755 = !DILocation(line: 500, column: 21, scope: !4752)
!4756 = !DILocation(line: 500, column: 6, scope: !4728)
!4757 = !DILocation(line: 501, column: 3, scope: !4752)
!4758 = !DILocation(line: 503, column: 6, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 503, column: 6)
!4760 = !DILocation(line: 503, column: 11, scope: !4759)
!4761 = !DILocation(line: 503, column: 15, scope: !4759)
!4762 = !DILocation(line: 503, column: 21, scope: !4759)
!4763 = !DILocation(line: 503, column: 36, scope: !4759)
!4764 = !DILocation(line: 503, column: 6, scope: !4728)
!4765 = !DILocation(line: 504, column: 3, scope: !4759)
!4766 = !DILocation(line: 507, column: 30, scope: !4728)
!4767 = !DILocation(line: 507, column: 35, scope: !4728)
!4768 = !DILocation(line: 507, column: 10, scope: !4728)
!4769 = !DILocation(line: 507, column: 8, scope: !4728)
!4770 = !DILocation(line: 508, column: 7, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 508, column: 6)
!4772 = !DILocation(line: 508, column: 6, scope: !4728)
!4773 = !DILocation(line: 509, column: 3, scope: !4771)
!4774 = !DILocation(line: 511, column: 6, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 511, column: 6)
!4776 = !DILocation(line: 511, column: 13, scope: !4775)
!4777 = !DILocation(line: 511, column: 6, scope: !4728)
!4778 = !DILocation(line: 512, column: 32, scope: !4775)
!4779 = !DILocation(line: 512, column: 39, scope: !4775)
!4780 = !DILocation(line: 512, column: 9, scope: !4775)
!4781 = !DILocation(line: 512, column: 7, scope: !4775)
!4782 = !DILocation(line: 512, column: 3, scope: !4775)
!4783 = !DILocation(line: 514, column: 9, scope: !4775)
!4784 = !DILocation(line: 514, column: 16, scope: !4775)
!4785 = !DILocation(line: 514, column: 7, scope: !4775)
!4786 = !DILocation(line: 516, column: 8, scope: !4728)
!4787 = !DILocation(line: 516, column: 2, scope: !4728)
!4788 = !DILocation(line: 524, column: 6, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 524, column: 6)
!4790 = !DILocation(line: 524, column: 10, scope: !4789)
!4791 = !DILocation(line: 524, column: 6, scope: !4728)
!4792 = !DILocation(line: 525, column: 23, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 524, column: 16)
!4794 = !DILocation(line: 525, column: 3, scope: !4793)
!4795 = !DILocation(line: 526, column: 3, scope: !4793)
!4796 = !DILocation(line: 526, column: 8, scope: !4793)
!4797 = !DILocation(line: 526, column: 20, scope: !4793)
!4798 = !DILocation(line: 527, column: 2, scope: !4793)
!4799 = !DILocation(line: 528, column: 1, scope: !4728)
!4800 = distinct !DISubprogram(name: "acpi_pci_irq_find_prt_entry", scope: !3, file: !3, line: 206, type: !4801, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!140, !4188, !140, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4804 = !DILocalVariable(name: "dev", arg: 1, scope: !4800, file: !3, line: 206, type: !4188)
!4805 = !DILocation(line: 206, column: 56, scope: !4800)
!4806 = !DILocalVariable(name: "pin", arg: 2, scope: !4800, file: !3, line: 207, type: !140)
!4807 = !DILocation(line: 207, column: 10, scope: !4800)
!4808 = !DILocalVariable(name: "entry_ptr", arg: 3, scope: !4800, file: !3, line: 207, type: !4803)
!4809 = !DILocation(line: 207, column: 39, scope: !4800)
!4810 = !DILocalVariable(name: "status", scope: !4800, file: !3, line: 209, type: !4811)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !143, line: 421, baseType: !386)
!4812 = !DILocation(line: 209, column: 14, scope: !4800)
!4813 = !DILocalVariable(name: "buffer", scope: !4800, file: !3, line: 210, type: !4814)
!4814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !143, line: 969, size: 128, elements: !4815)
!4815 = !{!4816, !4818}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4814, file: !143, line: 970, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !143, line: 127, baseType: !390)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4814, file: !143, line: 971, baseType: !134, size: 64, offset: 64)
!4819 = !DILocation(line: 210, column: 21, scope: !4800)
!4820 = !DILocalVariable(name: "entry", scope: !4800, file: !3, line: 211, type: !4131)
!4821 = !DILocation(line: 211, column: 33, scope: !4800)
!4822 = !DILocalVariable(name: "handle", scope: !4800, file: !3, line: 212, type: !142)
!4823 = !DILocation(line: 212, column: 14, scope: !4800)
!4824 = !DILocation(line: 214, column: 6, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 214, column: 6)
!4826 = !DILocation(line: 214, column: 11, scope: !4825)
!4827 = !DILocation(line: 214, column: 16, scope: !4825)
!4828 = !DILocation(line: 214, column: 6, scope: !4800)
!4829 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !4830, file: !3, line: 215, type: !149)
!4830 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 215, column: 12)
!4831 = !DILocation(line: 215, column: 12, scope: !4830)
!4832 = !DILocalVariable(name: "__mptr", scope: !4833, file: !3, line: 215, type: !134)
!4833 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 215, column: 12)
!4834 = !DILocation(line: 215, column: 12, scope: !4833)
!4835 = !DILocation(line: 215, column: 12, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 215, column: 12)
!4837 = !DILocation(line: 215, column: 12, scope: !4825)
!4838 = !DILocation(line: 215, column: 10, scope: !4825)
!4839 = !DILocation(line: 215, column: 3, scope: !4825)
!4840 = !DILocation(line: 217, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 217, column: 6)
!4842 = !DILocation(line: 217, column: 6, scope: !4800)
!4843 = !DILocation(line: 218, column: 3, scope: !4841)
!4844 = !DILocation(line: 221, column: 38, scope: !4800)
!4845 = !DILocation(line: 221, column: 11, scope: !4800)
!4846 = !DILocation(line: 221, column: 9, scope: !4800)
!4847 = !DILocation(line: 222, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 222, column: 6)
!4849 = !DILocation(line: 222, column: 6, scope: !4800)
!4850 = !DILocation(line: 223, column: 16, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 222, column: 28)
!4852 = !DILocation(line: 223, column: 3, scope: !4851)
!4853 = !DILocation(line: 224, column: 3, scope: !4851)
!4854 = !DILocation(line: 227, column: 17, scope: !4800)
!4855 = !DILocation(line: 227, column: 10, scope: !4800)
!4856 = !DILocation(line: 227, column: 8, scope: !4800)
!4857 = !DILocation(line: 228, column: 2, scope: !4800)
!4858 = !DILocation(line: 228, column: 9, scope: !4800)
!4859 = !DILocation(line: 228, column: 15, scope: !4800)
!4860 = !DILocation(line: 228, column: 19, scope: !4800)
!4861 = !DILocation(line: 228, column: 26, scope: !4800)
!4862 = !DILocation(line: 228, column: 33, scope: !4800)
!4863 = !DILocation(line: 0, scope: !4800)
!4864 = !DILocation(line: 229, column: 33, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 229, column: 7)
!4866 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 228, column: 39)
!4867 = !DILocation(line: 229, column: 41, scope: !4865)
!4868 = !DILocation(line: 229, column: 46, scope: !4865)
!4869 = !DILocation(line: 230, column: 8, scope: !4865)
!4870 = !DILocation(line: 230, column: 15, scope: !4865)
!4871 = !DILocation(line: 229, column: 8, scope: !4865)
!4872 = !DILocation(line: 229, column: 7, scope: !4866)
!4873 = !DILocation(line: 231, column: 4, scope: !4865)
!4874 = !DILocation(line: 233, column: 23, scope: !4866)
!4875 = !DILocation(line: 233, column: 8, scope: !4866)
!4876 = !DILocation(line: 233, column: 31, scope: !4866)
!4877 = !DILocation(line: 233, column: 38, scope: !4866)
!4878 = !DILocation(line: 233, column: 29, scope: !4866)
!4879 = !DILocation(line: 232, column: 11, scope: !4866)
!4880 = !DILocation(line: 232, column: 9, scope: !4866)
!4881 = distinct !{!4881, !4857, !4882}
!4882 = !DILocation(line: 234, column: 2, scope: !4800)
!4883 = !DILocation(line: 236, column: 15, scope: !4800)
!4884 = !DILocation(line: 236, column: 2, scope: !4800)
!4885 = !DILocation(line: 237, column: 2, scope: !4800)
!4886 = !DILocation(line: 238, column: 1, scope: !4800)
!4887 = distinct !DISubprogram(name: "acpi_reroute_boot_interrupt", scope: !3, file: !3, line: 267, type: !4888, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!140, !4188, !4463}
!4890 = !DILocalVariable(name: "dev", arg: 1, scope: !4887, file: !3, line: 267, type: !4188)
!4891 = !DILocation(line: 267, column: 56, scope: !4887)
!4892 = !DILocalVariable(name: "entry", arg: 2, scope: !4887, file: !3, line: 268, type: !4463)
!4893 = !DILocation(line: 268, column: 35, scope: !4887)
!4894 = !DILocation(line: 270, column: 6, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 270, column: 6)
!4896 = !DILocation(line: 270, column: 20, scope: !4895)
!4897 = !DILocation(line: 270, column: 23, scope: !4895)
!4898 = !DILocation(line: 270, column: 6, scope: !4887)
!4899 = !DILocation(line: 271, column: 3, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 270, column: 40)
!4901 = !DILocation(line: 273, column: 45, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 272, column: 9)
!4903 = !DILocation(line: 273, column: 50, scope: !4902)
!4904 = !DILocation(line: 273, column: 11, scope: !4902)
!4905 = !DILocation(line: 273, column: 3, scope: !4902)
!4906 = !DILocation(line: 276, column: 4, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 273, column: 56)
!4908 = !DILocation(line: 284, column: 4, scope: !4907)
!4909 = !DILocation(line: 287, column: 20, scope: !4907)
!4910 = !DILocation(line: 287, column: 27, scope: !4907)
!4911 = !DILocation(line: 287, column: 33, scope: !4907)
!4912 = !DILocation(line: 287, column: 38, scope: !4907)
!4913 = !DILocation(line: 287, column: 4, scope: !4907)
!4914 = !DILocation(line: 287, column: 11, scope: !4907)
!4915 = !DILocation(line: 287, column: 17, scope: !4907)
!4916 = !DILocation(line: 288, column: 4, scope: !4907)
!4917 = !DILocation(line: 290, column: 4, scope: !4907)
!4918 = !DILocation(line: 292, column: 4, scope: !4907)
!4919 = !DILocation(line: 295, column: 1, scope: !4887)
!4920 = distinct !DISubprogram(name: "acpi_device_handle", scope: !108, file: !108, line: 38, type: !4921, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!142, !135}
!4923 = !DILocalVariable(name: "adev", arg: 1, scope: !4920, file: !108, line: 38, type: !135)
!4924 = !DILocation(line: 38, column: 66, scope: !4920)
!4925 = !DILocation(line: 40, column: 9, scope: !4920)
!4926 = !DILocation(line: 40, column: 16, scope: !4920)
!4927 = !DILocation(line: 40, column: 22, scope: !4920)
!4928 = !DILocation(line: 40, column: 2, scope: !4920)
!4929 = distinct !DISubprogram(name: "acpi_pci_irq_check_entry", scope: !3, file: !3, line: 140, type: !4930, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{!140, !142, !4188, !140, !4131, !4803}
!4932 = !DILocalVariable(name: "handle", arg: 1, scope: !4929, file: !3, line: 140, type: !142)
!4933 = !DILocation(line: 140, column: 49, scope: !4929)
!4934 = !DILocalVariable(name: "dev", arg: 2, scope: !4929, file: !3, line: 140, type: !4188)
!4935 = !DILocation(line: 140, column: 73, scope: !4929)
!4936 = !DILocalVariable(name: "pin", arg: 3, scope: !4929, file: !3, line: 141, type: !140)
!4937 = !DILocation(line: 141, column: 11, scope: !4929)
!4938 = !DILocalVariable(name: "prt", arg: 4, scope: !4929, file: !3, line: 141, type: !4131)
!4939 = !DILocation(line: 141, column: 47, scope: !4929)
!4940 = !DILocalVariable(name: "entry_ptr", arg: 5, scope: !4929, file: !3, line: 142, type: !4803)
!4941 = !DILocation(line: 142, column: 31, scope: !4929)
!4942 = !DILocalVariable(name: "segment", scope: !4929, file: !3, line: 144, type: !140)
!4943 = !DILocation(line: 144, column: 6, scope: !4929)
!4944 = !DILocation(line: 144, column: 30, scope: !4929)
!4945 = !DILocation(line: 144, column: 35, scope: !4929)
!4946 = !DILocation(line: 144, column: 16, scope: !4929)
!4947 = !DILocalVariable(name: "bus", scope: !4929, file: !3, line: 145, type: !140)
!4948 = !DILocation(line: 145, column: 6, scope: !4929)
!4949 = !DILocation(line: 145, column: 12, scope: !4929)
!4950 = !DILocation(line: 145, column: 17, scope: !4929)
!4951 = !DILocation(line: 145, column: 22, scope: !4929)
!4952 = !DILocalVariable(name: "device", scope: !4929, file: !3, line: 146, type: !140)
!4953 = !DILocation(line: 146, column: 6, scope: !4929)
!4954 = !DILocation(line: 146, column: 31, scope: !4929)
!4955 = !DILocation(line: 146, column: 36, scope: !4929)
!4956 = !DILocation(line: 146, column: 15, scope: !4929)
!4957 = !DILocation(line: 146, column: 47, scope: !4929)
!4958 = !DILocalVariable(name: "entry", scope: !4929, file: !3, line: 147, type: !4463)
!4959 = !DILocation(line: 147, column: 25, scope: !4929)
!4960 = !DILocation(line: 149, column: 8, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 149, column: 6)
!4962 = !DILocation(line: 149, column: 13, scope: !4961)
!4963 = !DILocation(line: 149, column: 21, scope: !4961)
!4964 = !DILocation(line: 149, column: 28, scope: !4961)
!4965 = !DILocation(line: 149, column: 41, scope: !4961)
!4966 = !DILocation(line: 149, column: 38, scope: !4961)
!4967 = !DILocation(line: 149, column: 48, scope: !4961)
!4968 = !DILocation(line: 150, column: 6, scope: !4961)
!4969 = !DILocation(line: 150, column: 11, scope: !4961)
!4970 = !DILocation(line: 150, column: 15, scope: !4961)
!4971 = !DILocation(line: 150, column: 22, scope: !4961)
!4972 = !DILocation(line: 150, column: 19, scope: !4961)
!4973 = !DILocation(line: 149, column: 6, scope: !4929)
!4974 = !DILocation(line: 151, column: 3, scope: !4961)
!4975 = !DILocation(line: 153, column: 10, scope: !4929)
!4976 = !DILocation(line: 153, column: 8, scope: !4929)
!4977 = !DILocation(line: 154, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 154, column: 6)
!4979 = !DILocation(line: 154, column: 6, scope: !4929)
!4980 = !DILocation(line: 155, column: 3, scope: !4978)
!4981 = !DILocation(line: 162, column: 22, scope: !4929)
!4982 = !DILocation(line: 162, column: 2, scope: !4929)
!4983 = !DILocation(line: 162, column: 9, scope: !4929)
!4984 = !DILocation(line: 162, column: 12, scope: !4929)
!4985 = !DILocation(line: 162, column: 20, scope: !4929)
!4986 = !DILocation(line: 163, column: 18, scope: !4929)
!4987 = !DILocation(line: 163, column: 2, scope: !4929)
!4988 = !DILocation(line: 163, column: 9, scope: !4929)
!4989 = !DILocation(line: 163, column: 12, scope: !4929)
!4990 = !DILocation(line: 163, column: 16, scope: !4929)
!4991 = !DILocation(line: 164, column: 22, scope: !4929)
!4992 = !DILocation(line: 164, column: 27, scope: !4929)
!4993 = !DILocation(line: 164, column: 35, scope: !4929)
!4994 = !DILocation(line: 164, column: 42, scope: !4929)
!4995 = !DILocation(line: 164, column: 21, scope: !4929)
!4996 = !DILocation(line: 164, column: 2, scope: !4929)
!4997 = !DILocation(line: 164, column: 9, scope: !4929)
!4998 = !DILocation(line: 164, column: 12, scope: !4929)
!4999 = !DILocation(line: 164, column: 19, scope: !4929)
!5000 = !DILocation(line: 165, column: 15, scope: !4929)
!5001 = !DILocation(line: 165, column: 20, scope: !4929)
!5002 = !DILocation(line: 165, column: 24, scope: !4929)
!5003 = !DILocation(line: 165, column: 2, scope: !4929)
!5004 = !DILocation(line: 165, column: 9, scope: !4929)
!5005 = !DILocation(line: 165, column: 13, scope: !4929)
!5006 = !DILocation(line: 167, column: 16, scope: !4929)
!5007 = !DILocation(line: 167, column: 23, scope: !4929)
!5008 = !DILocation(line: 167, column: 2, scope: !4929)
!5009 = !DILocation(line: 169, column: 17, scope: !4929)
!5010 = !DILocation(line: 169, column: 22, scope: !4929)
!5011 = !DILocation(line: 169, column: 2, scope: !4929)
!5012 = !DILocation(line: 169, column: 9, scope: !4929)
!5013 = !DILocation(line: 169, column: 15, scope: !4929)
!5014 = !DILocation(line: 184, column: 6, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 184, column: 6)
!5016 = !DILocation(line: 184, column: 11, scope: !5015)
!5017 = !DILocation(line: 184, column: 6, scope: !4929)
!5018 = !DILocation(line: 185, column: 19, scope: !5015)
!5019 = !DILocation(line: 185, column: 27, scope: !5015)
!5020 = !DILocation(line: 185, column: 32, scope: !5015)
!5021 = !DILocation(line: 185, column: 41, scope: !5015)
!5022 = !DILocation(line: 185, column: 48, scope: !5015)
!5023 = !DILocation(line: 185, column: 3, scope: !5015)
!5024 = !DILocation(line: 201, column: 15, scope: !4929)
!5025 = !DILocation(line: 201, column: 3, scope: !4929)
!5026 = !DILocation(line: 201, column: 13, scope: !4929)
!5027 = !DILocation(line: 203, column: 2, scope: !4929)
!5028 = !DILocation(line: 204, column: 1, scope: !4929)
!5029 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5030, file: !5030, line: 44, type: !4226, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5030 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/lizy2001/genbc/linux")
!5031 = !DILocalVariable(name: "bus", arg: 1, scope: !5029, file: !5030, line: 44, type: !4194)
!5032 = !DILocation(line: 44, column: 49, scope: !5029)
!5033 = !DILocation(line: 46, column: 24, scope: !5029)
!5034 = !DILocation(line: 46, column: 9, scope: !5029)
!5035 = !DILocation(line: 46, column: 30, scope: !5029)
!5036 = !DILocation(line: 46, column: 2, scope: !5029)
!5037 = distinct !DISubprogram(name: "pci_ari_enabled", scope: !4190, file: !4190, line: 2369, type: !5038, scopeLine: 2370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!167, !4194}
!5040 = !DILocalVariable(name: "bus", arg: 1, scope: !5037, file: !4190, line: 2369, type: !4194)
!5041 = !DILocation(line: 2369, column: 52, scope: !5037)
!5042 = !DILocation(line: 2371, column: 9, scope: !5037)
!5043 = !DILocation(line: 2371, column: 14, scope: !5037)
!5044 = !DILocation(line: 2371, column: 19, scope: !5037)
!5045 = !DILocation(line: 2371, column: 22, scope: !5037)
!5046 = !DILocation(line: 2371, column: 27, scope: !5037)
!5047 = !DILocation(line: 2371, column: 33, scope: !5037)
!5048 = !DILocation(line: 0, scope: !5037)
!5049 = !DILocation(line: 2371, column: 2, scope: !5037)
!5050 = distinct !DISubprogram(name: "kzalloc", scope: !117, file: !117, line: 662, type: !5051, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!134, !292, !713}
!5053 = !DILocalVariable(name: "s", arg: 1, scope: !5054, file: !117, line: 445, type: !905)
!5054 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !117, file: !117, line: 445, type: !5055, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!134, !905, !713, !292}
!5057 = !DILocation(line: 445, column: 72, scope: !5054, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 552, column: 10, scope: !5059, inlinedAt: !5062)
!5059 = distinct !DILexicalBlock(scope: !5060, file: !117, line: 540, column: 34)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !117, line: 540, column: 6)
!5061 = distinct !DISubprogram(name: "kmalloc", scope: !117, file: !117, line: 538, type: !5051, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5062 = distinct !DILocation(line: 664, column: 9, scope: !5050)
!5063 = !DILocalVariable(name: "flags", arg: 2, scope: !5054, file: !117, line: 446, type: !713)
!5064 = !DILocation(line: 446, column: 9, scope: !5054, inlinedAt: !5058)
!5065 = !DILocalVariable(name: "size", arg: 3, scope: !5054, file: !117, line: 446, type: !292)
!5066 = !DILocation(line: 446, column: 23, scope: !5054, inlinedAt: !5058)
!5067 = !DILocalVariable(name: "ret", scope: !5054, file: !117, line: 448, type: !134)
!5068 = !DILocation(line: 448, column: 8, scope: !5054, inlinedAt: !5058)
!5069 = !DILocalVariable(name: "flags", arg: 1, scope: !5070, file: !117, line: 318, type: !713)
!5070 = distinct !DISubprogram(name: "kmalloc_type", scope: !117, file: !117, line: 318, type: !5071, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!116, !713}
!5073 = !DILocation(line: 318, column: 67, scope: !5070, inlinedAt: !5074)
!5074 = distinct !DILocation(line: 553, column: 20, scope: !5059, inlinedAt: !5062)
!5075 = !DILocalVariable(name: "size", arg: 1, scope: !5076, file: !117, line: 346, type: !292)
!5076 = distinct !DISubprogram(name: "kmalloc_index", scope: !117, file: !117, line: 346, type: !5077, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!7, !292}
!5079 = !DILocation(line: 346, column: 58, scope: !5076, inlinedAt: !5080)
!5080 = distinct !DILocation(line: 547, column: 11, scope: !5059, inlinedAt: !5062)
!5081 = !DILocalVariable(name: "size", arg: 1, scope: !5082, file: !117, line: 472, type: !292)
!5082 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !117, file: !117, line: 472, type: !5083, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!134, !292, !713, !7}
!5085 = !DILocation(line: 472, column: 28, scope: !5082, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 481, column: 9, scope: !5087, inlinedAt: !5088)
!5087 = distinct !DISubprogram(name: "kmalloc_large", scope: !117, file: !117, line: 478, type: !5051, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5088 = distinct !DILocation(line: 545, column: 11, scope: !5089, inlinedAt: !5062)
!5089 = distinct !DILexicalBlock(scope: !5059, file: !117, line: 544, column: 7)
!5090 = !DILocalVariable(name: "flags", arg: 2, scope: !5082, file: !117, line: 472, type: !713)
!5091 = !DILocation(line: 472, column: 40, scope: !5082, inlinedAt: !5086)
!5092 = !DILocalVariable(name: "order", arg: 3, scope: !5082, file: !117, line: 472, type: !7)
!5093 = !DILocation(line: 472, column: 60, scope: !5082, inlinedAt: !5086)
!5094 = !DILocalVariable(name: "size", arg: 1, scope: !5087, file: !117, line: 478, type: !292)
!5095 = !DILocation(line: 478, column: 51, scope: !5087, inlinedAt: !5088)
!5096 = !DILocalVariable(name: "flags", arg: 2, scope: !5087, file: !117, line: 478, type: !713)
!5097 = !DILocation(line: 478, column: 63, scope: !5087, inlinedAt: !5088)
!5098 = !DILocalVariable(name: "order", scope: !5087, file: !117, line: 480, type: !7)
!5099 = !DILocation(line: 480, column: 15, scope: !5087, inlinedAt: !5088)
!5100 = !DILocalVariable(name: "size", arg: 1, scope: !5061, file: !117, line: 538, type: !292)
!5101 = !DILocation(line: 538, column: 45, scope: !5061, inlinedAt: !5062)
!5102 = !DILocalVariable(name: "flags", arg: 2, scope: !5061, file: !117, line: 538, type: !713)
!5103 = !DILocation(line: 538, column: 57, scope: !5061, inlinedAt: !5062)
!5104 = !DILocalVariable(name: "index", scope: !5059, file: !117, line: 542, type: !7)
!5105 = !DILocation(line: 542, column: 16, scope: !5059, inlinedAt: !5062)
!5106 = !DILocalVariable(name: "size", arg: 1, scope: !5050, file: !117, line: 662, type: !292)
!5107 = !DILocation(line: 662, column: 36, scope: !5050)
!5108 = !DILocalVariable(name: "flags", arg: 2, scope: !5050, file: !117, line: 662, type: !713)
!5109 = !DILocation(line: 662, column: 48, scope: !5050)
!5110 = !DILocation(line: 664, column: 17, scope: !5050)
!5111 = !DILocation(line: 664, column: 23, scope: !5050)
!5112 = !DILocation(line: 664, column: 29, scope: !5050)
!5113 = !DILocation(line: 540, column: 27, scope: !5060, inlinedAt: !5062)
!5114 = !DILocation(line: 540, column: 6, scope: !5060, inlinedAt: !5062)
!5115 = !DILocation(line: 540, column: 6, scope: !5061, inlinedAt: !5062)
!5116 = !DILocation(line: 544, column: 7, scope: !5089, inlinedAt: !5062)
!5117 = !DILocation(line: 544, column: 12, scope: !5089, inlinedAt: !5062)
!5118 = !DILocation(line: 544, column: 7, scope: !5059, inlinedAt: !5062)
!5119 = !DILocation(line: 545, column: 25, scope: !5089, inlinedAt: !5062)
!5120 = !DILocation(line: 545, column: 31, scope: !5089, inlinedAt: !5062)
!5121 = !DILocation(line: 480, column: 33, scope: !5087, inlinedAt: !5088)
!5122 = !DILocation(line: 480, column: 23, scope: !5087, inlinedAt: !5088)
!5123 = !DILocation(line: 481, column: 29, scope: !5087, inlinedAt: !5088)
!5124 = !DILocation(line: 481, column: 35, scope: !5087, inlinedAt: !5088)
!5125 = !DILocation(line: 481, column: 42, scope: !5087, inlinedAt: !5088)
!5126 = !DILocation(line: 474, column: 23, scope: !5082, inlinedAt: !5086)
!5127 = !DILocation(line: 474, column: 29, scope: !5082, inlinedAt: !5086)
!5128 = !DILocation(line: 474, column: 36, scope: !5082, inlinedAt: !5086)
!5129 = !DILocation(line: 474, column: 9, scope: !5082, inlinedAt: !5086)
!5130 = !DILocation(line: 545, column: 4, scope: !5089, inlinedAt: !5062)
!5131 = !DILocation(line: 547, column: 25, scope: !5059, inlinedAt: !5062)
!5132 = !DILocation(line: 348, column: 7, scope: !5133, inlinedAt: !5080)
!5133 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 348, column: 6)
!5134 = !DILocation(line: 348, column: 6, scope: !5076, inlinedAt: !5080)
!5135 = !DILocation(line: 349, column: 3, scope: !5133, inlinedAt: !5080)
!5136 = !DILocation(line: 351, column: 6, scope: !5137, inlinedAt: !5080)
!5137 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 351, column: 6)
!5138 = !DILocation(line: 351, column: 11, scope: !5137, inlinedAt: !5080)
!5139 = !DILocation(line: 351, column: 6, scope: !5076, inlinedAt: !5080)
!5140 = !DILocation(line: 352, column: 3, scope: !5137, inlinedAt: !5080)
!5141 = !DILocation(line: 354, column: 32, scope: !5142, inlinedAt: !5080)
!5142 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 354, column: 6)
!5143 = !DILocation(line: 354, column: 37, scope: !5142, inlinedAt: !5080)
!5144 = !DILocation(line: 354, column: 42, scope: !5142, inlinedAt: !5080)
!5145 = !DILocation(line: 354, column: 45, scope: !5142, inlinedAt: !5080)
!5146 = !DILocation(line: 354, column: 50, scope: !5142, inlinedAt: !5080)
!5147 = !DILocation(line: 354, column: 6, scope: !5076, inlinedAt: !5080)
!5148 = !DILocation(line: 355, column: 3, scope: !5142, inlinedAt: !5080)
!5149 = !DILocation(line: 356, column: 32, scope: !5150, inlinedAt: !5080)
!5150 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 356, column: 6)
!5151 = !DILocation(line: 356, column: 37, scope: !5150, inlinedAt: !5080)
!5152 = !DILocation(line: 356, column: 43, scope: !5150, inlinedAt: !5080)
!5153 = !DILocation(line: 356, column: 46, scope: !5150, inlinedAt: !5080)
!5154 = !DILocation(line: 356, column: 51, scope: !5150, inlinedAt: !5080)
!5155 = !DILocation(line: 356, column: 6, scope: !5076, inlinedAt: !5080)
!5156 = !DILocation(line: 357, column: 3, scope: !5150, inlinedAt: !5080)
!5157 = !DILocation(line: 358, column: 6, scope: !5158, inlinedAt: !5080)
!5158 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 358, column: 6)
!5159 = !DILocation(line: 358, column: 11, scope: !5158, inlinedAt: !5080)
!5160 = !DILocation(line: 358, column: 6, scope: !5076, inlinedAt: !5080)
!5161 = !DILocation(line: 358, column: 26, scope: !5158, inlinedAt: !5080)
!5162 = !DILocation(line: 359, column: 6, scope: !5163, inlinedAt: !5080)
!5163 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 359, column: 6)
!5164 = !DILocation(line: 359, column: 11, scope: !5163, inlinedAt: !5080)
!5165 = !DILocation(line: 359, column: 6, scope: !5076, inlinedAt: !5080)
!5166 = !DILocation(line: 359, column: 26, scope: !5163, inlinedAt: !5080)
!5167 = !DILocation(line: 360, column: 6, scope: !5168, inlinedAt: !5080)
!5168 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 360, column: 6)
!5169 = !DILocation(line: 360, column: 11, scope: !5168, inlinedAt: !5080)
!5170 = !DILocation(line: 360, column: 6, scope: !5076, inlinedAt: !5080)
!5171 = !DILocation(line: 360, column: 26, scope: !5168, inlinedAt: !5080)
!5172 = !DILocation(line: 361, column: 6, scope: !5173, inlinedAt: !5080)
!5173 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 361, column: 6)
!5174 = !DILocation(line: 361, column: 11, scope: !5173, inlinedAt: !5080)
!5175 = !DILocation(line: 361, column: 6, scope: !5076, inlinedAt: !5080)
!5176 = !DILocation(line: 361, column: 26, scope: !5173, inlinedAt: !5080)
!5177 = !DILocation(line: 362, column: 6, scope: !5178, inlinedAt: !5080)
!5178 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 362, column: 6)
!5179 = !DILocation(line: 362, column: 11, scope: !5178, inlinedAt: !5080)
!5180 = !DILocation(line: 362, column: 6, scope: !5076, inlinedAt: !5080)
!5181 = !DILocation(line: 362, column: 26, scope: !5178, inlinedAt: !5080)
!5182 = !DILocation(line: 363, column: 6, scope: !5183, inlinedAt: !5080)
!5183 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 363, column: 6)
!5184 = !DILocation(line: 363, column: 11, scope: !5183, inlinedAt: !5080)
!5185 = !DILocation(line: 363, column: 6, scope: !5076, inlinedAt: !5080)
!5186 = !DILocation(line: 363, column: 26, scope: !5183, inlinedAt: !5080)
!5187 = !DILocation(line: 364, column: 6, scope: !5188, inlinedAt: !5080)
!5188 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 364, column: 6)
!5189 = !DILocation(line: 364, column: 11, scope: !5188, inlinedAt: !5080)
!5190 = !DILocation(line: 364, column: 6, scope: !5076, inlinedAt: !5080)
!5191 = !DILocation(line: 364, column: 26, scope: !5188, inlinedAt: !5080)
!5192 = !DILocation(line: 365, column: 6, scope: !5193, inlinedAt: !5080)
!5193 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 365, column: 6)
!5194 = !DILocation(line: 365, column: 11, scope: !5193, inlinedAt: !5080)
!5195 = !DILocation(line: 365, column: 6, scope: !5076, inlinedAt: !5080)
!5196 = !DILocation(line: 365, column: 26, scope: !5193, inlinedAt: !5080)
!5197 = !DILocation(line: 366, column: 6, scope: !5198, inlinedAt: !5080)
!5198 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 366, column: 6)
!5199 = !DILocation(line: 366, column: 11, scope: !5198, inlinedAt: !5080)
!5200 = !DILocation(line: 366, column: 6, scope: !5076, inlinedAt: !5080)
!5201 = !DILocation(line: 366, column: 26, scope: !5198, inlinedAt: !5080)
!5202 = !DILocation(line: 367, column: 6, scope: !5203, inlinedAt: !5080)
!5203 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 367, column: 6)
!5204 = !DILocation(line: 367, column: 11, scope: !5203, inlinedAt: !5080)
!5205 = !DILocation(line: 367, column: 6, scope: !5076, inlinedAt: !5080)
!5206 = !DILocation(line: 367, column: 26, scope: !5203, inlinedAt: !5080)
!5207 = !DILocation(line: 368, column: 6, scope: !5208, inlinedAt: !5080)
!5208 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 368, column: 6)
!5209 = !DILocation(line: 368, column: 11, scope: !5208, inlinedAt: !5080)
!5210 = !DILocation(line: 368, column: 6, scope: !5076, inlinedAt: !5080)
!5211 = !DILocation(line: 368, column: 26, scope: !5208, inlinedAt: !5080)
!5212 = !DILocation(line: 369, column: 6, scope: !5213, inlinedAt: !5080)
!5213 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 369, column: 6)
!5214 = !DILocation(line: 369, column: 11, scope: !5213, inlinedAt: !5080)
!5215 = !DILocation(line: 369, column: 6, scope: !5076, inlinedAt: !5080)
!5216 = !DILocation(line: 369, column: 26, scope: !5213, inlinedAt: !5080)
!5217 = !DILocation(line: 370, column: 6, scope: !5218, inlinedAt: !5080)
!5218 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 370, column: 6)
!5219 = !DILocation(line: 370, column: 11, scope: !5218, inlinedAt: !5080)
!5220 = !DILocation(line: 370, column: 6, scope: !5076, inlinedAt: !5080)
!5221 = !DILocation(line: 370, column: 26, scope: !5218, inlinedAt: !5080)
!5222 = !DILocation(line: 371, column: 6, scope: !5223, inlinedAt: !5080)
!5223 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 371, column: 6)
!5224 = !DILocation(line: 371, column: 11, scope: !5223, inlinedAt: !5080)
!5225 = !DILocation(line: 371, column: 6, scope: !5076, inlinedAt: !5080)
!5226 = !DILocation(line: 371, column: 26, scope: !5223, inlinedAt: !5080)
!5227 = !DILocation(line: 372, column: 6, scope: !5228, inlinedAt: !5080)
!5228 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 372, column: 6)
!5229 = !DILocation(line: 372, column: 11, scope: !5228, inlinedAt: !5080)
!5230 = !DILocation(line: 372, column: 6, scope: !5076, inlinedAt: !5080)
!5231 = !DILocation(line: 372, column: 26, scope: !5228, inlinedAt: !5080)
!5232 = !DILocation(line: 373, column: 6, scope: !5233, inlinedAt: !5080)
!5233 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 373, column: 6)
!5234 = !DILocation(line: 373, column: 11, scope: !5233, inlinedAt: !5080)
!5235 = !DILocation(line: 373, column: 6, scope: !5076, inlinedAt: !5080)
!5236 = !DILocation(line: 373, column: 26, scope: !5233, inlinedAt: !5080)
!5237 = !DILocation(line: 374, column: 6, scope: !5238, inlinedAt: !5080)
!5238 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 374, column: 6)
!5239 = !DILocation(line: 374, column: 11, scope: !5238, inlinedAt: !5080)
!5240 = !DILocation(line: 374, column: 6, scope: !5076, inlinedAt: !5080)
!5241 = !DILocation(line: 374, column: 26, scope: !5238, inlinedAt: !5080)
!5242 = !DILocation(line: 375, column: 6, scope: !5243, inlinedAt: !5080)
!5243 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 375, column: 6)
!5244 = !DILocation(line: 375, column: 11, scope: !5243, inlinedAt: !5080)
!5245 = !DILocation(line: 375, column: 6, scope: !5076, inlinedAt: !5080)
!5246 = !DILocation(line: 375, column: 27, scope: !5243, inlinedAt: !5080)
!5247 = !DILocation(line: 376, column: 6, scope: !5248, inlinedAt: !5080)
!5248 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 376, column: 6)
!5249 = !DILocation(line: 376, column: 11, scope: !5248, inlinedAt: !5080)
!5250 = !DILocation(line: 376, column: 6, scope: !5076, inlinedAt: !5080)
!5251 = !DILocation(line: 376, column: 32, scope: !5248, inlinedAt: !5080)
!5252 = !DILocation(line: 377, column: 6, scope: !5253, inlinedAt: !5080)
!5253 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 377, column: 6)
!5254 = !DILocation(line: 377, column: 11, scope: !5253, inlinedAt: !5080)
!5255 = !DILocation(line: 377, column: 6, scope: !5076, inlinedAt: !5080)
!5256 = !DILocation(line: 377, column: 32, scope: !5253, inlinedAt: !5080)
!5257 = !DILocation(line: 378, column: 6, scope: !5258, inlinedAt: !5080)
!5258 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 378, column: 6)
!5259 = !DILocation(line: 378, column: 11, scope: !5258, inlinedAt: !5080)
!5260 = !DILocation(line: 378, column: 6, scope: !5076, inlinedAt: !5080)
!5261 = !DILocation(line: 378, column: 32, scope: !5258, inlinedAt: !5080)
!5262 = !DILocation(line: 379, column: 6, scope: !5263, inlinedAt: !5080)
!5263 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 379, column: 6)
!5264 = !DILocation(line: 379, column: 11, scope: !5263, inlinedAt: !5080)
!5265 = !DILocation(line: 379, column: 6, scope: !5076, inlinedAt: !5080)
!5266 = !DILocation(line: 379, column: 33, scope: !5263, inlinedAt: !5080)
!5267 = !DILocation(line: 380, column: 6, scope: !5268, inlinedAt: !5080)
!5268 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 380, column: 6)
!5269 = !DILocation(line: 380, column: 11, scope: !5268, inlinedAt: !5080)
!5270 = !DILocation(line: 380, column: 6, scope: !5076, inlinedAt: !5080)
!5271 = !DILocation(line: 380, column: 33, scope: !5268, inlinedAt: !5080)
!5272 = !DILocation(line: 381, column: 6, scope: !5273, inlinedAt: !5080)
!5273 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 381, column: 6)
!5274 = !DILocation(line: 381, column: 11, scope: !5273, inlinedAt: !5080)
!5275 = !DILocation(line: 381, column: 6, scope: !5076, inlinedAt: !5080)
!5276 = !DILocation(line: 381, column: 33, scope: !5273, inlinedAt: !5080)
!5277 = !DILocation(line: 382, column: 2, scope: !5278, inlinedAt: !5080)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !117, line: 382, column: 2)
!5279 = distinct !DILexicalBlock(scope: !5076, file: !117, line: 382, column: 2)
!5280 = !{i32 -2143262481, i32 -2143262452, i32 -2143262406, i32 -2143262348, i32 -2143262294, i32 -2143262240, i32 -2143262185, i32 -2143262154}
!5281 = !DILocation(line: 382, column: 2, scope: !5282, inlinedAt: !5080)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !117, line: 382, column: 2)
!5283 = distinct !DILexicalBlock(scope: !5279, file: !117, line: 382, column: 2)
!5284 = !{i32 -2143261711, i32 -2143261704, i32 -2143261650, i32 -2143261619, i32 -2143261589}
!5285 = !DILocation(line: 382, column: 2, scope: !5283, inlinedAt: !5080)
!5286 = !DILocation(line: 386, column: 1, scope: !5076, inlinedAt: !5080)
!5287 = !DILocation(line: 547, column: 9, scope: !5059, inlinedAt: !5062)
!5288 = !DILocation(line: 549, column: 8, scope: !5289, inlinedAt: !5062)
!5289 = distinct !DILexicalBlock(scope: !5059, file: !117, line: 549, column: 7)
!5290 = !DILocation(line: 549, column: 7, scope: !5059, inlinedAt: !5062)
!5291 = !DILocation(line: 550, column: 4, scope: !5289, inlinedAt: !5062)
!5292 = !DILocation(line: 553, column: 33, scope: !5059, inlinedAt: !5062)
!5293 = !DILocation(line: 325, column: 6, scope: !5294, inlinedAt: !5074)
!5294 = distinct !DILexicalBlock(scope: !5070, file: !117, line: 325, column: 6)
!5295 = !DILocation(line: 325, column: 6, scope: !5070, inlinedAt: !5074)
!5296 = !DILocation(line: 326, column: 3, scope: !5294, inlinedAt: !5074)
!5297 = !DILocation(line: 332, column: 9, scope: !5070, inlinedAt: !5074)
!5298 = !DILocation(line: 332, column: 15, scope: !5070, inlinedAt: !5074)
!5299 = !DILocation(line: 332, column: 2, scope: !5070, inlinedAt: !5074)
!5300 = !DILocation(line: 336, column: 1, scope: !5070, inlinedAt: !5074)
!5301 = !DILocation(line: 553, column: 5, scope: !5059, inlinedAt: !5062)
!5302 = !DILocation(line: 553, column: 41, scope: !5059, inlinedAt: !5062)
!5303 = !DILocation(line: 554, column: 5, scope: !5059, inlinedAt: !5062)
!5304 = !DILocation(line: 554, column: 12, scope: !5059, inlinedAt: !5062)
!5305 = !DILocation(line: 448, column: 31, scope: !5054, inlinedAt: !5058)
!5306 = !DILocation(line: 448, column: 34, scope: !5054, inlinedAt: !5058)
!5307 = !DILocation(line: 448, column: 14, scope: !5054, inlinedAt: !5058)
!5308 = !DILocation(line: 450, column: 22, scope: !5054, inlinedAt: !5058)
!5309 = !DILocation(line: 450, column: 25, scope: !5054, inlinedAt: !5058)
!5310 = !DILocation(line: 450, column: 30, scope: !5054, inlinedAt: !5058)
!5311 = !DILocation(line: 450, column: 36, scope: !5054, inlinedAt: !5058)
!5312 = !DILocation(line: 450, column: 8, scope: !5054, inlinedAt: !5058)
!5313 = !DILocation(line: 450, column: 6, scope: !5054, inlinedAt: !5058)
!5314 = !DILocation(line: 451, column: 9, scope: !5054, inlinedAt: !5058)
!5315 = !DILocation(line: 552, column: 3, scope: !5059, inlinedAt: !5062)
!5316 = !DILocation(line: 557, column: 19, scope: !5061, inlinedAt: !5062)
!5317 = !DILocation(line: 557, column: 25, scope: !5061, inlinedAt: !5062)
!5318 = !DILocation(line: 557, column: 9, scope: !5061, inlinedAt: !5062)
!5319 = !DILocation(line: 557, column: 2, scope: !5061, inlinedAt: !5062)
!5320 = !DILocation(line: 558, column: 1, scope: !5061, inlinedAt: !5062)
!5321 = !DILocation(line: 664, column: 2, scope: !5050)
!5322 = distinct !DISubprogram(name: "do_prt_fixups", scope: !3, file: !3, line: 112, type: !5323, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !4463, !4131}
!5325 = !DILocalVariable(name: "entry", arg: 1, scope: !5322, file: !3, line: 112, type: !4463)
!5326 = !DILocation(line: 112, column: 50, scope: !5322)
!5327 = !DILocalVariable(name: "prt", arg: 2, scope: !5322, file: !3, line: 113, type: !4131)
!5328 = !DILocation(line: 113, column: 37, scope: !5322)
!5329 = !DILocalVariable(name: "i", scope: !5322, file: !3, line: 115, type: !140)
!5330 = !DILocation(line: 115, column: 6, scope: !5322)
!5331 = !DILocalVariable(name: "quirk", scope: !5322, file: !3, line: 116, type: !5332)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!5333 = !DILocation(line: 116, column: 26, scope: !5322)
!5334 = !DILocation(line: 118, column: 9, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 118, column: 2)
!5336 = !DILocation(line: 118, column: 7, scope: !5335)
!5337 = !DILocation(line: 118, column: 14, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 118, column: 2)
!5339 = !DILocation(line: 118, column: 16, scope: !5338)
!5340 = !DILocation(line: 118, column: 2, scope: !5335)
!5341 = !DILocation(line: 119, column: 23, scope: !5342)
!5342 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 118, column: 47)
!5343 = !DILocation(line: 119, column: 12, scope: !5342)
!5344 = !DILocation(line: 119, column: 9, scope: !5342)
!5345 = !DILocation(line: 122, column: 24, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5342, file: !3, line: 122, column: 7)
!5347 = !DILocation(line: 122, column: 31, scope: !5346)
!5348 = !DILocation(line: 122, column: 7, scope: !5346)
!5349 = !DILocation(line: 122, column: 39, scope: !5346)
!5350 = !DILocation(line: 123, column: 7, scope: !5346)
!5351 = !DILocation(line: 123, column: 14, scope: !5346)
!5352 = !DILocation(line: 123, column: 17, scope: !5346)
!5353 = !DILocation(line: 123, column: 28, scope: !5346)
!5354 = !DILocation(line: 123, column: 35, scope: !5346)
!5355 = !DILocation(line: 123, column: 25, scope: !5346)
!5356 = !DILocation(line: 123, column: 43, scope: !5346)
!5357 = !DILocation(line: 124, column: 7, scope: !5346)
!5358 = !DILocation(line: 124, column: 14, scope: !5346)
!5359 = !DILocation(line: 124, column: 17, scope: !5346)
!5360 = !DILocation(line: 124, column: 24, scope: !5346)
!5361 = !DILocation(line: 124, column: 31, scope: !5346)
!5362 = !DILocation(line: 124, column: 21, scope: !5346)
!5363 = !DILocation(line: 124, column: 35, scope: !5346)
!5364 = !DILocation(line: 125, column: 7, scope: !5346)
!5365 = !DILocation(line: 125, column: 14, scope: !5346)
!5366 = !DILocation(line: 125, column: 17, scope: !5346)
!5367 = !DILocation(line: 125, column: 27, scope: !5346)
!5368 = !DILocation(line: 125, column: 34, scope: !5346)
!5369 = !DILocation(line: 125, column: 24, scope: !5346)
!5370 = !DILocation(line: 125, column: 41, scope: !5346)
!5371 = !DILocation(line: 126, column: 7, scope: !5346)
!5372 = !DILocation(line: 126, column: 14, scope: !5346)
!5373 = !DILocation(line: 126, column: 21, scope: !5346)
!5374 = !DILocation(line: 126, column: 28, scope: !5346)
!5375 = !DILocation(line: 126, column: 18, scope: !5346)
!5376 = !DILocation(line: 126, column: 32, scope: !5346)
!5377 = !DILocation(line: 127, column: 15, scope: !5346)
!5378 = !DILocation(line: 127, column: 20, scope: !5346)
!5379 = !DILocation(line: 127, column: 28, scope: !5346)
!5380 = !DILocation(line: 127, column: 35, scope: !5346)
!5381 = !DILocation(line: 127, column: 8, scope: !5346)
!5382 = !DILocation(line: 127, column: 43, scope: !5346)
!5383 = !DILocation(line: 128, column: 14, scope: !5346)
!5384 = !DILocation(line: 128, column: 19, scope: !5346)
!5385 = !DILocation(line: 128, column: 7, scope: !5346)
!5386 = !DILocation(line: 128, column: 37, scope: !5346)
!5387 = !DILocation(line: 128, column: 44, scope: !5346)
!5388 = !DILocation(line: 128, column: 30, scope: !5346)
!5389 = !DILocation(line: 128, column: 27, scope: !5346)
!5390 = !DILocation(line: 122, column: 7, scope: !5342)
!5391 = !DILocation(line: 132, column: 5, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 128, column: 60)
!5393 = !DILocation(line: 132, column: 12, scope: !5392)
!5394 = !DILocation(line: 132, column: 15, scope: !5392)
!5395 = !DILocation(line: 132, column: 24, scope: !5392)
!5396 = !DILocation(line: 132, column: 31, scope: !5392)
!5397 = !DILocation(line: 132, column: 34, scope: !5392)
!5398 = !DILocation(line: 133, column: 5, scope: !5392)
!5399 = !DILocation(line: 133, column: 12, scope: !5392)
!5400 = !DILocation(line: 133, column: 15, scope: !5392)
!5401 = !DILocation(line: 133, column: 32, scope: !5392)
!5402 = !DILocation(line: 133, column: 39, scope: !5392)
!5403 = !DILocation(line: 133, column: 23, scope: !5392)
!5404 = !DILocation(line: 134, column: 5, scope: !5392)
!5405 = !DILocation(line: 134, column: 10, scope: !5392)
!5406 = !DILocation(line: 134, column: 18, scope: !5392)
!5407 = !DILocation(line: 134, column: 25, scope: !5392)
!5408 = !DILocation(line: 129, column: 4, scope: !5392)
!5409 = !DILocation(line: 135, column: 11, scope: !5392)
!5410 = !DILocation(line: 135, column: 16, scope: !5392)
!5411 = !DILocation(line: 135, column: 24, scope: !5392)
!5412 = !DILocation(line: 135, column: 31, scope: !5392)
!5413 = !DILocation(line: 135, column: 4, scope: !5392)
!5414 = !DILocation(line: 136, column: 3, scope: !5392)
!5415 = !DILocation(line: 137, column: 2, scope: !5342)
!5416 = !DILocation(line: 118, column: 43, scope: !5338)
!5417 = !DILocation(line: 118, column: 2, scope: !5338)
!5418 = distinct !{!5418, !5340, !5419}
!5419 = !DILocation(line: 137, column: 2, scope: !5335)
!5420 = !DILocation(line: 138, column: 1, scope: !5322)
!5421 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5030, file: !5030, line: 36, type: !5422, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!5424, !5433}
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5030, line: 15, size: 320, elements: !5426)
!5426 = !{!5427, !5428, !5429, !5430, !5431, !5432}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5425, file: !5030, line: 16, baseType: !140, size: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5425, file: !5030, line: 17, baseType: !140, size: 32, offset: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5425, file: !5030, line: 19, baseType: !135, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5425, file: !5030, line: 22, baseType: !134, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5425, file: !5030, line: 25, baseType: !134, size: 64, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "vmd_dev", scope: !5425, file: !5030, line: 28, baseType: !4188, size: 64, offset: 256)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!5435 = !DILocalVariable(name: "bus", arg: 1, scope: !5421, file: !5030, line: 36, type: !5433)
!5436 = !DILocation(line: 36, column: 72, scope: !5421)
!5437 = !DILocation(line: 38, column: 9, scope: !5421)
!5438 = !DILocation(line: 38, column: 14, scope: !5421)
!5439 = !DILocation(line: 38, column: 2, scope: !5421)
!5440 = distinct !DISubprogram(name: "get_order", scope: !5441, file: !5441, line: 29, type: !5442, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5441 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5442 = !DISubroutineType(types: !5443)
!5443 = !{!140, !295}
!5444 = !DILocalVariable(name: "x", arg: 1, scope: !5445, file: !5446, line: 366, type: !391)
!5445 = distinct !DISubprogram(name: "fls64", scope: !5446, file: !5446, line: 366, type: !5447, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5446 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!140, !391}
!5449 = !DILocation(line: 366, column: 40, scope: !5445, inlinedAt: !5450)
!5450 = distinct !DILocation(line: 46, column: 9, scope: !5440)
!5451 = !DILocalVariable(name: "bitpos", scope: !5445, file: !5446, line: 368, type: !140)
!5452 = !DILocation(line: 368, column: 6, scope: !5445, inlinedAt: !5450)
!5453 = !DILocalVariable(name: "size", arg: 1, scope: !5440, file: !5441, line: 29, type: !295)
!5454 = !DILocation(line: 29, column: 63, scope: !5440)
!5455 = !DILocation(line: 31, column: 27, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5440, file: !5441, line: 31, column: 6)
!5457 = !DILocation(line: 31, column: 6, scope: !5456)
!5458 = !DILocation(line: 31, column: 6, scope: !5440)
!5459 = !DILocation(line: 32, column: 8, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5461, file: !5441, line: 32, column: 7)
!5461 = distinct !DILexicalBlock(scope: !5456, file: !5441, line: 31, column: 34)
!5462 = !DILocation(line: 32, column: 7, scope: !5461)
!5463 = !DILocation(line: 33, column: 4, scope: !5460)
!5464 = !DILocation(line: 35, column: 7, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5461, file: !5441, line: 35, column: 7)
!5466 = !DILocation(line: 35, column: 12, scope: !5465)
!5467 = !DILocation(line: 35, column: 7, scope: !5461)
!5468 = !DILocation(line: 36, column: 4, scope: !5465)
!5469 = !DILocation(line: 38, column: 10, scope: !5461)
!5470 = !DILocation(line: 38, column: 28, scope: !5461)
!5471 = !DILocation(line: 38, column: 41, scope: !5461)
!5472 = !DILocation(line: 38, column: 3, scope: !5461)
!5473 = !DILocation(line: 41, column: 6, scope: !5440)
!5474 = !DILocation(line: 42, column: 7, scope: !5440)
!5475 = !DILocation(line: 46, column: 15, scope: !5440)
!5476 = !DILocation(line: 374, column: 2, scope: !5445, inlinedAt: !5450)
!5477 = !DILocation(line: 376, column: 14, scope: !5445, inlinedAt: !5450)
!5478 = !{i32 290159}
!5479 = !DILocation(line: 377, column: 9, scope: !5445, inlinedAt: !5450)
!5480 = !DILocation(line: 377, column: 16, scope: !5445, inlinedAt: !5450)
!5481 = !DILocation(line: 46, column: 2, scope: !5440)
!5482 = !DILocation(line: 48, column: 1, scope: !5440)
!5483 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5484, file: !5484, line: 30, type: !5485, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5484 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!140, !390}
!5487 = !DILocation(line: 366, column: 40, scope: !5445, inlinedAt: !5488)
!5488 = distinct !DILocation(line: 32, column: 9, scope: !5483)
!5489 = !DILocation(line: 368, column: 6, scope: !5445, inlinedAt: !5488)
!5490 = !DILocalVariable(name: "n", arg: 1, scope: !5483, file: !5484, line: 30, type: !390)
!5491 = !DILocation(line: 30, column: 21, scope: !5483)
!5492 = !DILocation(line: 32, column: 15, scope: !5483)
!5493 = !DILocation(line: 374, column: 2, scope: !5445, inlinedAt: !5488)
!5494 = !DILocation(line: 376, column: 14, scope: !5445, inlinedAt: !5488)
!5495 = !DILocation(line: 377, column: 9, scope: !5445, inlinedAt: !5488)
!5496 = !DILocation(line: 377, column: 16, scope: !5445, inlinedAt: !5488)
!5497 = !DILocation(line: 32, column: 18, scope: !5483)
!5498 = !DILocation(line: 32, column: 2, scope: !5483)
!5499 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5500, file: !5500, line: 137, type: !5501, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5500 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!134, !905, !176, !292, !713}
!5503 = !DILocalVariable(name: "s", arg: 1, scope: !5499, file: !5500, line: 137, type: !905)
!5504 = !DILocation(line: 137, column: 54, scope: !5499)
!5505 = !DILocalVariable(name: "object", arg: 2, scope: !5499, file: !5500, line: 137, type: !176)
!5506 = !DILocation(line: 137, column: 69, scope: !5499)
!5507 = !DILocalVariable(name: "size", arg: 3, scope: !5499, file: !5500, line: 138, type: !292)
!5508 = !DILocation(line: 138, column: 12, scope: !5499)
!5509 = !DILocalVariable(name: "flags", arg: 4, scope: !5499, file: !5500, line: 138, type: !713)
!5510 = !DILocation(line: 138, column: 24, scope: !5499)
!5511 = !DILocation(line: 140, column: 17, scope: !5499)
!5512 = !DILocation(line: 140, column: 2, scope: !5499)
!5513 = distinct !DISubprogram(name: "bridge_has_boot_interrupt_variant", scope: !3, file: !3, line: 247, type: !4226, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !218)
!5514 = !DILocalVariable(name: "bus", arg: 1, scope: !5513, file: !3, line: 247, type: !4194)
!5515 = !DILocation(line: 247, column: 62, scope: !5513)
!5516 = !DILocalVariable(name: "bus_it", scope: !5513, file: !3, line: 249, type: !4194)
!5517 = !DILocation(line: 249, column: 18, scope: !5513)
!5518 = !DILocation(line: 251, column: 16, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 251, column: 2)
!5520 = !DILocation(line: 251, column: 14, scope: !5519)
!5521 = !DILocation(line: 251, column: 7, scope: !5519)
!5522 = !DILocation(line: 251, column: 22, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 251, column: 2)
!5524 = !DILocation(line: 251, column: 2, scope: !5519)
!5525 = !DILocation(line: 252, column: 8, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 252, column: 7)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 251, column: 56)
!5528 = !DILocation(line: 252, column: 16, scope: !5526)
!5529 = !DILocation(line: 252, column: 7, scope: !5527)
!5530 = !DILocation(line: 253, column: 4, scope: !5526)
!5531 = !DILocation(line: 254, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 254, column: 7)
!5533 = !DILocation(line: 254, column: 15, scope: !5532)
!5534 = !DILocation(line: 254, column: 21, scope: !5532)
!5535 = !DILocation(line: 254, column: 7, scope: !5527)
!5536 = !DILocation(line: 255, column: 11, scope: !5532)
!5537 = !DILocation(line: 255, column: 19, scope: !5532)
!5538 = !DILocation(line: 255, column: 25, scope: !5532)
!5539 = !DILocation(line: 255, column: 4, scope: !5532)
!5540 = !DILocation(line: 256, column: 2, scope: !5527)
!5541 = !DILocation(line: 251, column: 40, scope: !5523)
!5542 = !DILocation(line: 251, column: 48, scope: !5523)
!5543 = !DILocation(line: 251, column: 38, scope: !5523)
!5544 = !DILocation(line: 251, column: 2, scope: !5523)
!5545 = distinct !{!5545, !5524, !5546}
!5546 = !DILocation(line: 256, column: 2, scope: !5519)
!5547 = !DILocation(line: 257, column: 2, scope: !5513)
!5548 = !DILocation(line: 258, column: 1, scope: !5513)
