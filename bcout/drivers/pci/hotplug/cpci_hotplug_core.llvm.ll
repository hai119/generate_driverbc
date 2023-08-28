; ModuleID = '../bcout/drivers/pci/hotplug/cpci_hotplug_core.llvm.bc'
source_filename = "drivers/pci/hotplug/cpci_hotplug_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.cpci_hp_controller = type { i32, i64, i8*, i8*, i8*, %struct.cpci_hp_controller_ops* }
%struct.cpci_hp_controller_ops = type { i32 ()*, i32 ()*, i32 ()*, i32 (i8*)*, i32 (%struct.slot*, i32)*, i8 (%struct.slot*)*, i32 (%struct.slot*, i32)* }
%struct.slot = type { i8, i32, %struct.pci_bus*, %struct.pci_dev*, i8, i32, %struct.hotplug_slot, %struct.list_head }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.atomic_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pcie_link_state = type opaque
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.hotplug_slot = type { %struct.hotplug_slot_ops*, %struct.list_head, %struct.pci_slot*, %struct.module*, i8* }
%struct.hotplug_slot_ops = type { i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*)*, i32 (%struct.hotplug_slot*, i8)*, i32 (%struct.hotplug_slot*, i32)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i8*)*, i32 (%struct.hotplug_slot*, i32)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque

@controller = internal global %struct.cpci_hp_controller* null, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1
@cpci_hotplug_slot_ops = internal constant %struct.hotplug_slot_ops { i32 (%struct.hotplug_slot*)* @enable_slot, i32 (%struct.hotplug_slot*)* @disable_slot, i32 (%struct.hotplug_slot*, i8)* @set_attention_status, i32 (%struct.hotplug_slot*, i32)* null, i32 (%struct.hotplug_slot*, i8*)* @get_power_status, i32 (%struct.hotplug_slot*, i8*)* @get_attention_status, i32 (%struct.hotplug_slot*, i8*)* @get_latch_status, i32 (%struct.hotplug_slot*, i8*)* @get_adapter_status, i32 (%struct.hotplug_slot*, i32)* null }, align 8, !dbg !4192
@cpci_debug = dso_local global i32 0, align 4, !dbg !4188
@.str.1 = private unnamed_addr constant [27 x i8] c"\017%s: registering slot %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cpci_hotplug\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pci_hotplug\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013%s: pci_hp_register failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\017%s: slot registered with name: %s\0A\00", align 1
@list_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @list_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @list_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !4196
@slot_list = internal global %struct.list_head { %struct.list_head* @slot_list, %struct.list_head* @slot_list }, align 8, !dbg !4198
@slots = internal global i32 0, align 4, !dbg !4186
@.str.6 = private unnamed_addr constant [29 x i8] c"\017%s: deregistering slot %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"\013%s: Can't get irq %d for the hotplug cPCI controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"\017%s: %s - acquired controller irq %d\0A\00", align 1
@__func__.cpci_hp_register_controller = private unnamed_addr constant [28 x i8] c"cpci_hp_register_controller\00", align 1
@thread_finished = internal global i32 0, align 4, !dbg !4190
@cpci_hp_start.first = internal global i32 1, align 4, !dbg !4181
@.str.9 = private unnamed_addr constant [18 x i8] c"\017%s: %s - enter\0A\00", align 1
@__func__.cpci_hp_start = private unnamed_addr constant [14 x i8] c"cpci_hp_start\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"\017%s: %s - thread started\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\017%s: %s - enabling irq\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"\017%s: %s - exit\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\017%s: %s - disabling irq\0A\00", align 1
@__func__.cpci_hp_stop = private unnamed_addr constant [13 x i8] c"cpci_hp_stop\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"\017%s: %s - physical_slot = %s\0A\00", align 1
@__func__.enable_slot = private unnamed_addr constant [12 x i8] c"enable_slot\00", align 1
@__func__.disable_slot = private unnamed_addr constant [13 x i8] c"disable_slot\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"\017%s: %s - unconfiguring slot %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\013%s: %s - could not unconfigure slot %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"\017%s: %s - finished unconfiguring slot %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"\013%s: %s - could not clear EXT for slot %s\0A\00", align 1
@extracting = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !4194
@.str.20 = private unnamed_addr constant [28 x i8] c"\017%s: entered cpci_hp_intr\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\017%s: exited cpci_hp_intr, not our interrupt\0A\00", align 1
@cpci_thread = internal global %struct.task_struct* null, align 8, !dbg !4200
@__func__.init_slots = private unnamed_addr constant [11 x i8] c"init_slots\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\017%s: %s - looking at slot %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\017%s: %s - cleared INS for slot %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"cpci_hp_eventd\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"cpci_hp_polld\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"\013%s: Can't start up our thread\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"\017%s: %s - event thread started\0A\00", align 1
@__func__.event_thread = private unnamed_addr constant [13 x i8] c"event_thread\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"\017%s: event thread sleeping\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\017%s: %s - error checking slots\0A\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"\017%s: %s - re-enabling irq\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@.str.31 = private unnamed_addr constant [42 x i8] c"\013%s: no slots registered, shutting down\0A\00", align 1
@__func__.check_slots = private unnamed_addr constant [12 x i8] c"check_slots\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"\014%s: slot %s already inserted\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"\017%s: %s - slot %s inserted\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"\017%s: %s - slot %s HS_CSR (1) = %04x\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"\017%s: %s - configuring slot %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"\013%s: %s - could not configure slot %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"\017%s: %s - finished configuring slot %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"\017%s: %s - slot %s HS_CSR (2) = %04x\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"\017%s: %s - slot %s HS_CSR (3) = %04x\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"\017%s: %s - slot %s extracted\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"\017%s: %s - slot %s HS_CSR = %04x\0A\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"\013%s: card in slot %s was improperly removed\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"\017%s: inserted=%d, extracted=%d, extracting=%d\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"\013%s: cannot find ENUM# source, shutting down\0A\00", align 1
@__func__.poll_thread = private unnamed_addr constant [12 x i8] c"poll_thread\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_register_bus(%struct.pci_bus* %bus, i8 zeroext %first, i8 zeroext %last) #0 !dbg !4239 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %first.addr = alloca i8, align 1
  %last.addr = alloca i8, align 1
  %slot = alloca %struct.slot*, align 8
  %name = alloca [6 x i8], align 1
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  store i8 %first, i8* %first.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %first.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  store i8 %last, i8* %last.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %last.addr, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !4248, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.declare(metadata [6 x i8]* %name, metadata !4250, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4252, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4254, metadata !DIExpression()), !dbg !4255
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4256
  %tobool = icmp ne %struct.cpci_hp_controller* %0, null, !dbg !4256
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !4258

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4259
  %tobool1 = icmp ne %struct.pci_bus* %1, null, !dbg !4259
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4260

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -19, i32* %retval, align 4, !dbg !4261
  br label %return, !dbg !4261

if.end:                                           ; preds = %land.lhs.true
  %2 = load i8, i8* %first.addr, align 1, !dbg !4262
  %conv = zext i8 %2 to i32, !dbg !4262
  store i32 %conv, i32* %i, align 4, !dbg !4264
  br label %for.cond, !dbg !4265

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4266
  %4 = load i8, i8* %last.addr, align 1, !dbg !4268
  %conv2 = zext i8 %4 to i32, !dbg !4268
  %cmp = icmp sle i32 %3, %conv2, !dbg !4269
  br i1 %cmp, label %for.body, label %for.end, !dbg !4270

for.body:                                         ; preds = %for.cond
  %call = call i8* @kzalloc(i64 96, i32 3264) #8, !dbg !4271
  %5 = bitcast i8* %call to %struct.slot*, !dbg !4271
  store %struct.slot* %5, %struct.slot** %slot, align 8, !dbg !4273
  %6 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4274
  %tobool4 = icmp ne %struct.slot* %6, null, !dbg !4274
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4276

if.then5:                                         ; preds = %for.body
  store i32 -12, i32* %status, align 4, !dbg !4277
  br label %error, !dbg !4279

if.end6:                                          ; preds = %for.body
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4280
  %8 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4281
  %bus7 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 2, !dbg !4282
  store %struct.pci_bus* %7, %struct.pci_bus** %bus7, align 8, !dbg !4283
  %9 = load i32, i32* %i, align 4, !dbg !4284
  %conv8 = trunc i32 %9 to i8, !dbg !4284
  %10 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4285
  %number = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0, !dbg !4286
  store i8 %conv8, i8* %number, align 8, !dbg !4287
  %11 = load i32, i32* %i, align 4, !dbg !4288
  %and = and i32 %11, 31, !dbg !4288
  %shl = shl i32 %and, 3, !dbg !4288
  %12 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4289
  %devfn = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 1, !dbg !4290
  store i32 %shl, i32* %devfn, align 4, !dbg !4291
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %name, i64 0, i64 0, !dbg !4292
  %13 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4293
  %number9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 13, !dbg !4294
  %14 = load i8, i8* %number9, align 8, !dbg !4294
  %conv10 = zext i8 %14 to i32, !dbg !4293
  %15 = load i32, i32* %i, align 4, !dbg !4295
  %call11 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %conv10, i32 %15) #8, !dbg !4296
  %16 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4297
  %hotplug_slot = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 6, !dbg !4298
  %ops = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %hotplug_slot, i32 0, i32 0, !dbg !4299
  store %struct.hotplug_slot_ops* @cpci_hotplug_slot_ops, %struct.hotplug_slot_ops** %ops, align 8, !dbg !4300
  br label %do.body, !dbg !4301

do.body:                                          ; preds = %if.end6
  %17 = load i32, i32* @cpci_debug, align 4, !dbg !4302
  %tobool12 = icmp ne i32 %17, 0, !dbg !4302
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !4305

if.then13:                                        ; preds = %do.body
  %arraydecay14 = getelementptr inbounds [6 x i8], [6 x i8]* %name, i64 0, i64 0, !dbg !4302
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay14) #9, !dbg !4302
  br label %if.end16, !dbg !4302

if.end16:                                         ; preds = %if.then13, %do.body
  br label %do.end, !dbg !4305

do.end:                                           ; preds = %if.end16
  %18 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4306
  %hotplug_slot17 = getelementptr inbounds %struct.slot, %struct.slot* %18, i32 0, i32 6, !dbg !4306
  %19 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4306
  %20 = load i32, i32* %i, align 4, !dbg !4306
  %arraydecay18 = getelementptr inbounds [6 x i8], [6 x i8]* %name, i64 0, i64 0, !dbg !4306
  %call19 = call i32 @__pci_hp_register(%struct.hotplug_slot* %hotplug_slot17, %struct.pci_bus* %19, i32 %20, i8* %arraydecay18, %struct.module* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !4306
  store i32 %call19, i32* %status, align 4, !dbg !4307
  %21 = load i32, i32* %status, align 4, !dbg !4308
  %tobool20 = icmp ne i32 %21, 0, !dbg !4308
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4310

if.then21:                                        ; preds = %do.end
  %22 = load i32, i32* %status, align 4, !dbg !4311
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %22) #9, !dbg !4311
  br label %error_slot, !dbg !4313

if.end23:                                         ; preds = %do.end
  br label %do.body24, !dbg !4314

do.body24:                                        ; preds = %if.end23
  %23 = load i32, i32* @cpci_debug, align 4, !dbg !4315
  %tobool25 = icmp ne i32 %23, 0, !dbg !4315
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !4318

if.then26:                                        ; preds = %do.body24
  %24 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4315
  %call27 = call i8* @slot_name(%struct.slot* %24) #8, !dbg !4315
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %call27) #9, !dbg !4315
  br label %if.end29, !dbg !4315

if.end29:                                         ; preds = %if.then26, %do.body24
  br label %do.end30, !dbg !4318

do.end30:                                         ; preds = %if.end29
  call void @down_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4319
  %25 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4320
  %slot_list = getelementptr inbounds %struct.slot, %struct.slot* %25, i32 0, i32 7, !dbg !4321
  call void @list_add(%struct.list_head* %slot_list, %struct.list_head* @slot_list) #8, !dbg !4322
  %26 = load i32, i32* @slots, align 4, !dbg !4323
  %inc = add i32 %26, 1, !dbg !4323
  store i32 %inc, i32* @slots, align 4, !dbg !4323
  call void @up_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4324
  br label %for.inc, !dbg !4325

for.inc:                                          ; preds = %do.end30
  %27 = load i32, i32* %i, align 4, !dbg !4326
  %inc31 = add i32 %27, 1, !dbg !4326
  store i32 %inc31, i32* %i, align 4, !dbg !4326
  br label %for.cond, !dbg !4327, !llvm.loop !4328

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4330
  br label %return, !dbg !4330

error_slot:                                       ; preds = %if.then21
  call void @llvm.dbg.label(metadata !4331), !dbg !4332
  %28 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4333
  %29 = bitcast %struct.slot* %28 to i8*, !dbg !4333
  call void @kfree(i8* %29) #8, !dbg !4334
  br label %error, !dbg !4334

error:                                            ; preds = %error_slot, %if.then5
  call void @llvm.dbg.label(metadata !4335), !dbg !4336
  %30 = load i32, i32* %status, align 4, !dbg !4337
  store i32 %30, i32* %retval, align 4, !dbg !4338
  br label %return, !dbg !4338

return:                                           ; preds = %error, %for.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !4339
  ret i32 %31, !dbg !4339
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4340 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4343, metadata !DIExpression()), !dbg !4347
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4353, metadata !DIExpression()), !dbg !4354
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4355, metadata !DIExpression()), !dbg !4356
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4357, metadata !DIExpression()), !dbg !4358
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4359, metadata !DIExpression()), !dbg !4363
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4365, metadata !DIExpression()), !dbg !4369
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4371, metadata !DIExpression()), !dbg !4375
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4380, metadata !DIExpression()), !dbg !4381
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4382, metadata !DIExpression()), !dbg !4383
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4384, metadata !DIExpression()), !dbg !4385
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4386, metadata !DIExpression()), !dbg !4387
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4388, metadata !DIExpression()), !dbg !4389
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4390, metadata !DIExpression()), !dbg !4391
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4392, metadata !DIExpression()), !dbg !4393
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4394, metadata !DIExpression()), !dbg !4395
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  %0 = load i64, i64* %size.addr, align 8, !dbg !4400
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4401
  %or = or i32 %1, 256, !dbg !4402
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4403
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4404
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4405

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4406
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4407
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4408

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4409
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4410
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4411
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4412
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4389
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4413
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4414
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4415
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4416
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4417
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4418
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4419
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4419
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4419
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4419
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4419
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4420
  br label %kmalloc.exit, !dbg !4420

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4421
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4422
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4422
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4424

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4425
  br label %kmalloc_index.exit.i, !dbg !4425

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4426
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4428
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4429

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4430
  br label %kmalloc_index.exit.i, !dbg !4430

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4431
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4433
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4434

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4435
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4436
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4437

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4438
  br label %kmalloc_index.exit.i, !dbg !4438

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4439
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4441
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4442

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4443
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4444
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4445

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4446
  br label %kmalloc_index.exit.i, !dbg !4446

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4447
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4449
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4450

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4451
  br label %kmalloc_index.exit.i, !dbg !4451

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4452
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4454
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4455

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4456
  br label %kmalloc_index.exit.i, !dbg !4456

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4457
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4459
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4460

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4461
  br label %kmalloc_index.exit.i, !dbg !4461

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4462
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4464
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4465

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4466
  br label %kmalloc_index.exit.i, !dbg !4466

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4467
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4469
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4470

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4471
  br label %kmalloc_index.exit.i, !dbg !4471

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4472
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4474
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4475

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4476
  br label %kmalloc_index.exit.i, !dbg !4476

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4477
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4479
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4480

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4481
  br label %kmalloc_index.exit.i, !dbg !4481

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4482
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4484
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4485

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4486
  br label %kmalloc_index.exit.i, !dbg !4486

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4487
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4489
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4490

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4491
  br label %kmalloc_index.exit.i, !dbg !4491

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4492
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4494
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4495

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4496
  br label %kmalloc_index.exit.i, !dbg !4496

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4497
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4499
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4500

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4501
  br label %kmalloc_index.exit.i, !dbg !4501

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4502
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4504
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4505

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4506
  br label %kmalloc_index.exit.i, !dbg !4506

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4507
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4509
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4510

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4511
  br label %kmalloc_index.exit.i, !dbg !4511

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4512
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4514
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4515

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4516
  br label %kmalloc_index.exit.i, !dbg !4516

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4517
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4519
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4520

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4521
  br label %kmalloc_index.exit.i, !dbg !4521

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4522
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4524
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4525

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4526
  br label %kmalloc_index.exit.i, !dbg !4526

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4527
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4529
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4530

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4531
  br label %kmalloc_index.exit.i, !dbg !4531

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4532
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4534
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4535

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4536
  br label %kmalloc_index.exit.i, !dbg !4536

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4537
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4539
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4540

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4541
  br label %kmalloc_index.exit.i, !dbg !4541

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4542
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4544
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4545

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4546
  br label %kmalloc_index.exit.i, !dbg !4546

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4547
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4549
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4550

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4551
  br label %kmalloc_index.exit.i, !dbg !4551

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4552
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4554
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4555

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4556
  br label %kmalloc_index.exit.i, !dbg !4556

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4557
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4559
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4560

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4561
  br label %kmalloc_index.exit.i, !dbg !4561

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4562
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4564
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4565

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4566
  br label %kmalloc_index.exit.i, !dbg !4566

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4567, !srcloc !4570
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 176) #10, !dbg !4571, !srcloc !4574
  unreachable, !dbg !4575

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4576
  store i32 %45, i32* %index.i, align 4, !dbg !4577
  %46 = load i32, i32* %index.i, align 4, !dbg !4578
  %tobool.i = icmp ne i32 %46, 0, !dbg !4578
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4580

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4581
  br label %kmalloc.exit, !dbg !4581

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4582
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4583
  %and.i.i = and i32 %48, 17, !dbg !4583
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4583
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4583
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4583
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4583
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4585

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4586
  br label %kmalloc_type.exit.i, !dbg !4586

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4587
  %and2.i.i = and i32 %49, 1, !dbg !4588
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4587
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4587
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4587
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4589
  br label %kmalloc_type.exit.i, !dbg !4589

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4590
  %idxprom.i = zext i32 %51 to i64, !dbg !4591
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4591
  %52 = load i32, i32* %index.i, align 4, !dbg !4592
  %idxprom6.i = zext i32 %52 to i64, !dbg !4591
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4591
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4591
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4593
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4594
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4595
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4596
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4597
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4597
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4597
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4597
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4597
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4358
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4598
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4599
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4600
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4601
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4602
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4603
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4604
  store i8* %62, i8** %retval.i, align 8, !dbg !4605
  br label %kmalloc.exit, !dbg !4605

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4606
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4607
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4608
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4608
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4608
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4608
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4608
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4609
  br label %kmalloc.exit, !dbg !4609

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4610
  ret i8* %65, !dbg !4611
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @__pci_hp_register(%struct.hotplug_slot*, %struct.pci_bus*, i32, i8*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @slot_name(%struct.slot* %slot) #0 !dbg !4612 {
entry:
  %slot.addr = alloca %struct.slot*, align 8
  store %struct.slot* %slot, %struct.slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.slot** %slot.addr, metadata !4615, metadata !DIExpression()), !dbg !4616
  %0 = load %struct.slot*, %struct.slot** %slot.addr, align 8, !dbg !4617
  %hotplug_slot = getelementptr inbounds %struct.slot, %struct.slot* %0, i32 0, i32 6, !dbg !4618
  %call = call i8* @hotplug_slot_name(%struct.hotplug_slot* %hotplug_slot) #8, !dbg !4619
  ret i8* %call, !dbg !4620
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4621 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4627, metadata !DIExpression()), !dbg !4628
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4629
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4630
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4631
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !4632
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4632
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_unregister_bus(%struct.pci_bus* %bus) #0 !dbg !4635 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %slot = alloca %struct.slot*, align 8
  %tmp = alloca %struct.slot*, align 8
  %status = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.slot*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.slot*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp24 = alloca %struct.slot*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata %struct.slot** %tmp, metadata !4640, metadata !DIExpression()), !dbg !4641
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i32 0, i32* %status, align 4, !dbg !4643
  call void @down_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4644
  %0 = load i32, i32* @slots, align 4, !dbg !4645
  %tobool = icmp ne i32 %0, 0, !dbg !4645
  br i1 %tobool, label %if.end, label %if.then, !dbg !4647

if.then:                                          ; preds = %entry
  call void @up_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4648
  store i32 -1, i32* %retval, align 4, !dbg !4650
  br label %return, !dbg !4650

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4651, metadata !DIExpression()), !dbg !4654
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slot_list, i32 0, i32 0), align 8, !dbg !4654
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4654
  store i8* %2, i8** %__mptr, align 8, !dbg !4654
  br label %do.body, !dbg !4654

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4655

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4654
  %add.ptr = getelementptr i8, i8* %3, i64 -80, !dbg !4654
  %4 = bitcast i8* %add.ptr to %struct.slot*, !dbg !4654
  store %struct.slot* %4, %struct.slot** %tmp1, align 8, !dbg !4655
  %5 = load %struct.slot*, %struct.slot** %tmp1, align 8, !dbg !4654
  store %struct.slot* %5, %struct.slot** %slot, align 8, !dbg !4657
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4658, metadata !DIExpression()), !dbg !4660
  %6 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4660
  %slot_list = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 7, !dbg !4660
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list, i32 0, i32 0, !dbg !4660
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4660
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4660
  store i8* %8, i8** %__mptr2, align 8, !dbg !4660
  br label %do.body3, !dbg !4660

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4661

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !4660
  %add.ptr6 = getelementptr i8, i8* %9, i64 -80, !dbg !4660
  %10 = bitcast i8* %add.ptr6 to %struct.slot*, !dbg !4660
  store %struct.slot* %10, %struct.slot** %tmp5, align 8, !dbg !4661
  %11 = load %struct.slot*, %struct.slot** %tmp5, align 8, !dbg !4660
  store %struct.slot* %11, %struct.slot** %tmp, align 8, !dbg !4657
  br label %for.cond, !dbg !4657

for.cond:                                         ; preds = %do.end23, %do.end4
  %12 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4663
  %slot_list7 = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 7, !dbg !4663
  %cmp = icmp eq %struct.list_head* %slot_list7, @slot_list, !dbg !4663
  %lnot = xor i1 %cmp, true, !dbg !4663
  br i1 %lnot, label %for.body, label %for.end, !dbg !4657

for.body:                                         ; preds = %for.cond
  %13 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4665
  %bus8 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 2, !dbg !4668
  %14 = load %struct.pci_bus*, %struct.pci_bus** %bus8, align 8, !dbg !4668
  %15 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4669
  %cmp9 = icmp eq %struct.pci_bus* %14, %15, !dbg !4670
  br i1 %cmp9, label %if.then10, label %if.end18, !dbg !4671

if.then10:                                        ; preds = %for.body
  %16 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4672
  %slot_list11 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 7, !dbg !4674
  call void @list_del(%struct.list_head* %slot_list11) #8, !dbg !4675
  %17 = load i32, i32* @slots, align 4, !dbg !4676
  %dec = add i32 %17, -1, !dbg !4676
  store i32 %dec, i32* @slots, align 4, !dbg !4676
  br label %do.body12, !dbg !4677

do.body12:                                        ; preds = %if.then10
  %18 = load i32, i32* @cpci_debug, align 4, !dbg !4678
  %tobool13 = icmp ne i32 %18, 0, !dbg !4678
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !4681

if.then14:                                        ; preds = %do.body12
  %19 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4678
  %call = call i8* @slot_name(%struct.slot* %19) #8, !dbg !4678
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %call) #9, !dbg !4678
  br label %if.end16, !dbg !4678

if.end16:                                         ; preds = %if.then14, %do.body12
  br label %do.end17, !dbg !4681

do.end17:                                         ; preds = %if.end16
  %20 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4682
  %hotplug_slot = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 6, !dbg !4683
  call void @pci_hp_deregister(%struct.hotplug_slot* %hotplug_slot) #8, !dbg !4684
  %21 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4685
  call void @release_slot(%struct.slot* %21) #8, !dbg !4686
  br label %if.end18, !dbg !4687

if.end18:                                         ; preds = %do.end17, %for.body
  br label %for.inc, !dbg !4688

for.inc:                                          ; preds = %if.end18
  %22 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !4663
  store %struct.slot* %22, %struct.slot** %slot, align 8, !dbg !4663
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !4689, metadata !DIExpression()), !dbg !4691
  %23 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !4691
  %slot_list20 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 7, !dbg !4691
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list20, i32 0, i32 0, !dbg !4691
  %24 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !4691
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !4691
  store i8* %25, i8** %__mptr19, align 8, !dbg !4691
  br label %do.body22, !dbg !4691

do.body22:                                        ; preds = %for.inc
  br label %do.end23, !dbg !4692

do.end23:                                         ; preds = %do.body22
  %26 = load i8*, i8** %__mptr19, align 8, !dbg !4691
  %add.ptr25 = getelementptr i8, i8* %26, i64 -80, !dbg !4691
  %27 = bitcast i8* %add.ptr25 to %struct.slot*, !dbg !4691
  store %struct.slot* %27, %struct.slot** %tmp24, align 8, !dbg !4692
  %28 = load %struct.slot*, %struct.slot** %tmp24, align 8, !dbg !4691
  store %struct.slot* %28, %struct.slot** %tmp, align 8, !dbg !4663
  br label %for.cond, !dbg !4663, !llvm.loop !4694

for.end:                                          ; preds = %for.cond
  call void @up_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4696
  %29 = load i32, i32* %status, align 4, !dbg !4697
  store i32 %29, i32* %retval, align 4, !dbg !4698
  br label %return, !dbg !4698

return:                                           ; preds = %for.end, %if.then
  %30 = load i32, i32* %retval, align 4, !dbg !4699
  ret i32 %30, !dbg !4699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4700 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4705
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4706
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4707
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4708
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4709
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4710
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4711
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4712
  ret void, !dbg !4713
}

; Function Attrs: noredzone
declare dso_local void @pci_hp_deregister(%struct.hotplug_slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @release_slot(%struct.slot* %slot) #0 !dbg !4714 {
entry:
  %slot.addr = alloca %struct.slot*, align 8
  store %struct.slot* %slot, %struct.slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.slot** %slot.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load %struct.slot*, %struct.slot** %slot.addr, align 8, !dbg !4719
  %dev = getelementptr inbounds %struct.slot, %struct.slot* %0, i32 0, i32 3, !dbg !4720
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4720
  call void @pci_dev_put(%struct.pci_dev* %1) #8, !dbg !4721
  %2 = load %struct.slot*, %struct.slot** %slot.addr, align 8, !dbg !4722
  %3 = bitcast %struct.slot* %2 to i8*, !dbg !4722
  call void @kfree(i8* %3) #8, !dbg !4723
  ret void, !dbg !4724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_register_controller(%struct.cpci_hp_controller* %new_controller) #0 !dbg !4725 {
entry:
  %retval = alloca i32, align 4
  %new_controller.addr = alloca %struct.cpci_hp_controller*, align 8
  %status = alloca i32, align 4
  store %struct.cpci_hp_controller* %new_controller, %struct.cpci_hp_controller** %new_controller.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpci_hp_controller** %new_controller.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4730, metadata !DIExpression()), !dbg !4731
  store i32 0, i32* %status, align 4, !dbg !4731
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4732
  %tobool = icmp ne %struct.cpci_hp_controller* %0, null, !dbg !4732
  br i1 %tobool, label %if.then, label %if.end, !dbg !4734

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4735
  br label %return, !dbg !4735

if.end:                                           ; preds = %entry
  %1 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4736
  %tobool1 = icmp ne %struct.cpci_hp_controller* %1, null, !dbg !4736
  br i1 %tobool1, label %land.lhs.true, label %if.then3, !dbg !4738

land.lhs.true:                                    ; preds = %if.end
  %2 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4739
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %2, i32 0, i32 5, !dbg !4740
  %3 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !4740
  %tobool2 = icmp ne %struct.cpci_hp_controller_ops* %3, null, !dbg !4739
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4741

if.then3:                                         ; preds = %land.lhs.true, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4742
  br label %return, !dbg !4742

if.end4:                                          ; preds = %land.lhs.true
  %4 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4743
  %irq = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %4, i32 0, i32 0, !dbg !4745
  %5 = load i32, i32* %irq, align 8, !dbg !4745
  %tobool5 = icmp ne i32 %5, 0, !dbg !4743
  br i1 %tobool5, label %if.then6, label %if.end25, !dbg !4746

if.then6:                                         ; preds = %if.end4
  %6 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4747
  %ops7 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %6, i32 0, i32 5, !dbg !4750
  %7 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops7, align 8, !dbg !4750
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %7, i32 0, i32 1, !dbg !4751
  %8 = load i32 ()*, i32 ()** %enable_irq, align 8, !dbg !4751
  %tobool8 = icmp ne i32 ()* %8, null, !dbg !4747
  br i1 %tobool8, label %land.lhs.true9, label %if.then12, !dbg !4752

land.lhs.true9:                                   ; preds = %if.then6
  %9 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4753
  %ops10 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %9, i32 0, i32 5, !dbg !4754
  %10 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops10, align 8, !dbg !4754
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %10, i32 0, i32 2, !dbg !4755
  %11 = load i32 ()*, i32 ()** %disable_irq, align 8, !dbg !4755
  %tobool11 = icmp ne i32 ()* %11, null, !dbg !4753
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4756

if.then12:                                        ; preds = %land.lhs.true9, %if.then6
  store i32 -22, i32* %status, align 4, !dbg !4757
  br label %if.end13, !dbg !4758

if.end13:                                         ; preds = %if.then12, %land.lhs.true9
  %12 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4759
  %irq14 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %12, i32 0, i32 0, !dbg !4761
  %13 = load i32, i32* %irq14, align 8, !dbg !4761
  %14 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4762
  %irq_flags = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %14, i32 0, i32 1, !dbg !4763
  %15 = load i64, i64* %irq_flags, align 8, !dbg !4763
  %16 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4764
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %16, i32 0, i32 3, !dbg !4765
  %17 = load i8*, i8** %dev_id, align 8, !dbg !4765
  %call = call i32 @request_irq(i32 %13, i32 (i32, i8*)* @cpci_hp_intr, i64 %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %17) #8, !dbg !4766
  %tobool15 = icmp ne i32 %call, 0, !dbg !4766
  br i1 %tobool15, label %if.then16, label %if.end19, !dbg !4767

if.then16:                                        ; preds = %if.end13
  %18 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4768
  %irq17 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %18, i32 0, i32 0, !dbg !4768
  %19 = load i32, i32* %irq17, align 8, !dbg !4768
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %19) #9, !dbg !4768
  store i32 -19, i32* %status, align 4, !dbg !4770
  br label %if.end19, !dbg !4771

if.end19:                                         ; preds = %if.then16, %if.end13
  br label %do.body, !dbg !4772

do.body:                                          ; preds = %if.end19
  %20 = load i32, i32* @cpci_debug, align 4, !dbg !4773
  %tobool20 = icmp ne i32 %20, 0, !dbg !4773
  br i1 %tobool20, label %if.then21, label %if.end24, !dbg !4776

if.then21:                                        ; preds = %do.body
  %21 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4773
  %irq22 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %21, i32 0, i32 0, !dbg !4773
  %22 = load i32, i32* %irq22, align 8, !dbg !4773
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.cpci_hp_register_controller, i64 0, i64 0), i32 %22) #9, !dbg !4773
  br label %if.end24, !dbg !4773

if.end24:                                         ; preds = %if.then21, %do.body
  br label %do.end, !dbg !4776

do.end:                                           ; preds = %if.end24
  br label %if.end25, !dbg !4777

if.end25:                                         ; preds = %do.end, %if.end4
  %23 = load i32, i32* %status, align 4, !dbg !4778
  %tobool26 = icmp ne i32 %23, 0, !dbg !4778
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !4780

if.then27:                                        ; preds = %if.end25
  %24 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** %new_controller.addr, align 8, !dbg !4781
  store %struct.cpci_hp_controller* %24, %struct.cpci_hp_controller** @controller, align 8, !dbg !4782
  br label %if.end28, !dbg !4783

if.end28:                                         ; preds = %if.then27, %if.end25
  %25 = load i32, i32* %status, align 4, !dbg !4784
  store i32 %25, i32* %retval, align 4, !dbg !4785
  br label %return, !dbg !4785

return:                                           ; preds = %if.end28, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4786
  ret i32 %26, !dbg !4786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_irq(i32 %irq, i32 (i32, i8*)* %handler, i64 %flags, i8* %name, i8* %dev) #0 !dbg !4787 {
entry:
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %flags.addr = alloca i64, align 8
  %name.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4795, metadata !DIExpression()), !dbg !4796
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load i32, i32* %irq.addr, align 4, !dbg !4805
  %1 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4806
  %2 = load i64, i64* %flags.addr, align 8, !dbg !4807
  %3 = load i8*, i8** %name.addr, align 8, !dbg !4808
  %4 = load i8*, i8** %dev.addr, align 8, !dbg !4809
  %call = call i32 @request_threaded_irq(i32 %0, i32 (i32, i8*)* %1, i32 (i32, i8*)* null, i64 %2, i8* %3, i8* %4) #8, !dbg !4810
  ret i32 %call, !dbg !4811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpci_hp_intr(i32 %irq, i8* %data) #0 !dbg !4812 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  br label %do.body, !dbg !4817

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @cpci_debug, align 4, !dbg !4818
  %tobool = icmp ne i32 %0, 0, !dbg !4818
  br i1 %tobool, label %if.then, label %if.end, !dbg !4821

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4818
  br label %if.end, !dbg !4818

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4821

do.end:                                           ; preds = %if.end
  %1 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4822
  %irq_flags = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %1, i32 0, i32 1, !dbg !4824
  %2 = load i64, i64* %irq_flags, align 8, !dbg !4824
  %and = and i64 %2, 128, !dbg !4825
  %tobool1 = icmp ne i64 %and, 0, !dbg !4825
  br i1 %tobool1, label %land.lhs.true, label %if.end11, !dbg !4826

land.lhs.true:                                    ; preds = %do.end
  %3 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4827
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %3, i32 0, i32 5, !dbg !4828
  %4 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !4828
  %check_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %4, i32 0, i32 3, !dbg !4829
  %5 = load i32 (i8*)*, i32 (i8*)** %check_irq, align 8, !dbg !4829
  %6 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4830
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %6, i32 0, i32 3, !dbg !4831
  %7 = load i8*, i8** %dev_id, align 8, !dbg !4831
  %call2 = call i32 %5(i8* %7) #8, !dbg !4827
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4827
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !4832

if.then4:                                         ; preds = %land.lhs.true
  br label %do.body5, !dbg !4833

do.body5:                                         ; preds = %if.then4
  %8 = load i32, i32* @cpci_debug, align 4, !dbg !4835
  %tobool6 = icmp ne i32 %8, 0, !dbg !4835
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4838

if.then7:                                         ; preds = %do.body5
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4835
  br label %if.end9, !dbg !4835

if.end9:                                          ; preds = %if.then7, %do.body5
  br label %do.end10, !dbg !4838

do.end10:                                         ; preds = %if.end9
  store i32 0, i32* %retval, align 4, !dbg !4839
  br label %return, !dbg !4839

if.end11:                                         ; preds = %land.lhs.true, %do.end
  %9 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4840
  %ops12 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %9, i32 0, i32 5, !dbg !4841
  %10 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops12, align 8, !dbg !4841
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %10, i32 0, i32 2, !dbg !4842
  %11 = load i32 ()*, i32 ()** %disable_irq, align 8, !dbg !4842
  %call13 = call i32 %11() #8, !dbg !4840
  %12 = load %struct.task_struct*, %struct.task_struct** @cpci_thread, align 8, !dbg !4843
  %call14 = call i32 @wake_up_process(%struct.task_struct* %12) #8, !dbg !4844
  store i32 1, i32* %retval, align 4, !dbg !4845
  br label %return, !dbg !4845

return:                                           ; preds = %if.end11, %do.end10
  %13 = load i32, i32* %retval, align 4, !dbg !4846
  ret i32 %13, !dbg !4846
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_unregister_controller(%struct.cpci_hp_controller* %old_controller) #0 !dbg !4847 {
entry:
  %old_controller.addr = alloca %struct.cpci_hp_controller*, align 8
  %status = alloca i32, align 4
  store %struct.cpci_hp_controller* %old_controller, %struct.cpci_hp_controller** %old_controller.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpci_hp_controller** %old_controller.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i32 0, i32* %status, align 4, !dbg !4851
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4852
  %tobool = icmp ne %struct.cpci_hp_controller* %0, null, !dbg !4852
  br i1 %tobool, label %if.then, label %if.else, !dbg !4854

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @thread_finished, align 4, !dbg !4855
  %tobool1 = icmp ne i32 %1, 0, !dbg !4855
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !4858

if.then2:                                         ; preds = %if.then
  call void @cpci_stop_thread() #8, !dbg !4859
  br label %if.end, !dbg !4859

if.end:                                           ; preds = %if.then2, %if.then
  %2 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4860
  %irq = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %2, i32 0, i32 0, !dbg !4862
  %3 = load i32, i32* %irq, align 8, !dbg !4862
  %tobool3 = icmp ne i32 %3, 0, !dbg !4860
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4863

if.then4:                                         ; preds = %if.end
  %4 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4864
  %irq5 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %4, i32 0, i32 0, !dbg !4865
  %5 = load i32, i32* %irq5, align 8, !dbg !4865
  %6 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4866
  %dev_id = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %6, i32 0, i32 3, !dbg !4867
  %7 = load i8*, i8** %dev_id, align 8, !dbg !4867
  %call = call i8* @free_irq(i32 %5, i8* %7) #8, !dbg !4868
  br label %if.end6, !dbg !4868

if.end6:                                          ; preds = %if.then4, %if.end
  store %struct.cpci_hp_controller* null, %struct.cpci_hp_controller** @controller, align 8, !dbg !4869
  call void @cleanup_slots() #8, !dbg !4870
  br label %if.end7, !dbg !4871

if.else:                                          ; preds = %entry
  store i32 -19, i32* %status, align 4, !dbg !4872
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %8 = load i32, i32* %status, align 4, !dbg !4873
  ret i32 %8, !dbg !4874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpci_stop_thread() #0 !dbg !4875 {
entry:
  %0 = load %struct.task_struct*, %struct.task_struct** @cpci_thread, align 8, !dbg !4876
  %call = call i32 @kthread_stop(%struct.task_struct* %0) #8, !dbg !4877
  store i32 1, i32* @thread_finished, align 4, !dbg !4878
  ret void, !dbg !4879
}

; Function Attrs: noredzone
declare dso_local i8* @free_irq(i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cleanup_slots() #0 !dbg !4880 {
entry:
  %slot = alloca %struct.slot*, align 8
  %tmp = alloca %struct.slot*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.slot*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.slot*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.slot*, align 8
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !4881, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.declare(metadata %struct.slot** %tmp, metadata !4883, metadata !DIExpression()), !dbg !4884
  call void @down_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4885
  %0 = load i32, i32* @slots, align 4, !dbg !4886
  %tobool = icmp ne i32 %0, 0, !dbg !4886
  br i1 %tobool, label %if.end, label %if.then, !dbg !4888

if.then:                                          ; preds = %entry
  br label %cleanup_null, !dbg !4889

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4890, metadata !DIExpression()), !dbg !4893
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slot_list, i32 0, i32 0), align 8, !dbg !4893
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4893
  store i8* %2, i8** %__mptr, align 8, !dbg !4893
  br label %do.body, !dbg !4893

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4894

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4893
  %add.ptr = getelementptr i8, i8* %3, i64 -80, !dbg !4893
  %4 = bitcast i8* %add.ptr to %struct.slot*, !dbg !4893
  store %struct.slot* %4, %struct.slot** %tmp1, align 8, !dbg !4894
  %5 = load %struct.slot*, %struct.slot** %tmp1, align 8, !dbg !4893
  store %struct.slot* %5, %struct.slot** %slot, align 8, !dbg !4896
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4897, metadata !DIExpression()), !dbg !4899
  %6 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4899
  %slot_list = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 7, !dbg !4899
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list, i32 0, i32 0, !dbg !4899
  %7 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4899
  %8 = bitcast %struct.list_head* %7 to i8*, !dbg !4899
  store i8* %8, i8** %__mptr2, align 8, !dbg !4899
  br label %do.body3, !dbg !4899

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4900

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr2, align 8, !dbg !4899
  %add.ptr6 = getelementptr i8, i8* %9, i64 -80, !dbg !4899
  %10 = bitcast i8* %add.ptr6 to %struct.slot*, !dbg !4899
  store %struct.slot* %10, %struct.slot** %tmp5, align 8, !dbg !4900
  %11 = load %struct.slot*, %struct.slot** %tmp5, align 8, !dbg !4899
  store %struct.slot* %11, %struct.slot** %tmp, align 8, !dbg !4896
  br label %for.cond, !dbg !4896

for.cond:                                         ; preds = %do.end13, %do.end4
  %12 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4902
  %slot_list7 = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 7, !dbg !4902
  %cmp = icmp eq %struct.list_head* %slot_list7, @slot_list, !dbg !4902
  %lnot = xor i1 %cmp, true, !dbg !4902
  br i1 %lnot, label %for.body, label %for.end, !dbg !4896

for.body:                                         ; preds = %for.cond
  %13 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4904
  %slot_list8 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 7, !dbg !4906
  call void @list_del(%struct.list_head* %slot_list8) #8, !dbg !4907
  %14 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4908
  %hotplug_slot = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 6, !dbg !4909
  call void @pci_hp_deregister(%struct.hotplug_slot* %hotplug_slot) #8, !dbg !4910
  %15 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !4911
  call void @release_slot(%struct.slot* %15) #8, !dbg !4912
  br label %for.inc, !dbg !4913

for.inc:                                          ; preds = %for.body
  %16 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !4902
  store %struct.slot* %16, %struct.slot** %slot, align 8, !dbg !4902
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4914, metadata !DIExpression()), !dbg !4916
  %17 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !4916
  %slot_list10 = getelementptr inbounds %struct.slot, %struct.slot* %17, i32 0, i32 7, !dbg !4916
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list10, i32 0, i32 0, !dbg !4916
  %18 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !4916
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !4916
  store i8* %19, i8** %__mptr9, align 8, !dbg !4916
  br label %do.body12, !dbg !4916

do.body12:                                        ; preds = %for.inc
  br label %do.end13, !dbg !4917

do.end13:                                         ; preds = %do.body12
  %20 = load i8*, i8** %__mptr9, align 8, !dbg !4916
  %add.ptr15 = getelementptr i8, i8* %20, i64 -80, !dbg !4916
  %21 = bitcast i8* %add.ptr15 to %struct.slot*, !dbg !4916
  store %struct.slot* %21, %struct.slot** %tmp14, align 8, !dbg !4917
  %22 = load %struct.slot*, %struct.slot** %tmp14, align 8, !dbg !4916
  store %struct.slot* %22, %struct.slot** %tmp, align 8, !dbg !4902
  br label %for.cond, !dbg !4902, !llvm.loop !4919

for.end:                                          ; preds = %for.cond
  br label %cleanup_null, !dbg !4920

cleanup_null:                                     ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !4921), !dbg !4922
  call void @up_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4923
  ret void, !dbg !4924
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_start() #0 !dbg !4183 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4925, metadata !DIExpression()), !dbg !4926
  br label %do.body, !dbg !4927

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @cpci_debug, align 4, !dbg !4928
  %tobool = icmp ne i32 %0, 0, !dbg !4928
  br i1 %tobool, label %if.then, label %if.end, !dbg !4931

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cpci_hp_start, i64 0, i64 0)) #9, !dbg !4928
  br label %if.end, !dbg !4928

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4931

do.end:                                           ; preds = %if.end
  %1 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4932
  %tobool1 = icmp ne %struct.cpci_hp_controller* %1, null, !dbg !4932
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4934

if.then2:                                         ; preds = %do.end
  store i32 -19, i32* %retval, align 4, !dbg !4935
  br label %return, !dbg !4935

if.end3:                                          ; preds = %do.end
  call void @down_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4936
  %call4 = call i32 @list_empty(%struct.list_head* @slot_list) #8, !dbg !4937
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4937
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4939

if.then6:                                         ; preds = %if.end3
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4940
  store i32 -19, i32* %retval, align 4, !dbg !4942
  br label %return, !dbg !4942

if.end7:                                          ; preds = %if.end3
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !4943
  %2 = load i32, i32* @cpci_hp_start.first, align 4, !dbg !4944
  %call8 = call i32 @init_slots(i32 %2) #8, !dbg !4945
  store i32 %call8, i32* %status, align 4, !dbg !4946
  %3 = load i32, i32* @cpci_hp_start.first, align 4, !dbg !4947
  %tobool9 = icmp ne i32 %3, 0, !dbg !4947
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4949

if.then10:                                        ; preds = %if.end7
  store i32 0, i32* @cpci_hp_start.first, align 4, !dbg !4950
  br label %if.end11, !dbg !4951

if.end11:                                         ; preds = %if.then10, %if.end7
  %4 = load i32, i32* %status, align 4, !dbg !4952
  %tobool12 = icmp ne i32 %4, 0, !dbg !4952
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4954

if.then13:                                        ; preds = %if.end11
  %5 = load i32, i32* %status, align 4, !dbg !4955
  store i32 %5, i32* %retval, align 4, !dbg !4956
  br label %return, !dbg !4956

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @cpci_start_thread() #8, !dbg !4957
  store i32 %call15, i32* %status, align 4, !dbg !4958
  %6 = load i32, i32* %status, align 4, !dbg !4959
  %tobool16 = icmp ne i32 %6, 0, !dbg !4959
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4961

if.then17:                                        ; preds = %if.end14
  %7 = load i32, i32* %status, align 4, !dbg !4962
  store i32 %7, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

if.end18:                                         ; preds = %if.end14
  br label %do.body19, !dbg !4964

do.body19:                                        ; preds = %if.end18
  %8 = load i32, i32* @cpci_debug, align 4, !dbg !4965
  %tobool20 = icmp ne i32 %8, 0, !dbg !4965
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !4968

if.then21:                                        ; preds = %do.body19
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cpci_hp_start, i64 0, i64 0)) #9, !dbg !4965
  br label %if.end23, !dbg !4965

if.end23:                                         ; preds = %if.then21, %do.body19
  br label %do.end24, !dbg !4968

do.end24:                                         ; preds = %if.end23
  %9 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4969
  %irq = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %9, i32 0, i32 0, !dbg !4971
  %10 = load i32, i32* %irq, align 8, !dbg !4971
  %tobool25 = icmp ne i32 %10, 0, !dbg !4969
  br i1 %tobool25, label %if.then26, label %if.end34, !dbg !4972

if.then26:                                        ; preds = %do.end24
  br label %do.body27, !dbg !4973

do.body27:                                        ; preds = %if.then26
  %11 = load i32, i32* @cpci_debug, align 4, !dbg !4975
  %tobool28 = icmp ne i32 %11, 0, !dbg !4975
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4978

if.then29:                                        ; preds = %do.body27
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cpci_hp_start, i64 0, i64 0)) #9, !dbg !4975
  br label %if.end31, !dbg !4975

if.end31:                                         ; preds = %if.then29, %do.body27
  br label %do.end32, !dbg !4978

do.end32:                                         ; preds = %if.end31
  %12 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !4979
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %12, i32 0, i32 5, !dbg !4980
  %13 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !4980
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %13, i32 0, i32 1, !dbg !4981
  %14 = load i32 ()*, i32 ()** %enable_irq, align 8, !dbg !4981
  %call33 = call i32 %14() #8, !dbg !4979
  br label %if.end34, !dbg !4982

if.end34:                                         ; preds = %do.end32, %do.end24
  br label %do.body35, !dbg !4983

do.body35:                                        ; preds = %if.end34
  %15 = load i32, i32* @cpci_debug, align 4, !dbg !4984
  %tobool36 = icmp ne i32 %15, 0, !dbg !4984
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !4987

if.then37:                                        ; preds = %do.body35
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cpci_hp_start, i64 0, i64 0)) #9, !dbg !4984
  br label %if.end39, !dbg !4984

if.end39:                                         ; preds = %if.then37, %do.body35
  br label %do.end40, !dbg !4987

do.end40:                                         ; preds = %if.end39
  store i32 0, i32* %retval, align 4, !dbg !4988
  br label %return, !dbg !4988

return:                                           ; preds = %do.end40, %if.then17, %if.then13, %if.then6, %if.then2
  %16 = load i32, i32* %retval, align 4, !dbg !4989
  ret i32 %16, !dbg !4989
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4990 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  br label %do.body, !dbg !4997

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4999

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4997
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4997
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4997
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4999
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4997
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5001
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5002
  %conv = zext i1 %cmp to i32, !dbg !5002
  ret i32 %conv, !dbg !5003
}

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_slots(i32 %clear_ins) #0 !dbg !5004 {
entry:
  %retval = alloca i32, align 4
  %clear_ins.addr = alloca i32, align 4
  %slot = alloca %struct.slot*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.slot*, align 8
  %__mptr33 = alloca i8*, align 8
  %tmp37 = alloca %struct.slot*, align 8
  store i32 %clear_ins, i32* %clear_ins.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %clear_ins.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5007, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5009, metadata !DIExpression()), !dbg !5010
  br label %do.body, !dbg !5011

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @cpci_debug, align 4, !dbg !5012
  %tobool = icmp ne i32 %0, 0, !dbg !5012
  br i1 %tobool, label %if.then, label %if.end, !dbg !5015

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.init_slots, i64 0, i64 0)) #9, !dbg !5012
  br label %if.end, !dbg !5012

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5015

do.end:                                           ; preds = %if.end
  call void @down_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5016
  %1 = load i32, i32* @slots, align 4, !dbg !5017
  %tobool1 = icmp ne i32 %1, 0, !dbg !5017
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5019

if.then2:                                         ; preds = %do.end
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5020
  store i32 -1, i32* %retval, align 4, !dbg !5022
  br label %return, !dbg !5022

if.end3:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5023, metadata !DIExpression()), !dbg !5026
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slot_list, i32 0, i32 0), align 8, !dbg !5026
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !5026
  store i8* %3, i8** %__mptr, align 8, !dbg !5026
  br label %do.body4, !dbg !5026

do.body4:                                         ; preds = %if.end3
  br label %do.end5, !dbg !5027

do.end5:                                          ; preds = %do.body4
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5026
  %add.ptr = getelementptr i8, i8* %4, i64 -80, !dbg !5026
  %5 = bitcast i8* %add.ptr to %struct.slot*, !dbg !5026
  store %struct.slot* %5, %struct.slot** %tmp, align 8, !dbg !5027
  %6 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !5026
  store %struct.slot* %6, %struct.slot** %slot, align 8, !dbg !5029
  br label %for.cond, !dbg !5029

for.cond:                                         ; preds = %do.end36, %do.end5
  %7 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5030
  %slot_list = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 7, !dbg !5030
  %cmp = icmp eq %struct.list_head* %slot_list, @slot_list, !dbg !5030
  %lnot = xor i1 %cmp, true, !dbg !5030
  br i1 %lnot, label %for.body, label %for.end, !dbg !5029

for.body:                                         ; preds = %for.cond
  br label %do.body6, !dbg !5032

do.body6:                                         ; preds = %for.body
  %8 = load i32, i32* @cpci_debug, align 4, !dbg !5034
  %tobool7 = icmp ne i32 %8, 0, !dbg !5034
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !5037

if.then8:                                         ; preds = %do.body6
  %9 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5034
  %call9 = call i8* @slot_name(%struct.slot* %9) #8, !dbg !5034
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.init_slots, i64 0, i64 0), i8* %call9) #9, !dbg !5034
  br label %if.end11, !dbg !5034

if.end11:                                         ; preds = %if.then8, %do.body6
  br label %do.end12, !dbg !5037

do.end12:                                         ; preds = %if.end11
  %10 = load i32, i32* %clear_ins.addr, align 4, !dbg !5038
  %tobool13 = icmp ne i32 %10, 0, !dbg !5038
  br i1 %tobool13, label %land.lhs.true, label %if.end24, !dbg !5040

land.lhs.true:                                    ; preds = %do.end12
  %11 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5041
  %call14 = call i32 @cpci_check_and_clear_ins(%struct.slot* %11) #8, !dbg !5042
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5042
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !5043

if.then16:                                        ; preds = %land.lhs.true
  br label %do.body17, !dbg !5044

do.body17:                                        ; preds = %if.then16
  %12 = load i32, i32* @cpci_debug, align 4, !dbg !5045
  %tobool18 = icmp ne i32 %12, 0, !dbg !5045
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5048

if.then19:                                        ; preds = %do.body17
  %13 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5045
  %call20 = call i8* @slot_name(%struct.slot* %13) #8, !dbg !5045
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.init_slots, i64 0, i64 0), i8* %call20) #9, !dbg !5045
  br label %if.end22, !dbg !5045

if.end22:                                         ; preds = %if.then19, %do.body17
  br label %do.end23, !dbg !5048

do.end23:                                         ; preds = %if.end22
  br label %if.end24, !dbg !5048

if.end24:                                         ; preds = %do.end23, %land.lhs.true, %do.end12
  %14 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5049
  %bus = getelementptr inbounds %struct.slot, %struct.slot* %14, i32 0, i32 2, !dbg !5050
  %15 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5050
  %16 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5051
  %number = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 0, !dbg !5051
  %17 = load i8, i8* %number, align 8, !dbg !5051
  %conv = zext i8 %17 to i32, !dbg !5051
  %and = and i32 %conv, 31, !dbg !5051
  %shl = shl i32 %and, 3, !dbg !5051
  %call25 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %15, i32 %shl) #8, !dbg !5052
  store %struct.pci_dev* %call25, %struct.pci_dev** %dev, align 8, !dbg !5053
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5054
  %tobool26 = icmp ne %struct.pci_dev* %18, null, !dbg !5054
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !5056

if.then27:                                        ; preds = %if.end24
  %19 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5057
  %adapter_status = getelementptr inbounds %struct.slot, %struct.slot* %19, i32 0, i32 4, !dbg !5059
  %bf.load = load i8, i8* %adapter_status, align 8, !dbg !5060
  %bf.clear = and i8 %bf.load, -3, !dbg !5060
  %bf.set = or i8 %bf.clear, 2, !dbg !5060
  store i8 %bf.set, i8* %adapter_status, align 8, !dbg !5060
  %20 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5061
  %latch_status = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 4, !dbg !5062
  %bf.load28 = load i8, i8* %latch_status, align 8, !dbg !5063
  %bf.clear29 = and i8 %bf.load28, -2, !dbg !5063
  %bf.set30 = or i8 %bf.clear29, 1, !dbg !5063
  store i8 %bf.set30, i8* %latch_status, align 8, !dbg !5063
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5064
  %22 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5065
  %dev31 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 3, !dbg !5066
  store %struct.pci_dev* %21, %struct.pci_dev** %dev31, align 8, !dbg !5067
  br label %if.end32, !dbg !5068

if.end32:                                         ; preds = %if.then27, %if.end24
  br label %for.inc, !dbg !5069

for.inc:                                          ; preds = %if.end32
  call void @llvm.dbg.declare(metadata i8** %__mptr33, metadata !5070, metadata !DIExpression()), !dbg !5072
  %23 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5072
  %slot_list34 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 7, !dbg !5072
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list34, i32 0, i32 0, !dbg !5072
  %24 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5072
  %25 = bitcast %struct.list_head* %24 to i8*, !dbg !5072
  store i8* %25, i8** %__mptr33, align 8, !dbg !5072
  br label %do.body35, !dbg !5072

do.body35:                                        ; preds = %for.inc
  br label %do.end36, !dbg !5073

do.end36:                                         ; preds = %do.body35
  %26 = load i8*, i8** %__mptr33, align 8, !dbg !5072
  %add.ptr38 = getelementptr i8, i8* %26, i64 -80, !dbg !5072
  %27 = bitcast i8* %add.ptr38 to %struct.slot*, !dbg !5072
  store %struct.slot* %27, %struct.slot** %tmp37, align 8, !dbg !5073
  %28 = load %struct.slot*, %struct.slot** %tmp37, align 8, !dbg !5072
  store %struct.slot* %28, %struct.slot** %slot, align 8, !dbg !5030
  br label %for.cond, !dbg !5030, !llvm.loop !5075

for.end:                                          ; preds = %for.cond
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5077
  br label %do.body39, !dbg !5078

do.body39:                                        ; preds = %for.end
  %29 = load i32, i32* @cpci_debug, align 4, !dbg !5079
  %tobool40 = icmp ne i32 %29, 0, !dbg !5079
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !5082

if.then41:                                        ; preds = %do.body39
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.init_slots, i64 0, i64 0)) #9, !dbg !5079
  br label %if.end43, !dbg !5079

if.end43:                                         ; preds = %if.then41, %do.body39
  br label %do.end44, !dbg !5082

do.end44:                                         ; preds = %if.end43
  store i32 0, i32* %retval, align 4, !dbg !5083
  br label %return, !dbg !5083

return:                                           ; preds = %do.end44, %if.then2
  %30 = load i32, i32* %retval, align 4, !dbg !5084
  ret i32 %30, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpci_start_thread() #0 !dbg !5085 {
entry:
  %retval = alloca i32, align 4
  %__k = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  %__k4 = alloca %struct.task_struct*, align 8
  %tmp10 = alloca %struct.task_struct*, align 8
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5086
  %irq = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %0, i32 0, i32 0, !dbg !5088
  %1 = load i32, i32* %irq, align 8, !dbg !5088
  %tobool = icmp ne i32 %1, 0, !dbg !5086
  br i1 %tobool, label %if.then, label %if.else, !dbg !5089

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !5090, metadata !DIExpression()), !dbg !5092
  %call = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @event_thread, i8* null, i32 -1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !5092
  store %struct.task_struct* %call, %struct.task_struct** %__k, align 8, !dbg !5092
  %2 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5093
  %3 = bitcast %struct.task_struct* %2 to i8*, !dbg !5093
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #8, !dbg !5093
  br i1 %call1, label %if.end, label %if.then2, !dbg !5092

if.then2:                                         ; preds = %if.then
  %4 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5093
  %call3 = call i32 @wake_up_process(%struct.task_struct* %4) #8, !dbg !5093
  br label %if.end, !dbg !5093

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5092
  store %struct.task_struct* %5, %struct.task_struct** %tmp, align 8, !dbg !5093
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !5092
  store %struct.task_struct* %6, %struct.task_struct** @cpci_thread, align 8, !dbg !5095
  br label %if.end11, !dbg !5096

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k4, metadata !5097, metadata !DIExpression()), !dbg !5099
  %call5 = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @poll_thread, i8* null, i32 -1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !5099
  store %struct.task_struct* %call5, %struct.task_struct** %__k4, align 8, !dbg !5099
  %7 = load %struct.task_struct*, %struct.task_struct** %__k4, align 8, !dbg !5100
  %8 = bitcast %struct.task_struct* %7 to i8*, !dbg !5100
  %call6 = call zeroext i1 @IS_ERR(i8* %8) #8, !dbg !5100
  br i1 %call6, label %if.end9, label %if.then7, !dbg !5099

if.then7:                                         ; preds = %if.else
  %9 = load %struct.task_struct*, %struct.task_struct** %__k4, align 8, !dbg !5100
  %call8 = call i32 @wake_up_process(%struct.task_struct* %9) #8, !dbg !5100
  br label %if.end9, !dbg !5100

if.end9:                                          ; preds = %if.then7, %if.else
  %10 = load %struct.task_struct*, %struct.task_struct** %__k4, align 8, !dbg !5099
  store %struct.task_struct* %10, %struct.task_struct** %tmp10, align 8, !dbg !5100
  %11 = load %struct.task_struct*, %struct.task_struct** %tmp10, align 8, !dbg !5099
  store %struct.task_struct* %11, %struct.task_struct** @cpci_thread, align 8, !dbg !5102
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.end
  %12 = load %struct.task_struct*, %struct.task_struct** @cpci_thread, align 8, !dbg !5103
  %13 = bitcast %struct.task_struct* %12 to i8*, !dbg !5103
  %call12 = call zeroext i1 @IS_ERR(i8* %13) #8, !dbg !5105
  br i1 %call12, label %if.then13, label %if.end16, !dbg !5106

if.then13:                                        ; preds = %if.end11
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !5107
  %14 = load %struct.task_struct*, %struct.task_struct** @cpci_thread, align 8, !dbg !5109
  %15 = bitcast %struct.task_struct* %14 to i8*, !dbg !5109
  %call15 = call i64 @PTR_ERR(i8* %15) #8, !dbg !5110
  %conv = trunc i64 %call15 to i32, !dbg !5110
  store i32 %conv, i32* %retval, align 4, !dbg !5111
  br label %return, !dbg !5111

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* @thread_finished, align 4, !dbg !5112
  store i32 0, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

return:                                           ; preds = %if.end16, %if.then13
  %16 = load i32, i32* %retval, align 4, !dbg !5114
  ret i32 %16, !dbg !5114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hp_stop() #0 !dbg !5115 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5116
  %tobool = icmp ne %struct.cpci_hp_controller* %0, null, !dbg !5116
  br i1 %tobool, label %if.end, label %if.then, !dbg !5118

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end:                                           ; preds = %entry
  %1 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5120
  %irq = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %1, i32 0, i32 0, !dbg !5122
  %2 = load i32, i32* %irq, align 8, !dbg !5122
  %tobool1 = icmp ne i32 %2, 0, !dbg !5120
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !5123

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !5124

do.body:                                          ; preds = %if.then2
  %3 = load i32, i32* @cpci_debug, align 4, !dbg !5126
  %tobool3 = icmp ne i32 %3, 0, !dbg !5126
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5129

if.then4:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cpci_hp_stop, i64 0, i64 0)) #9, !dbg !5126
  br label %if.end5, !dbg !5126

if.end5:                                          ; preds = %if.then4, %do.body
  br label %do.end, !dbg !5129

do.end:                                           ; preds = %if.end5
  %4 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5130
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %4, i32 0, i32 5, !dbg !5131
  %5 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5131
  %disable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %5, i32 0, i32 2, !dbg !5132
  %6 = load i32 ()*, i32 ()** %disable_irq, align 8, !dbg !5132
  %call6 = call i32 %6() #8, !dbg !5130
  br label %if.end7, !dbg !5133

if.end7:                                          ; preds = %do.end, %if.end
  call void @cpci_stop_thread() #8, !dbg !5134
  store i32 0, i32* %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

return:                                           ; preds = %if.end7, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5136
  ret i32 %7, !dbg !5136
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cpci_hotplug_init(i32 %debug) #4 section ".init.text" !dbg !5137 {
entry:
  %debug.addr = alloca i32, align 4
  store i32 %debug, i32* %debug.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %debug.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  %0 = load i32, i32* %debug.addr, align 4, !dbg !5140
  store i32 %0, i32* @cpci_debug, align 4, !dbg !5141
  ret i32 0, !dbg !5142
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5143 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5147, metadata !DIExpression()), !dbg !5152
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5154, metadata !DIExpression()), !dbg !5155
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load i64, i64* %size.addr, align 8, !dbg !5158
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5160
  br i1 %1, label %if.then, label %if.end447, !dbg !5161

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5162
  %tobool = icmp ne i64 %2, 0, !dbg !5162
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5165

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5166
  br label %return, !dbg !5166

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5167
  %cmp = icmp ult i64 %3, 4096, !dbg !5169
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5170

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5171
  br label %return, !dbg !5171

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub = sub i64 %4, 1, !dbg !5172
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5172
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5172

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub4 = sub i64 %6, 1, !dbg !5172
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5172
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5172

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub6 = sub i64 %8, 1, !dbg !5172
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5172
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5172

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5172

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub9 = sub i64 %9, 1, !dbg !5172
  %and = and i64 %sub9, -9223372036854775808, !dbg !5172
  %tobool10 = icmp ne i64 %and, 0, !dbg !5172
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5172

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5172

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub13 = sub i64 %10, 1, !dbg !5172
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5172
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5172
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5172

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5172

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub18 = sub i64 %11, 1, !dbg !5172
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5172
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5172
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5172

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5172

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub23 = sub i64 %12, 1, !dbg !5172
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5172
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5172
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5172

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5172

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub28 = sub i64 %13, 1, !dbg !5172
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5172
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5172
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5172

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5172

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub33 = sub i64 %14, 1, !dbg !5172
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5172
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5172
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5172

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5172

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub38 = sub i64 %15, 1, !dbg !5172
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5172
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5172
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5172

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5172

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub43 = sub i64 %16, 1, !dbg !5172
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5172
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5172
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5172

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5172

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub48 = sub i64 %17, 1, !dbg !5172
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5172
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5172
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5172

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5172

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub53 = sub i64 %18, 1, !dbg !5172
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5172
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5172
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5172

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5172

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub58 = sub i64 %19, 1, !dbg !5172
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5172
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5172
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5172

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5172

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub63 = sub i64 %20, 1, !dbg !5172
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5172
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5172
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5172

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5172

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub68 = sub i64 %21, 1, !dbg !5172
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5172
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5172
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5172

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5172

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub73 = sub i64 %22, 1, !dbg !5172
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5172
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5172
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5172

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5172

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub78 = sub i64 %23, 1, !dbg !5172
  %and79 = and i64 %sub78, 562949953421312, !dbg !5172
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5172
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5172

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5172

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub83 = sub i64 %24, 1, !dbg !5172
  %and84 = and i64 %sub83, 281474976710656, !dbg !5172
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5172
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5172

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5172

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub88 = sub i64 %25, 1, !dbg !5172
  %and89 = and i64 %sub88, 140737488355328, !dbg !5172
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5172
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5172

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5172

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub93 = sub i64 %26, 1, !dbg !5172
  %and94 = and i64 %sub93, 70368744177664, !dbg !5172
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5172
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5172

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5172

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub98 = sub i64 %27, 1, !dbg !5172
  %and99 = and i64 %sub98, 35184372088832, !dbg !5172
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5172
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5172

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5172

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub103 = sub i64 %28, 1, !dbg !5172
  %and104 = and i64 %sub103, 17592186044416, !dbg !5172
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5172
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5172

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5172

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub108 = sub i64 %29, 1, !dbg !5172
  %and109 = and i64 %sub108, 8796093022208, !dbg !5172
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5172
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5172

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5172

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub113 = sub i64 %30, 1, !dbg !5172
  %and114 = and i64 %sub113, 4398046511104, !dbg !5172
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5172
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5172

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5172

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub118 = sub i64 %31, 1, !dbg !5172
  %and119 = and i64 %sub118, 2199023255552, !dbg !5172
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5172
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5172

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5172

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub123 = sub i64 %32, 1, !dbg !5172
  %and124 = and i64 %sub123, 1099511627776, !dbg !5172
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5172
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5172

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5172

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub128 = sub i64 %33, 1, !dbg !5172
  %and129 = and i64 %sub128, 549755813888, !dbg !5172
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5172
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5172

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5172

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub133 = sub i64 %34, 1, !dbg !5172
  %and134 = and i64 %sub133, 274877906944, !dbg !5172
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5172
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5172

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5172

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub138 = sub i64 %35, 1, !dbg !5172
  %and139 = and i64 %sub138, 137438953472, !dbg !5172
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5172
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5172

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5172

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub143 = sub i64 %36, 1, !dbg !5172
  %and144 = and i64 %sub143, 68719476736, !dbg !5172
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5172
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5172

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5172

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub148 = sub i64 %37, 1, !dbg !5172
  %and149 = and i64 %sub148, 34359738368, !dbg !5172
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5172
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5172

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5172

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub153 = sub i64 %38, 1, !dbg !5172
  %and154 = and i64 %sub153, 17179869184, !dbg !5172
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5172
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5172

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5172

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub158 = sub i64 %39, 1, !dbg !5172
  %and159 = and i64 %sub158, 8589934592, !dbg !5172
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5172
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5172

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5172

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub163 = sub i64 %40, 1, !dbg !5172
  %and164 = and i64 %sub163, 4294967296, !dbg !5172
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5172
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5172

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5172

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub168 = sub i64 %41, 1, !dbg !5172
  %and169 = and i64 %sub168, 2147483648, !dbg !5172
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5172
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5172

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5172

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub173 = sub i64 %42, 1, !dbg !5172
  %and174 = and i64 %sub173, 1073741824, !dbg !5172
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5172
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5172

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5172

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub178 = sub i64 %43, 1, !dbg !5172
  %and179 = and i64 %sub178, 536870912, !dbg !5172
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5172
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5172

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5172

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub183 = sub i64 %44, 1, !dbg !5172
  %and184 = and i64 %sub183, 268435456, !dbg !5172
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5172
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5172

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5172

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub188 = sub i64 %45, 1, !dbg !5172
  %and189 = and i64 %sub188, 134217728, !dbg !5172
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5172
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5172

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5172

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub193 = sub i64 %46, 1, !dbg !5172
  %and194 = and i64 %sub193, 67108864, !dbg !5172
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5172
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5172

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5172

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub198 = sub i64 %47, 1, !dbg !5172
  %and199 = and i64 %sub198, 33554432, !dbg !5172
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5172
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5172

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5172

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub203 = sub i64 %48, 1, !dbg !5172
  %and204 = and i64 %sub203, 16777216, !dbg !5172
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5172
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5172

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5172

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub208 = sub i64 %49, 1, !dbg !5172
  %and209 = and i64 %sub208, 8388608, !dbg !5172
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5172
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5172

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5172

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub213 = sub i64 %50, 1, !dbg !5172
  %and214 = and i64 %sub213, 4194304, !dbg !5172
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5172
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5172

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5172

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub218 = sub i64 %51, 1, !dbg !5172
  %and219 = and i64 %sub218, 2097152, !dbg !5172
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5172
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5172

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5172

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub223 = sub i64 %52, 1, !dbg !5172
  %and224 = and i64 %sub223, 1048576, !dbg !5172
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5172
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5172

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5172

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub228 = sub i64 %53, 1, !dbg !5172
  %and229 = and i64 %sub228, 524288, !dbg !5172
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5172
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5172

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5172

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub233 = sub i64 %54, 1, !dbg !5172
  %and234 = and i64 %sub233, 262144, !dbg !5172
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5172
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5172

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5172

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub238 = sub i64 %55, 1, !dbg !5172
  %and239 = and i64 %sub238, 131072, !dbg !5172
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5172
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5172

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5172

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub243 = sub i64 %56, 1, !dbg !5172
  %and244 = and i64 %sub243, 65536, !dbg !5172
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5172
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5172

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5172

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub248 = sub i64 %57, 1, !dbg !5172
  %and249 = and i64 %sub248, 32768, !dbg !5172
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5172
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5172

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5172

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub253 = sub i64 %58, 1, !dbg !5172
  %and254 = and i64 %sub253, 16384, !dbg !5172
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5172
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5172

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5172

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub258 = sub i64 %59, 1, !dbg !5172
  %and259 = and i64 %sub258, 8192, !dbg !5172
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5172
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5172

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5172

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub263 = sub i64 %60, 1, !dbg !5172
  %and264 = and i64 %sub263, 4096, !dbg !5172
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5172
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5172

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5172

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub268 = sub i64 %61, 1, !dbg !5172
  %and269 = and i64 %sub268, 2048, !dbg !5172
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5172
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5172

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5172

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub273 = sub i64 %62, 1, !dbg !5172
  %and274 = and i64 %sub273, 1024, !dbg !5172
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5172
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5172

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5172

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub278 = sub i64 %63, 1, !dbg !5172
  %and279 = and i64 %sub278, 512, !dbg !5172
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5172
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5172

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5172

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub283 = sub i64 %64, 1, !dbg !5172
  %and284 = and i64 %sub283, 256, !dbg !5172
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5172
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5172

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5172

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub288 = sub i64 %65, 1, !dbg !5172
  %and289 = and i64 %sub288, 128, !dbg !5172
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5172
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5172

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5172

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub293 = sub i64 %66, 1, !dbg !5172
  %and294 = and i64 %sub293, 64, !dbg !5172
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5172
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5172

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5172

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub298 = sub i64 %67, 1, !dbg !5172
  %and299 = and i64 %sub298, 32, !dbg !5172
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5172
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5172

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5172

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub303 = sub i64 %68, 1, !dbg !5172
  %and304 = and i64 %sub303, 16, !dbg !5172
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5172
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5172

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5172

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub308 = sub i64 %69, 1, !dbg !5172
  %and309 = and i64 %sub308, 8, !dbg !5172
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5172
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5172

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5172

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub313 = sub i64 %70, 1, !dbg !5172
  %and314 = and i64 %sub313, 4, !dbg !5172
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5172
  %71 = zext i1 %tobool315 to i64, !dbg !5172
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5172
  br label %cond.end, !dbg !5172

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5172
  br label %cond.end317, !dbg !5172

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5172
  br label %cond.end319, !dbg !5172

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5172
  br label %cond.end321, !dbg !5172

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5172
  br label %cond.end323, !dbg !5172

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5172
  br label %cond.end325, !dbg !5172

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5172
  br label %cond.end327, !dbg !5172

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5172
  br label %cond.end329, !dbg !5172

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5172
  br label %cond.end331, !dbg !5172

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5172
  br label %cond.end333, !dbg !5172

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5172
  br label %cond.end335, !dbg !5172

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5172
  br label %cond.end337, !dbg !5172

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5172
  br label %cond.end339, !dbg !5172

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5172
  br label %cond.end341, !dbg !5172

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5172
  br label %cond.end343, !dbg !5172

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5172
  br label %cond.end345, !dbg !5172

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5172
  br label %cond.end347, !dbg !5172

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5172
  br label %cond.end349, !dbg !5172

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5172
  br label %cond.end351, !dbg !5172

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5172
  br label %cond.end353, !dbg !5172

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5172
  br label %cond.end355, !dbg !5172

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5172
  br label %cond.end357, !dbg !5172

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5172
  br label %cond.end359, !dbg !5172

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5172
  br label %cond.end361, !dbg !5172

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5172
  br label %cond.end363, !dbg !5172

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5172
  br label %cond.end365, !dbg !5172

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5172
  br label %cond.end367, !dbg !5172

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5172
  br label %cond.end369, !dbg !5172

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5172
  br label %cond.end371, !dbg !5172

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5172
  br label %cond.end373, !dbg !5172

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5172
  br label %cond.end375, !dbg !5172

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5172
  br label %cond.end377, !dbg !5172

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5172
  br label %cond.end379, !dbg !5172

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5172
  br label %cond.end381, !dbg !5172

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5172
  br label %cond.end383, !dbg !5172

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5172
  br label %cond.end385, !dbg !5172

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5172
  br label %cond.end387, !dbg !5172

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5172
  br label %cond.end389, !dbg !5172

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5172
  br label %cond.end391, !dbg !5172

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5172
  br label %cond.end393, !dbg !5172

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5172
  br label %cond.end395, !dbg !5172

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5172
  br label %cond.end397, !dbg !5172

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5172
  br label %cond.end399, !dbg !5172

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5172
  br label %cond.end401, !dbg !5172

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5172
  br label %cond.end403, !dbg !5172

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5172
  br label %cond.end405, !dbg !5172

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5172
  br label %cond.end407, !dbg !5172

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5172
  br label %cond.end409, !dbg !5172

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5172
  br label %cond.end411, !dbg !5172

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5172
  br label %cond.end413, !dbg !5172

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5172
  br label %cond.end415, !dbg !5172

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5172
  br label %cond.end417, !dbg !5172

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5172
  br label %cond.end419, !dbg !5172

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5172
  br label %cond.end421, !dbg !5172

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5172
  br label %cond.end423, !dbg !5172

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5172
  br label %cond.end425, !dbg !5172

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5172
  br label %cond.end427, !dbg !5172

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5172
  br label %cond.end429, !dbg !5172

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5172
  br label %cond.end431, !dbg !5172

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5172
  br label %cond.end433, !dbg !5172

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5172
  br label %cond.end435, !dbg !5172

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5172
  br label %cond.end437, !dbg !5172

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5172
  br label %cond.end440, !dbg !5172

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5172

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5172
  br label %cond.end444, !dbg !5172

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5172
  %sub443 = sub i64 %72, 1, !dbg !5172
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5172
  br label %cond.end444, !dbg !5172

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5172
  %sub446 = sub i32 %cond445, 12, !dbg !5173
  %add = add i32 %sub446, 1, !dbg !5174
  store i32 %add, i32* %retval, align 4, !dbg !5175
  br label %return, !dbg !5175

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5176
  %dec = add i64 %73, -1, !dbg !5176
  store i64 %dec, i64* %size.addr, align 8, !dbg !5176
  %74 = load i64, i64* %size.addr, align 8, !dbg !5177
  %shr = lshr i64 %74, 12, !dbg !5177
  store i64 %shr, i64* %size.addr, align 8, !dbg !5177
  %75 = load i64, i64* %size.addr, align 8, !dbg !5178
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5155
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5179
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5180
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5179, !srcloc !5181
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5179
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5182
  %add.i = add i32 %79, 1, !dbg !5183
  store i32 %add.i, i32* %retval, align 4, !dbg !5184
  br label %return, !dbg !5184

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5185
  ret i32 %80, !dbg !5185
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5186 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5147, metadata !DIExpression()), !dbg !5190
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5154, metadata !DIExpression()), !dbg !5192
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  %0 = load i64, i64* %n.addr, align 8, !dbg !5195
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5192
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5196
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5197
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5196, !srcloc !5181
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5196
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5198
  %add.i = add i32 %4, 1, !dbg !5199
  %sub = sub i32 %add.i, 1, !dbg !5200
  ret i32 %sub, !dbg !5201
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5202 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5214
  ret i8* %0, !dbg !5215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enable_slot(%struct.hotplug_slot* %hotplug_slot) #0 !dbg !5216 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %slot = alloca %struct.slot*, align 8
  %retval1 = alloca i32, align 4
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5219, metadata !DIExpression()), !dbg !5220
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5221
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5222
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5220
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5223, metadata !DIExpression()), !dbg !5224
  store i32 0, i32* %retval1, align 4, !dbg !5224
  br label %do.body, !dbg !5225

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @cpci_debug, align 4, !dbg !5226
  %tobool = icmp ne i32 %1, 0, !dbg !5226
  br i1 %tobool, label %if.then, label %if.end, !dbg !5229

if.then:                                          ; preds = %do.body
  %2 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5226
  %call2 = call i8* @slot_name(%struct.slot* %2) #8, !dbg !5226
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.enable_slot, i64 0, i64 0), i8* %call2) #9, !dbg !5226
  br label %if.end, !dbg !5226

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5229

do.end:                                           ; preds = %if.end
  %3 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5230
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %3, i32 0, i32 5, !dbg !5232
  %4 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5232
  %set_power = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %4, i32 0, i32 6, !dbg !5233
  %5 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %set_power, align 8, !dbg !5233
  %tobool4 = icmp ne i32 (%struct.slot*, i32)* %5, null, !dbg !5230
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !5234

if.then5:                                         ; preds = %do.end
  %6 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5235
  %ops6 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %6, i32 0, i32 5, !dbg !5236
  %7 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops6, align 8, !dbg !5236
  %set_power7 = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %7, i32 0, i32 6, !dbg !5237
  %8 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %set_power7, align 8, !dbg !5237
  %9 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5238
  %call8 = call i32 %8(%struct.slot* %9, i32 1) #8, !dbg !5235
  store i32 %call8, i32* %retval1, align 4, !dbg !5239
  br label %if.end9, !dbg !5240

if.end9:                                          ; preds = %if.then5, %do.end
  %10 = load i32, i32* %retval1, align 4, !dbg !5241
  ret i32 %10, !dbg !5242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @disable_slot(%struct.hotplug_slot* %hotplug_slot) #0 !dbg !5243 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5244, metadata !DIExpression()), !dbg !5250
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5257, metadata !DIExpression()), !dbg !5265
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5267, metadata !DIExpression()), !dbg !5268
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5269, metadata !DIExpression()), !dbg !5270
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %slot = alloca %struct.slot*, align 8
  %retval1 = alloca i32, align 4
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5273, metadata !DIExpression()), !dbg !5274
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5275
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5276
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5274
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 0, i32* %retval1, align 4, !dbg !5278
  br label %do.body, !dbg !5279

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @cpci_debug, align 4, !dbg !5280
  %tobool = icmp ne i32 %1, 0, !dbg !5280
  br i1 %tobool, label %if.then, label %if.end, !dbg !5283

if.then:                                          ; preds = %do.body
  %2 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5280
  %call2 = call i8* @slot_name(%struct.slot* %2) #8, !dbg !5280
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.disable_slot, i64 0, i64 0), i8* %call2) #9, !dbg !5280
  br label %if.end, !dbg !5280

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5283

do.end:                                           ; preds = %if.end
  call void @down_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5284
  br label %do.body4, !dbg !5285

do.body4:                                         ; preds = %do.end
  %3 = load i32, i32* @cpci_debug, align 4, !dbg !5286
  %tobool5 = icmp ne i32 %3, 0, !dbg !5286
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !5289

if.then6:                                         ; preds = %do.body4
  %4 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5286
  %call7 = call i8* @slot_name(%struct.slot* %4) #8, !dbg !5286
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.disable_slot, i64 0, i64 0), i8* %call7) #9, !dbg !5286
  br label %if.end9, !dbg !5286

if.end9:                                          ; preds = %if.then6, %do.body4
  br label %do.end10, !dbg !5289

do.end10:                                         ; preds = %if.end9
  %5 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5290
  %call11 = call i32 @cpci_unconfigure_slot(%struct.slot* %5) #8, !dbg !5291
  store i32 %call11, i32* %retval1, align 4, !dbg !5292
  %6 = load i32, i32* %retval1, align 4, !dbg !5293
  %tobool12 = icmp ne i32 %6, 0, !dbg !5293
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !5295

if.then13:                                        ; preds = %do.end10
  %7 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5296
  %call14 = call i8* @slot_name(%struct.slot* %7) #8, !dbg !5296
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.disable_slot, i64 0, i64 0), i8* %call14) #9, !dbg !5296
  br label %disable_error, !dbg !5298

if.end16:                                         ; preds = %do.end10
  br label %do.body17, !dbg !5299

do.body17:                                        ; preds = %if.end16
  %8 = load i32, i32* @cpci_debug, align 4, !dbg !5300
  %tobool18 = icmp ne i32 %8, 0, !dbg !5300
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !5303

if.then19:                                        ; preds = %do.body17
  %9 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5300
  %call20 = call i8* @slot_name(%struct.slot* %9) #8, !dbg !5300
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.disable_slot, i64 0, i64 0), i8* %call20) #9, !dbg !5300
  br label %if.end22, !dbg !5300

if.end22:                                         ; preds = %if.then19, %do.body17
  br label %do.end23, !dbg !5303

do.end23:                                         ; preds = %if.end22
  %10 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5304
  %call24 = call i32 @cpci_clear_ext(%struct.slot* %10) #8, !dbg !5306
  %tobool25 = icmp ne i32 %call24, 0, !dbg !5306
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !5307

if.then26:                                        ; preds = %do.end23
  %11 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5308
  %call27 = call i8* @slot_name(%struct.slot* %11) #8, !dbg !5308
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.disable_slot, i64 0, i64 0), i8* %call27) #9, !dbg !5308
  store i32 -19, i32* %retval1, align 4, !dbg !5310
  br label %disable_error, !dbg !5311

if.end29:                                         ; preds = %do.end23
  %12 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5312
  %call30 = call i32 @cpci_led_on(%struct.slot* %12) #8, !dbg !5313
  %13 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5314
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %13, i32 0, i32 5, !dbg !5316
  %14 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5316
  %set_power = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %14, i32 0, i32 6, !dbg !5317
  %15 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %set_power, align 8, !dbg !5317
  %tobool31 = icmp ne i32 (%struct.slot*, i32)* %15, null, !dbg !5314
  br i1 %tobool31, label %if.then32, label %if.end39, !dbg !5318

if.then32:                                        ; preds = %if.end29
  %16 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5319
  %ops33 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %16, i32 0, i32 5, !dbg !5321
  %17 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops33, align 8, !dbg !5321
  %set_power34 = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %17, i32 0, i32 6, !dbg !5322
  %18 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %set_power34, align 8, !dbg !5322
  %19 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5323
  %call35 = call i32 %18(%struct.slot* %19, i32 0) #8, !dbg !5319
  store i32 %call35, i32* %retval1, align 4, !dbg !5324
  %20 = load i32, i32* %retval1, align 4, !dbg !5325
  %tobool36 = icmp ne i32 %20, 0, !dbg !5325
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5327

if.then37:                                        ; preds = %if.then32
  br label %disable_error, !dbg !5328

if.end38:                                         ; preds = %if.then32
  br label %if.end39, !dbg !5329

if.end39:                                         ; preds = %if.end38, %if.end29
  %21 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5330
  %adapter_status = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 4, !dbg !5331
  %bf.load = load i8, i8* %adapter_status, align 8, !dbg !5332
  %bf.clear = and i8 %bf.load, -3, !dbg !5332
  store i8 %bf.clear, i8* %adapter_status, align 8, !dbg !5332
  %22 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5333
  %extracting = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 5, !dbg !5334
  %23 = load i32, i32* %extracting, align 4, !dbg !5334
  %tobool40 = icmp ne i32 %23, 0, !dbg !5333
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !5335

if.then41:                                        ; preds = %if.end39
  %24 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5336
  %extracting42 = getelementptr inbounds %struct.slot, %struct.slot* %24, i32 0, i32 5, !dbg !5337
  store i32 0, i32* %extracting42, align 4, !dbg !5338
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i, align 8
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5339
  %26 = bitcast %struct.atomic_t* %25 to i8*, !dbg !5339
  store i8* %26, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %27 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5340
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !5341
  %conv.i.i = trunc i64 %28 to i32, !dbg !5341
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %27, i32 %conv.i.i) #12, !dbg !5342
  %29 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5343
  %30 = load i64, i64* %size.addr.i.i, align 8, !dbg !5343
  call void @kcsan_check_access(i8* %29, i64 %30, i32 7) #12, !dbg !5343
  %31 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5344
  store %struct.atomic_t* %31, %struct.atomic_t** %v.addr.i1.i, align 8
  %32 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5345
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %32, i32 0, i32 0, !dbg !5346
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #10, !dbg !5347, !srcloc !5348
  br label %if.end43, !dbg !5349

if.end43:                                         ; preds = %if.then41, %if.end39
  br label %disable_error, !dbg !5334

disable_error:                                    ; preds = %if.end43, %if.then37, %if.then26, %if.then13
  call void @llvm.dbg.label(metadata !5350), !dbg !5351
  call void @up_write(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5352
  %33 = load i32, i32* %retval1, align 4, !dbg !5353
  ret i32 %33, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_attention_status(%struct.hotplug_slot* %hotplug_slot, i8 zeroext %status) #0 !dbg !5355 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %status.addr = alloca i8, align 1
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5360
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5361
  %1 = load i8, i8* %status.addr, align 1, !dbg !5362
  %conv = zext i8 %1 to i32, !dbg !5362
  %call1 = call i32 @cpci_set_attention_status(%struct.slot* %call, i32 %conv) #8, !dbg !5363
  ret i32 %call1, !dbg !5364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_power_status(%struct.hotplug_slot* %hotplug_slot, i8* %value) #0 !dbg !5365 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %slot = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5370, metadata !DIExpression()), !dbg !5371
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5372
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5373
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5371
  %1 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5374
  %call1 = call zeroext i8 @cpci_get_power_status(%struct.slot* %1) #8, !dbg !5375
  %2 = load i8*, i8** %value.addr, align 8, !dbg !5376
  store i8 %call1, i8* %2, align 1, !dbg !5377
  ret i32 0, !dbg !5378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_attention_status(%struct.hotplug_slot* %hotplug_slot, i8* %value) #0 !dbg !5379 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %slot = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5380, metadata !DIExpression()), !dbg !5381
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5384, metadata !DIExpression()), !dbg !5385
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5386
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5387
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5385
  %1 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5388
  %call1 = call zeroext i8 @cpci_get_attention_status(%struct.slot* %1) #8, !dbg !5389
  %2 = load i8*, i8** %value.addr, align 8, !dbg !5390
  store i8 %call1, i8* %2, align 1, !dbg !5391
  ret i32 0, !dbg !5392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_latch_status(%struct.hotplug_slot* %hotplug_slot, i8* %value) #0 !dbg !5393 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %slot = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5398, metadata !DIExpression()), !dbg !5399
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5400
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5401
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5399
  %1 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5402
  %latch_status = getelementptr inbounds %struct.slot, %struct.slot* %1, i32 0, i32 4, !dbg !5403
  %bf.load = load i8, i8* %latch_status, align 8, !dbg !5403
  %bf.clear = and i8 %bf.load, 1, !dbg !5403
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5403
  %conv = trunc i32 %bf.cast to i8, !dbg !5402
  %2 = load i8*, i8** %value.addr, align 8, !dbg !5404
  store i8 %conv, i8* %2, align 1, !dbg !5405
  ret i32 0, !dbg !5406
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_adapter_status(%struct.hotplug_slot* %hotplug_slot, i8* %value) #0 !dbg !5407 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %value.addr = alloca i8*, align 8
  %slot = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i8* %value, i8** %value.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %value.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5412, metadata !DIExpression()), !dbg !5413
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5414
  %call = call %struct.slot* @to_slot(%struct.hotplug_slot* %0) #8, !dbg !5415
  store %struct.slot* %call, %struct.slot** %slot, align 8, !dbg !5413
  %1 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5416
  %adapter_status = getelementptr inbounds %struct.slot, %struct.slot* %1, i32 0, i32 4, !dbg !5417
  %bf.load = load i8, i8* %adapter_status, align 8, !dbg !5417
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5417
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5417
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5417
  %conv = trunc i32 %bf.cast to i8, !dbg !5416
  %2 = load i8*, i8** %value.addr, align 8, !dbg !5418
  store i8 %conv, i8* %2, align 1, !dbg !5419
  ret i32 0, !dbg !5420
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.slot* @to_slot(%struct.hotplug_slot* %hotplug_slot) #0 !dbg !5421 {
entry:
  %hotplug_slot.addr = alloca %struct.hotplug_slot*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %hotplug_slot, %struct.hotplug_slot** %hotplug_slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %hotplug_slot.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5426, metadata !DIExpression()), !dbg !5428
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %hotplug_slot.addr, align 8, !dbg !5428
  %1 = bitcast %struct.hotplug_slot* %0 to i8*, !dbg !5428
  store i8* %1, i8** %__mptr, align 8, !dbg !5428
  br label %do.body, !dbg !5428

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5429

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5428
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !5428
  %3 = bitcast i8* %add.ptr to %struct.slot*, !dbg !5428
  store %struct.slot* %3, %struct.slot** %tmp, align 8, !dbg !5429
  %4 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !5428
  ret %struct.slot* %4, !dbg !5431
}

; Function Attrs: noredzone
declare dso_local i32 @cpci_unconfigure_slot(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_clear_ext(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_led_on(%struct.slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5432 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5436, metadata !DIExpression()), !dbg !5437
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5438, metadata !DIExpression()), !dbg !5439
  ret i1 true, !dbg !5440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5441 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5445, metadata !DIExpression()), !dbg !5446
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5449, metadata !DIExpression()), !dbg !5450
  ret void, !dbg !5451
}

; Function Attrs: noredzone
declare dso_local i32 @cpci_set_attention_status(%struct.slot*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @cpci_get_power_status(%struct.slot* %slot) #0 !dbg !5452 {
entry:
  %slot.addr = alloca %struct.slot*, align 8
  %power = alloca i8, align 1
  store %struct.slot* %slot, %struct.slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.slot** %slot.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata i8* %power, metadata !5455, metadata !DIExpression()), !dbg !5456
  store i8 1, i8* %power, align 1, !dbg !5456
  %0 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5457
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %0, i32 0, i32 5, !dbg !5459
  %1 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5459
  %get_power = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %1, i32 0, i32 5, !dbg !5460
  %2 = load i8 (%struct.slot*)*, i8 (%struct.slot*)** %get_power, align 8, !dbg !5460
  %tobool = icmp ne i8 (%struct.slot*)* %2, null, !dbg !5457
  br i1 %tobool, label %if.then, label %if.end, !dbg !5461

if.then:                                          ; preds = %entry
  %3 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5462
  %ops1 = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %3, i32 0, i32 5, !dbg !5463
  %4 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops1, align 8, !dbg !5463
  %get_power2 = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %4, i32 0, i32 5, !dbg !5464
  %5 = load i8 (%struct.slot*)*, i8 (%struct.slot*)** %get_power2, align 8, !dbg !5464
  %6 = load %struct.slot*, %struct.slot** %slot.addr, align 8, !dbg !5465
  %call = call zeroext i8 %5(%struct.slot* %6) #8, !dbg !5462
  store i8 %call, i8* %power, align 1, !dbg !5466
  br label %if.end, !dbg !5467

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8, i8* %power, align 1, !dbg !5468
  ret i8 %7, !dbg !5469
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @cpci_get_attention_status(%struct.slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @hotplug_slot_name(%struct.hotplug_slot* %slot) #0 !dbg !5470 {
entry:
  %slot.addr = alloca %struct.hotplug_slot*, align 8
  store %struct.hotplug_slot* %slot, %struct.hotplug_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hotplug_slot** %slot.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load %struct.hotplug_slot*, %struct.hotplug_slot** %slot.addr, align 8, !dbg !5477
  %pci_slot = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %0, i32 0, i32 2, !dbg !5478
  %1 = load %struct.pci_slot*, %struct.pci_slot** %pci_slot, align 8, !dbg !5478
  %call = call i8* @pci_slot_name(%struct.pci_slot* %1) #8, !dbg !5479
  ret i8* %call, !dbg !5480
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_slot_name(%struct.pci_slot* %slot) #0 !dbg !5481 {
entry:
  %slot.addr = alloca %struct.pci_slot*, align 8
  store %struct.pci_slot* %slot, %struct.pci_slot** %slot.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_slot** %slot.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  %0 = load %struct.pci_slot*, %struct.pci_slot** %slot.addr, align 8, !dbg !5488
  %kobj = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %0, i32 0, i32 4, !dbg !5489
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #8, !dbg !5490
  ret i8* %call, !dbg !5491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5492 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5499
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5500
  %1 = load i8*, i8** %name, align 8, !dbg !5500
  ret i8* %1, !dbg !5501
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5502 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5505, metadata !DIExpression()), !dbg !5506
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5507, metadata !DIExpression()), !dbg !5508
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5511
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5513
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5514
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5515
  br i1 %call, label %if.end, label %if.then, !dbg !5516

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5517

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5518
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5519
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5520
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5521
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5522
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5523
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5524
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5525
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5526
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5527
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5528
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5529
  br label %do.body, !dbg !5530

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5531

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5533

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5531

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5535
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5535
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5535
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5535
  br label %do.end7, !dbg !5535

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5531

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5538 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  ret i1 true, !dbg !5547
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5548 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5551
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5553
  br i1 %call, label %if.end, label %if.then, !dbg !5554

if.then:                                          ; preds = %entry
  br label %return, !dbg !5555

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5556
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5557
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5557
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5558
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5559
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5559
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5560
  br label %return, !dbg !5561

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5562 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  ret i1 true, !dbg !5567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5568 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5569, metadata !DIExpression()), !dbg !5570
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5571, metadata !DIExpression()), !dbg !5572
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5573
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5574
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5575
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5576
  br label %do.body, !dbg !5577

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5578

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5578

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5582
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5582
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5582
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5582
  br label %do.end5, !dbg !5582

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5578

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5584
}

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @request_threaded_irq(i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @kthread_stop(%struct.task_struct*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_check_and_clear_ins(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @event_thread(i8* %data) #0 !dbg !5585 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5586, metadata !DIExpression()), !dbg !5592
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5597, metadata !DIExpression()), !dbg !5599
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5601, metadata !DIExpression()), !dbg !5602
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5603, metadata !DIExpression()), !dbg !5604
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5605, metadata !DIExpression()), !dbg !5611
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5616, metadata !DIExpression()), !dbg !5618
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5619, metadata !DIExpression()), !dbg !5621
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %data.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5622, metadata !DIExpression()), !dbg !5623
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5624, metadata !DIExpression()), !dbg !5625
  br label %do.body, !dbg !5626

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @cpci_debug, align 4, !dbg !5627
  %tobool = icmp ne i32 %0, 0, !dbg !5627
  br i1 %tobool, label %if.then, label %if.end, !dbg !5630

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_thread, i64 0, i64 0)) #9, !dbg !5627
  br label %if.end, !dbg !5627

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5630

do.end:                                           ; preds = %if.end
  br label %while.body, !dbg !5631

while.body:                                       ; preds = %do.end, %do.end45
  br label %do.body1, !dbg !5632

do.body1:                                         ; preds = %while.body
  %1 = load i32, i32* @cpci_debug, align 4, !dbg !5633
  %tobool2 = icmp ne i32 %1, 0, !dbg !5633
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5636

if.then3:                                         ; preds = %do.body1
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !5633
  br label %if.end5, !dbg !5633

if.end5:                                          ; preds = %if.then3, %do.body1
  br label %do.end6, !dbg !5636

do.end6:                                          ; preds = %if.end5
  br label %do.body7, !dbg !5637

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !5638

do.body8:                                         ; preds = %do.body7
  br label %do.body9, !dbg !5639

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5640

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !5639

do.body11:                                        ; preds = %do.end10
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5618
  %2 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5618
  %3 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5621, !srcloc !5642
  store i64 %3, i64* %pfo_val__.i, align 8, !dbg !5621
  %4 = load i64, i64* %pfo_val__.i, align 8, !dbg !5621
  %5 = inttoptr i64 %4 to %struct.task_struct*, !dbg !5621
  store %struct.task_struct* %5, %struct.task_struct** %tmp.i, align 8, !dbg !5621
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5621
  store %struct.task_struct* %6, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5611
  %7 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5611
  store %struct.task_struct* %7, %struct.task_struct** %tmp1.i, align 8, !dbg !5611
  %8 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5611
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 1, !dbg !5643
  store volatile i64 1, i64* %state, align 16, !dbg !5643
  br label %do.end13, !dbg !5643

do.end13:                                         ; preds = %do.body11
  br label %do.end14, !dbg !5639

do.end14:                                         ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5638, !srcloc !5644
  br label %do.end15, !dbg !5638

do.end15:                                         ; preds = %do.end14
  call void @schedule() #8, !dbg !5645
  %call16 = call zeroext i1 @kthread_should_stop() #8, !dbg !5646
  br i1 %call16, label %if.then17, label %if.end18, !dbg !5648

if.then17:                                        ; preds = %do.end15
  br label %while.end, !dbg !5649

if.end18:                                         ; preds = %do.end15
  br label %do.body19, !dbg !5650

do.body19:                                        ; preds = %land.end, %if.end18
  %call20 = call i32 @check_slots() #8, !dbg !5651
  store i32 %call20, i32* %rc, align 4, !dbg !5653
  %9 = load i32, i32* %rc, align 4, !dbg !5654
  %cmp = icmp sgt i32 %9, 0, !dbg !5656
  br i1 %cmp, label %if.then21, label %if.else, !dbg !5657

if.then21:                                        ; preds = %do.body19
  call void @msleep(i32 500) #8, !dbg !5658
  br label %if.end31, !dbg !5660

if.else:                                          ; preds = %do.body19
  %10 = load i32, i32* %rc, align 4, !dbg !5661
  %cmp22 = icmp slt i32 %10, 0, !dbg !5663
  br i1 %cmp22, label %if.then23, label %if.end30, !dbg !5664

if.then23:                                        ; preds = %if.else
  br label %do.body24, !dbg !5665

do.body24:                                        ; preds = %if.then23
  %11 = load i32, i32* @cpci_debug, align 4, !dbg !5667
  %tobool25 = icmp ne i32 %11, 0, !dbg !5667
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !5670

if.then26:                                        ; preds = %do.body24
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_thread, i64 0, i64 0)) #9, !dbg !5667
  br label %if.end28, !dbg !5667

if.end28:                                         ; preds = %if.then26, %do.body24
  br label %do.end29, !dbg !5670

do.end29:                                         ; preds = %if.end28
  store i32 1, i32* @thread_finished, align 4, !dbg !5671
  br label %out, !dbg !5672

if.end30:                                         ; preds = %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then21
  br label %do.cond, !dbg !5673

do.cond:                                          ; preds = %if.end31
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i, align 8
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5674
  %13 = bitcast %struct.atomic_t* %12 to i8*, !dbg !5674
  store i8* %13, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %14 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5675
  %15 = load i64, i64* %size.addr.i.i, align 8, !dbg !5676
  %conv.i.i = trunc i64 %15 to i32, !dbg !5676
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %14, i32 %conv.i.i) #12, !dbg !5677
  %16 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5678
  %17 = load i64, i64* %size.addr.i.i, align 8, !dbg !5678
  call void @kcsan_check_access(i8* %16, i64 %17, i32 4) #12, !dbg !5678
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5679
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i1.i, align 8
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5680
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %19, i32 0, i32 0, !dbg !5680
  %20 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5680
  %tobool33 = icmp ne i32 %20, 0, !dbg !5681
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !5682

land.rhs:                                         ; preds = %do.cond
  %call34 = call zeroext i1 @kthread_should_stop() #8, !dbg !5683
  %lnot = xor i1 %call34, true, !dbg !5684
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %21 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ], !dbg !5685
  br i1 %21, label %do.body19, label %do.end35, !dbg !5673, !llvm.loop !5686

do.end35:                                         ; preds = %land.end
  %call36 = call zeroext i1 @kthread_should_stop() #8, !dbg !5688
  br i1 %call36, label %if.then37, label %if.end38, !dbg !5690

if.then37:                                        ; preds = %do.end35
  br label %while.end, !dbg !5691

if.end38:                                         ; preds = %do.end35
  br label %do.body39, !dbg !5692

do.body39:                                        ; preds = %if.end38
  %22 = load i32, i32* @cpci_debug, align 4, !dbg !5693
  %tobool40 = icmp ne i32 %22, 0, !dbg !5693
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !5696

if.then41:                                        ; preds = %do.body39
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_thread, i64 0, i64 0)) #9, !dbg !5693
  br label %if.end43, !dbg !5693

if.end43:                                         ; preds = %if.then41, %do.body39
  br label %do.end45, !dbg !5696

do.end45:                                         ; preds = %if.end43
  %23 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5697
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %23, i32 0, i32 5, !dbg !5698
  %24 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5698
  %enable_irq = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %24, i32 0, i32 1, !dbg !5699
  %25 = load i32 ()*, i32 ()** %enable_irq, align 8, !dbg !5699
  %call46 = call i32 %25() #8, !dbg !5697
  br label %while.body, !dbg !5631, !llvm.loop !5700

while.end:                                        ; preds = %if.then37, %if.then17
  br label %out, !dbg !5631

out:                                              ; preds = %while.end, %do.end29
  call void @llvm.dbg.label(metadata !5702), !dbg !5703
  ret i32 0, !dbg !5704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5705 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5711
  %1 = ptrtoint i8* %0 to i64, !dbg !5711
  %2 = inttoptr i64 %1 to i8*, !dbg !5711
  %3 = ptrtoint i8* %2 to i64, !dbg !5711
  %cmp = icmp uge i64 %3, -4095, !dbg !5711
  %lnot = xor i1 %cmp, true, !dbg !5711
  %lnot1 = xor i1 %lnot, true, !dbg !5711
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5711
  %conv = sext i32 %lnot.ext to i64, !dbg !5711
  %tobool = icmp ne i64 %conv, 0, !dbg !5711
  ret i1 %tobool, !dbg !5712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @poll_thread(i8* %data) #0 !dbg !5713 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5586, metadata !DIExpression()), !dbg !5714
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5597, metadata !DIExpression()), !dbg !5720
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5601, metadata !DIExpression()), !dbg !5722
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5603, metadata !DIExpression()), !dbg !5723
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !5605, metadata !DIExpression()), !dbg !5724
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !5616, metadata !DIExpression()), !dbg !5727
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !5619, metadata !DIExpression()), !dbg !5728
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %data.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5731, metadata !DIExpression()), !dbg !5732
  br label %while.body, !dbg !5733

while.body:                                       ; preds = %entry, %if.end21
  %call = call zeroext i1 @kthread_should_stop() #8, !dbg !5734
  br i1 %call, label %if.then, label %lor.lhs.false, !dbg !5735

lor.lhs.false:                                    ; preds = %while.body
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5727
  %0 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5727
  %1 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #14, !dbg !5728, !srcloc !5642
  store i64 %1, i64* %pfo_val__.i, align 8, !dbg !5728
  %2 = load i64, i64* %pfo_val__.i, align 8, !dbg !5728
  %3 = inttoptr i64 %2 to %struct.task_struct*, !dbg !5728
  store %struct.task_struct* %3, %struct.task_struct** %tmp.i, align 8, !dbg !5728
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5728
  store %struct.task_struct* %4, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5724
  %5 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5724
  store %struct.task_struct* %5, %struct.task_struct** %tmp1.i, align 8, !dbg !5724
  %6 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5724
  %call2 = call i32 @signal_pending(%struct.task_struct* %6) #8, !dbg !5736
  %tobool = icmp ne i32 %call2, 0, !dbg !5736
  br i1 %tobool, label %if.then, label %if.end, !dbg !5737

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !5738

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.cpci_hp_controller*, %struct.cpci_hp_controller** @controller, align 8, !dbg !5739
  %ops = getelementptr inbounds %struct.cpci_hp_controller, %struct.cpci_hp_controller* %7, i32 0, i32 5, !dbg !5740
  %8 = load %struct.cpci_hp_controller_ops*, %struct.cpci_hp_controller_ops** %ops, align 8, !dbg !5740
  %query_enum = getelementptr inbounds %struct.cpci_hp_controller_ops, %struct.cpci_hp_controller_ops* %8, i32 0, i32 0, !dbg !5741
  %9 = load i32 ()*, i32 ()** %query_enum, align 8, !dbg !5741
  %call3 = call i32 %9() #8, !dbg !5739
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5739
  br i1 %tobool4, label %if.then5, label %if.end21, !dbg !5742

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !5743

do.body:                                          ; preds = %land.end, %if.then5
  %call6 = call i32 @check_slots() #8, !dbg !5744
  store i32 %call6, i32* %rc, align 4, !dbg !5746
  %10 = load i32, i32* %rc, align 4, !dbg !5747
  %cmp = icmp sgt i32 %10, 0, !dbg !5749
  br i1 %cmp, label %if.then7, label %if.else, !dbg !5750

if.then7:                                         ; preds = %do.body
  call void @msleep(i32 500) #8, !dbg !5751
  br label %if.end16, !dbg !5753

if.else:                                          ; preds = %do.body
  %11 = load i32, i32* %rc, align 4, !dbg !5754
  %cmp8 = icmp slt i32 %11, 0, !dbg !5756
  br i1 %cmp8, label %if.then9, label %if.end15, !dbg !5757

if.then9:                                         ; preds = %if.else
  br label %do.body10, !dbg !5758

do.body10:                                        ; preds = %if.then9
  %12 = load i32, i32* @cpci_debug, align 4, !dbg !5760
  %tobool11 = icmp ne i32 %12, 0, !dbg !5760
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !5763

if.then12:                                        ; preds = %do.body10
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.poll_thread, i64 0, i64 0)) #9, !dbg !5760
  br label %if.end14, !dbg !5760

if.end14:                                         ; preds = %if.then12, %do.body10
  br label %do.end, !dbg !5763

do.end:                                           ; preds = %if.end14
  store i32 1, i32* @thread_finished, align 4, !dbg !5764
  br label %out, !dbg !5765

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %do.cond, !dbg !5766

do.cond:                                          ; preds = %if.end16
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i, align 8
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5767
  %14 = bitcast %struct.atomic_t* %13 to i8*, !dbg !5767
  store i8* %14, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %15 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5768
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !5769
  %conv.i.i = trunc i64 %16 to i32, !dbg !5769
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %15, i32 %conv.i.i) #12, !dbg !5770
  %17 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5771
  %18 = load i64, i64* %size.addr.i.i, align 8, !dbg !5771
  call void @kcsan_check_access(i8* %17, i64 %18, i32 4) #12, !dbg !5771
  %19 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5772
  store %struct.atomic_t* %19, %struct.atomic_t** %v.addr.i1.i, align 8
  %20 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5773
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %20, i32 0, i32 0, !dbg !5773
  %21 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5773
  %tobool18 = icmp ne i32 %21, 0, !dbg !5774
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !5775

land.rhs:                                         ; preds = %do.cond
  %call19 = call zeroext i1 @kthread_should_stop() #8, !dbg !5776
  %lnot = xor i1 %call19, true, !dbg !5777
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %22 = phi i1 [ false, %do.cond ], [ %lnot, %land.rhs ], !dbg !5778
  br i1 %22, label %do.body, label %do.end20, !dbg !5766, !llvm.loop !5779

do.end20:                                         ; preds = %land.end
  br label %if.end21, !dbg !5781

if.end21:                                         ; preds = %do.end20, %if.end
  call void @msleep(i32 100) #8, !dbg !5782
  br label %while.body, !dbg !5733, !llvm.loop !5783

while.end:                                        ; preds = %if.then
  br label %out, !dbg !5733

out:                                              ; preds = %while.end, %do.end
  call void @llvm.dbg.label(metadata !5785), !dbg !5786
  ret i32 0, !dbg !5787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5788 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5793
  %1 = ptrtoint i8* %0 to i64, !dbg !5794
  ret i64 %1, !dbg !5795
}

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_slots() #0 !dbg !5796 {
entry:
  %v.addr.i1.i157 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i157, metadata !5586, metadata !DIExpression()), !dbg !5797
  %v.addr.i.i158 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i158, metadata !5597, metadata !DIExpression()), !dbg !5802
  %size.addr.i.i159 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i159, metadata !5601, metadata !DIExpression()), !dbg !5804
  %v.addr.i160 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i160, metadata !5603, metadata !DIExpression()), !dbg !5805
  %v.addr.i1.i150 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i150, metadata !5586, metadata !DIExpression()), !dbg !5806
  %v.addr.i.i151 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i151, metadata !5597, metadata !DIExpression()), !dbg !5811
  %size.addr.i.i152 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i152, metadata !5601, metadata !DIExpression()), !dbg !5813
  %v.addr.i153 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i153, metadata !5603, metadata !DIExpression()), !dbg !5814
  %v.addr.i1.i143 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i143, metadata !5244, metadata !DIExpression()), !dbg !5815
  %v.addr.i.i144 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i144, metadata !5257, metadata !DIExpression()), !dbg !5827
  %size.addr.i.i145 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i145, metadata !5267, metadata !DIExpression()), !dbg !5829
  %v.addr.i146 = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i146, metadata !5269, metadata !DIExpression()), !dbg !5830
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5831, metadata !DIExpression()), !dbg !5833
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5257, metadata !DIExpression()), !dbg !5840
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5267, metadata !DIExpression()), !dbg !5842
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5843, metadata !DIExpression()), !dbg !5844
  %retval = alloca i32, align 4
  %slot = alloca %struct.slot*, align 8
  %extracted = alloca i32, align 4
  %inserted = alloca i32, align 4
  %hs_csr = alloca i16, align 2
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.slot*, align 8
  %__mptr120 = alloca i8*, align 8
  %tmp124 = alloca %struct.slot*, align 8
  call void @llvm.dbg.declare(metadata %struct.slot** %slot, metadata !5845, metadata !DIExpression()), !dbg !5846
  call void @llvm.dbg.declare(metadata i32* %extracted, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata i32* %inserted, metadata !5849, metadata !DIExpression()), !dbg !5850
  call void @llvm.dbg.declare(metadata i16* %hs_csr, metadata !5851, metadata !DIExpression()), !dbg !5852
  call void @down_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5853
  %0 = load i32, i32* @slots, align 4, !dbg !5854
  %tobool = icmp ne i32 %0, 0, !dbg !5854
  br i1 %tobool, label %if.end, label %if.then, !dbg !5856

if.then:                                          ; preds = %entry
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !5857
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !5859
  store i32 -1, i32* %retval, align 4, !dbg !5860
  br label %return, !dbg !5860

if.end:                                           ; preds = %entry
  store i32 0, i32* %inserted, align 4, !dbg !5861
  store i32 0, i32* %extracted, align 4, !dbg !5862
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5863, metadata !DIExpression()), !dbg !5865
  %1 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @slot_list, i32 0, i32 0), align 8, !dbg !5865
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5865
  store i8* %2, i8** %__mptr, align 8, !dbg !5865
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5866

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5865
  %add.ptr = getelementptr i8, i8* %3, i64 -80, !dbg !5865
  %4 = bitcast i8* %add.ptr to %struct.slot*, !dbg !5865
  store %struct.slot* %4, %struct.slot** %tmp, align 8, !dbg !5866
  %5 = load %struct.slot*, %struct.slot** %tmp, align 8, !dbg !5865
  store %struct.slot* %5, %struct.slot** %slot, align 8, !dbg !5868
  br label %for.cond, !dbg !5868

for.cond:                                         ; preds = %do.end123, %do.end
  %6 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5869
  %slot_list = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 7, !dbg !5869
  %cmp = icmp eq %struct.list_head* %slot_list, @slot_list, !dbg !5869
  %lnot = xor i1 %cmp, true, !dbg !5869
  br i1 %lnot, label %for.body, label %for.end, !dbg !5868

for.body:                                         ; preds = %for.cond
  br label %do.body1, !dbg !5870

do.body1:                                         ; preds = %for.body
  %7 = load i32, i32* @cpci_debug, align 4, !dbg !5871
  %tobool2 = icmp ne i32 %7, 0, !dbg !5871
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !5874

if.then3:                                         ; preds = %do.body1
  %8 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5871
  %call4 = call i8* @slot_name(%struct.slot* %8) #8, !dbg !5871
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call4) #9, !dbg !5871
  br label %if.end6, !dbg !5871

if.end6:                                          ; preds = %if.then3, %do.body1
  br label %do.end7, !dbg !5874

do.end7:                                          ; preds = %if.end6
  %9 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5875
  %call8 = call i32 @cpci_check_and_clear_ins(%struct.slot* %9) #8, !dbg !5876
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5876
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5877

if.then10:                                        ; preds = %do.end7
  %10 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5878
  %dev = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 3, !dbg !5881
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5881
  %tobool11 = icmp ne %struct.pci_dev* %11, null, !dbg !5878
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !5882

if.then12:                                        ; preds = %if.then10
  %12 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5883
  %call13 = call i8* @slot_name(%struct.slot* %12) #8, !dbg !5883
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %call13) #9, !dbg !5883
  %13 = load i32, i32* %inserted, align 4, !dbg !5885
  %inc = add i32 %13, 1, !dbg !5885
  store i32 %inc, i32* %inserted, align 4, !dbg !5885
  br label %for.inc, !dbg !5886

if.end15:                                         ; preds = %if.then10
  br label %do.body16, !dbg !5887

do.body16:                                        ; preds = %if.end15
  %14 = load i32, i32* @cpci_debug, align 4, !dbg !5888
  %tobool17 = icmp ne i32 %14, 0, !dbg !5888
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !5891

if.then18:                                        ; preds = %do.body16
  %15 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5888
  %call19 = call i8* @slot_name(%struct.slot* %15) #8, !dbg !5888
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call19) #9, !dbg !5888
  br label %if.end21, !dbg !5888

if.end21:                                         ; preds = %if.then18, %do.body16
  br label %do.end22, !dbg !5891

do.end22:                                         ; preds = %if.end21
  %16 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5892
  %call23 = call zeroext i16 @cpci_get_hs_csr(%struct.slot* %16) #8, !dbg !5893
  store i16 %call23, i16* %hs_csr, align 2, !dbg !5894
  br label %do.body24, !dbg !5895

do.body24:                                        ; preds = %do.end22
  %17 = load i32, i32* @cpci_debug, align 4, !dbg !5896
  %tobool25 = icmp ne i32 %17, 0, !dbg !5896
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !5899

if.then26:                                        ; preds = %do.body24
  %18 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5896
  %call27 = call i8* @slot_name(%struct.slot* %18) #8, !dbg !5896
  %19 = load i16, i16* %hs_csr, align 2, !dbg !5896
  %conv = zext i16 %19 to i32, !dbg !5896
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call27, i32 %conv) #9, !dbg !5896
  br label %if.end29, !dbg !5896

if.end29:                                         ; preds = %if.then26, %do.body24
  br label %do.end30, !dbg !5899

do.end30:                                         ; preds = %if.end29
  br label %do.body31, !dbg !5900

do.body31:                                        ; preds = %do.end30
  %20 = load i32, i32* @cpci_debug, align 4, !dbg !5901
  %tobool32 = icmp ne i32 %20, 0, !dbg !5901
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5904

if.then33:                                        ; preds = %do.body31
  %21 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5901
  %call34 = call i8* @slot_name(%struct.slot* %21) #8, !dbg !5901
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call34) #9, !dbg !5901
  br label %if.end36, !dbg !5901

if.end36:                                         ; preds = %if.then33, %do.body31
  br label %do.end37, !dbg !5904

do.end37:                                         ; preds = %if.end36
  %22 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5905
  %call38 = call i32 @cpci_configure_slot(%struct.slot* %22) #8, !dbg !5907
  %tobool39 = icmp ne i32 %call38, 0, !dbg !5907
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !5908

if.then40:                                        ; preds = %do.end37
  %23 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5909
  %call41 = call i8* @slot_name(%struct.slot* %23) #8, !dbg !5909
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call41) #9, !dbg !5909
  br label %for.inc, !dbg !5911

if.end43:                                         ; preds = %do.end37
  br label %do.body44, !dbg !5912

do.body44:                                        ; preds = %if.end43
  %24 = load i32, i32* @cpci_debug, align 4, !dbg !5913
  %tobool45 = icmp ne i32 %24, 0, !dbg !5913
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !5916

if.then46:                                        ; preds = %do.body44
  %25 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5913
  %call47 = call i8* @slot_name(%struct.slot* %25) #8, !dbg !5913
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call47) #9, !dbg !5913
  br label %if.end49, !dbg !5913

if.end49:                                         ; preds = %if.then46, %do.body44
  br label %do.end50, !dbg !5916

do.end50:                                         ; preds = %if.end49
  %26 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5917
  %call51 = call zeroext i16 @cpci_get_hs_csr(%struct.slot* %26) #8, !dbg !5918
  store i16 %call51, i16* %hs_csr, align 2, !dbg !5919
  br label %do.body52, !dbg !5920

do.body52:                                        ; preds = %do.end50
  %27 = load i32, i32* @cpci_debug, align 4, !dbg !5921
  %tobool53 = icmp ne i32 %27, 0, !dbg !5921
  br i1 %tobool53, label %if.then54, label %if.end58, !dbg !5924

if.then54:                                        ; preds = %do.body52
  %28 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5921
  %call55 = call i8* @slot_name(%struct.slot* %28) #8, !dbg !5921
  %29 = load i16, i16* %hs_csr, align 2, !dbg !5921
  %conv56 = zext i16 %29 to i32, !dbg !5921
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call55, i32 %conv56) #9, !dbg !5921
  br label %if.end58, !dbg !5921

if.end58:                                         ; preds = %if.then54, %do.body52
  br label %do.end59, !dbg !5924

do.end59:                                         ; preds = %if.end58
  %30 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5925
  %latch_status = getelementptr inbounds %struct.slot, %struct.slot* %30, i32 0, i32 4, !dbg !5926
  %bf.load = load i8, i8* %latch_status, align 8, !dbg !5927
  %bf.clear = and i8 %bf.load, -2, !dbg !5927
  %bf.set = or i8 %bf.clear, 1, !dbg !5927
  store i8 %bf.set, i8* %latch_status, align 8, !dbg !5927
  %31 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5928
  %adapter_status = getelementptr inbounds %struct.slot, %struct.slot* %31, i32 0, i32 4, !dbg !5929
  %bf.load60 = load i8, i8* %adapter_status, align 8, !dbg !5930
  %bf.clear61 = and i8 %bf.load60, -3, !dbg !5930
  %bf.set62 = or i8 %bf.clear61, 2, !dbg !5930
  store i8 %bf.set62, i8* %adapter_status, align 8, !dbg !5930
  %32 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5931
  %call63 = call i32 @cpci_led_off(%struct.slot* %32) #8, !dbg !5932
  %33 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5933
  %call64 = call zeroext i16 @cpci_get_hs_csr(%struct.slot* %33) #8, !dbg !5934
  store i16 %call64, i16* %hs_csr, align 2, !dbg !5935
  br label %do.body65, !dbg !5936

do.body65:                                        ; preds = %do.end59
  %34 = load i32, i32* @cpci_debug, align 4, !dbg !5937
  %tobool66 = icmp ne i32 %34, 0, !dbg !5937
  br i1 %tobool66, label %if.then67, label %if.end71, !dbg !5940

if.then67:                                        ; preds = %do.body65
  %35 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5937
  %call68 = call i8* @slot_name(%struct.slot* %35) #8, !dbg !5937
  %36 = load i16, i16* %hs_csr, align 2, !dbg !5937
  %conv69 = zext i16 %36 to i32, !dbg !5937
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call68, i32 %conv69) #9, !dbg !5937
  br label %if.end71, !dbg !5937

if.end71:                                         ; preds = %if.then67, %do.body65
  br label %do.end72, !dbg !5940

do.end72:                                         ; preds = %if.end71
  %37 = load i32, i32* %inserted, align 4, !dbg !5941
  %inc73 = add i32 %37, 1, !dbg !5941
  store i32 %inc73, i32* %inserted, align 4, !dbg !5941
  br label %if.end119, !dbg !5942

if.else:                                          ; preds = %do.end7
  %38 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5943
  %call74 = call i32 @cpci_check_ext(%struct.slot* %38) #8, !dbg !5944
  %tobool75 = icmp ne i32 %call74, 0, !dbg !5944
  br i1 %tobool75, label %if.then76, label %if.else101, !dbg !5945

if.then76:                                        ; preds = %if.else
  br label %do.body77, !dbg !5946

do.body77:                                        ; preds = %if.then76
  %39 = load i32, i32* @cpci_debug, align 4, !dbg !5947
  %tobool78 = icmp ne i32 %39, 0, !dbg !5947
  br i1 %tobool78, label %if.then79, label %if.end82, !dbg !5950

if.then79:                                        ; preds = %do.body77
  %40 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5947
  %call80 = call i8* @slot_name(%struct.slot* %40) #8, !dbg !5947
  %call81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call80) #9, !dbg !5947
  br label %if.end82, !dbg !5947

if.end82:                                         ; preds = %if.then79, %do.body77
  br label %do.end83, !dbg !5950

do.end83:                                         ; preds = %if.end82
  %41 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5951
  %call84 = call zeroext i16 @cpci_get_hs_csr(%struct.slot* %41) #8, !dbg !5952
  store i16 %call84, i16* %hs_csr, align 2, !dbg !5953
  br label %do.body85, !dbg !5954

do.body85:                                        ; preds = %do.end83
  %42 = load i32, i32* @cpci_debug, align 4, !dbg !5955
  %tobool86 = icmp ne i32 %42, 0, !dbg !5955
  br i1 %tobool86, label %if.then87, label %if.end91, !dbg !5958

if.then87:                                        ; preds = %do.body85
  %43 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5955
  %call88 = call i8* @slot_name(%struct.slot* %43) #8, !dbg !5955
  %44 = load i16, i16* %hs_csr, align 2, !dbg !5955
  %conv89 = zext i16 %44 to i32, !dbg !5955
  %call90 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.check_slots, i64 0, i64 0), i8* %call88, i32 %conv89) #9, !dbg !5955
  br label %if.end91, !dbg !5955

if.end91:                                         ; preds = %if.then87, %do.body85
  br label %do.end92, !dbg !5958

do.end92:                                         ; preds = %if.end91
  %45 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5959
  %extracting = getelementptr inbounds %struct.slot, %struct.slot* %45, i32 0, i32 5, !dbg !5960
  %46 = load i32, i32* %extracting, align 4, !dbg !5960
  %tobool93 = icmp ne i32 %46, 0, !dbg !5959
  br i1 %tobool93, label %if.end99, label %if.then94, !dbg !5961

if.then94:                                        ; preds = %do.end92
  %47 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5962
  %latch_status95 = getelementptr inbounds %struct.slot, %struct.slot* %47, i32 0, i32 4, !dbg !5963
  %bf.load96 = load i8, i8* %latch_status95, align 8, !dbg !5964
  %bf.clear97 = and i8 %bf.load96, -2, !dbg !5964
  store i8 %bf.clear97, i8* %latch_status95, align 8, !dbg !5964
  %48 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5965
  %extracting98 = getelementptr inbounds %struct.slot, %struct.slot* %48, i32 0, i32 5, !dbg !5966
  store i32 1, i32* %extracting98, align 4, !dbg !5967
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i, align 8
  %49 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5968
  %50 = bitcast %struct.atomic_t* %49 to i8*, !dbg !5968
  store i8* %50, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %51 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5969
  %52 = load i64, i64* %size.addr.i.i, align 8, !dbg !5970
  %conv.i.i = trunc i64 %52 to i32, !dbg !5970
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %51, i32 %conv.i.i) #12, !dbg !5971
  %53 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5972
  %54 = load i64, i64* %size.addr.i.i, align 8, !dbg !5972
  call void @kcsan_check_access(i8* %53, i64 %54, i32 7) #12, !dbg !5972
  %55 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5973
  store %struct.atomic_t* %55, %struct.atomic_t** %v.addr.i1.i, align 8
  %56 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5974
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %56, i32 0, i32 0, !dbg !5975
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #10, !dbg !5976, !srcloc !5977
  br label %if.end99, !dbg !5978

if.end99:                                         ; preds = %if.then94, %do.end92
  %57 = load i32, i32* %extracted, align 4, !dbg !5979
  %inc100 = add i32 %57, 1, !dbg !5979
  store i32 %inc100, i32* %extracted, align 4, !dbg !5979
  br label %if.end118, !dbg !5980

if.else101:                                       ; preds = %if.else
  %58 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5981
  %extracting102 = getelementptr inbounds %struct.slot, %struct.slot* %58, i32 0, i32 5, !dbg !5982
  %59 = load i32, i32* %extracting102, align 4, !dbg !5982
  %tobool103 = icmp ne i32 %59, 0, !dbg !5981
  br i1 %tobool103, label %if.then104, label %if.end117, !dbg !5983

if.then104:                                       ; preds = %if.else101
  %60 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5984
  %call105 = call zeroext i16 @cpci_get_hs_csr(%struct.slot* %60) #8, !dbg !5985
  store i16 %call105, i16* %hs_csr, align 2, !dbg !5986
  %61 = load i16, i16* %hs_csr, align 2, !dbg !5987
  %conv106 = zext i16 %61 to i32, !dbg !5987
  %cmp107 = icmp eq i32 %conv106, 65535, !dbg !5988
  br i1 %cmp107, label %if.then109, label %if.end116, !dbg !5989

if.then109:                                       ; preds = %if.then104
  %62 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5990
  %call110 = call i8* @slot_name(%struct.slot* %62) #8, !dbg !5990
  %call111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %call110) #9, !dbg !5990
  %63 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5991
  %adapter_status112 = getelementptr inbounds %struct.slot, %struct.slot* %63, i32 0, i32 4, !dbg !5992
  %bf.load113 = load i8, i8* %adapter_status112, align 8, !dbg !5993
  %bf.clear114 = and i8 %bf.load113, -3, !dbg !5993
  store i8 %bf.clear114, i8* %adapter_status112, align 8, !dbg !5993
  %64 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !5994
  %extracting115 = getelementptr inbounds %struct.slot, %struct.slot* %64, i32 0, i32 5, !dbg !5995
  store i32 0, i32* %extracting115, align 4, !dbg !5996
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i146, align 8
  %65 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i146, align 8, !dbg !5997
  %66 = bitcast %struct.atomic_t* %65 to i8*, !dbg !5997
  store i8* %66, i8** %v.addr.i.i144, align 8
  store i64 4, i64* %size.addr.i.i145, align 8
  %67 = load i8*, i8** %v.addr.i.i144, align 8, !dbg !5998
  %68 = load i64, i64* %size.addr.i.i145, align 8, !dbg !5999
  %conv.i.i147 = trunc i64 %68 to i32, !dbg !5999
  %call.i.i148 = call zeroext i1 @kasan_check_write(i8* %67, i32 %conv.i.i147) #12, !dbg !6000
  %69 = load i8*, i8** %v.addr.i.i144, align 8, !dbg !6001
  %70 = load i64, i64* %size.addr.i.i145, align 8, !dbg !6001
  call void @kcsan_check_access(i8* %69, i64 %70, i32 7) #12, !dbg !6001
  %71 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i146, align 8, !dbg !6002
  store %struct.atomic_t* %71, %struct.atomic_t** %v.addr.i1.i143, align 8
  %72 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i143, align 8, !dbg !6003
  %counter.i.i149 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %72, i32 0, i32 0, !dbg !6004
  call void asm sideeffect "decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i149, i32* %counter.i.i149) #10, !dbg !6005, !srcloc !5348
  br label %if.end116, !dbg !6006

if.end116:                                        ; preds = %if.then109, %if.then104
  br label %if.end117, !dbg !6007

if.end117:                                        ; preds = %if.end116, %if.else101
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end99
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %do.end72
  br label %for.inc, !dbg !6008

for.inc:                                          ; preds = %if.end119, %if.then40, %if.then12
  call void @llvm.dbg.declare(metadata i8** %__mptr120, metadata !6009, metadata !DIExpression()), !dbg !6011
  %73 = load %struct.slot*, %struct.slot** %slot, align 8, !dbg !6011
  %slot_list121 = getelementptr inbounds %struct.slot, %struct.slot* %73, i32 0, i32 7, !dbg !6011
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %slot_list121, i32 0, i32 0, !dbg !6011
  %74 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6011
  %75 = bitcast %struct.list_head* %74 to i8*, !dbg !6011
  store i8* %75, i8** %__mptr120, align 8, !dbg !6011
  br label %do.body122, !dbg !6011

do.body122:                                       ; preds = %for.inc
  br label %do.end123, !dbg !6012

do.end123:                                        ; preds = %do.body122
  %76 = load i8*, i8** %__mptr120, align 8, !dbg !6011
  %add.ptr125 = getelementptr i8, i8* %76, i64 -80, !dbg !6011
  %77 = bitcast i8* %add.ptr125 to %struct.slot*, !dbg !6011
  store %struct.slot* %77, %struct.slot** %tmp124, align 8, !dbg !6012
  %78 = load %struct.slot*, %struct.slot** %tmp124, align 8, !dbg !6011
  store %struct.slot* %78, %struct.slot** %slot, align 8, !dbg !5869
  br label %for.cond, !dbg !5869, !llvm.loop !6014

for.end:                                          ; preds = %for.cond
  call void @up_read(%struct.rw_semaphore* @list_rwsem) #8, !dbg !6016
  br label %do.body126, !dbg !6017

do.body126:                                       ; preds = %for.end
  %79 = load i32, i32* @cpci_debug, align 4, !dbg !6018
  %tobool127 = icmp ne i32 %79, 0, !dbg !6018
  br i1 %tobool127, label %if.then128, label %if.end131, !dbg !6019

if.then128:                                       ; preds = %do.body126
  %80 = load i32, i32* %inserted, align 4, !dbg !6018
  %81 = load i32, i32* %extracted, align 4, !dbg !6018
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i153, align 8
  %82 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i153, align 8, !dbg !6020
  %83 = bitcast %struct.atomic_t* %82 to i8*, !dbg !6020
  store i8* %83, i8** %v.addr.i.i151, align 8
  store i64 4, i64* %size.addr.i.i152, align 8
  %84 = load i8*, i8** %v.addr.i.i151, align 8, !dbg !6021
  %85 = load i64, i64* %size.addr.i.i152, align 8, !dbg !6022
  %conv.i.i154 = trunc i64 %85 to i32, !dbg !6022
  %call.i.i155 = call zeroext i1 @kasan_check_read(i8* %84, i32 %conv.i.i154) #12, !dbg !6023
  %86 = load i8*, i8** %v.addr.i.i151, align 8, !dbg !6024
  %87 = load i64, i64* %size.addr.i.i152, align 8, !dbg !6024
  call void @kcsan_check_access(i8* %86, i64 %87, i32 4) #12, !dbg !6024
  %88 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i153, align 8, !dbg !6025
  store %struct.atomic_t* %88, %struct.atomic_t** %v.addr.i1.i150, align 8
  %89 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i150, align 8, !dbg !6026
  %counter.i.i156 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %89, i32 0, i32 0, !dbg !6026
  %90 = load volatile i32, i32* %counter.i.i156, align 4, !dbg !6026
  %call130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81, i32 %90) #9, !dbg !6018
  br label %if.end131, !dbg !6018

if.end131:                                        ; preds = %if.then128, %do.body126
  br label %do.end132, !dbg !6019

do.end132:                                        ; preds = %if.end131
  %91 = load i32, i32* %inserted, align 4, !dbg !6027
  %tobool133 = icmp ne i32 %91, 0, !dbg !6027
  br i1 %tobool133, label %if.then135, label %lor.lhs.false, !dbg !6028

lor.lhs.false:                                    ; preds = %do.end132
  %92 = load i32, i32* %extracted, align 4, !dbg !6029
  %tobool134 = icmp ne i32 %92, 0, !dbg !6029
  br i1 %tobool134, label %if.then135, label %if.else136, !dbg !6030

if.then135:                                       ; preds = %lor.lhs.false, %do.end132
  %93 = load i32, i32* %extracted, align 4, !dbg !6031
  store i32 %93, i32* %retval, align 4, !dbg !6032
  br label %return, !dbg !6032

if.else136:                                       ; preds = %lor.lhs.false
  store %struct.atomic_t* @extracting, %struct.atomic_t** %v.addr.i160, align 8
  %94 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i160, align 8, !dbg !6033
  %95 = bitcast %struct.atomic_t* %94 to i8*, !dbg !6033
  store i8* %95, i8** %v.addr.i.i158, align 8
  store i64 4, i64* %size.addr.i.i159, align 8
  %96 = load i8*, i8** %v.addr.i.i158, align 8, !dbg !6034
  %97 = load i64, i64* %size.addr.i.i159, align 8, !dbg !6035
  %conv.i.i161 = trunc i64 %97 to i32, !dbg !6035
  %call.i.i162 = call zeroext i1 @kasan_check_read(i8* %96, i32 %conv.i.i161) #12, !dbg !6036
  %98 = load i8*, i8** %v.addr.i.i158, align 8, !dbg !6037
  %99 = load i64, i64* %size.addr.i.i159, align 8, !dbg !6037
  call void @kcsan_check_access(i8* %98, i64 %99, i32 4) #12, !dbg !6037
  %100 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i160, align 8, !dbg !6038
  store %struct.atomic_t* %100, %struct.atomic_t** %v.addr.i1.i157, align 8
  %101 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i157, align 8, !dbg !6039
  %counter.i.i163 = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %101, i32 0, i32 0, !dbg !6039
  %102 = load volatile i32, i32* %counter.i.i163, align 4, !dbg !6039
  %tobool138 = icmp ne i32 %102, 0, !dbg !6040
  br i1 %tobool138, label %if.end141, label %if.then139, !dbg !6041

if.then139:                                       ; preds = %if.else136
  %call140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !6042
  store i32 -1, i32* %retval, align 4, !dbg !6044
  br label %return, !dbg !6044

if.end141:                                        ; preds = %if.else136
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  store i32 0, i32* %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

return:                                           ; preds = %if.end142, %if.then139, %if.then135, %if.then
  %103 = load i32, i32* %retval, align 4, !dbg !6046
  ret i32 %103, !dbg !6046
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @cpci_get_hs_csr(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_configure_slot(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_led_off(%struct.slot*) #2

; Function Attrs: noredzone
declare dso_local i32 @cpci_check_ext(%struct.slot*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !6047 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6050, metadata !DIExpression()), !dbg !6051
  ret i1 true, !dbg !6052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #0 !dbg !6053 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !6058
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #8, !dbg !6058
  %tobool = icmp ne i32 %call, 0, !dbg !6058
  %lnot = xor i1 %tobool, true, !dbg !6058
  %lnot1 = xor i1 %lnot, true, !dbg !6058
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6058
  %conv = sext i32 %lnot.ext to i64, !dbg !6058
  %conv2 = trunc i64 %conv to i32, !dbg !6058
  ret i32 %conv2, !dbg !6059
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #0 !dbg !6060 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6065, metadata !DIExpression()), !dbg !6066
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !6067
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #8, !dbg !6068
  %1 = load i32, i32* %flag.addr, align 4, !dbg !6069
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #8, !dbg !6070
  ret i32 %call1, !dbg !6071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #0 !dbg !6072 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6079, metadata !DIExpression()), !dbg !6080
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6081
  %conv = sext i32 %0 to i64, !dbg !6081
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !6082
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !6083
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !6084
  %conv1 = zext i1 %call to i32, !dbg !6084
  ret i32 %conv1, !dbg !6085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #0 !dbg !6086 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !6089, metadata !DIExpression()), !dbg !6090
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !6091
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !6092
  ret %struct.thread_info* %thread_info, !dbg !6093
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !6094 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6101, metadata !DIExpression()), !dbg !6103
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6105, metadata !DIExpression()), !dbg !6106
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6107, metadata !DIExpression()), !dbg !6108
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6109, metadata !DIExpression()), !dbg !6111
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6113, metadata !DIExpression()), !dbg !6114
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5597, metadata !DIExpression()), !dbg !6115
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5601, metadata !DIExpression()), !dbg !6117
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6118, metadata !DIExpression()), !dbg !6119
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6120, metadata !DIExpression()), !dbg !6121
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6122
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6123
  %div = sdiv i64 %1, 64, !dbg !6123
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6124
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6122
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6125
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6126
  %conv.i = trunc i64 %4 to i32, !dbg !6126
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !6127
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6128
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6128
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !6128
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6129
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6129
  br i1 %8, label %cond.true, label %cond.false, !dbg !6129

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6129
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6129
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6130
  %and.i = and i64 %11, 63, !dbg !6131
  %shl.i = shl i64 1, %and.i, !dbg !6132
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6133
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6134
  %shr.i = ashr i64 %13, 6, !dbg !6135
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6133
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6133
  %and1.i = and i64 %shl.i, %14, !dbg !6136
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6137
  %conv = zext i1 %cmp.i to i32, !dbg !6129
  br label %cond.end, !dbg !6129

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6129
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6129
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6138
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6139
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !6140, !srcloc !6141
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6140
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6142
  %tobool.i = trunc i8 %20 to i1, !dbg !6142
  %conv2 = zext i1 %tobool.i to i32, !dbg !6129
  br label %cond.end, !dbg !6129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6129
  %tobool = icmp ne i32 %cond, 0, !dbg !6129
  ret i1 %tobool, !dbg !6143
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4234, !4235, !4236, !4237}
!llvm.ident = !{!4238}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "controller", scope: !2, file: !3, line: 48, type: !4202, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !125, globals: !4180, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/hotplug/cpci_hotplug_core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !101, !107, !114, !119}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !88, line: 76, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!90 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!94 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!95 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!96 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!97 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!98 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!99 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!100 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !102, line: 44, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !108, line: 305, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !115, line: 10, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !118}
!117 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!118 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !120, line: 11, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124}
!122 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!125 = !{!126, !128, !131, !132, !4171, !4173, !4175, !4176, !1213, !326, !4177, !3385, !311}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !127, line: 148, baseType: !7)
!127 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !130, line: 76, flags: DIFlagFwdDecl)
!130 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slot", file: !134, line: 30, size: 768, elements: !135)
!134 = !DIFile(filename: "drivers/pci/hotplug/cpci_hotplug.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !142, !143, !4165, !4166, !4167, !4168, !4169, !4170}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !133, file: !134, line: 31, baseType: !137, size: 8)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !138, line: 17, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !140, line: 21, baseType: !141)
!140 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !133, file: !134, line: 32, baseType: !7, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !133, file: !134, line: 33, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !146, line: 605, size: 8064, elements: !147)
!146 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !154, !155, !156, !157, !4115, !4116, !4118, !4119, !4120, !4144, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4157, !4158, !4160, !4161, !4162, !4163, !4164}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !145, file: !146, line: 606, baseType: !149, size: 128)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !127, line: 178, size: 128, elements: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !127, line: 179, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !127, line: 179, baseType: !152, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !146, line: 607, baseType: !144, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !145, file: !146, line: 608, baseType: !149, size: 128, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !145, file: !146, line: 609, baseType: !149, size: 128, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !145, file: !146, line: 610, baseType: !158, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !146, line: 309, size: 19264, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !169, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3386, !4000, !4001, !4002, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4089, !4090, !4091, !4092, !4093, !4094, !4096, !4097, !4098, !4101, !4108, !4109, !4110, !4111, !4112, !4113, !4114}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !159, file: !146, line: 310, baseType: !149, size: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !159, file: !146, line: 311, baseType: !144, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !159, file: !146, line: 312, baseType: !144, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !159, file: !146, line: 314, baseType: !131, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !159, file: !146, line: 315, baseType: !166, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !168, line: 123, flags: DIFlagFwdDecl)
!168 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !159, file: !146, line: 316, baseType: !170, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !146, line: 69, size: 832, elements: !172)
!172 = !{!173, !174, !175, !220, !221}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !171, file: !146, line: 70, baseType: !144, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !171, file: !146, line: 71, baseType: !149, size: 128, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !171, file: !146, line: 72, baseType: !176, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !178, line: 56, size: 384, elements: !179)
!178 = !DIFile(filename: "./include/linux/pci_hotplug.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180, !213, !214, !215, !216}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !177, file: !178, line: 57, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot_ops", file: !178, line: 38, size: 576, elements: !184)
!184 = !{!185, !190, !191, !195, !201, !206, !207, !208, !209}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "enable_slot", scope: !183, file: !178, line: 39, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !176}
!189 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "disable_slot", scope: !183, file: !178, line: 40, baseType: !186, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "set_attention_status", scope: !183, file: !178, line: 41, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!189, !176, !137}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_test", scope: !183, file: !178, line: 42, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!189, !176, !199}
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !138, line: 21, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !140, line: 27, baseType: !7)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "get_power_status", scope: !183, file: !178, line: 43, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!189, !176, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "get_attention_status", scope: !183, file: !178, line: 44, baseType: !202, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "get_latch_status", scope: !183, file: !178, line: 45, baseType: !202, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "get_adapter_status", scope: !183, file: !178, line: 46, baseType: !202, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reset_slot", scope: !183, file: !178, line: 47, baseType: !210, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!189, !176, !189}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "slot_list", scope: !177, file: !178, line: 60, baseType: !149, size: 128, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pci_slot", scope: !177, file: !178, line: 61, baseType: !170, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !177, file: !178, line: 62, baseType: !128, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !177, file: !178, line: 63, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !171, file: !146, line: 73, baseType: !141, size: 8, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !171, file: !146, line: 74, baseType: !222, size: 512, offset: 320)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !223, line: 64, size: 512, elements: !224)
!223 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !226, !227, !229, !289, !3220, !3359, !3364, !3365, !3366, !3367, !3368}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !223, line: 65, baseType: !217, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !222, file: !223, line: 66, baseType: !149, size: 128, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !223, line: 67, baseType: !228, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !222, file: !223, line: 68, baseType: !230, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !223, line: 192, size: 704, elements: !232)
!232 = !{!233, !234, !250, !251}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !231, file: !223, line: 193, baseType: !149, size: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !231, file: !223, line: 194, baseType: !235, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !236, line: 83, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !236, line: 71, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !237, file: !236, line: 72, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !237, file: !236, line: 72, elements: !241)
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !240, file: !236, line: 73, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !236, line: 20, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !236, line: 21, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !247, line: 25, baseType: !248)
!247 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 25, elements: !249)
!249 = !{}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !231, file: !223, line: 195, baseType: !222, size: 512, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !231, file: !223, line: 196, baseType: !252, size: 64, offset: 640)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !223, line: 156, size: 192, elements: !255)
!255 = !{!256, !261, !266}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !254, file: !223, line: 157, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!189, !230, !228}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !223, line: 158, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!217, !230, !228}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !254, file: !223, line: 159, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!189, !230, !228, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !223, line: 148, size: 20736, elements: !273)
!273 = !{!274, !279, !283, !284, !288}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !272, file: !223, line: 149, baseType: !275, size: 192)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 192, elements: !277)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!277 = !{!278}
!278 = !DISubrange(count: 3)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !272, file: !223, line: 150, baseType: !280, size: 4096, offset: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 4096, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !272, file: !223, line: 151, baseType: !189, size: 32, offset: 4288)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !272, file: !223, line: 152, baseType: !285, size: 16384, offset: 4320)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 16384, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 2048)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !272, file: !223, line: 153, baseType: !189, size: 32, offset: 20704)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !222, file: !223, line: 69, baseType: !290, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !223, line: 138, size: 448, elements: !292)
!292 = !{!293, !297, !327, !329, !3182, !3210, !3214}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !223, line: 139, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !228}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !291, file: !223, line: 140, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !301, line: 230, size: 128, elements: !302)
!301 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !319}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !300, file: !301, line: 231, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !228, !312, !276}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !127, line: 60, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !309, line: 73, baseType: !310)
!309 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !309, line: 15, baseType: !311)
!311 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !301, line: 30, size: 128, elements: !314)
!314 = !{!315, !316}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !301, line: 31, baseType: !217, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !313, file: !301, line: 32, baseType: !317, size: 16, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !127, line: 19, baseType: !318)
!318 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !300, file: !301, line: 232, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!307, !228, !312, !217, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 55, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !309, line: 72, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !309, line: 16, baseType: !326)
!326 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !291, file: !223, line: 141, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !291, file: !223, line: 142, baseType: !330, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !301, line: 84, size: 320, elements: !334)
!334 = !{!335, !336, !340, !3179, !3180}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !301, line: 85, baseType: !217, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !333, file: !301, line: 86, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!317, !228, !312, !189}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !333, file: !301, line: 88, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!317, !228, !344, !189}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !301, line: 168, size: 448, elements: !346)
!346 = !{!347, !348, !349, !350, !3174, !3175}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !345, file: !301, line: 169, baseType: !313, size: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !345, file: !301, line: 170, baseType: !323, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !345, file: !301, line: 171, baseType: !131, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !345, file: !301, line: 172, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!307, !354, !228, !344, !276, !528, !323}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !356)
!356 = !{!357, !375, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3157, !3158, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !355, file: !44, line: 920, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !44, line: 917, size: 128, elements: !359)
!359 = !{!360, !366}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !358, file: !44, line: 918, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !362, line: 58, size: 64, elements: !363)
!362 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !362, line: 59, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !358, file: !44, line: 919, baseType: !367, size: 128, align: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !127, line: 216, size: 128, align: 64, elements: !368)
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !127, line: 217, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !367, file: !127, line: 218, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !370}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !355, file: !44, line: 921, baseType: !376, size: 128, offset: 128)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !377, line: 8, size: 128, elements: !378)
!377 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !376, file: !377, line: 9, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !382, line: 18, flags: DIFlagFwdDecl)
!382 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !376, file: !377, line: 10, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !382, line: 89, size: 1536, elements: !386)
!386 = !{!387, !388, !398, !406, !407, !425, !3107, !3109, !3121, !3122, !3123, !3124, !3125, !3131, !3132, !3133}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !385, file: !382, line: 91, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !385, file: !382, line: 92, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !390, line: 277, baseType: !391)
!390 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !390, line: 277, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !391, file: !390, line: 277, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !390, line: 70, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !390, line: 65, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !395, file: !390, line: 66, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !385, file: !382, line: 93, baseType: !399, size: 128, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !400, line: 38, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !400, line: 39, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !399, file: !400, line: 39, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !385, file: !382, line: 94, baseType: !384, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !385, file: !382, line: 95, baseType: !408, size: 128, offset: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !382, line: 47, size: 128, elements: !409)
!409 = !{!410, !422}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !382, line: 48, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !382, line: 48, size: 64, elements: !412)
!412 = !{!413, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !382, line: 49, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !382, line: 49, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !414, file: !382, line: 50, baseType: !199, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !414, file: !382, line: 50, baseType: !199, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !411, file: !382, line: 52, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !138, line: 23, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !140, line: 31, baseType: !421)
!421 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !382, line: 54, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !385, file: !382, line: 96, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !428)
!428 = !{!429, !430, !431, !439, !446, !447, !595, !2818, !2819, !2820, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !3083, !3091, !3092, !3093, !3103, !3104, !3105, !3106}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !427, file: !44, line: 611, baseType: !317, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !427, file: !44, line: 612, baseType: !318, size: 16, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !427, file: !44, line: 613, baseType: !432, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !433, line: 23, baseType: !434)
!433 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 21, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !434, file: !433, line: 22, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !127, line: 32, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !309, line: 49, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !427, file: !44, line: 614, baseType: !440, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !433, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !433, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !433, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !127, line: 33, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !309, line: 50, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !427, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !427, file: !44, line: 622, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !451)
!451 = !{!452, !456, !469, !473, !479, !483, !489, !493, !497, !501, !505, !506, !512, !516, !542, !571, !575, !581, !586, !590, !591}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !450, file: !44, line: 1865, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!384, !426, !384, !7}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !450, file: !44, line: 1866, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!217, !384, !426, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !462, line: 10, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !468}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !461, file: !462, line: 11, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !131}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !461, file: !462, line: 12, baseType: !131, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !450, file: !44, line: 1867, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!189, !426, !189}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !450, file: !44, line: 1868, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !426, !189}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !450, file: !44, line: 1870, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!189, !384, !276, !189}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !450, file: !44, line: 1872, baseType: !484, size: 64, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!189, !426, !384, !317, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !127, line: 30, baseType: !488)
!488 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !450, file: !44, line: 1873, baseType: !490, size: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!189, !384, !426, !384}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !450, file: !44, line: 1874, baseType: !494, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!189, !426, !384}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !450, file: !44, line: 1875, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!189, !426, !384, !217}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !450, file: !44, line: 1876, baseType: !502, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!189, !426, !384, !317}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !450, file: !44, line: 1877, baseType: !494, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !450, file: !44, line: 1878, baseType: !507, size: 64, offset: 704)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!189, !426, !384, !317, !510}
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !127, line: 16, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !127, line: 13, baseType: !199)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !450, file: !44, line: 1879, baseType: !513, size: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!189, !426, !384, !426, !384, !7}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !450, file: !44, line: 1881, baseType: !517, size: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!189, !384, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !531, !539, !540, !541}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !521, file: !44, line: 220, baseType: !7, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !521, file: !44, line: 221, baseType: !317, size: 16, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !521, file: !44, line: 222, baseType: !432, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !521, file: !44, line: 223, baseType: !440, size: 32, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !521, file: !44, line: 224, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !127, line: 46, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !309, line: 88, baseType: !530)
!530 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !521, file: !44, line: 225, baseType: !532, size: 128, offset: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !533, line: 13, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !532, file: !533, line: 14, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !533, line: 8, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !140, line: 30, baseType: !530)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !532, file: !533, line: 15, baseType: !311, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !521, file: !44, line: 226, baseType: !532, size: 128, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !521, file: !44, line: 227, baseType: !532, size: 128, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !521, file: !44, line: 234, baseType: !354, size: 64, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !450, file: !44, line: 1882, baseType: !543, size: 64, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!189, !546, !548, !199, !7}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !550, line: 22, size: 1152, elements: !551)
!550 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!551 = !{!552, !553, !554, !555, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !549, file: !550, line: 23, baseType: !199, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !549, file: !550, line: 24, baseType: !317, size: 16, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !549, file: !550, line: 25, baseType: !7, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !549, file: !550, line: 26, baseType: !556, size: 32, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 104, baseType: !199)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !549, file: !550, line: 27, baseType: !419, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !549, file: !550, line: 28, baseType: !419, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !549, file: !550, line: 37, baseType: !419, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !549, file: !550, line: 38, baseType: !510, size: 32, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !549, file: !550, line: 39, baseType: !510, size: 32, offset: 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !549, file: !550, line: 40, baseType: !432, size: 32, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !549, file: !550, line: 41, baseType: !440, size: 32, offset: 416)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !549, file: !550, line: 42, baseType: !528, size: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !549, file: !550, line: 43, baseType: !532, size: 128, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !549, file: !550, line: 44, baseType: !532, size: 128, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !549, file: !550, line: 45, baseType: !532, size: 128, offset: 768)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !549, file: !550, line: 46, baseType: !532, size: 128, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !549, file: !550, line: 47, baseType: !419, size: 64, offset: 1024)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !549, file: !550, line: 48, baseType: !419, size: 64, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !450, file: !44, line: 1883, baseType: !572, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!307, !384, !276, !323}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !450, file: !44, line: 1884, baseType: !576, size: 64, offset: 1024)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!189, !426, !579, !419, !419}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !450, file: !44, line: 1886, baseType: !582, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!189, !426, !585, !189}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !450, file: !44, line: 1887, baseType: !587, size: 64, offset: 1152)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!189, !426, !384, !354, !7, !317}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !450, file: !44, line: 1890, baseType: !502, size: 64, offset: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !450, file: !44, line: 1891, baseType: !592, size: 64, offset: 1280)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!189, !426, !477, !189}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !427, file: !44, line: 623, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !651, !2425, !2507, !2590, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2606, !2610, !2611, !2614, !2615, !2618, !2619, !2620, !2661, !2688, !2689, !2690, !2691, !2692, !2693, !2696, !2698, !2705, !2706, !2708, !2709, !2710, !2769, !2770, !2785, !2786, !2787, !2788, !2789, !2792, !2793, !2794, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !597, file: !44, line: 1417, baseType: !149, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !597, file: !44, line: 1418, baseType: !510, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !597, file: !44, line: 1419, baseType: !141, size: 8, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !597, file: !44, line: 1420, baseType: !326, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !597, file: !44, line: 1421, baseType: !528, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !597, file: !44, line: 1422, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !607)
!607 = !{!608, !609, !610, !617, !621, !625, !629, !630, !631, !641, !644, !645, !646, !648, !649, !650}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !606, file: !44, line: 2229, baseType: !217, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !606, file: !44, line: 2230, baseType: !189, size: 32, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !606, file: !44, line: 2238, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!189, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !616, line: 28, flags: DIFlagFwdDecl)
!616 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!617 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !606, file: !44, line: 2239, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !606, file: !44, line: 2240, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!384, !605, !189, !217, !131}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !606, file: !44, line: 2242, baseType: !626, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !596}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !606, file: !44, line: 2243, baseType: !128, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !44, line: 2244, baseType: !605, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !606, file: !44, line: 2245, baseType: !632, size: 64, offset: 512)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !127, line: 182, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !632, file: !127, line: 183, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !127, line: 186, size: 128, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !127, line: 187, baseType: !635, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !636, file: !127, line: 187, baseType: !640, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !606, file: !44, line: 2247, baseType: !642, offset: 576)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !643, line: 187, elements: !249)
!643 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!644 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !606, file: !44, line: 2248, baseType: !642, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !606, file: !44, line: 2249, baseType: !642, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !606, file: !44, line: 2250, baseType: !647, offset: 576)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, elements: !277)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !606, file: !44, line: 2252, baseType: !642, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !606, file: !44, line: 2253, baseType: !642, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !606, file: !44, line: 2254, baseType: !642, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !597, file: !44, line: 1423, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !655)
!655 = !{!656, !660, !664, !665, !669, !675, !679, !680, !681, !685, !689, !690, !691, !692, !698, !703, !704, !711, !712, !713, !714, !2409, !2424}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !654, file: !44, line: 1936, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!426, !596}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !654, file: !44, line: 1937, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !426}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !654, file: !44, line: 1938, baseType: !661, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !654, file: !44, line: 1940, baseType: !666, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !426, !189}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !654, file: !44, line: 1941, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!189, !426, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !654, file: !44, line: 1942, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!189, !426}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !654, file: !44, line: 1943, baseType: !661, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !654, file: !44, line: 1944, baseType: !626, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !654, file: !44, line: 1945, baseType: !682, size: 64, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!189, !596, !189}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !654, file: !44, line: 1946, baseType: !686, size: 64, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!189, !596}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !654, file: !44, line: 1947, baseType: !686, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !654, file: !44, line: 1948, baseType: !686, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !654, file: !44, line: 1949, baseType: !686, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !654, file: !44, line: 1950, baseType: !693, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!189, !384, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !654, file: !44, line: 1951, baseType: !699, size: 64, offset: 896)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!189, !596, !702, !276}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !654, file: !44, line: 1952, baseType: !626, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !654, file: !44, line: 1954, baseType: !705, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!189, !708, !384}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !710, line: 539, flags: DIFlagFwdDecl)
!710 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!711 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !654, file: !44, line: 1955, baseType: !705, size: 64, offset: 1088)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !654, file: !44, line: 1956, baseType: !705, size: 64, offset: 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !654, file: !44, line: 1957, baseType: !705, size: 64, offset: 1216)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !654, file: !44, line: 1963, baseType: !715, size: 64, offset: 1280)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!189, !596, !718, !126}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !720, line: 68, size: 512, align: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !2401, !2408}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !720, line: 69, baseType: !326, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 77, baseType: !724, size: 320, offset: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 77, size: 320, elements: !725)
!725 = !{!726, !913, !918, !946, !954, !960, !2332, !2400}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 78, baseType: !727, size: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 78, size: 320, elements: !728)
!728 = !{!729, !730, !911, !912}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !727, file: !720, line: 84, baseType: !149, size: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !727, file: !720, line: 86, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !733)
!733 = !{!734, !735, !742, !743, !748, !763, !779, !780, !781, !782, !904, !905, !908, !909, !910}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !732, file: !44, line: 452, baseType: !426, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !732, file: !44, line: 453, baseType: !736, size: 128, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !737, line: 292, size: 128, elements: !738)
!737 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !740, !741}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !736, file: !737, line: 293, baseType: !235)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !736, file: !737, line: 295, baseType: !126, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !736, file: !737, line: 296, baseType: !131, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !732, file: !44, line: 454, baseType: !126, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !732, file: !44, line: 455, baseType: !744, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !127, line: 168, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 166, size: 32, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !745, file: !127, line: 167, baseType: !189, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !732, file: !44, line: 460, baseType: !749, size: 128, offset: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !750, line: 125, size: 128, elements: !751)
!750 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !762}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !749, file: !750, line: 126, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !750, line: 31, size: 64, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !753, file: !750, line: 32, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !750, line: 24, size: 192, align: 64, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !757, file: !750, line: 25, baseType: !326, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !757, file: !750, line: 26, baseType: !756, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !757, file: !750, line: 27, baseType: !756, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !749, file: !750, line: 127, baseType: !756, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !732, file: !44, line: 461, baseType: !764, size: 256, offset: 384)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !765, line: 35, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!766 = !{!767, !775, !776, !778}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !765, line: 36, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !127, line: 175, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 173, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !127, line: 174, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !138, line: 22, baseType: !537)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 42, baseType: !768, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 46, baseType: !777, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !236, line: 29, baseType: !243)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 47, baseType: !149, size: 128, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !732, file: !44, line: 462, baseType: !326, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !732, file: !44, line: 463, baseType: !326, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !732, file: !44, line: 464, baseType: !326, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !732, file: !44, line: 465, baseType: !783, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !786)
!786 = !{!787, !791, !795, !799, !803, !807, !813, !819, !823, !828, !832, !836, !840, !868, !872, !878, !879, !880, !884, !889, !893, !900}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !785, file: !44, line: 368, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!189, !718, !673}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !785, file: !44, line: 369, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!189, !354, !718}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !785, file: !44, line: 372, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!189, !731, !673}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !785, file: !44, line: 375, baseType: !800, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!189, !718}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !785, file: !44, line: 381, baseType: !804, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!189, !354, !731, !152, !7}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !785, file: !44, line: 383, baseType: !808, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811}
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !785, file: !44, line: 385, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!189, !354, !731, !528, !7, !7, !817, !818}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !785, file: !44, line: 388, baseType: !820, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!189, !354, !731, !528, !7, !7, !718, !131}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !785, file: !44, line: 393, baseType: !824, size: 64, offset: 512)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!827, !731, !827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !127, line: 125, baseType: !419)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !785, file: !44, line: 394, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !718, !7, !7}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !785, file: !44, line: 395, baseType: !833, size: 64, offset: 640)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!189, !718, !126}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !785, file: !44, line: 396, baseType: !837, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !718}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !785, file: !44, line: 397, baseType: !841, size: 64, offset: 768)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!307, !844, !866}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !846)
!846 = !{!847, !848, !849, !853, !854, !855, !858, !859}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !845, file: !44, line: 321, baseType: !354, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !845, file: !44, line: 326, baseType: !528, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !845, file: !44, line: 327, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !844, !311, !311}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !845, file: !44, line: 328, baseType: !131, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !845, file: !44, line: 329, baseType: !189, size: 32, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !845, file: !44, line: 330, baseType: !856, size: 16, offset: 288)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !138, line: 19, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !140, line: 24, baseType: !318)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !845, file: !44, line: 331, baseType: !856, size: 16, offset: 304)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !44, line: 332, baseType: !860, size: 64, offset: 320)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !44, line: 332, size: 64, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !860, file: !44, line: 333, baseType: !7, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !860, file: !44, line: 334, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !785, file: !44, line: 402, baseType: !869, size: 64, offset: 832)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!189, !731, !718, !718, !5}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !785, file: !44, line: 404, baseType: !873, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!487, !718, !876}
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !877, line: 305, baseType: !7)
!877 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !785, file: !44, line: 405, baseType: !837, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !785, file: !44, line: 406, baseType: !800, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !785, file: !44, line: 407, baseType: !881, size: 64, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!189, !718, !326, !326}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !785, file: !44, line: 409, baseType: !885, size: 64, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !718, !888, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !785, file: !44, line: 410, baseType: !890, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!189, !731, !718}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !785, file: !44, line: 413, baseType: !894, size: 64, offset: 1280)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!189, !897, !354, !899}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !785, file: !44, line: 415, baseType: !901, size: 64, offset: 1344)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !354}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !44, line: 466, baseType: !326, size: 64, offset: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !732, file: !44, line: 467, baseType: !906, size: 32, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !907, line: 8, baseType: !199)
!907 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!908 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !732, file: !44, line: 468, baseType: !235, offset: 992)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !732, file: !44, line: 469, baseType: !149, size: 128, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !732, file: !44, line: 470, baseType: !131, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !727, file: !720, line: 87, baseType: !326, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !727, file: !720, line: 94, baseType: !326, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 96, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 96, size: 64, elements: !915)
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !914, file: !720, line: 101, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !127, line: 143, baseType: !419)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 103, baseType: !919, size: 320)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 103, size: 320, elements: !920)
!920 = !{!921, !931, !934, !935}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !720, line: 104, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !720, line: 104, size: 128, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !922, file: !720, line: 105, baseType: !149, size: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !720, line: 106, baseType: !926, size: 128)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !720, line: 106, size: 128, elements: !927)
!927 = !{!928, !929, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !720, line: 107, baseType: !718, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !926, file: !720, line: 109, baseType: !189, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !926, file: !720, line: 110, baseType: !189, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !919, file: !720, line: 117, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !720, line: 117, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !919, file: !720, line: 119, baseType: !131, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !720, line: 120, baseType: !936, size: 64, offset: 256)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !720, line: 120, size: 64, elements: !937)
!937 = !{!938, !939, !940}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !936, file: !720, line: 121, baseType: !131, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !936, file: !720, line: 122, baseType: !326, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !720, line: 123, baseType: !941, size: 32)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !720, line: 123, size: 32, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !941, file: !720, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !941, file: !720, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !941, file: !720, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 130, baseType: !947, size: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 130, size: 192, elements: !948)
!948 = !{!949, !950, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !947, file: !720, line: 131, baseType: !326, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !947, file: !720, line: 134, baseType: !141, size: 8, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !947, file: !720, line: 135, baseType: !141, size: 8, offset: 72)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !947, file: !720, line: 136, baseType: !744, size: 32, offset: 96)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !947, file: !720, line: 137, baseType: !7, size: 32, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 139, baseType: !955, size: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 139, size: 256, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !955, file: !720, line: 140, baseType: !326, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !955, file: !720, line: 141, baseType: !744, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !955, file: !720, line: 143, baseType: !149, size: 128, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 145, baseType: !961, size: 256)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 145, size: 256, elements: !962)
!962 = !{!963, !964, !966, !967, !2331}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !961, file: !720, line: 146, baseType: !326, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !961, file: !720, line: 147, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !710, line: 509, baseType: !718)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !961, file: !720, line: 148, baseType: !326, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !720, line: 149, baseType: !968, size: 64, offset: 192)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !720, line: 149, size: 64, elements: !969)
!969 = !{!970, !2330}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !968, file: !720, line: 150, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !720, line: 388, size: 7296, elements: !973)
!973 = !{!974, !2326}
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !720, line: 389, baseType: !975, size: 7296)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !720, line: 389, size: 7296, elements: !976)
!976 = !{!977, !1095, !1096, !1097, !1101, !1102, !1103, !1104, !1105, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1146, !1154, !1157, !1203, !1204, !2310, !2311, !2314, !2315, !2316, !2319, !2320, !2321, !2324, !2325}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !975, file: !720, line: 390, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !720, line: 305, size: 1472, elements: !980)
!980 = !{!981, !982, !983, !984, !985, !986, !987, !988, !995, !996, !1001, !1002, !1005, !1089, !1090, !1091, !1092, !1093}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !979, file: !720, line: 308, baseType: !326, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !979, file: !720, line: 309, baseType: !326, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !979, file: !720, line: 313, baseType: !978, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !979, file: !720, line: 313, baseType: !978, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !979, file: !720, line: 315, baseType: !757, size: 192, align: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !979, file: !720, line: 323, baseType: !326, size: 64, offset: 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !979, file: !720, line: 327, baseType: !971, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !979, file: !720, line: 333, baseType: !989, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !710, line: 284, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !710, line: 284, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !990, file: !710, line: 284, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !994, line: 19, baseType: !326)
!994 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !979, file: !720, line: 334, baseType: !326, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !979, file: !720, line: 343, baseType: !997, size: 256, offset: 704)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !979, file: !720, line: 340, size: 256, elements: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !997, file: !720, line: 341, baseType: !757, size: 192, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !997, file: !720, line: 342, baseType: !326, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !979, file: !720, line: 351, baseType: !149, size: 128, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !979, file: !720, line: 353, baseType: !1003, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !720, line: 353, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !979, file: !720, line: 356, baseType: !1006, size: 64, offset: 1152)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1009)
!1009 = !{!1010, !1014, !1015, !1019, !1023, !1063, !1067, !1071, !1075, !1076, !1077, !1081, !1085}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1008, file: !14, line: 558, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !978}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1008, file: !14, line: 559, baseType: !1011, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1008, file: !14, line: 560, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!189, !978, !326}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1008, file: !14, line: 561, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!189, !978}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1008, file: !14, line: 562, baseType: !1024, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !720, line: 682, baseType: !7)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1043, !1050, !1056, !1057, !1058, !1060, !1062}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1029, file: !14, line: 509, baseType: !978, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1029, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1029, file: !14, line: 511, baseType: !126, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1029, file: !14, line: 512, baseType: !326, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1029, file: !14, line: 513, baseType: !326, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1029, file: !14, line: 514, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !710, line: 385, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 385, size: 64, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1039, file: !710, line: 385, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !994, line: 15, baseType: !326)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1029, file: !14, line: 516, baseType: !1044, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !710, line: 359, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 359, size: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1046, file: !710, line: 359, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !994, line: 16, baseType: !326)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1029, file: !14, line: 519, baseType: !1051, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !994, line: 21, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !994, line: 21, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1052, file: !994, line: 21, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !994, line: 14, baseType: !326)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1029, file: !14, line: 521, baseType: !718, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1029, file: !14, line: 522, baseType: !718, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1029, file: !14, line: 528, baseType: !1059, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1029, file: !14, line: 532, baseType: !1061, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1029, file: !14, line: 536, baseType: !965, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1008, file: !14, line: 563, baseType: !1064, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1027, !1028, !13}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1008, file: !14, line: 565, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1028, !326, !326}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1008, file: !14, line: 567, baseType: !1072, size: 64, offset: 448)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!326, !978}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1008, file: !14, line: 571, baseType: !1024, size: 64, offset: 512)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1008, file: !14, line: 574, baseType: !1024, size: 64, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1008, file: !14, line: 579, baseType: !1078, size: 64, offset: 640)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!189, !978, !326, !131, !189, !189}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1008, file: !14, line: 585, baseType: !1082, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!217, !978}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1008, file: !14, line: 615, baseType: !1086, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!718, !978, !326}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !979, file: !720, line: 359, baseType: !326, size: 64, offset: 1216)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !979, file: !720, line: 361, baseType: !354, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !979, file: !720, line: 362, baseType: !131, size: 64, offset: 1344)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !979, file: !720, line: 365, baseType: !768, size: 64, offset: 1408)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !979, file: !720, line: 373, baseType: !1094, offset: 1472)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !720, line: 296, elements: !249)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !975, file: !720, line: 391, baseType: !753, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !975, file: !720, line: 392, baseType: !419, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !975, file: !720, line: 394, baseType: !1098, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!326, !354, !326, !326, !326, !326}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !975, file: !720, line: 398, baseType: !326, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !975, file: !720, line: 399, baseType: !326, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !975, file: !720, line: 405, baseType: !326, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !975, file: !720, line: 406, baseType: !326, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !975, file: !720, line: 407, baseType: !1106, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !710, line: 286, baseType: !1108)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 286, size: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1108, file: !710, line: 286, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !994, line: 18, baseType: !326)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !975, file: !720, line: 416, baseType: !744, size: 32, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !975, file: !720, line: 428, baseType: !744, size: 32, offset: 608)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !975, file: !720, line: 437, baseType: !744, size: 32, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !975, file: !720, line: 447, baseType: !744, size: 32, offset: 672)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !975, file: !720, line: 450, baseType: !768, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !975, file: !720, line: 452, baseType: !189, size: 32, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !975, file: !720, line: 454, baseType: !235, offset: 800)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !975, file: !720, line: 457, baseType: !764, size: 256, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !975, file: !720, line: 459, baseType: !149, size: 128, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !975, file: !720, line: 466, baseType: !326, size: 64, offset: 1216)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !975, file: !720, line: 467, baseType: !326, size: 64, offset: 1280)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !975, file: !720, line: 469, baseType: !326, size: 64, offset: 1344)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !975, file: !720, line: 470, baseType: !326, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !975, file: !720, line: 471, baseType: !770, size: 64, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !975, file: !720, line: 472, baseType: !326, size: 64, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !975, file: !720, line: 473, baseType: !326, size: 64, offset: 1600)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !975, file: !720, line: 474, baseType: !326, size: 64, offset: 1664)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !975, file: !720, line: 475, baseType: !326, size: 64, offset: 1728)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !975, file: !720, line: 477, baseType: !235, offset: 1792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !975, file: !720, line: 478, baseType: !326, size: 64, offset: 1792)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !975, file: !720, line: 478, baseType: !326, size: 64, offset: 1856)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !975, file: !720, line: 478, baseType: !326, size: 64, offset: 1920)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !975, file: !720, line: 478, baseType: !326, size: 64, offset: 1984)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !975, file: !720, line: 479, baseType: !326, size: 64, offset: 2048)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !975, file: !720, line: 479, baseType: !326, size: 64, offset: 2112)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !975, file: !720, line: 479, baseType: !326, size: 64, offset: 2176)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !975, file: !720, line: 480, baseType: !326, size: 64, offset: 2240)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !975, file: !720, line: 480, baseType: !326, size: 64, offset: 2304)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !975, file: !720, line: 480, baseType: !326, size: 64, offset: 2368)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !975, file: !720, line: 480, baseType: !326, size: 64, offset: 2432)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !975, file: !720, line: 482, baseType: !1143, size: 2816, offset: 2496)
!1143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 2816, elements: !1144)
!1144 = !{!1145}
!1145 = !DISubrange(count: 44)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !975, file: !720, line: 488, baseType: !1147, size: 256, offset: 5312)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1148, line: 60, size: 256, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1147, file: !1148, line: 61, baseType: !1151, size: 256)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 256, elements: !1152)
!1152 = !{!1153}
!1153 = !DISubrange(count: 4)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !975, file: !720, line: 490, baseType: !1155, size: 64, offset: 5568)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !720, line: 490, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !975, file: !720, line: 493, baseType: !1158, size: 896, offset: 5632)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1159, line: 53, baseType: !1160)
!1159 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1159, line: 13, size: 896, elements: !1161)
!1161 = !{!1162, !1163, !1164, !1165, !1168, !1169, !1176, !1177, !1197, !1198, !1199}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1160, file: !1159, line: 18, baseType: !419, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1160, file: !1159, line: 28, baseType: !770, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1160, file: !1159, line: 31, baseType: !764, size: 256, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1160, file: !1159, line: 32, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1159, line: 32, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1160, file: !1159, line: 37, baseType: !318, size: 16, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1160, file: !1159, line: 40, baseType: !1170, size: 192, offset: 512)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1171, line: 53, size: 192, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1172 = !{!1173, !1174, !1175}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1170, file: !1171, line: 54, baseType: !768, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1170, file: !1171, line: 55, baseType: !235, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1170, file: !1171, line: 59, baseType: !149, size: 128, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1160, file: !1159, line: 41, baseType: !131, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1160, file: !1159, line: 42, baseType: !1178, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1181, line: 13, size: 896, elements: !1182)
!1181 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1180, file: !1181, line: 14, baseType: !131, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1180, file: !1181, line: 15, baseType: !326, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1180, file: !1181, line: 17, baseType: !326, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1180, file: !1181, line: 17, baseType: !326, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1180, file: !1181, line: 19, baseType: !311, size: 64, offset: 256)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1180, file: !1181, line: 21, baseType: !311, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1180, file: !1181, line: 22, baseType: !311, size: 64, offset: 384)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1180, file: !1181, line: 23, baseType: !311, size: 64, offset: 448)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1180, file: !1181, line: 24, baseType: !311, size: 64, offset: 512)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1180, file: !1181, line: 25, baseType: !311, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1180, file: !1181, line: 26, baseType: !311, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1180, file: !1181, line: 27, baseType: !311, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1180, file: !1181, line: 28, baseType: !311, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1180, file: !1181, line: 29, baseType: !311, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1160, file: !1159, line: 44, baseType: !744, size: 32, offset: 832)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1160, file: !1159, line: 50, baseType: !856, size: 16, offset: 864)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1160, file: !1159, line: 51, baseType: !1200, size: 16, offset: 880)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !138, line: 18, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !140, line: 23, baseType: !1202)
!1202 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !720, line: 495, baseType: !326, size: 64, offset: 6528)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !975, file: !720, line: 497, baseType: !1205, size: 64, offset: 6592)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !720, line: 381, size: 384, elements: !1207)
!1207 = !{!1208, !1209, !2309}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1206, file: !720, line: 382, baseType: !744, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1206, file: !720, line: 383, baseType: !1210, size: 128, offset: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !720, line: 376, size: 128, elements: !1211)
!1211 = !{!1212, !2307}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1210, file: !720, line: 377, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1215, line: 640, size: 48640, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1223, !1225, !1226, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1243, !1261, !1272, !1355, !1356, !1357, !1368, !1369, !1371, !1372, !1373, !1374, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1453, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1491, !1493, !1494, !1495, !1507, !1508, !1509, !1510, !1511, !1512, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1536, !1541, !1725, !1726, !1727, !1728, !1732, !1735, !1738, !1741, !1744, !1748, !1849, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1895, !1896, !1897, !1898, !1899, !1904, !1905, !1906, !1909, !1910, !1913, !1916, !1919, !1922, !1965, !1968, !1969, !2048, !2049, !2052, !2053, !2056, !2057, !2058, !2062, !2063, !2064, !2077, !2078, !2079, !2089, !2094, !2097, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1214, file: !1215, line: 646, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1219, line: 56, size: 128, elements: !1220)
!1219 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1219, line: 57, baseType: !326, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1218, file: !1219, line: 58, baseType: !199, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1214, file: !1215, line: 649, baseType: !1224, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !311)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1214, file: !1215, line: 657, baseType: !131, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1214, file: !1215, line: 658, baseType: !1227, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1228, line: 113, baseType: !1229)
!1228 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1228, line: 111, size: 32, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1229, file: !1228, line: 112, baseType: !744, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 660, baseType: !7, size: 32, offset: 288)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1214, file: !1215, line: 661, baseType: !7, size: 32, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1214, file: !1215, line: 684, baseType: !189, size: 32, offset: 352)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1214, file: !1215, line: 686, baseType: !189, size: 32, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1214, file: !1215, line: 687, baseType: !189, size: 32, offset: 416)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1214, file: !1215, line: 688, baseType: !189, size: 32, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1214, file: !1215, line: 689, baseType: !7, size: 32, offset: 480)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1214, file: !1215, line: 691, baseType: !1240, size: 64, offset: 512)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1242)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1215, line: 691, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1214, file: !1215, line: 692, baseType: !1244, size: 832, offset: 576)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1215, line: 451, size: 832, elements: !1245)
!1245 = !{!1246, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1244, file: !1215, line: 453, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1215, line: 325, size: 128, elements: !1248)
!1248 = !{!1249, !1250}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1247, file: !1215, line: 326, baseType: !326, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1247, file: !1215, line: 327, baseType: !199, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1244, file: !1215, line: 454, baseType: !757, size: 192, align: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1244, file: !1215, line: 455, baseType: !149, size: 128, offset: 320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1244, file: !1215, line: 456, baseType: !7, size: 32, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1244, file: !1215, line: 458, baseType: !419, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1244, file: !1215, line: 459, baseType: !419, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1244, file: !1215, line: 460, baseType: !419, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1244, file: !1215, line: 461, baseType: !419, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1244, file: !1215, line: 463, baseType: !419, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1244, file: !1215, line: 465, baseType: !1260, offset: 832)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1215, line: 415, elements: !249)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1214, file: !1215, line: 693, baseType: !1262, size: 384, offset: 1408)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1215, line: 489, size: 384, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1262, file: !1215, line: 490, baseType: !149, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1262, file: !1215, line: 491, baseType: !326, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1262, file: !1215, line: 492, baseType: !326, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1262, file: !1215, line: 493, baseType: !7, size: 32, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1262, file: !1215, line: 494, baseType: !318, size: 16, offset: 288)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1262, file: !1215, line: 495, baseType: !318, size: 16, offset: 304)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1262, file: !1215, line: 497, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1214, file: !1215, line: 697, baseType: !1273, size: 1792, offset: 1792)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1215, line: 507, size: 1792, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1352, !1353}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1273, file: !1215, line: 508, baseType: !757, size: 192, align: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1273, file: !1215, line: 515, baseType: !419, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1273, file: !1215, line: 516, baseType: !419, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1273, file: !1215, line: 517, baseType: !419, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1273, file: !1215, line: 518, baseType: !419, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1273, file: !1215, line: 519, baseType: !419, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1273, file: !1215, line: 526, baseType: !774, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1273, file: !1215, line: 527, baseType: !419, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !1215, line: 528, baseType: !7, size: 32, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1273, file: !1215, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1273, file: !1215, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1273, file: !1215, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1273, file: !1215, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1273, file: !1215, line: 563, baseType: !1289, size: 512, offset: 704)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1290)
!1290 = !{!1291, !1299, !1300, !1305, !1348, !1349, !1350, !1351}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1289, file: !20, line: 119, baseType: !1292, size: 256)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1293, line: 9, size: 256, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1292, file: !1293, line: 10, baseType: !757, size: 192, align: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1292, file: !1293, line: 11, baseType: !1297, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1298, line: 29, baseType: !774)
!1298 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1289, file: !20, line: 120, baseType: !1297, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1289, file: !20, line: 121, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!19, !1304}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1289, file: !20, line: 122, baseType: !1306, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1308)
!1308 = !{!1309, !1329, !1330, !1333, !1338, !1339, !1343, !1347}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1307, file: !20, line: 160, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1311, file: !20, line: 215, baseType: !777)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1311, file: !20, line: 216, baseType: !7, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1311, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1311, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1311, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1311, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1311, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1311, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1311, file: !20, line: 233, baseType: !1297, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1311, file: !20, line: 234, baseType: !1304, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1311, file: !20, line: 235, baseType: !1297, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1311, file: !20, line: 236, baseType: !1304, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1311, file: !20, line: 237, baseType: !1326, size: 4096, offset: 512)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 4096, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 8)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1307, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1307, file: !20, line: 162, baseType: !1331, size: 32, offset: 96)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !127, line: 27, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !309, line: 96, baseType: !189)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1307, file: !20, line: 163, baseType: !1334, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !390, line: 276, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !390, line: 276, size: 32, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1335, file: !390, line: 276, baseType: !394, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1307, file: !20, line: 164, baseType: !1304, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1307, file: !20, line: 165, baseType: !1340, size: 128, offset: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1293, line: 14, size: 128, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1340, file: !1293, line: 15, baseType: !749, size: 128)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1307, file: !20, line: 166, baseType: !1344, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!1297}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1307, file: !20, line: 167, baseType: !1297, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1289, file: !20, line: 123, baseType: !137, size: 8, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1289, file: !20, line: 124, baseType: !137, size: 8, offset: 456)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1289, file: !20, line: 125, baseType: !137, size: 8, offset: 464)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1289, file: !20, line: 126, baseType: !137, size: 8, offset: 472)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1273, file: !1215, line: 572, baseType: !1289, size: 512, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1273, file: !1215, line: 580, baseType: !1354, size: 64, offset: 1728)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1214, file: !1215, line: 721, baseType: !7, size: 32, offset: 3584)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1214, file: !1215, line: 722, baseType: !189, size: 32, offset: 3616)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1214, file: !1215, line: 723, baseType: !1358, size: 64, offset: 3648)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1361, line: 17, baseType: !1362)
!1361 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1361, line: 17, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1362, file: !1361, line: 17, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DISubrange(count: 1)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1214, file: !1215, line: 724, baseType: !1360, size: 64, offset: 3712)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1214, file: !1215, line: 749, baseType: !1370, offset: 3776)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1215, line: 290, elements: !249)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1214, file: !1215, line: 751, baseType: !149, size: 128, offset: 3776)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1214, file: !1215, line: 757, baseType: !971, size: 64, offset: 3904)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1214, file: !1215, line: 758, baseType: !971, size: 64, offset: 3968)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1214, file: !1215, line: 761, baseType: !1375, size: 320, offset: 4032)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1148, line: 34, size: 320, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1375, file: !1148, line: 35, baseType: !419, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1375, file: !1148, line: 36, baseType: !1379, size: 256, offset: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 256, elements: !1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1214, file: !1215, line: 766, baseType: !189, size: 32, offset: 4352)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1214, file: !1215, line: 767, baseType: !189, size: 32, offset: 4384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1214, file: !1215, line: 768, baseType: !189, size: 32, offset: 4416)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1214, file: !1215, line: 770, baseType: !189, size: 32, offset: 4448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1214, file: !1215, line: 772, baseType: !326, size: 64, offset: 4480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1214, file: !1215, line: 775, baseType: !7, size: 32, offset: 4544)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1214, file: !1215, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1214, file: !1215, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1214, file: !1215, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1214, file: !1215, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1214, file: !1215, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1214, file: !1215, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1214, file: !1215, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1214, file: !1215, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1214, file: !1215, line: 831, baseType: !326, size: 64, offset: 4672)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1214, file: !1215, line: 833, baseType: !1396, size: 384, offset: 4736)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1397)
!1397 = !{!1398, !1403}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1396, file: !25, line: 26, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!311, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !25, line: 27, baseType: !1404, size: 320, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1396, file: !25, line: 27, size: 320, elements: !1405)
!1405 = !{!1406, !1416, !1443}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1404, file: !25, line: 36, baseType: !1407, size: 320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 29, size: 320, elements: !1408)
!1408 = !{!1409, !1411, !1412, !1413, !1414, !1415}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1407, file: !25, line: 30, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1407, file: !25, line: 31, baseType: !199, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !25, line: 32, baseType: !199, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1407, file: !25, line: 33, baseType: !199, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1407, file: !25, line: 34, baseType: !419, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1407, file: !25, line: 35, baseType: !1410, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1404, file: !25, line: 46, baseType: !1417, size: 192)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 38, size: 192, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1442}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1417, file: !25, line: 39, baseType: !1331, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !25, line: 41, baseType: !1422, size: 64, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !25, line: 41, size: 64, elements: !1423)
!1423 = !{!1424, !1432}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1422, file: !25, line: 42, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1427, line: 7, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1426, file: !1427, line: 8, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !309, line: 93, baseType: !530)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1426, file: !1427, line: 9, baseType: !530, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1422, file: !25, line: 43, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1435, line: 7, size: 64, elements: !1436)
!1435 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !{!1437, !1441}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 8, baseType: !1438, size: 32)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1435, line: 5, baseType: !1439)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !138, line: 20, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !140, line: 26, baseType: !189)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 9, baseType: !1439, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1417, file: !25, line: 45, baseType: !419, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1404, file: !25, line: 54, baseType: !1444, size: 256)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1404, file: !25, line: 48, size: 256, elements: !1445)
!1445 = !{!1446, !1449, !1450, !1451, !1452}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1444, file: !25, line: 49, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1444, file: !25, line: 50, baseType: !189, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1444, file: !25, line: 51, baseType: !189, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !25, line: 52, baseType: !326, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !25, line: 53, baseType: !326, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1214, file: !1215, line: 835, baseType: !1454, size: 32, offset: 5120)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !127, line: 22, baseType: !1455)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !309, line: 28, baseType: !189)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1214, file: !1215, line: 836, baseType: !1454, size: 32, offset: 5152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1214, file: !1215, line: 840, baseType: !326, size: 64, offset: 5184)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1214, file: !1215, line: 849, baseType: !1213, size: 64, offset: 5248)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1214, file: !1215, line: 852, baseType: !1213, size: 64, offset: 5312)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1214, file: !1215, line: 857, baseType: !149, size: 128, offset: 5376)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1214, file: !1215, line: 858, baseType: !149, size: 128, offset: 5504)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1214, file: !1215, line: 859, baseType: !1213, size: 64, offset: 5632)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1214, file: !1215, line: 867, baseType: !149, size: 128, offset: 5696)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1214, file: !1215, line: 868, baseType: !149, size: 128, offset: 5824)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1214, file: !1215, line: 871, baseType: !1466, size: 64, offset: 5952)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1474, !1475, !1482, !1483}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1467, file: !53, line: 61, baseType: !1227, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1467, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1467, file: !53, line: 63, baseType: !235, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1467, file: !53, line: 65, baseType: !1473, size: 256, offset: 64)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 256, elements: !1152)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1467, file: !53, line: 66, baseType: !632, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1467, file: !53, line: 68, baseType: !1476, size: 128, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1477, line: 40, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1477, line: 36, size: 128, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1477, line: 37, baseType: !235)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1478, file: !1477, line: 38, baseType: !149, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1467, file: !53, line: 69, baseType: !367, size: 128, align: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1467, file: !53, line: 70, baseType: !1484, size: 128, offset: 640)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1485, size: 128, elements: !1366)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1485, file: !53, line: 55, baseType: !189, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1485, file: !53, line: 56, baseType: !1489, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1214, file: !1215, line: 872, baseType: !1492, size: 512, offset: 6016)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 512, elements: !1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1214, file: !1215, line: 873, baseType: !149, size: 128, offset: 6528)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1214, file: !1215, line: 874, baseType: !149, size: 128, offset: 6656)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1214, file: !1215, line: 876, baseType: !1496, size: 64, offset: 6784)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1498, line: 26, size: 192, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1497, file: !1498, line: 27, baseType: !7, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1497, file: !1498, line: 28, baseType: !1502, size: 128, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1503, line: 43, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1503, line: 44, baseType: !777)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1502, file: !1503, line: 45, baseType: !149, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1214, file: !1215, line: 879, baseType: !702, size: 64, offset: 6848)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1214, file: !1215, line: 882, baseType: !702, size: 64, offset: 6912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1214, file: !1215, line: 884, baseType: !419, size: 64, offset: 6976)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1214, file: !1215, line: 885, baseType: !419, size: 64, offset: 7040)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1214, file: !1215, line: 890, baseType: !419, size: 64, offset: 7104)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1214, file: !1215, line: 891, baseType: !1513, size: 128, offset: 7168)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1215, line: 242, size: 128, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1513, file: !1215, line: 244, baseType: !419, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1513, file: !1215, line: 245, baseType: !419, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1215, line: 246, baseType: !777, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1214, file: !1215, line: 900, baseType: !326, size: 64, offset: 7296)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1214, file: !1215, line: 901, baseType: !326, size: 64, offset: 7360)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1214, file: !1215, line: 904, baseType: !419, size: 64, offset: 7424)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1214, file: !1215, line: 907, baseType: !419, size: 64, offset: 7488)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1214, file: !1215, line: 910, baseType: !326, size: 64, offset: 7552)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1214, file: !1215, line: 911, baseType: !326, size: 64, offset: 7616)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1214, file: !1215, line: 914, baseType: !1525, size: 640, offset: 7680)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1526, line: 123, size: 640, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1534, !1535}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1525, file: !1526, line: 124, baseType: !1529, size: 576)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 576, elements: !277)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1526, line: 108, size: 192, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1530, file: !1526, line: 109, baseType: !419, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1530, file: !1526, line: 110, baseType: !1340, size: 128, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1525, file: !1526, line: 125, baseType: !7, size: 32, offset: 576)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1525, file: !1526, line: 126, baseType: !7, size: 32, offset: 608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1214, file: !1215, line: 917, baseType: !1537, size: 192, offset: 8320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1526, line: 134, size: 192, elements: !1538)
!1538 = !{!1539, !1540}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1537, file: !1526, line: 135, baseType: !367, size: 128, align: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1537, file: !1526, line: 136, baseType: !7, size: 32, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1214, file: !1215, line: 923, baseType: !1542, size: 64, offset: 8512)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1545, line: 111, size: 1280, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1566, !1567, !1568, !1569, !1570, !1571, !1678, !1679, !1680, !1681, !1707, !1710, !1720}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1545, line: 112, baseType: !744, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1544, file: !1545, line: 120, baseType: !432, size: 32, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1545, line: 121, baseType: !440, size: 32, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1544, file: !1545, line: 122, baseType: !432, size: 32, offset: 96)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1544, file: !1545, line: 123, baseType: !440, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1544, file: !1545, line: 124, baseType: !432, size: 32, offset: 160)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1544, file: !1545, line: 125, baseType: !440, size: 32, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1544, file: !1545, line: 126, baseType: !432, size: 32, offset: 224)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1544, file: !1545, line: 127, baseType: !440, size: 32, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1544, file: !1545, line: 128, baseType: !7, size: 32, offset: 288)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1544, file: !1545, line: 129, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1559, line: 26, baseType: !1560)
!1559 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1559, line: 24, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1560, file: !1559, line: 25, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 2)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1544, file: !1545, line: 130, baseType: !1558, size: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1544, file: !1545, line: 131, baseType: !1558, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1544, file: !1545, line: 132, baseType: !1558, size: 64, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1544, file: !1545, line: 133, baseType: !1558, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1544, file: !1545, line: 135, baseType: !141, size: 8, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1544, file: !1545, line: 137, baseType: !1572, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1574, line: 189, size: 1664, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1580, !1585, !1586, !1589, !1590, !1595, !1596, !1597, !1598, !1600, !1601, !1602, !1603, !1604, !1642, !1663}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1573, file: !1574, line: 190, baseType: !1227, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1573, file: !1574, line: 191, baseType: !1578, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1574, line: 28, baseType: !1579)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !127, line: 98, baseType: !1439)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 192, baseType: !1581, size: 192, offset: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 192, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1581, file: !1574, line: 193, baseType: !149, size: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1581, file: !1574, line: 194, baseType: !757, size: 192, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1573, file: !1574, line: 199, baseType: !764, size: 256, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1573, file: !1574, line: 200, baseType: !1587, size: 64, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1574, line: 200, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1573, file: !1574, line: 201, baseType: !131, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 202, baseType: !1591, size: 64, offset: 640)
!1591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 202, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1591, file: !1574, line: 203, baseType: !536, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1591, file: !1574, line: 204, baseType: !536, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1573, file: !1574, line: 206, baseType: !536, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 207, baseType: !432, size: 32, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1573, file: !1574, line: 208, baseType: !440, size: 32, offset: 800)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1573, file: !1574, line: 209, baseType: !1599, size: 32, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1574, line: 31, baseType: !556)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1573, file: !1574, line: 210, baseType: !318, size: 16, offset: 864)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1573, file: !1574, line: 211, baseType: !318, size: 16, offset: 880)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1573, file: !1574, line: 215, baseType: !1202, size: 16, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1573, file: !1574, line: 222, baseType: !326, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 239, baseType: !1605, size: 320, offset: 1024)
!1605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 239, size: 320, elements: !1606)
!1606 = !{!1607, !1634}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1605, file: !1574, line: 240, baseType: !1608, size: 320)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1574, line: 108, size: 320, elements: !1609)
!1609 = !{!1610, !1611, !1623, !1626, !1633}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1608, file: !1574, line: 110, baseType: !326, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1608, file: !1574, line: 111, baseType: !1612, size: 64, offset: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1608, file: !1574, line: 111, size: 64, elements: !1613)
!1613 = !{!1614, !1622}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !1574, line: 112, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !1574, line: 112, size: 64, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1615, file: !1574, line: 114, baseType: !856, size: 16)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1615, file: !1574, line: 115, baseType: !1619, size: 48, offset: 16)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 48, elements: !1620)
!1620 = !{!1621}
!1621 = !DISubrange(count: 6)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1612, file: !1574, line: 121, baseType: !326, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !1574, line: 123, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1574, line: 96, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1608, file: !1574, line: 124, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1574, line: 102, size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !1574, line: 103, baseType: !367, size: 128, align: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1628, file: !1574, line: 104, baseType: !1227, size: 32, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1628, file: !1574, line: 105, baseType: !487, size: 8, offset: 160)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1608, file: !1574, line: 125, baseType: !217, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1574, line: 241, baseType: !1635, size: 320)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1605, file: !1574, line: 241, size: 320, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1635, file: !1574, line: 242, baseType: !326, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1635, file: !1574, line: 243, baseType: !326, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1635, file: !1574, line: 244, baseType: !1624, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1635, file: !1574, line: 245, baseType: !1627, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1635, file: !1574, line: 246, baseType: !276, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !1574, line: 254, baseType: !1643, size: 256, offset: 1344)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !1574, line: 254, size: 256, elements: !1644)
!1644 = !{!1645, !1651}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1643, file: !1574, line: 255, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1574, line: 128, size: 256, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1646, file: !1574, line: 129, baseType: !131, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1646, file: !1574, line: 130, baseType: !1650, size: 256)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !1152)
!1651 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1574, line: 256, baseType: !1652, size: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1574, line: 256, size: 256, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1652, file: !1574, line: 258, baseType: !149, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1652, file: !1574, line: 259, baseType: !1656, size: 128, offset: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1657, line: 22, size: 128, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1658 = !{!1659, !1662}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1656, file: !1657, line: 23, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1657, line: 23, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1656, file: !1657, line: 24, baseType: !326, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1573, file: !1574, line: 274, baseType: !1664, size: 64, offset: 1600)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1574, line: 170, size: 192, elements: !1666)
!1666 = !{!1667, !1676, !1677}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1665, file: !1574, line: 171, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1574, line: 165, baseType: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!189, !1572, !1672, !1674, !1572}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1665, file: !1574, line: 172, baseType: !1572, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1665, file: !1574, line: 173, baseType: !1624, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1544, file: !1545, line: 138, baseType: !1572, size: 64, offset: 768)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1544, file: !1545, line: 139, baseType: !1572, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1544, file: !1545, line: 140, baseType: !1572, size: 64, offset: 896)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1544, file: !1545, line: 145, baseType: !1682, size: 64, offset: 960)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1684, line: 13, size: 896, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1683, file: !1684, line: 14, baseType: !1227, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1683, file: !1684, line: 15, baseType: !744, size: 32, offset: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1683, file: !1684, line: 16, baseType: !744, size: 32, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1683, file: !1684, line: 21, baseType: !768, size: 64, offset: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1683, file: !1684, line: 27, baseType: !326, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1683, file: !1684, line: 28, baseType: !326, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1683, file: !1684, line: 29, baseType: !768, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1683, file: !1684, line: 32, baseType: !636, size: 128, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1683, file: !1684, line: 33, baseType: !432, size: 32, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1683, file: !1684, line: 37, baseType: !768, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1683, file: !1684, line: 44, baseType: !1697, size: 256, offset: 640)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1698, line: 15, size: 256, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701, !1702, !1703, !1704, !1705, !1706}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1697, file: !1698, line: 16, baseType: !777)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1697, file: !1698, line: 18, baseType: !189, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1697, file: !1698, line: 19, baseType: !189, size: 32, offset: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1697, file: !1698, line: 20, baseType: !189, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1697, file: !1698, line: 21, baseType: !189, size: 32, offset: 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1697, file: !1698, line: 22, baseType: !326, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !1698, line: 23, baseType: !326, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1544, file: !1545, line: 146, baseType: !1708, size: 64, offset: 1024)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !433, line: 18, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1544, file: !1545, line: 147, baseType: !1711, size: 64, offset: 1088)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1545, line: 25, size: 64, elements: !1713)
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1712, file: !1545, line: 26, baseType: !744, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1712, file: !1545, line: 27, baseType: !189, size: 32, offset: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1712, file: !1545, line: 28, baseType: !1717, offset: 64)
!1717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !1718)
!1718 = !{!1719}
!1719 = !DISubrange(count: 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1544, file: !1545, line: 149, baseType: !1721, size: 128, offset: 1152)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1544, file: !1545, line: 149, size: 128, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1721, file: !1545, line: 150, baseType: !189, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1721, file: !1545, line: 151, baseType: !367, size: 128, align: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1214, file: !1215, line: 926, baseType: !1542, size: 64, offset: 8576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1214, file: !1215, line: 929, baseType: !1542, size: 64, offset: 8640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1214, file: !1215, line: 933, baseType: !1572, size: 64, offset: 8704)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1214, file: !1215, line: 943, baseType: !1729, size: 128, offset: 8768)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !1730)
!1730 = !{!1731}
!1731 = !DISubrange(count: 16)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1214, file: !1215, line: 945, baseType: !1733, size: 64, offset: 8896)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1215, line: 49, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1214, file: !1215, line: 956, baseType: !1736, size: 64, offset: 8960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1215, line: 45, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1214, file: !1215, line: 959, baseType: !1739, size: 64, offset: 9024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1215, line: 959, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1214, file: !1215, line: 962, baseType: !1742, size: 64, offset: 9088)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1215, line: 66, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1214, file: !1215, line: 966, baseType: !1745, size: 64, offset: 9152)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1747, line: 35, flags: DIFlagFwdDecl)
!1747 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1214, file: !1215, line: 969, baseType: !1749, size: 64, offset: 9216)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1751, line: 82, size: 7296, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1788, !1797, !1798, !1800, !1801, !1802, !1805, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1835, !1836, !1843, !1844, !1845, !1846, !1847, !1848}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1750, file: !1751, line: 83, baseType: !1227, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1750, file: !1751, line: 84, baseType: !744, size: 32, offset: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1750, file: !1751, line: 85, baseType: !189, size: 32, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1750, file: !1751, line: 86, baseType: !149, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1750, file: !1751, line: 88, baseType: !1476, size: 128, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1750, file: !1751, line: 91, baseType: !1213, size: 64, offset: 384)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1750, file: !1751, line: 94, baseType: !1760, size: 192, offset: 448)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1761, line: 30, size: 192, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1761, line: 31, baseType: !149, size: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1760, file: !1761, line: 32, baseType: !1765, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1766, line: 25, baseType: !1767)
!1766 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1766, line: 23, size: 64, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1767, file: !1766, line: 24, baseType: !1365, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1750, file: !1751, line: 97, baseType: !632, size: 64, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1750, file: !1751, line: 100, baseType: !189, size: 32, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1750, file: !1751, line: 106, baseType: !189, size: 32, offset: 736)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1750, file: !1751, line: 107, baseType: !1213, size: 64, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1750, file: !1751, line: 110, baseType: !189, size: 32, offset: 832)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1750, file: !1751, line: 111, baseType: !7, size: 32, offset: 864)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1750, file: !1751, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1750, file: !1751, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1750, file: !1751, line: 128, baseType: !189, size: 32, offset: 928)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1750, file: !1751, line: 129, baseType: !149, size: 128, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1750, file: !1751, line: 132, baseType: !1289, size: 512, offset: 1088)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1750, file: !1751, line: 133, baseType: !1297, size: 64, offset: 1600)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1750, file: !1751, line: 140, baseType: !1783, size: 256, offset: 1664)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 256, elements: !1564)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1751, line: 38, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1784, file: !1751, line: 39, baseType: !419, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1784, file: !1751, line: 40, baseType: !419, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1750, file: !1751, line: 146, baseType: !1789, size: 192, offset: 1920)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1751, line: 66, size: 192, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1789, file: !1751, line: 67, baseType: !1792, size: 192)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1751, line: 47, size: 192, elements: !1793)
!1793 = !{!1794, !1795, !1796}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1792, file: !1751, line: 48, baseType: !770, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1792, file: !1751, line: 49, baseType: !770, size: 64, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1792, file: !1751, line: 50, baseType: !770, size: 64, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1750, file: !1751, line: 150, baseType: !1525, size: 640, offset: 2112)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1750, file: !1751, line: 153, baseType: !1799, size: 256, offset: 2752)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1750, file: !1751, line: 159, baseType: !1466, size: 64, offset: 3008)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1750, file: !1751, line: 162, baseType: !189, size: 32, offset: 3072)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1750, file: !1751, line: 164, baseType: !1803, size: 64, offset: 3136)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1751, line: 164, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1750, file: !1751, line: 175, baseType: !1806, size: 32, offset: 3200)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !390, line: 805, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 798, size: 32, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1807, file: !390, line: 803, baseType: !389, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1807, file: !390, line: 804, baseType: !235, offset: 32)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1750, file: !1751, line: 176, baseType: !419, size: 64, offset: 3264)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1750, file: !1751, line: 176, baseType: !419, size: 64, offset: 3328)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1750, file: !1751, line: 176, baseType: !419, size: 64, offset: 3392)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1750, file: !1751, line: 176, baseType: !419, size: 64, offset: 3456)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1750, file: !1751, line: 177, baseType: !419, size: 64, offset: 3520)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1750, file: !1751, line: 178, baseType: !419, size: 64, offset: 3584)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1750, file: !1751, line: 179, baseType: !1513, size: 128, offset: 3648)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1750, file: !1751, line: 180, baseType: !326, size: 64, offset: 3776)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1750, file: !1751, line: 180, baseType: !326, size: 64, offset: 3840)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1750, file: !1751, line: 180, baseType: !326, size: 64, offset: 3904)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1750, file: !1751, line: 180, baseType: !326, size: 64, offset: 3968)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1750, file: !1751, line: 181, baseType: !326, size: 64, offset: 4032)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1750, file: !1751, line: 181, baseType: !326, size: 64, offset: 4096)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1750, file: !1751, line: 181, baseType: !326, size: 64, offset: 4160)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1750, file: !1751, line: 181, baseType: !326, size: 64, offset: 4224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1750, file: !1751, line: 182, baseType: !326, size: 64, offset: 4288)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1750, file: !1751, line: 182, baseType: !326, size: 64, offset: 4352)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1750, file: !1751, line: 182, baseType: !326, size: 64, offset: 4416)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1750, file: !1751, line: 182, baseType: !326, size: 64, offset: 4480)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1750, file: !1751, line: 183, baseType: !326, size: 64, offset: 4544)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1750, file: !1751, line: 183, baseType: !326, size: 64, offset: 4608)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1750, file: !1751, line: 184, baseType: !1833, offset: 4672)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1834, line: 12, elements: !249)
!1834 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1750, file: !1751, line: 192, baseType: !421, size: 64, offset: 4672)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1750, file: !1751, line: 203, baseType: !1837, size: 2048, offset: 4736)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 2048, elements: !1730)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1839, line: 43, size: 128, elements: !1840)
!1839 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1838, file: !1839, line: 44, baseType: !325, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1838, file: !1839, line: 45, baseType: !325, size: 64, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1750, file: !1751, line: 220, baseType: !487, size: 8, offset: 6784)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1750, file: !1751, line: 221, baseType: !1202, size: 16, offset: 6800)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1750, file: !1751, line: 222, baseType: !1202, size: 16, offset: 6816)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1750, file: !1751, line: 224, baseType: !971, size: 64, offset: 6848)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1750, file: !1751, line: 227, baseType: !1170, size: 192, offset: 6912)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1750, file: !1751, line: 233, baseType: !1170, size: 192, offset: 7104)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1214, file: !1215, line: 970, baseType: !1850, size: 64, offset: 9280)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1751, line: 20, size: 16576, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1851, file: !1751, line: 21, baseType: !235)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1851, file: !1751, line: 22, baseType: !1227, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1851, file: !1751, line: 23, baseType: !1476, size: 128, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1851, file: !1751, line: 24, baseType: !1857, size: 16384, offset: 192)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 16384, elements: !281)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1761, line: 49, size: 256, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1858, file: !1761, line: 50, baseType: !1861, size: 256)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1761, line: 35, size: 256, elements: !1862)
!1862 = !{!1863, !1870, !1871, !1877}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1861, file: !1761, line: 37, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1865, line: 19, baseType: !1866)
!1865 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1865, line: 18, baseType: !1868)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !189}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1861, file: !1761, line: 38, baseType: !326, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1861, file: !1761, line: 44, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1865, line: 22, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1865, line: 21, baseType: !1875)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1861, file: !1761, line: 46, baseType: !1765, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1214, file: !1215, line: 971, baseType: !1765, size: 64, offset: 9344)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1214, file: !1215, line: 972, baseType: !1765, size: 64, offset: 9408)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1214, file: !1215, line: 974, baseType: !1765, size: 64, offset: 9472)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1214, file: !1215, line: 975, baseType: !1760, size: 192, offset: 9536)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1214, file: !1215, line: 976, baseType: !326, size: 64, offset: 9728)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1214, file: !1215, line: 977, baseType: !323, size: 64, offset: 9792)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1214, file: !1215, line: 978, baseType: !7, size: 32, offset: 9856)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1214, file: !1215, line: 980, baseType: !370, size: 64, offset: 9920)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1214, file: !1215, line: 989, baseType: !1887, size: 128, offset: 9984)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1888, line: 35, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1887, file: !1888, line: 36, baseType: !189, size: 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1887, file: !1888, line: 37, baseType: !744, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1887, file: !1888, line: 38, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1888, line: 23, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1214, file: !1215, line: 992, baseType: !419, size: 64, offset: 10112)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1214, file: !1215, line: 993, baseType: !419, size: 64, offset: 10176)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1214, file: !1215, line: 996, baseType: !235, offset: 10240)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1214, file: !1215, line: 999, baseType: !777, offset: 10240)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1214, file: !1215, line: 1001, baseType: !1900, size: 64, offset: 10240)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1215, line: 636, size: 64, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1900, file: !1215, line: 637, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1214, file: !1215, line: 1005, baseType: !749, size: 128, offset: 10304)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1214, file: !1215, line: 1007, baseType: !1213, size: 64, offset: 10432)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1214, file: !1215, line: 1009, baseType: !1907, size: 64, offset: 10496)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1215, line: 1009, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1214, file: !1215, line: 1043, baseType: !131, size: 64, offset: 10560)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1214, file: !1215, line: 1046, baseType: !1911, size: 64, offset: 10624)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1215, line: 41, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1214, file: !1215, line: 1050, baseType: !1914, size: 64, offset: 10688)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1215, line: 42, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1214, file: !1215, line: 1054, baseType: !1917, size: 64, offset: 10752)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1215, line: 55, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1214, file: !1215, line: 1056, baseType: !1920, size: 64, offset: 10816)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1215, line: 40, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1214, file: !1215, line: 1058, baseType: !1923, size: 64, offset: 10880)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1925, line: 99, size: 704, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1952, !1953}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1924, file: !1925, line: 100, baseType: !768, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1924, file: !1925, line: 101, baseType: !744, size: 32, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1924, file: !1925, line: 102, baseType: !744, size: 32, offset: 96)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1924, file: !1925, line: 105, baseType: !235, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1924, file: !1925, line: 107, baseType: !318, size: 16, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1924, file: !1925, line: 109, baseType: !736, size: 128, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1924, file: !1925, line: 110, baseType: !1934, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1925, line: 73, size: 448, elements: !1936)
!1936 = !{!1937, !1940, !1941, !1946, !1951}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1935, file: !1925, line: 74, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1925, line: 74, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1935, file: !1925, line: 75, baseType: !1923, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1925, line: 83, baseType: !1942, size: 128, offset: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1925, line: 83, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1942, file: !1925, line: 84, baseType: !149, size: 128)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1942, file: !1925, line: 85, baseType: !932, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, scope: !1935, file: !1925, line: 87, baseType: !1947, size: 128, offset: 256)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1925, line: 87, size: 128, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1947, file: !1925, line: 88, baseType: !636, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1947, file: !1925, line: 89, baseType: !367, size: 128, align: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1925, line: 92, baseType: !7, size: 32, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1924, file: !1925, line: 111, baseType: !632, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1924, file: !1925, line: 113, baseType: !1954, size: 256, offset: 448)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1955, line: 102, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1954, file: !1955, line: 103, baseType: !768, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1954, file: !1955, line: 104, baseType: !149, size: 128, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1954, file: !1955, line: 105, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1955, line: 21, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1214, file: !1215, line: 1061, baseType: !1966, size: 64, offset: 10944)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1215, line: 43, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1214, file: !1215, line: 1064, baseType: !326, size: 64, offset: 11008)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1214, file: !1215, line: 1065, baseType: !1970, size: 64, offset: 11072)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1761, line: 14, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1761, line: 12, size: 384, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1761, line: 13, baseType: !1975, size: 384)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1972, file: !1761, line: 13, size: 384, elements: !1976)
!1976 = !{!1977, !1978, !1979, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1975, file: !1761, line: 13, baseType: !189, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1975, file: !1761, line: 13, baseType: !189, size: 32, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1975, file: !1761, line: 13, baseType: !189, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1975, file: !1761, line: 13, baseType: !1981, size: 256, offset: 128)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1982, line: 32, size: 256, elements: !1983)
!1982 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !{!1984, !1989, !2002, !2008, !2017, !2037, !2042}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1981, file: !1982, line: 37, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 34, size: 64, elements: !1986)
!1986 = !{!1987, !1988}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1985, file: !1982, line: 35, baseType: !1455, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1985, file: !1982, line: 36, baseType: !438, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1981, file: !1982, line: 45, baseType: !1990, size: 192)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 40, size: 192, elements: !1991)
!1991 = !{!1992, !1994, !1995, !2001}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1990, file: !1982, line: 41, baseType: !1993, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !309, line: 95, baseType: !189)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1990, file: !1982, line: 42, baseType: !189, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1990, file: !1982, line: 43, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1982, line: 11, baseType: !1997)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1982, line: 8, size: 64, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1997, file: !1982, line: 9, baseType: !189, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1997, file: !1982, line: 10, baseType: !131, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1990, file: !1982, line: 44, baseType: !189, size: 32, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1981, file: !1982, line: 52, baseType: !2003, size: 128)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 48, size: 128, elements: !2004)
!2004 = !{!2005, !2006, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2003, file: !1982, line: 49, baseType: !1455, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2003, file: !1982, line: 50, baseType: !438, size: 32, offset: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2003, file: !1982, line: 51, baseType: !1996, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1981, file: !1982, line: 61, baseType: !2009, size: 256)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 55, size: 256, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2016}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2009, file: !1982, line: 56, baseType: !1455, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2009, file: !1982, line: 57, baseType: !438, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2009, file: !1982, line: 58, baseType: !189, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2009, file: !1982, line: 59, baseType: !2015, size: 64, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !309, line: 94, baseType: !310)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2009, file: !1982, line: 60, baseType: !2015, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1981, file: !1982, line: 95, baseType: !2018, size: 256)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 64, size: 256, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2018, file: !1982, line: 65, baseType: !131, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !1982, line: 77, baseType: !2022, size: 192, offset: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2018, file: !1982, line: 77, size: 192, elements: !2023)
!2023 = !{!2024, !2025, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2022, file: !1982, line: 82, baseType: !1202, size: 16)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2022, file: !1982, line: 88, baseType: !2026, size: 192)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !1982, line: 84, size: 192, elements: !2027)
!2027 = !{!2028, !2030, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2026, file: !1982, line: 85, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !1327)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2026, file: !1982, line: 86, baseType: !131, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2026, file: !1982, line: 87, baseType: !131, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2022, file: !1982, line: 93, baseType: !2033, size: 96)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !1982, line: 90, size: 96, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2033, file: !1982, line: 91, baseType: !2029, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2033, file: !1982, line: 92, baseType: !200, size: 32, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1981, file: !1982, line: 101, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 98, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2038, file: !1982, line: 99, baseType: !311, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2038, file: !1982, line: 100, baseType: !189, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1981, file: !1982, line: 108, baseType: !2043, size: 128)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1982, line: 104, size: 128, elements: !2044)
!2044 = !{!2045, !2046, !2047}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2043, file: !1982, line: 105, baseType: !131, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2043, file: !1982, line: 106, baseType: !189, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2043, file: !1982, line: 107, baseType: !7, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1214, file: !1215, line: 1067, baseType: !1833, offset: 11136)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1214, file: !1215, line: 1099, baseType: !2050, size: 64, offset: 11136)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1215, line: 56, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1214, file: !1215, line: 1103, baseType: !149, size: 128, offset: 11200)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1214, file: !1215, line: 1104, baseType: !2054, size: 64, offset: 11328)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1215, line: 46, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1214, file: !1215, line: 1105, baseType: !1170, size: 192, offset: 11392)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1214, file: !1215, line: 1106, baseType: !7, size: 32, offset: 11584)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1214, file: !1215, line: 1109, baseType: !2059, size: 128, offset: 11648)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2060, size: 128, elements: !1564)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1215, line: 51, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1214, file: !1215, line: 1110, baseType: !1170, size: 192, offset: 11776)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1214, file: !1215, line: 1111, baseType: !149, size: 128, offset: 11968)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1214, file: !1215, line: 1173, baseType: !2065, size: 64, offset: 12096)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2067, line: 62, size: 256, align: 256, elements: !2068)
!2067 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071, !2076}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2066, file: !2067, line: 75, baseType: !200, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2066, file: !2067, line: 90, baseType: !200, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2066, file: !2067, line: 124, baseType: !2072, size: 64, offset: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !2067, line: 109, size: 64, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2072, file: !2067, line: 110, baseType: !420, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2072, file: !2067, line: 112, baseType: !420, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2066, file: !2067, line: 144, baseType: !200, size: 32, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1214, file: !1215, line: 1174, baseType: !199, size: 32, offset: 12160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1214, file: !1215, line: 1179, baseType: !326, size: 64, offset: 12224)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1214, file: !1215, line: 1182, baseType: !2080, size: 128, offset: 12288)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1148, line: 76, size: 128, elements: !2081)
!2081 = !{!2082, !2087, !2088}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2080, file: !1148, line: 85, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2084, line: 7, size: 64, elements: !2085)
!2084 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2083, file: !2084, line: 12, baseType: !1362, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2080, file: !1148, line: 88, baseType: !487, size: 8, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2080, file: !1148, line: 95, baseType: !487, size: 8, offset: 72)
!2089 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 1184, baseType: !2090, size: 128, offset: 12416)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 1184, size: 128, elements: !2091)
!2091 = !{!2092, !2093}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2090, file: !1215, line: 1185, baseType: !1227, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2090, file: !1215, line: 1186, baseType: !367, size: 128, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1214, file: !1215, line: 1190, baseType: !2095, size: 64, offset: 12544)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1215, line: 53, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1214, file: !1215, line: 1192, baseType: !2098, size: 128, offset: 12608)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1148, line: 64, size: 128, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2098, file: !1148, line: 65, baseType: !718, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2098, file: !1148, line: 67, baseType: !200, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2098, file: !1148, line: 68, baseType: !200, size: 32, offset: 96)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1214, file: !1215, line: 1206, baseType: !189, size: 32, offset: 12736)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1214, file: !1215, line: 1207, baseType: !189, size: 32, offset: 12768)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1214, file: !1215, line: 1209, baseType: !326, size: 64, offset: 12800)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1214, file: !1215, line: 1219, baseType: !419, size: 64, offset: 12864)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1214, file: !1215, line: 1220, baseType: !419, size: 64, offset: 12928)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1214, file: !1215, line: 1317, baseType: !189, size: 32, offset: 12992)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1214, file: !1215, line: 1319, baseType: !1213, size: 64, offset: 13056)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1214, file: !1215, line: 1322, baseType: !2111, size: 64, offset: 13120)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2113, line: 56, size: 512, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2123}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2112, file: !2113, line: 57, baseType: !2111, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2112, file: !2113, line: 58, baseType: !131, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2112, file: !2113, line: 59, baseType: !326, size: 64, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2112, file: !2113, line: 60, baseType: !326, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2112, file: !2113, line: 61, baseType: !817, size: 64, offset: 256)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2112, file: !2113, line: 62, baseType: !7, size: 32, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2112, file: !2113, line: 63, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !127, line: 153, baseType: !419)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2112, file: !2113, line: 64, baseType: !2124, size: 64, offset: 448)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1214, file: !1215, line: 1326, baseType: !1227, size: 32, offset: 13184)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1214, file: !1215, line: 1342, baseType: !131, size: 64, offset: 13248)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1214, file: !1215, line: 1343, baseType: !420, size: 64, offset: 13312)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1214, file: !1215, line: 1344, baseType: !419, size: 64, offset: 13376)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1214, file: !1215, line: 1345, baseType: !420, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1214, file: !1215, line: 1346, baseType: !420, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1214, file: !1215, line: 1347, baseType: !420, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1214, file: !1215, line: 1348, baseType: !367, size: 128, align: 64, offset: 13504)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1214, file: !1215, line: 1358, baseType: !2135, size: 34816, offset: 13824)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2136, line: 485, size: 34816, elements: !2137)
!2136 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2167, !2168, !2169, !2170, !2171, !2172, !2175, !2176, !2177}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2135, file: !2136, line: 487, baseType: !2139, size: 192)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 192, elements: !277)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2141, line: 16, size: 64, elements: !2142)
!2141 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2140, file: !2141, line: 17, baseType: !856, size: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2140, file: !2141, line: 18, baseType: !856, size: 16, offset: 16)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2140, file: !2141, line: 19, baseType: !856, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !2141, line: 19, baseType: !856, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2140, file: !2141, line: 19, baseType: !856, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2140, file: !2141, line: 19, baseType: !856, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2140, file: !2141, line: 19, baseType: !856, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2140, file: !2141, line: 20, baseType: !856, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2140, file: !2141, line: 20, baseType: !856, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2140, file: !2141, line: 20, baseType: !856, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2135, file: !2136, line: 491, baseType: !326, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2135, file: !2136, line: 495, baseType: !318, size: 16, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2135, file: !2136, line: 496, baseType: !318, size: 16, offset: 272)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2135, file: !2136, line: 497, baseType: !318, size: 16, offset: 288)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2135, file: !2136, line: 498, baseType: !318, size: 16, offset: 304)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2135, file: !2136, line: 502, baseType: !326, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2135, file: !2136, line: 503, baseType: !326, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2135, file: !2136, line: 514, baseType: !2164, size: 256, offset: 448)
!2164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2165, size: 256, elements: !1152)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2136, line: 483, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2135, file: !2136, line: 516, baseType: !326, size: 64, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2135, file: !2136, line: 518, baseType: !326, size: 64, offset: 768)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2135, file: !2136, line: 520, baseType: !326, size: 64, offset: 832)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2135, file: !2136, line: 521, baseType: !326, size: 64, offset: 896)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2135, file: !2136, line: 522, baseType: !326, size: 64, offset: 960)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2135, file: !2136, line: 528, baseType: !2173, size: 64, offset: 1024)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2136, line: 10, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2135, file: !2136, line: 535, baseType: !326, size: 64, offset: 1088)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2135, file: !2136, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2135, file: !2136, line: 540, baseType: !2178, size: 33280, offset: 1536)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2179, line: 317, size: 33280, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182, !2183}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2178, file: !2179, line: 330, baseType: !7, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2178, file: !2179, line: 337, baseType: !326, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2178, file: !2179, line: 348, baseType: !2184, size: 32768, offset: 512)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2179, line: 304, size: 32768, elements: !2185)
!2185 = !{!2186, !2201, !2240, !2290, !2303}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2184, file: !2179, line: 305, baseType: !2187, size: 896)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2179, line: 12, size: 896, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2200}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2187, file: !2179, line: 13, baseType: !199, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2187, file: !2179, line: 14, baseType: !199, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2187, file: !2179, line: 15, baseType: !199, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2187, file: !2179, line: 16, baseType: !199, size: 32, offset: 96)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2187, file: !2179, line: 17, baseType: !199, size: 32, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2187, file: !2179, line: 18, baseType: !199, size: 32, offset: 160)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2187, file: !2179, line: 19, baseType: !199, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2187, file: !2179, line: 22, baseType: !2197, size: 640, offset: 224)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 640, elements: !2198)
!2198 = !{!2199}
!2199 = !DISubrange(count: 20)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2187, file: !2179, line: 25, baseType: !199, size: 32, offset: 864)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2184, file: !2179, line: 306, baseType: !2202, size: 4096, align: 128)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2179, line: 34, size: 4096, align: 128, elements: !2203)
!2203 = !{!2204, !2205, !2206, !2207, !2208, !2223, !2224, !2225, !2229, !2231, !2235}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2202, file: !2179, line: 35, baseType: !856, size: 16)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2202, file: !2179, line: 36, baseType: !856, size: 16, offset: 16)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2202, file: !2179, line: 37, baseType: !856, size: 16, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2202, file: !2179, line: 38, baseType: !856, size: 16, offset: 48)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2179, line: 39, baseType: !2209, size: 128, offset: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2179, line: 39, size: 128, elements: !2210)
!2210 = !{!2211, !2216}
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !2179, line: 40, baseType: !2212, size: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2179, line: 40, size: 128, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2212, file: !2179, line: 41, baseType: !419, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2212, file: !2179, line: 42, baseType: !419, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !2179, line: 44, baseType: !2217, size: 128)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !2179, line: 44, size: 128, elements: !2218)
!2218 = !{!2219, !2220, !2221, !2222}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2217, file: !2179, line: 45, baseType: !199, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2217, file: !2179, line: 46, baseType: !199, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2217, file: !2179, line: 47, baseType: !199, size: 32, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2217, file: !2179, line: 48, baseType: !199, size: 32, offset: 96)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2202, file: !2179, line: 51, baseType: !199, size: 32, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2202, file: !2179, line: 52, baseType: !199, size: 32, offset: 224)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2202, file: !2179, line: 55, baseType: !2226, size: 1024, offset: 256)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 1024, elements: !2227)
!2227 = !{!2228}
!2228 = !DISubrange(count: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2202, file: !2179, line: 58, baseType: !2230, size: 2048, offset: 1280)
!2230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2048, elements: !281)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2202, file: !2179, line: 60, baseType: !2232, size: 384, offset: 3328)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 384, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 12)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2179, line: 62, baseType: !2236, size: 384, offset: 3712)
!2236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2179, line: 62, size: 384, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2236, file: !2179, line: 63, baseType: !2232, size: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2236, file: !2179, line: 64, baseType: !2232, size: 384)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2184, file: !2179, line: 307, baseType: !2241, size: 1088)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2179, line: 79, size: 1088, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2289}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2241, file: !2179, line: 80, baseType: !199, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2241, file: !2179, line: 81, baseType: !199, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2241, file: !2179, line: 82, baseType: !199, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2241, file: !2179, line: 83, baseType: !199, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2241, file: !2179, line: 84, baseType: !199, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2241, file: !2179, line: 85, baseType: !199, size: 32, offset: 160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2241, file: !2179, line: 86, baseType: !199, size: 32, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2241, file: !2179, line: 88, baseType: !2197, size: 640, offset: 224)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2241, file: !2179, line: 89, baseType: !137, size: 8, offset: 864)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2241, file: !2179, line: 90, baseType: !137, size: 8, offset: 872)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2241, file: !2179, line: 91, baseType: !137, size: 8, offset: 880)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2241, file: !2179, line: 92, baseType: !137, size: 8, offset: 888)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2241, file: !2179, line: 93, baseType: !137, size: 8, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2241, file: !2179, line: 94, baseType: !137, size: 8, offset: 904)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2241, file: !2179, line: 95, baseType: !2258, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2260, line: 11, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2259, file: !2260, line: 12, baseType: !311, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2259, file: !2260, line: 13, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2266, line: 56, size: 1344, elements: !2267)
!2266 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2265, file: !2266, line: 61, baseType: !326, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2265, file: !2266, line: 62, baseType: !326, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2265, file: !2266, line: 63, baseType: !326, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2265, file: !2266, line: 64, baseType: !326, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2265, file: !2266, line: 65, baseType: !326, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2265, file: !2266, line: 66, baseType: !326, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2265, file: !2266, line: 68, baseType: !326, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2265, file: !2266, line: 69, baseType: !326, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2265, file: !2266, line: 70, baseType: !326, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2265, file: !2266, line: 71, baseType: !326, size: 64, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2265, file: !2266, line: 72, baseType: !326, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2265, file: !2266, line: 73, baseType: !326, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2265, file: !2266, line: 74, baseType: !326, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2265, file: !2266, line: 75, baseType: !326, size: 64, offset: 832)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2265, file: !2266, line: 76, baseType: !326, size: 64, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2265, file: !2266, line: 81, baseType: !326, size: 64, offset: 960)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2265, file: !2266, line: 83, baseType: !326, size: 64, offset: 1024)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2265, file: !2266, line: 84, baseType: !326, size: 64, offset: 1088)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !2266, line: 85, baseType: !326, size: 64, offset: 1152)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2265, file: !2266, line: 86, baseType: !326, size: 64, offset: 1216)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2265, file: !2266, line: 87, baseType: !326, size: 64, offset: 1280)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2241, file: !2179, line: 96, baseType: !199, size: 32, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2184, file: !2179, line: 308, baseType: !2291, size: 4608, align: 512)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2179, line: 289, size: 4608, align: 512, elements: !2292)
!2292 = !{!2293, !2294, !2301}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2291, file: !2179, line: 290, baseType: !2202, size: 4096, align: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2291, file: !2179, line: 291, baseType: !2295, size: 512, offset: 4096)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2179, line: 268, size: 512, elements: !2296)
!2296 = !{!2297, !2298, !2299}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2295, file: !2179, line: 269, baseType: !419, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2295, file: !2179, line: 270, baseType: !419, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2295, file: !2179, line: 271, baseType: !2300, size: 384, offset: 128)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !1620)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2291, file: !2179, line: 292, baseType: !2302, offset: 4608)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, elements: !1718)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2184, file: !2179, line: 309, baseType: !2304, size: 32768)
!2304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 32768, elements: !2305)
!2305 = !{!2306}
!2306 = !DISubrange(count: 4096)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1210, file: !720, line: 378, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1206, file: !720, line: 384, baseType: !1497, size: 192, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !975, file: !720, line: 500, baseType: !235, offset: 6656)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !975, file: !720, line: 501, baseType: !2312, size: 64, offset: 6656)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !720, line: 387, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !975, file: !720, line: 516, baseType: !1708, size: 64, offset: 6720)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !975, file: !720, line: 519, baseType: !354, size: 64, offset: 6784)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !975, file: !720, line: 521, baseType: !2317, size: 64, offset: 6848)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !720, line: 521, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !975, file: !720, line: 545, baseType: !744, size: 32, offset: 6912)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !975, file: !720, line: 548, baseType: !487, size: 8, offset: 6944)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !975, file: !720, line: 550, baseType: !2322, offset: 6952)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2323, line: 142, elements: !249)
!2323 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !975, file: !720, line: 554, baseType: !1954, size: 256, offset: 6976)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !975, file: !720, line: 557, baseType: !199, size: 32, offset: 7232)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !972, file: !720, line: 565, baseType: !2327, offset: 7296)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !2328)
!2328 = !{!2329}
!2329 = !DISubrange(count: -1)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !968, file: !720, line: 151, baseType: !744, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !961, file: !720, line: 156, baseType: !235, offset: 256)
!2332 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !720, line: 159, baseType: !2333, size: 128)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !724, file: !720, line: 159, size: 128, elements: !2334)
!2334 = !{!2335, !2399}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2333, file: !720, line: 161, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2338)
!2338 = !{!2339, !2349, !2370, !2371, !2372, !2373, !2374, !2386, !2387, !2388}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2337, file: !31, line: 111, baseType: !2340, size: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2341)
!2341 = !{!2342, !2344, !2345, !2346, !2347, !2348}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2340, file: !31, line: 20, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2340, file: !31, line: 21, baseType: !2343, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2340, file: !31, line: 22, baseType: !2343, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2340, file: !31, line: 23, baseType: !326, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2340, file: !31, line: 24, baseType: !326, size: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2340, file: !31, line: 25, baseType: !326, size: 64, offset: 320)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2337, file: !31, line: 112, baseType: !2350, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2352, line: 105, size: 128, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2351, file: !2352, line: 110, baseType: !326, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2351, file: !2352, line: 118, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2352, line: 95, size: 448, elements: !2358)
!2358 = !{!2359, !2360, !2365, !2366, !2367, !2368, !2369}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2357, file: !2352, line: 96, baseType: !768, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2357, file: !2352, line: 97, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2352, line: 60, baseType: !2363)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2350}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2357, file: !2352, line: 98, baseType: !2361, size: 64, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2357, file: !2352, line: 99, baseType: !487, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2357, file: !2352, line: 100, baseType: !487, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2357, file: !2352, line: 101, baseType: !367, size: 128, align: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2357, file: !2352, line: 102, baseType: !2350, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2337, file: !31, line: 113, baseType: !2351, size: 128, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2337, file: !31, line: 114, baseType: !1497, size: 192, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2337, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2337, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2337, file: !31, line: 117, baseType: !2375, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2377)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2378)
!2378 = !{!2379, !2380, !2384, !2385}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2377, file: !31, line: 73, baseType: !837, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2377, file: !31, line: 78, baseType: !2381, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !2336}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2377, file: !31, line: 83, baseType: !2381, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2377, file: !31, line: 89, baseType: !1024, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2337, file: !31, line: 118, baseType: !131, size: 64, offset: 896)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2337, file: !31, line: 119, baseType: !189, size: 32, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2337, file: !31, line: 120, baseType: !2389, size: 128, offset: 1024)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !31, line: 120, size: 128, elements: !2390)
!2390 = !{!2391, !2397}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2389, file: !31, line: 121, baseType: !2392, size: 128)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2393, line: 6, size: 128, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2392, file: !2393, line: 7, baseType: !419, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2392, file: !2393, line: 8, baseType: !419, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2389, file: !31, line: 122, baseType: !2398)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2392, elements: !1718)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2333, file: !720, line: 162, baseType: !131, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !724, file: !720, line: 176, baseType: !367, size: 128, align: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 179, baseType: !2402, size: 32, offset: 384)
!2402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 179, size: 32, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2402, file: !720, line: 184, baseType: !744, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2402, file: !720, line: 192, baseType: !7, size: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2402, file: !720, line: 194, baseType: !7, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2402, file: !720, line: 195, baseType: !189, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !719, file: !720, line: 199, baseType: !744, size: 32, offset: 416)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !654, file: !44, line: 1964, baseType: !2410, size: 64, offset: 1344)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!311, !596, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2415, line: 12, size: 256, elements: !2416)
!2415 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418, !2419, !2420, !2421}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2414, file: !2415, line: 13, baseType: !126, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2414, file: !2415, line: 16, baseType: !189, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2414, file: !2415, line: 23, baseType: !326, size: 64, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2414, file: !2415, line: 30, baseType: !326, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2414, file: !2415, line: 33, baseType: !2422, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !720, line: 27, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !654, file: !44, line: 1966, baseType: !2410, size: 64, offset: 1408)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !597, file: !44, line: 1424, baseType: !2426, size: 64, offset: 448)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2429)
!2429 = !{!2430, !2476, !2480, !2484, !2485, !2486, !2487, !2488, !2493, !2498, !2502}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2428, file: !38, line: 323, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!189, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2461, !2462, !2463}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2435, file: !38, line: 295, baseType: !636, size: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2435, file: !38, line: 296, baseType: !149, size: 128, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2435, file: !38, line: 297, baseType: !149, size: 128, offset: 256)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2435, file: !38, line: 298, baseType: !149, size: 128, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2435, file: !38, line: 299, baseType: !1170, size: 192, offset: 512)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2435, file: !38, line: 300, baseType: !235, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2435, file: !38, line: 301, baseType: !744, size: 32, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2435, file: !38, line: 302, baseType: !596, size: 64, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2435, file: !38, line: 303, baseType: !2446, size: 64, offset: 832)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2447)
!2447 = !{!2448, !2460}
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !2446, file: !38, line: 69, baseType: !2449, size: 32)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2446, file: !38, line: 69, size: 32, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2449, file: !38, line: 70, baseType: !432, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2449, file: !38, line: 71, baseType: !440, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2449, file: !38, line: 72, baseType: !2454, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2455, line: 24, baseType: !2456)
!2455 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2455, line: 22, size: 32, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2456, file: !2455, line: 23, baseType: !2459, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2455, line: 20, baseType: !438)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2446, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2435, file: !38, line: 304, baseType: !528, size: 64, offset: 896)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2435, file: !38, line: 305, baseType: !326, size: 64, offset: 960)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2435, file: !38, line: 306, baseType: !2464, size: 576, offset: 1024)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2465)
!2465 = !{!2466, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2464, file: !38, line: 206, baseType: !2467, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !530)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2464, file: !38, line: 207, baseType: !2467, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2464, file: !38, line: 208, baseType: !2467, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2464, file: !38, line: 209, baseType: !2467, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2464, file: !38, line: 210, baseType: !2467, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2464, file: !38, line: 211, baseType: !2467, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2464, file: !38, line: 212, baseType: !2467, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2464, file: !38, line: 213, baseType: !536, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2464, file: !38, line: 214, baseType: !536, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2428, file: !38, line: 324, baseType: !2477, size: 64, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2434, !596, !189}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2428, file: !38, line: 325, baseType: !2481, size: 64, offset: 128)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !2434}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2428, file: !38, line: 326, baseType: !2431, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2428, file: !38, line: 327, baseType: !2431, size: 64, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2428, file: !38, line: 328, baseType: !2431, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2428, file: !38, line: 329, baseType: !682, size: 64, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2428, file: !38, line: 332, baseType: !2489, size: 64, offset: 448)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!2492, !426}
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2428, file: !38, line: 333, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!189, !426, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2428, file: !38, line: 335, baseType: !2499, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!189, !426, !2492}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2428, file: !38, line: 337, baseType: !2503, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!189, !596, !2506}
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !597, file: !44, line: 1425, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2510)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2511)
!2511 = !{!2512, !2516, !2517, !2521, !2522, !2523, !2538, !2561, !2565, !2566, !2589}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2510, file: !38, line: 429, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!189, !596, !189, !189, !546}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2510, file: !38, line: 430, baseType: !682, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2510, file: !38, line: 431, baseType: !2518, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!189, !596, !7}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2510, file: !38, line: 432, baseType: !2518, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2510, file: !38, line: 433, baseType: !682, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2510, file: !38, line: 434, baseType: !2524, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!189, !596, !189, !2527}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2528, file: !38, line: 416, baseType: !189, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2528, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2528, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2528, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2528, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2528, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2528, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2528, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2510, file: !38, line: 435, baseType: !2539, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!189, !596, !2446, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2543, file: !38, line: 344, baseType: !189, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2543, file: !38, line: 345, baseType: !419, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2543, file: !38, line: 346, baseType: !419, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2543, file: !38, line: 347, baseType: !419, size: 64, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2543, file: !38, line: 348, baseType: !419, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2543, file: !38, line: 349, baseType: !419, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2543, file: !38, line: 350, baseType: !419, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2543, file: !38, line: 351, baseType: !774, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2543, file: !38, line: 353, baseType: !774, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2543, file: !38, line: 354, baseType: !189, size: 32, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2543, file: !38, line: 355, baseType: !189, size: 32, offset: 608)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2543, file: !38, line: 356, baseType: !419, size: 64, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2543, file: !38, line: 357, baseType: !419, size: 64, offset: 704)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2543, file: !38, line: 358, baseType: !419, size: 64, offset: 768)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2543, file: !38, line: 359, baseType: !774, size: 64, offset: 832)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2543, file: !38, line: 360, baseType: !189, size: 32, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2510, file: !38, line: 436, baseType: !2562, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!189, !596, !2506, !2542}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2510, file: !38, line: 438, baseType: !2539, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2510, file: !38, line: 439, baseType: !2567, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!189, !596, !2570}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2571, file: !38, line: 410, baseType: !7, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2571, file: !38, line: 411, baseType: !2575, size: 1344, offset: 64)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2576, size: 1344, elements: !277)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2577)
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2588}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2576, file: !38, line: 396, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2576, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2576, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2576, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2576, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2576, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2576, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2576, file: !38, line: 404, baseType: !421, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2576, file: !38, line: 405, baseType: !2587, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !127, line: 126, baseType: !419)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2576, file: !38, line: 406, baseType: !2587, size: 64, offset: 384)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2510, file: !38, line: 440, baseType: !2518, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !597, file: !44, line: 1426, baseType: !2591, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !597, file: !44, line: 1427, baseType: !326, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !597, file: !44, line: 1428, baseType: !326, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !597, file: !44, line: 1429, baseType: !326, size: 64, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !597, file: !44, line: 1430, baseType: !384, size: 64, offset: 832)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !597, file: !44, line: 1431, baseType: !764, size: 256, offset: 896)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !597, file: !44, line: 1432, baseType: !189, size: 32, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !597, file: !44, line: 1433, baseType: !744, size: 32, offset: 1184)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !597, file: !44, line: 1437, baseType: !2602, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !597, file: !44, line: 1449, baseType: !2607, size: 64, offset: 1280)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !400, line: 34, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2607, file: !400, line: 35, baseType: !403, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !597, file: !44, line: 1450, baseType: !149, size: 128, offset: 1344)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !597, file: !44, line: 1451, baseType: !2612, size: 64, offset: 1472)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !597, file: !44, line: 1452, baseType: !1920, size: 64, offset: 1536)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !597, file: !44, line: 1453, baseType: !2616, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !597, file: !44, line: 1454, baseType: !636, size: 128, offset: 1664)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !597, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !597, file: !44, line: 1456, baseType: !2621, size: 2432, offset: 1856)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2627, !2659}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2621, file: !38, line: 519, baseType: !7, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2621, file: !38, line: 520, baseType: !764, size: 256, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2621, file: !38, line: 521, baseType: !2626, size: 192, offset: 320)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !277)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2621, file: !38, line: 522, baseType: !2628, size: 1728, offset: 512)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2629, size: 1728, elements: !277)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2630)
!2630 = !{!2631, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2629, file: !38, line: 223, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2634)
!2634 = !{!2635, !2636, !2649, !2650}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2633, file: !38, line: 444, baseType: !189, size: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2633, file: !38, line: 445, baseType: !2637, size: 64, offset: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2639)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2639, file: !38, line: 311, baseType: !682, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2639, file: !38, line: 312, baseType: !682, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2639, file: !38, line: 313, baseType: !682, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2639, file: !38, line: 314, baseType: !682, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2639, file: !38, line: 315, baseType: !2431, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2639, file: !38, line: 316, baseType: !2431, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2639, file: !38, line: 317, baseType: !2431, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2639, file: !38, line: 318, baseType: !2503, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2633, file: !38, line: 446, baseType: !128, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2633, file: !38, line: 447, baseType: !2632, size: 64, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2629, file: !38, line: 224, baseType: !189, size: 32, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2629, file: !38, line: 226, baseType: !149, size: 128, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2629, file: !38, line: 227, baseType: !326, size: 64, offset: 256)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2629, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2629, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2629, file: !38, line: 230, baseType: !2467, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2629, file: !38, line: 231, baseType: !2467, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2629, file: !38, line: 232, baseType: !131, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2621, file: !38, line: 523, baseType: !2660, size: 192, offset: 2240)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 192, elements: !277)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !597, file: !44, line: 1458, baseType: !2662, size: 2112, offset: 4288)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2662, file: !44, line: 1411, baseType: !189, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2662, file: !44, line: 1412, baseType: !1476, size: 128, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2662, file: !44, line: 1413, baseType: !2667, size: 1920, offset: 192)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2668, size: 1920, elements: !277)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2669, line: 12, size: 640, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !{!2671, !2679, !2681, !2686, !2687}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2668, file: !2669, line: 13, baseType: !2672, size: 320)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2673, line: 17, size: 320, elements: !2674)
!2673 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2674 = !{!2675, !2676, !2677, !2678}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2672, file: !2673, line: 18, baseType: !189, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2672, file: !2673, line: 19, baseType: !189, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2672, file: !2673, line: 20, baseType: !1476, size: 128, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2672, file: !2673, line: 22, baseType: !367, size: 128, align: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2668, file: !2669, line: 14, baseType: !2680, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2668, file: !2669, line: 15, baseType: !2682, size: 64, offset: 384)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2683, line: 16, size: 64, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2682, file: !2683, line: 17, baseType: !1213, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2668, file: !2669, line: 16, baseType: !1476, size: 128, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2668, file: !2669, line: 17, baseType: !744, size: 32, offset: 576)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !597, file: !44, line: 1465, baseType: !131, size: 64, offset: 6400)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !597, file: !44, line: 1468, baseType: !199, size: 32, offset: 6464)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !597, file: !44, line: 1470, baseType: !536, size: 64, offset: 6528)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !597, file: !44, line: 1471, baseType: !536, size: 64, offset: 6592)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !597, file: !44, line: 1473, baseType: !200, size: 32, offset: 6656)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !597, file: !44, line: 1474, baseType: !2694, size: 64, offset: 6720)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !597, file: !44, line: 1477, baseType: !2697, size: 256, offset: 6784)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !2227)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !597, file: !44, line: 1478, baseType: !2699, size: 128, offset: 7040)
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2700, line: 18, baseType: !2701)
!2700 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2700, line: 16, size: 128, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2701, file: !2700, line: 17, baseType: !2704, size: 128)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !1730)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !597, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !597, file: !44, line: 1481, baseType: !2707, size: 32, offset: 7200)
!2707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !127, line: 150, baseType: !7)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !597, file: !44, line: 1487, baseType: !1170, size: 192, offset: 7232)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !597, file: !44, line: 1493, baseType: !217, size: 64, offset: 7424)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !597, file: !44, line: 1495, baseType: !2711, size: 64, offset: 7488)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !382, line: 135, size: 1024, align: 512, elements: !2714)
!2714 = !{!2715, !2719, !2720, !2727, !2733, !2737, !2741, !2745, !2746, !2750, !2754, !2759, !2763}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2713, file: !382, line: 136, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!189, !384, !7}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2713, file: !382, line: 137, baseType: !2716, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2713, file: !382, line: 138, baseType: !2721, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!189, !2724, !2726}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2713, file: !382, line: 139, baseType: !2728, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!189, !2724, !7, !217, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2713, file: !382, line: 141, baseType: !2734, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!189, !2724}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2713, file: !382, line: 142, baseType: !2738, size: 64, offset: 320)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!189, !384}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2713, file: !382, line: 143, baseType: !2742, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{null, !384}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2713, file: !382, line: 144, baseType: !2742, size: 64, offset: 448)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2713, file: !382, line: 145, baseType: !2747, size: 64, offset: 512)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !384, !426}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2713, file: !382, line: 146, baseType: !2751, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!276, !384, !276, !189}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2713, file: !382, line: 147, baseType: !2755, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!380, !2758}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2713, file: !382, line: 148, baseType: !2760, size: 64, offset: 704)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!189, !546, !487}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2713, file: !382, line: 149, baseType: !2764, size: 64, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!384, !384, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !597, file: !44, line: 1500, baseType: !189, size: 32, offset: 7552)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !597, file: !44, line: 1502, baseType: !2771, size: 448, offset: 7616)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2415, line: 60, size: 448, elements: !2772)
!2772 = !{!2773, !2778, !2779, !2780, !2781, !2782, !2783}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2771, file: !2415, line: 61, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!326, !2777, !2413}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2771, file: !2415, line: 63, baseType: !2774, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2771, file: !2415, line: 66, baseType: !311, size: 64, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2771, file: !2415, line: 67, baseType: !189, size: 32, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2771, file: !2415, line: 68, baseType: !7, size: 32, offset: 224)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2771, file: !2415, line: 71, baseType: !149, size: 128, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2771, file: !2415, line: 77, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !597, file: !44, line: 1505, baseType: !768, size: 64, offset: 8064)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !597, file: !44, line: 1508, baseType: !768, size: 64, offset: 8128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !597, file: !44, line: 1511, baseType: !189, size: 32, offset: 8192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !597, file: !44, line: 1514, baseType: !906, size: 32, offset: 8224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !597, file: !44, line: 1517, baseType: !2790, size: 64, offset: 8256)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1955, line: 18, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !597, file: !44, line: 1518, baseType: !632, size: 64, offset: 8320)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !597, file: !44, line: 1525, baseType: !1708, size: 64, offset: 8384)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !597, file: !44, line: 1532, baseType: !2795, size: 64, offset: 8448)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2796, line: 52, size: 64, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2797 = !{!2798}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2795, file: !2796, line: 53, baseType: !2799, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2796, line: 40, size: 256, elements: !2801)
!2801 = !{!2802, !2803, !2808}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2800, file: !2796, line: 42, baseType: !235)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2800, file: !2796, line: 44, baseType: !2804, size: 192)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2796, line: 28, size: 192, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2804, file: !2796, line: 29, baseType: !149, size: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2804, file: !2796, line: 31, baseType: !311, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2800, file: !2796, line: 49, baseType: !311, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !597, file: !44, line: 1533, baseType: !2795, size: 64, offset: 8512)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !597, file: !44, line: 1534, baseType: !367, size: 128, align: 64, offset: 8576)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !597, file: !44, line: 1535, baseType: !1954, size: 256, offset: 8704)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !597, file: !44, line: 1537, baseType: !1170, size: 192, offset: 8960)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !597, file: !44, line: 1542, baseType: !189, size: 32, offset: 9152)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !597, file: !44, line: 1545, baseType: !235, offset: 9184)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !597, file: !44, line: 1546, baseType: !149, size: 128, offset: 9216)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !597, file: !44, line: 1548, baseType: !235, offset: 9344)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !597, file: !44, line: 1549, baseType: !149, size: 128, offset: 9344)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !427, file: !44, line: 624, baseType: !731, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !427, file: !44, line: 631, baseType: !326, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 639, baseType: !2821, size: 32, offset: 384)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 639, size: 32, elements: !2822)
!2822 = !{!2823, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2821, file: !44, line: 640, baseType: !2824, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2821, file: !44, line: 641, baseType: !7, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !427, file: !44, line: 643, baseType: !510, size: 32, offset: 416)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !427, file: !44, line: 644, baseType: !528, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !427, file: !44, line: 645, baseType: !532, size: 128, offset: 512)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !427, file: !44, line: 646, baseType: !532, size: 128, offset: 640)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !427, file: !44, line: 647, baseType: !532, size: 128, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !427, file: !44, line: 648, baseType: !235, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !427, file: !44, line: 649, baseType: !318, size: 16, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !427, file: !44, line: 650, baseType: !137, size: 8, offset: 912)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !427, file: !44, line: 651, baseType: !137, size: 8, offset: 920)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !427, file: !44, line: 652, baseType: !2587, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !427, file: !44, line: 659, baseType: !326, size: 64, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !427, file: !44, line: 660, baseType: !764, size: 256, offset: 1088)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !427, file: !44, line: 662, baseType: !326, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !427, file: !44, line: 663, baseType: !326, size: 64, offset: 1408)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !427, file: !44, line: 665, baseType: !636, size: 128, offset: 1472)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !427, file: !44, line: 666, baseType: !149, size: 128, offset: 1600)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !427, file: !44, line: 675, baseType: !149, size: 128, offset: 1728)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !427, file: !44, line: 676, baseType: !149, size: 128, offset: 1856)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !427, file: !44, line: 677, baseType: !149, size: 128, offset: 1984)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 678, baseType: !2846, size: 128, offset: 2112)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 678, size: 128, elements: !2847)
!2847 = !{!2848, !2849}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2846, file: !44, line: 679, baseType: !632, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2846, file: !44, line: 680, baseType: !367, size: 128, align: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !427, file: !44, line: 682, baseType: !770, size: 64, offset: 2240)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !427, file: !44, line: 683, baseType: !770, size: 64, offset: 2304)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !427, file: !44, line: 684, baseType: !744, size: 32, offset: 2368)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !427, file: !44, line: 685, baseType: !744, size: 32, offset: 2400)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !427, file: !44, line: 686, baseType: !744, size: 32, offset: 2432)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !427, file: !44, line: 688, baseType: !744, size: 32, offset: 2464)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 690, baseType: !2857, size: 64, offset: 2496)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 690, size: 64, elements: !2858)
!2858 = !{!2859, !3082}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2857, file: !44, line: 691, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2863)
!2863 = !{!2864, !2865, !2869, !2874, !2878, !2879, !2880, !2884, !2897, !2898, !2906, !2910, !2911, !2915, !2916, !2920, !2925, !2926, !2930, !2934, !3042, !3046, !3047, !3051, !3052, !3056, !3060, !3065, !3069, !3073, !3077, !3081}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2862, file: !44, line: 1823, baseType: !128, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2862, file: !44, line: 1824, baseType: !2866, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!528, !354, !528, !189}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2862, file: !44, line: 1825, baseType: !2870, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!307, !354, !276, !323, !2873}
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2862, file: !44, line: 1826, baseType: !2875, size: 64, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!307, !354, !217, !323, !2873}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2862, file: !44, line: 1827, baseType: !841, size: 64, offset: 256)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2862, file: !44, line: 1828, baseType: !841, size: 64, offset: 320)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2862, file: !44, line: 1829, baseType: !2881, size: 64, offset: 384)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!189, !844, !487}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2862, file: !44, line: 1830, baseType: !2885, size: 64, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!189, !354, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2890)
!2890 = !{!2891, !2896}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2889, file: !44, line: 1777, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!189, !2888, !217, !189, !528, !419, !7}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2889, file: !44, line: 1778, baseType: !528, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2862, file: !44, line: 1831, baseType: !2885, size: 64, offset: 512)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2862, file: !44, line: 1832, baseType: !2899, size: 64, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!2902, !354, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2903, line: 52, baseType: !7)
!2903 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !616, line: 27, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2862, file: !44, line: 1833, baseType: !2907, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!311, !354, !7, !326}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2862, file: !44, line: 1834, baseType: !2907, size: 64, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2862, file: !44, line: 1835, baseType: !2912, size: 64, offset: 768)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!189, !354, !978}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2862, file: !44, line: 1836, baseType: !326, size: 64, offset: 832)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2862, file: !44, line: 1837, baseType: !2917, size: 64, offset: 896)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!189, !426, !354}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2862, file: !44, line: 1838, baseType: !2921, size: 64, offset: 960)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!189, !354, !2924}
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !131)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2862, file: !44, line: 1839, baseType: !2917, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2862, file: !44, line: 1840, baseType: !2927, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!189, !354, !528, !528, !189}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2862, file: !44, line: 1841, baseType: !2931, size: 64, offset: 1152)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!189, !189, !354, !189}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2862, file: !44, line: 1842, baseType: !2935, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!189, !354, !189, !2938}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2972, !2973, !2974, !2987, !3018}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2939, file: !44, line: 1063, baseType: !2938, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2939, file: !44, line: 1064, baseType: !149, size: 128, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2939, file: !44, line: 1065, baseType: !636, size: 128, offset: 192)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2939, file: !44, line: 1066, baseType: !149, size: 128, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2939, file: !44, line: 1069, baseType: !149, size: 128, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2939, file: !44, line: 1072, baseType: !2924, size: 64, offset: 576)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2939, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2939, file: !44, line: 1074, baseType: !141, size: 8, offset: 672)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2939, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2939, file: !44, line: 1076, baseType: !189, size: 32, offset: 736)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2939, file: !44, line: 1077, baseType: !1476, size: 128, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2939, file: !44, line: 1078, baseType: !354, size: 64, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2939, file: !44, line: 1079, baseType: !528, size: 64, offset: 960)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2939, file: !44, line: 1080, baseType: !528, size: 64, offset: 1024)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2939, file: !44, line: 1082, baseType: !2956, size: 64, offset: 1088)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2958)
!2958 = !{!2959, !2967, !2968, !2969, !2970, !2971}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2957, file: !44, line: 1315, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2961, line: 20, baseType: !2962)
!2961 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2961, line: 11, elements: !2963)
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2962, file: !2961, line: 12, baseType: !2965)
!2965 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !247, line: 33, baseType: !2966)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !247, line: 31, elements: !249)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2957, file: !44, line: 1316, baseType: !189, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2957, file: !44, line: 1317, baseType: !189, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2957, file: !44, line: 1318, baseType: !2956, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2957, file: !44, line: 1319, baseType: !354, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2957, file: !44, line: 1320, baseType: !367, size: 128, align: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2939, file: !44, line: 1084, baseType: !326, size: 64, offset: 1152)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2939, file: !44, line: 1085, baseType: !326, size: 64, offset: 1216)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2939, file: !44, line: 1087, baseType: !2975, size: 64, offset: 1280)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2978)
!2978 = !{!2979, !2983}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2977, file: !44, line: 1012, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2938, !2938}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2977, file: !44, line: 1013, baseType: !2984, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !2938}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2939, file: !44, line: 1088, baseType: !2988, size: 64, offset: 1344)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2990)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2991)
!2991 = !{!2992, !2996, !3000, !3001, !3005, !3009, !3013, !3017}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2990, file: !44, line: 1017, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2924, !2924}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2990, file: !44, line: 1018, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2924}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2990, file: !44, line: 1019, baseType: !2984, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2990, file: !44, line: 1020, baseType: !3002, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!189, !2938, !189}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2990, file: !44, line: 1021, baseType: !3006, size: 64, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!487, !2938}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2990, file: !44, line: 1022, baseType: !3010, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!189, !2938, !189, !152}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2990, file: !44, line: 1023, baseType: !3014, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2938, !818}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2990, file: !44, line: 1024, baseType: !3006, size: 64, offset: 448)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2939, file: !44, line: 1097, baseType: !3019, size: 256, offset: 1408)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2939, file: !44, line: 1089, size: 256, elements: !3020)
!3020 = !{!3021, !3030, !3036}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3019, file: !44, line: 1090, baseType: !3022, size: 256)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3023, line: 10, size: 256, elements: !3024)
!3023 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3024 = !{!3025, !3026, !3029}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3022, file: !3023, line: 11, baseType: !199, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3022, file: !3023, line: 12, baseType: !3027, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3023, line: 5, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3022, file: !3023, line: 13, baseType: !149, size: 128, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3019, file: !44, line: 1091, baseType: !3031, size: 64)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3023, line: 17, size: 64, elements: !3032)
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3031, file: !3023, line: 18, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3023, line: 16, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3019, file: !44, line: 1096, baseType: !3037, size: 192)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3019, file: !44, line: 1092, size: 192, elements: !3038)
!3038 = !{!3039, !3040, !3041}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3037, file: !44, line: 1093, baseType: !149, size: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3037, file: !44, line: 1094, baseType: !189, size: 32, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3037, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2862, file: !44, line: 1843, baseType: !3043, size: 64, offset: 1280)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!307, !354, !718, !189, !323, !2873, !189}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2862, file: !44, line: 1844, baseType: !1098, size: 64, offset: 1344)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2862, file: !44, line: 1845, baseType: !3048, size: 64, offset: 1408)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!189, !189}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2862, file: !44, line: 1846, baseType: !2935, size: 64, offset: 1472)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2862, file: !44, line: 1847, baseType: !3053, size: 64, offset: 1536)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!307, !2095, !354, !2873, !323, !7}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2862, file: !44, line: 1848, baseType: !3057, size: 64, offset: 1600)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!307, !354, !2873, !2095, !323, !7}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2862, file: !44, line: 1849, baseType: !3061, size: 64, offset: 1664)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!189, !354, !311, !3064, !818}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2862, file: !44, line: 1850, baseType: !3066, size: 64, offset: 1728)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!311, !354, !189, !528, !528}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2862, file: !44, line: 1852, baseType: !3070, size: 64, offset: 1792)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{null, !708, !354}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2862, file: !44, line: 1856, baseType: !3074, size: 64, offset: 1856)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!307, !354, !528, !354, !528, !323, !7}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2862, file: !44, line: 1858, baseType: !3078, size: 64, offset: 1920)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!528, !354, !528, !354, !528, !528, !7}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2862, file: !44, line: 1861, baseType: !2927, size: 64, offset: 1984)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2857, file: !44, line: 692, baseType: !661, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !427, file: !44, line: 694, baseType: !3084, size: 64, offset: 2560)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3086)
!3086 = !{!3087, !3088, !3089, !3090}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3085, file: !44, line: 1101, baseType: !235)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3085, file: !44, line: 1102, baseType: !149, size: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3085, file: !44, line: 1103, baseType: !149, size: 128, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3085, file: !44, line: 1104, baseType: !149, size: 128, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !427, file: !44, line: 695, baseType: !732, size: 1216, align: 64, offset: 2624)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !427, file: !44, line: 696, baseType: !149, size: 128, offset: 3840)
!3093 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !44, line: 697, baseType: !3094, size: 64, offset: 3968)
!3094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !44, line: 697, size: 64, elements: !3095)
!3095 = !{!3096, !3097, !3098, !3101, !3102}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3094, file: !44, line: 698, baseType: !2095, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3094, file: !44, line: 699, baseType: !2612, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3094, file: !44, line: 700, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3094, file: !44, line: 701, baseType: !276, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3094, file: !44, line: 702, baseType: !7, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !427, file: !44, line: 705, baseType: !200, size: 32, offset: 4032)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !427, file: !44, line: 708, baseType: !200, size: 32, offset: 4064)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !427, file: !44, line: 709, baseType: !2694, size: 64, offset: 4096)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !427, file: !44, line: 720, baseType: !131, size: 64, offset: 4160)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !385, file: !382, line: 98, baseType: !3108, size: 256, offset: 448)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !2227)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !385, file: !382, line: 101, baseType: !3110, size: 32, offset: 704)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3111, line: 25, size: 32, elements: !3112)
!3111 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3112 = !{!3113}
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !3110, file: !3111, line: 26, baseType: !3114, size: 32)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3110, file: !3111, line: 26, size: 32, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, scope: !3114, file: !3111, line: 30, baseType: !3117, size: 32)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3114, file: !3111, line: 30, size: 32, elements: !3118)
!3118 = !{!3119, !3120}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3117, file: !3111, line: 31, baseType: !235)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3117, file: !3111, line: 32, baseType: !189, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !385, file: !382, line: 102, baseType: !2711, size: 64, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !385, file: !382, line: 103, baseType: !596, size: 64, offset: 832)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !385, file: !382, line: 104, baseType: !326, size: 64, offset: 896)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !385, file: !382, line: 105, baseType: !131, size: 64, offset: 960)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !382, line: 107, baseType: !3126, size: 128, offset: 1024)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !382, line: 107, size: 128, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3126, file: !382, line: 108, baseType: !149, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3126, file: !382, line: 109, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !385, file: !382, line: 111, baseType: !149, size: 128, offset: 1152)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !385, file: !382, line: 112, baseType: !149, size: 128, offset: 1280)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !385, file: !382, line: 120, baseType: !3134, size: 128, offset: 1408)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !382, line: 116, size: 128, elements: !3135)
!3135 = !{!3136, !3137, !3138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3134, file: !382, line: 117, baseType: !636, size: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3134, file: !382, line: 118, baseType: !399, size: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3134, file: !382, line: 119, baseType: !367, size: 128, align: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !355, file: !44, line: 922, baseType: !426, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !355, file: !44, line: 923, baseType: !2860, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !355, file: !44, line: 929, baseType: !235, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !355, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !355, file: !44, line: 931, baseType: !768, size: 64, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !355, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !355, file: !44, line: 933, baseType: !2707, size: 32, offset: 544)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !355, file: !44, line: 934, baseType: !1170, size: 192, offset: 576)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !355, file: !44, line: 935, baseType: !528, size: 64, offset: 768)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !355, file: !44, line: 936, baseType: !3149, size: 192, offset: 832)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3150)
!3150 = !{!3151, !3152, !3153, !3154, !3155, !3156}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3149, file: !44, line: 886, baseType: !2960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3149, file: !44, line: 887, baseType: !1466, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3149, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3149, file: !44, line: 889, baseType: !432, size: 32, offset: 96)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3149, file: !44, line: 889, baseType: !432, size: 32, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3149, file: !44, line: 890, baseType: !189, size: 32, offset: 160)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !355, file: !44, line: 937, baseType: !1542, size: 64, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !355, file: !44, line: 938, baseType: !3159, size: 256, offset: 1088)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3159, file: !44, line: 897, baseType: !326, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3159, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3159, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3159, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3159, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3159, file: !44, line: 904, baseType: !528, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !355, file: !44, line: 940, baseType: !419, size: 64, offset: 1344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !355, file: !44, line: 945, baseType: !131, size: 64, offset: 1408)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !355, file: !44, line: 949, baseType: !149, size: 128, offset: 1472)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !355, file: !44, line: 950, baseType: !149, size: 128, offset: 1600)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !355, file: !44, line: 952, baseType: !731, size: 64, offset: 1728)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !355, file: !44, line: 953, baseType: !906, size: 32, offset: 1792)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !355, file: !44, line: 954, baseType: !906, size: 32, offset: 1824)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !345, file: !301, line: 174, baseType: !351, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !345, file: !301, line: 176, baseType: !3176, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!189, !354, !228, !344, !978}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !333, file: !301, line: 90, baseType: !328, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !333, file: !301, line: 91, baseType: !3181, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !291, file: !223, line: 143, baseType: !3183, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3186, !228}
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3189)
!3189 = !{!3190, !3191, !3195, !3199, !3205, !3209}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3188, file: !61, line: 40, baseType: !60, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3188, file: !61, line: 41, baseType: !3192, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!487}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3188, file: !61, line: 42, baseType: !3196, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!131}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3188, file: !61, line: 43, baseType: !3200, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!2124, !3203}
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3188, file: !61, line: 44, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!2124}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3188, file: !61, line: 45, baseType: !465, size: 64, offset: 320)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !291, file: !223, line: 144, baseType: !3211, size: 64, offset: 320)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!2124, !228}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !291, file: !223, line: 145, baseType: !3215, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{null, !228, !3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !222, file: !223, line: 70, baseType: !3221, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !616, line: 123, size: 1024, elements: !3223)
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3352, !3353, !3354, !3355, !3356}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3222, file: !616, line: 124, baseType: !744, size: 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3222, file: !616, line: 125, baseType: !744, size: 32, offset: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3222, file: !616, line: 135, baseType: !3221, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3222, file: !616, line: 136, baseType: !217, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3222, file: !616, line: 138, baseType: !757, size: 192, align: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3222, file: !616, line: 140, baseType: !2124, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3222, file: !616, line: 141, baseType: !7, size: 32, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !616, line: 142, baseType: !3232, size: 256, offset: 512)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3222, file: !616, line: 142, size: 256, elements: !3233)
!3233 = !{!3234, !3280, !3284}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3232, file: !616, line: 143, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !616, line: 91, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3235, file: !616, line: 92, baseType: !326, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3235, file: !616, line: 94, baseType: !753, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3235, file: !616, line: 100, baseType: !3240, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !616, line: 180, size: 704, elements: !3242)
!3242 = !{!3243, !3244, !3245, !3252, !3253, !3254, !3278, !3279}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3241, file: !616, line: 182, baseType: !3221, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3241, file: !616, line: 183, baseType: !7, size: 32, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3241, file: !616, line: 186, baseType: !3246, size: 192, offset: 128)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3247, line: 19, size: 192, elements: !3248)
!3247 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3246, file: !3247, line: 20, baseType: !736, size: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3246, file: !3247, line: 21, baseType: !7, size: 32, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3246, file: !3247, line: 22, baseType: !7, size: 32, offset: 160)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3241, file: !616, line: 187, baseType: !199, size: 32, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3241, file: !616, line: 188, baseType: !199, size: 32, offset: 352)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3241, file: !616, line: 189, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !616, line: 168, size: 320, elements: !3257)
!3257 = !{!3258, !3262, !3266, !3270, !3274}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3256, file: !616, line: 169, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!189, !708, !3240}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3256, file: !616, line: 171, baseType: !3263, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!189, !3221, !217, !317}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3256, file: !616, line: 173, baseType: !3267, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!189, !3221}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3256, file: !616, line: 174, baseType: !3271, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!189, !3221, !3221, !217}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3256, file: !616, line: 176, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!189, !708, !3221, !3240}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3241, file: !616, line: 192, baseType: !149, size: 128, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3241, file: !616, line: 194, baseType: !1476, size: 128, offset: 576)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3232, file: !616, line: 144, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !616, line: 103, size: 64, elements: !3282)
!3282 = !{!3283}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3281, file: !616, line: 104, baseType: !3221, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3232, file: !616, line: 145, baseType: !3285, size: 256)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !616, line: 107, size: 256, elements: !3286)
!3286 = !{!3287, !3347, !3350, !3351}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3285, file: !616, line: 108, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !616, line: 217, size: 768, elements: !3291)
!3291 = !{!3292, !3312, !3316, !3320, !3324, !3328, !3332, !3336, !3337, !3338, !3339, !3343}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3290, file: !616, line: 222, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!189, !3296}
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !616, line: 197, size: 1088, elements: !3298)
!3298 = !{!3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3297, file: !616, line: 199, baseType: !3221, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3297, file: !616, line: 200, baseType: !354, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3297, file: !616, line: 201, baseType: !708, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3297, file: !616, line: 202, baseType: !131, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3297, file: !616, line: 205, baseType: !1170, size: 192, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3297, file: !616, line: 206, baseType: !1170, size: 192, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3297, file: !616, line: 207, baseType: !189, size: 32, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3297, file: !616, line: 208, baseType: !149, size: 128, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3297, file: !616, line: 209, baseType: !276, size: 64, offset: 832)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3297, file: !616, line: 211, baseType: !323, size: 64, offset: 896)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3297, file: !616, line: 212, baseType: !487, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3297, file: !616, line: 213, baseType: !487, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3297, file: !616, line: 214, baseType: !1006, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3290, file: !616, line: 223, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3296}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3290, file: !616, line: 236, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!189, !708, !131}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3290, file: !616, line: 238, baseType: !3321, size: 64, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!131, !708, !2873}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3290, file: !616, line: 239, baseType: !3325, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!131, !708, !131, !2873}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3290, file: !616, line: 240, baseType: !3329, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !708, !131}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3290, file: !616, line: 242, baseType: !3333, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!307, !3296, !276, !323, !528}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3290, file: !616, line: 252, baseType: !323, size: 64, offset: 448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3290, file: !616, line: 259, baseType: !487, size: 8, offset: 512)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3290, file: !616, line: 260, baseType: !3333, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3290, file: !616, line: 263, baseType: !3340, size: 64, offset: 640)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!2902, !3296, !2904}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3290, file: !616, line: 266, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!189, !3296, !978}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3285, file: !616, line: 109, baseType: !3348, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !616, line: 31, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3285, file: !616, line: 110, baseType: !528, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3285, file: !616, line: 111, baseType: !3221, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3222, file: !616, line: 148, baseType: !131, size: 64, offset: 768)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3222, file: !616, line: 154, baseType: !419, size: 64, offset: 832)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3222, file: !616, line: 156, baseType: !318, size: 16, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3222, file: !616, line: 157, baseType: !317, size: 16, offset: 912)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3222, file: !616, line: 158, baseType: !3357, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !616, line: 32, flags: DIFlagFwdDecl)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !222, file: !223, line: 71, baseType: !3360, size: 32, offset: 448)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3361, line: 19, size: 32, elements: !3362)
!3361 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3362 = !{!3363}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3360, file: !3361, line: 20, baseType: !1227, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !222, file: !223, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !222, file: !223, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !222, file: !223, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !222, file: !223, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !222, file: !223, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !159, file: !146, line: 318, baseType: !7, size: 32, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !159, file: !146, line: 319, baseType: !318, size: 16, offset: 480)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !159, file: !146, line: 320, baseType: !318, size: 16, offset: 496)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !159, file: !146, line: 321, baseType: !318, size: 16, offset: 512)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !159, file: !146, line: 322, baseType: !318, size: 16, offset: 528)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !159, file: !146, line: 323, baseType: !7, size: 32, offset: 544)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !159, file: !146, line: 324, baseType: !137, size: 8, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !159, file: !146, line: 325, baseType: !137, size: 8, offset: 584)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !159, file: !146, line: 330, baseType: !137, size: 8, offset: 592)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !159, file: !146, line: 331, baseType: !137, size: 8, offset: 600)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !159, file: !146, line: 332, baseType: !137, size: 8, offset: 608)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !159, file: !146, line: 333, baseType: !137, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !159, file: !146, line: 334, baseType: !137, size: 8, offset: 624)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !159, file: !146, line: 335, baseType: !137, size: 8, offset: 632)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !159, file: !146, line: 336, baseType: !856, size: 16, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !159, file: !146, line: 337, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !159, file: !146, line: 339, baseType: !3387, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !146, line: 858, size: 2048, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3406, !3410, !3414, !3422, !3426, !3427, !3431, !3450, !3451, !3995}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3388, file: !146, line: 859, baseType: !149, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3388, file: !146, line: 860, baseType: !217, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3388, file: !146, line: 861, baseType: !3393, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3396, line: 38, size: 256, elements: !3397)
!3396 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3395, file: !3396, line: 39, baseType: !200, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3395, file: !3396, line: 39, baseType: !200, size: 32, offset: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3395, file: !3396, line: 40, baseType: !200, size: 32, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3395, file: !3396, line: 40, baseType: !200, size: 32, offset: 96)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3395, file: !3396, line: 41, baseType: !200, size: 32, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3395, file: !3396, line: 41, baseType: !200, size: 32, offset: 160)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3395, file: !3396, line: 42, baseType: !3405, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3396, line: 14, baseType: !326)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3388, file: !146, line: 862, baseType: !3407, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!189, !158, !3393}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3388, file: !146, line: 863, baseType: !3411, size: 64, offset: 320)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !158}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3388, file: !146, line: 864, baseType: !3415, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!189, !158, !3418}
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3420)
!3420 = !{!3421}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3419, file: !74, line: 51, baseType: !189, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3388, file: !146, line: 865, baseType: !3423, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!189, !158}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3388, file: !146, line: 866, baseType: !3411, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3388, file: !146, line: 867, baseType: !3428, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!189, !158, !189}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3388, file: !146, line: 868, baseType: !3432, size: 64, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !146, line: 795, size: 384, elements: !3435)
!3435 = !{!3436, !3442, !3446, !3447, !3448, !3449}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3434, file: !146, line: 797, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!3440, !158, !3441}
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !146, line: 772, baseType: !7)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !146, line: 180, baseType: !7)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3434, file: !146, line: 801, baseType: !3443, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!3440, !158}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3434, file: !146, line: 804, baseType: !3443, size: 64, offset: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3434, file: !146, line: 807, baseType: !3411, size: 64, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3434, file: !146, line: 808, baseType: !3411, size: 64, offset: 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3434, file: !146, line: 811, baseType: !3411, size: 64, offset: 320)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3388, file: !146, line: 869, baseType: !330, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3388, file: !146, line: 870, baseType: !3452, size: 1152, offset: 768)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !102, line: 95, size: 1152, elements: !3453)
!3453 = !{!3454, !3455, !3954, !3955, !3956, !3957, !3958, !3970, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3452, file: !102, line: 96, baseType: !217, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3452, file: !102, line: 97, baseType: !3456, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3458, line: 82, size: 1408, elements: !3459)
!3458 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3459 = !{!3460, !3461, !3462, !3925, !3926, !3927, !3928, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3943, !3944, !3945, !3946, !3947, !3951, !3952, !3953}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3457, file: !3458, line: 83, baseType: !217, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3457, file: !3458, line: 84, baseType: !217, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3457, file: !3458, line: 85, baseType: !3463, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3471, !3472, !3523, !3524, !3526, !3527, !3528, !3529, !3538, !3643, !3656, !3850, !3851, !3855, !3857, !3858, !3859, !3863, !3869, !3870, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3913, !3914, !3915, !3918, !3921, !3922, !3923, !3924}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3464, file: !67, line: 462, baseType: !222, size: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3464, file: !67, line: 463, baseType: !3463, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3464, file: !67, line: 465, baseType: !3469, size: 64, offset: 576)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3464, file: !67, line: 467, baseType: !217, size: 64, offset: 640)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3464, file: !67, line: 468, baseType: !3473, size: 64, offset: 704)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3483, !3488, !3492}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3475, file: !67, line: 88, baseType: !217, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3475, file: !67, line: 89, baseType: !330, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3475, file: !67, line: 90, baseType: !3480, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!189, !3463, !271}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3475, file: !67, line: 91, baseType: !3484, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!276, !3463, !3487, !3218, !3219}
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3475, file: !67, line: 93, baseType: !3489, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{null, !3463}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3475, file: !67, line: 95, baseType: !3493, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3495)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3496)
!3496 = !{!3497, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3495, file: !74, line: 279, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!189, !3463}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3495, file: !74, line: 280, baseType: !3489, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3495, file: !74, line: 281, baseType: !3498, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3495, file: !74, line: 282, baseType: !3498, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3495, file: !74, line: 283, baseType: !3498, size: 64, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3495, file: !74, line: 284, baseType: !3498, size: 64, offset: 320)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3495, file: !74, line: 285, baseType: !3498, size: 64, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3495, file: !74, line: 286, baseType: !3498, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3495, file: !74, line: 287, baseType: !3498, size: 64, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3495, file: !74, line: 288, baseType: !3498, size: 64, offset: 576)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3495, file: !74, line: 289, baseType: !3498, size: 64, offset: 640)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3495, file: !74, line: 290, baseType: !3498, size: 64, offset: 704)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3495, file: !74, line: 291, baseType: !3498, size: 64, offset: 768)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3495, file: !74, line: 292, baseType: !3498, size: 64, offset: 832)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3495, file: !74, line: 293, baseType: !3498, size: 64, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3495, file: !74, line: 294, baseType: !3498, size: 64, offset: 960)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3495, file: !74, line: 295, baseType: !3498, size: 64, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3495, file: !74, line: 296, baseType: !3498, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3495, file: !74, line: 297, baseType: !3498, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3495, file: !74, line: 298, baseType: !3498, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3495, file: !74, line: 299, baseType: !3498, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3495, file: !74, line: 300, baseType: !3498, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3495, file: !74, line: 301, baseType: !3498, size: 64, offset: 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3464, file: !67, line: 470, baseType: !3456, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3464, file: !67, line: 471, baseType: !3525, size: 64, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3464, file: !67, line: 473, baseType: !131, size: 64, offset: 896)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3464, file: !67, line: 475, baseType: !131, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3464, file: !67, line: 480, baseType: !1170, size: 192, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3464, file: !67, line: 484, baseType: !3530, size: 576, offset: 1216)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3530, file: !67, line: 362, baseType: !149, size: 128)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3530, file: !67, line: 363, baseType: !149, size: 128, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3530, file: !67, line: 364, baseType: !149, size: 128, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3530, file: !67, line: 365, baseType: !149, size: 128, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3530, file: !67, line: 366, baseType: !487, size: 8, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3530, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3464, file: !67, line: 485, baseType: !3539, size: 2304, offset: 1792)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3540)
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3636, !3640}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3539, file: !74, line: 566, baseType: !3418, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3539, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3539, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3539, file: !74, line: 569, baseType: !487, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3539, file: !74, line: 570, baseType: !487, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3539, file: !74, line: 571, baseType: !487, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3539, file: !74, line: 572, baseType: !487, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3539, file: !74, line: 573, baseType: !487, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3539, file: !74, line: 574, baseType: !487, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3539, file: !74, line: 575, baseType: !487, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3539, file: !74, line: 576, baseType: !487, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3539, file: !74, line: 577, baseType: !199, size: 32, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3539, file: !74, line: 578, baseType: !235, offset: 96)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3539, file: !74, line: 580, baseType: !149, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3539, file: !74, line: 581, baseType: !1497, size: 192, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3539, file: !74, line: 582, baseType: !3557, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3559, line: 43, size: 1472, elements: !3560)
!3559 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3568, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !3559, line: 44, baseType: !217, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3558, file: !3559, line: 45, baseType: !189, size: 32, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3558, file: !3559, line: 46, baseType: !149, size: 128, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3558, file: !3559, line: 47, baseType: !235, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3558, file: !3559, line: 48, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3558, file: !3559, line: 49, baseType: !3569, size: 320, offset: 320)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3570, line: 11, size: 320, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !{!3572, !3573, !3574, !3579}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3569, file: !3570, line: 16, baseType: !636, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3569, file: !3570, line: 17, baseType: !326, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3569, file: !3570, line: 18, baseType: !3575, size: 64, offset: 192)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3569, file: !3570, line: 19, baseType: !199, size: 32, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3558, file: !3559, line: 50, baseType: !326, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3558, file: !3559, line: 51, baseType: !1297, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3558, file: !3559, line: 52, baseType: !1297, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3558, file: !3559, line: 53, baseType: !1297, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3558, file: !3559, line: 54, baseType: !1297, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3558, file: !3559, line: 55, baseType: !1297, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3558, file: !3559, line: 56, baseType: !326, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3558, file: !3559, line: 57, baseType: !326, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3558, file: !3559, line: 58, baseType: !326, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3558, file: !3559, line: 59, baseType: !326, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3558, file: !3559, line: 60, baseType: !326, size: 64, offset: 1280)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3558, file: !3559, line: 61, baseType: !3463, size: 64, offset: 1344)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3558, file: !3559, line: 62, baseType: !487, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3558, file: !3559, line: 63, baseType: !487, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3539, file: !74, line: 583, baseType: !487, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3539, file: !74, line: 584, baseType: !487, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3539, file: !74, line: 585, baseType: !487, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3539, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3539, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3539, file: !74, line: 592, baseType: !1289, size: 512, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3539, file: !74, line: 593, baseType: !419, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3539, file: !74, line: 594, baseType: !1954, size: 256, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3539, file: !74, line: 595, baseType: !1476, size: 128, offset: 1408)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3539, file: !74, line: 596, baseType: !3566, size: 64, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3539, file: !74, line: 597, baseType: !744, size: 32, offset: 1600)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3539, file: !74, line: 598, baseType: !744, size: 32, offset: 1632)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3539, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3539, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3539, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3539, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3539, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3539, file: !74, line: 604, baseType: !487, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3539, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3539, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3539, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3539, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3539, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3539, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3539, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3539, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3539, file: !74, line: 613, baseType: !189, size: 32, offset: 1792)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3539, file: !74, line: 614, baseType: !189, size: 32, offset: 1824)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3539, file: !74, line: 615, baseType: !419, size: 64, offset: 1856)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3539, file: !74, line: 616, baseType: !419, size: 64, offset: 1920)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3539, file: !74, line: 617, baseType: !419, size: 64, offset: 1984)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3539, file: !74, line: 618, baseType: !419, size: 64, offset: 2048)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3539, file: !74, line: 620, baseType: !3627, size: 64, offset: 2112)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3628, file: !74, line: 537, baseType: !235)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3628, file: !74, line: 538, baseType: !7, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3628, file: !74, line: 540, baseType: !149, size: 128, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3628, file: !74, line: 543, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3539, file: !74, line: 621, baseType: !3637, size: 64, offset: 2176)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !3463, !1439}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3539, file: !74, line: 622, baseType: !3641, size: 64, offset: 2240)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3464, file: !67, line: 486, baseType: !3644, size: 64, offset: 4096)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3653, !3654, !3655}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3645, file: !74, line: 643, baseType: !3495, size: 1472)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3645, file: !74, line: 644, baseType: !3498, size: 64, offset: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3645, file: !74, line: 645, baseType: !3650, size: 64, offset: 1536)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3463, !487}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3645, file: !74, line: 646, baseType: !3498, size: 64, offset: 1600)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3645, file: !74, line: 647, baseType: !3489, size: 64, offset: 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3645, file: !74, line: 648, baseType: !3489, size: 64, offset: 1728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3464, file: !67, line: 493, baseType: !3657, size: 64, offset: 4160)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !88, line: 162, size: 1088, elements: !3659)
!3659 = !{!3660, !3661, !3662, !3834, !3835, !3836, !3837, !3838, !3839, !3842, !3843, !3844, !3845, !3846, !3847, !3848}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3658, file: !88, line: 163, baseType: !149, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3658, file: !88, line: 164, baseType: !217, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3658, file: !88, line: 165, baseType: !3663, size: 64, offset: 192)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3665)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !88, line: 105, size: 640, elements: !3666)
!3666 = !{!3667, !3785, !3796, !3801, !3805, !3811, !3815, !3819, !3826, !3830}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3665, file: !88, line: 106, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!189, !3657, !3671, !87}
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3673, line: 51, size: 1344, elements: !3674)
!3673 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !{!3675, !3676, !3678, !3679, !3769, !3778, !3779, !3780, !3781, !3782, !3783, !3784}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3672, file: !3673, line: 52, baseType: !217, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3672, file: !3673, line: 53, baseType: !3677, size: 32, offset: 64)
!3677 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3673, line: 28, baseType: !199)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3672, file: !3673, line: 54, baseType: !217, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3672, file: !3673, line: 55, baseType: !3680, size: 192, offset: 192)
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3681, line: 17, size: 192, elements: !3682)
!3681 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3682 = !{!3683, !3685, !3768}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3680, file: !3681, line: 18, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3680, file: !3681, line: 19, baseType: !3686, size: 64, offset: 64)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3681, line: 110, size: 1152, elements: !3689)
!3689 = !{!3690, !3694, !3698, !3704, !3710, !3714, !3718, !3723, !3727, !3728, !3732, !3736, !3740, !3751, !3752, !3753, !3754, !3764}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3688, file: !3681, line: 111, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!3684, !3684}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3688, file: !3681, line: 112, baseType: !3695, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{null, !3684}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3688, file: !3681, line: 113, baseType: !3699, size: 64, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!487, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3680)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3688, file: !3681, line: 114, baseType: !3705, size: 64, offset: 192)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!2124, !3702, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3464)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3688, file: !3681, line: 116, baseType: !3711, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!487, !3702, !217}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3688, file: !3681, line: 118, baseType: !3715, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!189, !3702, !217, !7, !131, !323}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3688, file: !3681, line: 123, baseType: !3719, size: 64, offset: 384)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!189, !3702, !217, !3722, !323}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3688, file: !3681, line: 126, baseType: !3724, size: 64, offset: 448)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!217, !3702}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3688, file: !3681, line: 127, baseType: !3724, size: 64, offset: 512)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3688, file: !3681, line: 128, baseType: !3729, size: 64, offset: 576)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!3684, !3702}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3688, file: !3681, line: 130, baseType: !3733, size: 64, offset: 640)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!3684, !3702, !3684}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3688, file: !3681, line: 133, baseType: !3737, size: 64, offset: 704)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3684, !3702, !217}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3688, file: !3681, line: 135, baseType: !3741, size: 64, offset: 768)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!189, !3702, !217, !217, !7, !7, !3744}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3681, line: 43, size: 640, elements: !3746)
!3746 = !{!3747, !3748, !3749}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3745, file: !3681, line: 44, baseType: !3684, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3745, file: !3681, line: 45, baseType: !7, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3745, file: !3681, line: 46, baseType: !3750, size: 512, offset: 128)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 512, elements: !1327)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3688, file: !3681, line: 140, baseType: !3733, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3688, file: !3681, line: 143, baseType: !3729, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3688, file: !3681, line: 145, baseType: !3691, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3688, file: !3681, line: 146, baseType: !3755, size: 64, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!189, !3702, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3681, line: 29, size: 128, elements: !3760)
!3760 = !{!3761, !3762, !3763}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3759, file: !3681, line: 30, baseType: !7, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3759, file: !3681, line: 31, baseType: !7, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3759, file: !3681, line: 32, baseType: !3702, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3688, file: !3681, line: 148, baseType: !3765, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!189, !3702, !3463}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3680, file: !3681, line: 20, baseType: !3463, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3672, file: !3673, line: 57, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3673, line: 31, size: 704, elements: !3772)
!3772 = !{!3773, !3774, !3775, !3776, !3777}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3771, file: !3673, line: 32, baseType: !276, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3771, file: !3673, line: 33, baseType: !189, size: 32, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3771, file: !3673, line: 34, baseType: !131, size: 64, offset: 128)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3771, file: !3673, line: 35, baseType: !3770, size: 64, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3771, file: !3673, line: 43, baseType: !345, size: 448, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3672, file: !3673, line: 58, baseType: !3770, size: 64, offset: 448)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3672, file: !3673, line: 59, baseType: !3671, size: 64, offset: 512)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3672, file: !3673, line: 60, baseType: !3671, size: 64, offset: 576)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3672, file: !3673, line: 61, baseType: !3671, size: 64, offset: 640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3672, file: !3673, line: 63, baseType: !222, size: 512, offset: 704)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3672, file: !3673, line: 65, baseType: !326, size: 64, offset: 1216)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3672, file: !3673, line: 66, baseType: !131, size: 64, offset: 1280)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3665, file: !88, line: 108, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!189, !3657, !3789, !87}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !88, line: 63, size: 640, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3790, file: !88, line: 64, baseType: !3684, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3790, file: !88, line: 65, baseType: !189, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3790, file: !88, line: 66, baseType: !3795, size: 512, offset: 96)
!3795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 512, elements: !1730)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3665, file: !88, line: 110, baseType: !3797, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!189, !3657, !7, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !127, line: 164, baseType: !326)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3665, file: !88, line: 111, baseType: !3802, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3657, !7}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3665, file: !88, line: 112, baseType: !3806, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!189, !3657, !3671, !3809, !7, !3385, !2680}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3665, file: !88, line: 117, baseType: !3812, size: 64, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!189, !3657, !7, !7, !131}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3665, file: !88, line: 119, baseType: !3816, size: 64, offset: 384)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3657, !7, !7}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3665, file: !88, line: 121, baseType: !3820, size: 64, offset: 448)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!189, !3657, !3823, !487}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3825, line: 11, flags: DIFlagFwdDecl)
!3825 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3665, file: !88, line: 122, baseType: !3827, size: 64, offset: 512)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !3657, !3823}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3665, file: !88, line: 123, baseType: !3831, size: 64, offset: 576)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!189, !3657, !3789, !3385, !2680}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3658, file: !88, line: 166, baseType: !131, size: 64, offset: 256)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3658, file: !88, line: 167, baseType: !7, size: 32, offset: 320)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3658, file: !88, line: 168, baseType: !7, size: 32, offset: 352)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3658, file: !88, line: 171, baseType: !3684, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3658, file: !88, line: 172, baseType: !87, size: 32, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3658, file: !88, line: 173, baseType: !3840, size: 64, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !88, line: 134, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3658, file: !88, line: 175, baseType: !3657, size: 64, offset: 576)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3658, file: !88, line: 182, baseType: !3800, size: 64, offset: 640)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3658, file: !88, line: 183, baseType: !7, size: 32, offset: 704)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3658, file: !88, line: 184, baseType: !7, size: 32, offset: 736)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3658, file: !88, line: 185, baseType: !736, size: 128, offset: 768)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3658, file: !88, line: 186, baseType: !1170, size: 192, offset: 896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3658, file: !88, line: 187, baseType: !3849, offset: 1088)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2328)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3464, file: !67, line: 499, baseType: !149, size: 128, offset: 4224)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3464, file: !67, line: 502, baseType: !3852, size: 64, offset: 4352)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3854)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3464, file: !67, line: 504, baseType: !3856, size: 64, offset: 4416)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3464, file: !67, line: 505, baseType: !419, size: 64, offset: 4480)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3464, file: !67, line: 510, baseType: !419, size: 64, offset: 4544)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3464, file: !67, line: 511, baseType: !3860, size: 64, offset: 4608)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3862)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3464, file: !67, line: 513, baseType: !3864, size: 64, offset: 4672)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3866)
!3866 = !{!3867, !3868}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3865, file: !67, line: 293, baseType: !7, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3865, file: !67, line: 294, baseType: !326, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3464, file: !67, line: 515, baseType: !149, size: 128, offset: 4736)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3464, file: !67, line: 526, baseType: !3871, offset: 4864)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3872, line: 5, elements: !249)
!3872 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3464, file: !67, line: 528, baseType: !3671, size: 64, offset: 4864)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3464, file: !67, line: 529, baseType: !3684, size: 64, offset: 4928)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3464, file: !67, line: 534, baseType: !510, size: 32, offset: 4992)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3464, file: !67, line: 535, baseType: !199, size: 32, offset: 5024)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3464, file: !67, line: 537, baseType: !235, offset: 5056)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3464, file: !67, line: 538, baseType: !149, size: 128, offset: 5056)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3464, file: !67, line: 540, baseType: !3880, size: 64, offset: 5184)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3882, line: 54, size: 960, elements: !3883)
!3882 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3883 = !{!3884, !3885, !3886, !3887, !3888, !3889, !3890, !3894, !3898, !3899, !3900, !3901, !3905, !3909, !3910}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3881, file: !3882, line: 55, baseType: !217, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3881, file: !3882, line: 56, baseType: !128, size: 64, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3881, file: !3882, line: 58, baseType: !330, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3881, file: !3882, line: 59, baseType: !330, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3881, file: !3882, line: 60, baseType: !228, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3881, file: !3882, line: 62, baseType: !3480, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3881, file: !3882, line: 63, baseType: !3891, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!276, !3463, !3487}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3881, file: !3882, line: 65, baseType: !3895, size: 64, offset: 448)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3880}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3881, file: !3882, line: 66, baseType: !3489, size: 64, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3881, file: !3882, line: 68, baseType: !3498, size: 64, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3881, file: !3882, line: 70, baseType: !3186, size: 64, offset: 640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3881, file: !3882, line: 71, baseType: !3902, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!2124, !3463}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3881, file: !3882, line: 73, baseType: !3906, size: 64, offset: 768)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3463, !3218, !3219}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3881, file: !3882, line: 75, baseType: !3493, size: 64, offset: 832)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3881, file: !3882, line: 77, baseType: !3911, size: 64, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3458, line: 111, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3464, file: !67, line: 541, baseType: !330, size: 64, offset: 5248)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3464, file: !67, line: 543, baseType: !3489, size: 64, offset: 5312)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3464, file: !67, line: 544, baseType: !3916, size: 64, offset: 5376)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3464, file: !67, line: 545, baseType: !3919, size: 64, offset: 5440)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3464, file: !67, line: 547, baseType: !487, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3464, file: !67, line: 548, baseType: !487, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3464, file: !67, line: 549, baseType: !487, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3464, file: !67, line: 550, baseType: !487, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3457, file: !3458, line: 86, baseType: !330, size: 64, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3457, file: !3458, line: 87, baseType: !330, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3457, file: !3458, line: 88, baseType: !330, size: 64, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3457, file: !3458, line: 90, baseType: !3929, size: 64, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!189, !3463, !3525}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3457, file: !3458, line: 91, baseType: !3480, size: 64, offset: 448)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3457, file: !3458, line: 92, baseType: !3498, size: 64, offset: 512)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3457, file: !3458, line: 93, baseType: !3489, size: 64, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3457, file: !3458, line: 94, baseType: !3498, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3457, file: !3458, line: 95, baseType: !3489, size: 64, offset: 704)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3457, file: !3458, line: 97, baseType: !3498, size: 64, offset: 768)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3457, file: !3458, line: 98, baseType: !3498, size: 64, offset: 832)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3457, file: !3458, line: 100, baseType: !3940, size: 64, offset: 896)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!189, !3463, !3418}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3457, file: !3458, line: 101, baseType: !3498, size: 64, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3457, file: !3458, line: 103, baseType: !3498, size: 64, offset: 1024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3457, file: !3458, line: 105, baseType: !3498, size: 64, offset: 1088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3457, file: !3458, line: 107, baseType: !3493, size: 64, offset: 1152)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3457, file: !3458, line: 109, baseType: !3948, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3458, line: 109, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3457, file: !3458, line: 111, baseType: !3911, size: 64, offset: 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3457, file: !3458, line: 112, baseType: !642, offset: 1344)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3457, file: !3458, line: 114, baseType: !487, size: 8, offset: 1344)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3452, file: !102, line: 99, baseType: !128, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3452, file: !102, line: 100, baseType: !217, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3452, file: !102, line: 102, baseType: !487, size: 8, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3452, file: !102, line: 103, baseType: !101, size: 32, offset: 288)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3452, file: !102, line: 105, baseType: !3959, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3396, line: 262, size: 1600, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3969}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3961, file: !3396, line: 263, baseType: !2697, size: 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3961, file: !3396, line: 264, baseType: !2697, size: 256, offset: 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3961, file: !3396, line: 265, baseType: !3966, size: 1024, offset: 512)
!3966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 1024, elements: !3967)
!3967 = !{!3968}
!3968 = !DISubrange(count: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3961, file: !3396, line: 266, baseType: !2124, size: 64, offset: 1536)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3452, file: !102, line: 106, baseType: !3971, size: 64, offset: 384)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3973)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3396, line: 210, size: 256, elements: !3974)
!3974 = !{!3975, !3979, !3980, !3981}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3973, file: !3396, line: 211, baseType: !3976, size: 72)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 72, elements: !3977)
!3977 = !{!3978}
!3978 = !DISubrange(count: 9)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3973, file: !3396, line: 212, baseType: !3405, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3973, file: !3396, line: 213, baseType: !200, size: 32, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3973, file: !3396, line: 214, baseType: !200, size: 32, offset: 224)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3452, file: !102, line: 108, baseType: !3498, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3452, file: !102, line: 109, baseType: !3489, size: 64, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3452, file: !102, line: 110, baseType: !3498, size: 64, offset: 576)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3452, file: !102, line: 111, baseType: !3489, size: 64, offset: 640)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3452, file: !102, line: 112, baseType: !3940, size: 64, offset: 704)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3452, file: !102, line: 113, baseType: !3498, size: 64, offset: 768)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3452, file: !102, line: 114, baseType: !330, size: 64, offset: 832)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3452, file: !102, line: 115, baseType: !330, size: 64, offset: 896)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3452, file: !102, line: 117, baseType: !3493, size: 64, offset: 960)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3452, file: !102, line: 118, baseType: !3489, size: 64, offset: 1024)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3452, file: !102, line: 120, baseType: !3993, size: 64, offset: 1088)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !102, line: 120, flags: DIFlagFwdDecl)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3388, file: !146, line: 871, baseType: !3996, size: 128, offset: 1920)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !146, line: 759, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3996, file: !146, line: 760, baseType: !235)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3996, file: !146, line: 761, baseType: !149, size: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !159, file: !146, line: 340, baseType: !419, size: 64, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !159, file: !146, line: 346, baseType: !3865, size: 128, offset: 896)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !159, file: !146, line: 348, baseType: !4003, size: 32, offset: 1024)
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !146, line: 155, baseType: !189)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !159, file: !146, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !159, file: !146, line: 352, baseType: !137, size: 8, offset: 1064)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !159, file: !146, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !159, file: !146, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !159, file: !146, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !159, file: !146, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !159, file: !146, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !159, file: !146, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !159, file: !146, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !159, file: !146, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !159, file: !146, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !159, file: !146, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !159, file: !146, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !159, file: !146, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !159, file: !146, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !159, file: !146, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !159, file: !146, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !159, file: !146, line: 376, baseType: !7, size: 32, offset: 1120)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !159, file: !146, line: 377, baseType: !7, size: 32, offset: 1152)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !159, file: !146, line: 380, baseType: !4024, size: 64, offset: 1216)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !146, line: 303, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !159, file: !146, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !159, file: !146, line: 383, baseType: !189, size: 32, offset: 1312)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !159, file: !146, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !159, file: !146, line: 387, baseType: !3441, size: 32, offset: 1376)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !159, file: !146, line: 388, baseType: !3464, size: 5568, offset: 1408)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !159, file: !146, line: 390, baseType: !189, size: 32, offset: 6976)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !159, file: !146, line: 396, baseType: !7, size: 32, offset: 7008)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !159, file: !146, line: 397, baseType: !4034, size: 8704, offset: 7040)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4035, size: 8704, elements: !4048)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4036, line: 20, size: 512, elements: !4037)
!4036 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4037 = !{!4038, !4040, !4041, !4042, !4043, !4044, !4046, !4047}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4035, file: !4036, line: 21, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !127, line: 158, baseType: !2122)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4035, file: !4036, line: 22, baseType: !4039, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4035, file: !4036, line: 23, baseType: !217, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4035, file: !4036, line: 24, baseType: !326, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4035, file: !4036, line: 25, baseType: !326, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4035, file: !4036, line: 26, baseType: !4045, size: 64, offset: 320)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4035, file: !4036, line: 26, baseType: !4045, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4035, file: !4036, line: 26, baseType: !4045, size: 64, offset: 448)
!4048 = !{!4049}
!4049 = !DISubrange(count: 17)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !159, file: !146, line: 399, baseType: !487, size: 8, offset: 15744)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !159, file: !146, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !159, file: !146, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !159, file: !146, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !159, file: !146, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !159, file: !146, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !159, file: !146, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !159, file: !146, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !159, file: !146, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !159, file: !146, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !159, file: !146, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !159, file: !146, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !159, file: !146, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !159, file: !146, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !159, file: !146, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !159, file: !146, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !159, file: !146, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !159, file: !146, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !159, file: !146, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !159, file: !146, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !159, file: !146, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !159, file: !146, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !159, file: !146, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !159, file: !146, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !159, file: !146, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !159, file: !146, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !159, file: !146, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !159, file: !146, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !159, file: !146, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !159, file: !146, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !159, file: !146, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !159, file: !146, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !159, file: !146, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !159, file: !146, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !159, file: !146, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !159, file: !146, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !159, file: !146, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !159, file: !146, line: 450, baseType: !4088, size: 16, offset: 15792)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !146, line: 206, baseType: !318)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !159, file: !146, line: 451, baseType: !744, size: 32, offset: 15808)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !159, file: !146, line: 453, baseType: !3795, size: 512, offset: 15840)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !159, file: !146, line: 454, baseType: !632, size: 64, offset: 16384)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !159, file: !146, line: 455, baseType: !344, size: 64, offset: 16448)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !159, file: !146, line: 456, baseType: !189, size: 32, offset: 16512)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !159, file: !146, line: 457, baseType: !4095, size: 1088, offset: 16576)
!4095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 1088, elements: !4048)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !159, file: !146, line: 458, baseType: !4095, size: 1088, offset: 17664)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !159, file: !146, line: 469, baseType: !330, size: 64, offset: 18752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !159, file: !146, line: 471, baseType: !4099, size: 64, offset: 18816)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !146, line: 304, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !146, line: 478, baseType: !4102, size: 64, offset: 18880)
!4102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !146, line: 478, size: 64, elements: !4103)
!4103 = !{!4104, !4107}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4102, file: !146, line: 479, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !146, line: 305, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4102, file: !146, line: 480, baseType: !158, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !159, file: !146, line: 482, baseType: !856, size: 16, offset: 18944)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !159, file: !146, line: 483, baseType: !137, size: 8, offset: 18960)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !159, file: !146, line: 497, baseType: !856, size: 16, offset: 18976)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !159, file: !146, line: 498, baseType: !2122, size: 64, offset: 19008)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !159, file: !146, line: 499, baseType: !323, size: 64, offset: 19072)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !159, file: !146, line: 500, baseType: !276, size: 64, offset: 19136)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !159, file: !146, line: 502, baseType: !326, size: 64, offset: 19200)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !145, file: !146, line: 611, baseType: !149, size: 128, offset: 512)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !145, file: !146, line: 613, baseType: !4117, size: 256, offset: 640)
!4117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4045, size: 256, elements: !1152)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !145, file: !146, line: 614, baseType: !149, size: 128, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !145, file: !146, line: 615, baseType: !4035, size: 512, offset: 1024)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !145, file: !146, line: 617, baseType: !4121, size: 64, offset: 1536)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !146, line: 731, size: 320, elements: !4123)
!4123 = !{!4124, !4128, !4132, !4136, !4140}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4122, file: !146, line: 732, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!189, !144}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4122, file: !146, line: 733, baseType: !4129, size: 64, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !144}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4122, file: !146, line: 734, baseType: !4133, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!131, !144, !7, !189}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4122, file: !146, line: 735, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!189, !144, !7, !189, !189, !1410}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4122, file: !146, line: 736, baseType: !4141, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!189, !144, !7, !189, !189, !199}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !145, file: !146, line: 618, baseType: !4145, size: 64, offset: 1600)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !146, line: 537, flags: DIFlagFwdDecl)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !145, file: !146, line: 619, baseType: !131, size: 64, offset: 1664)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !145, file: !146, line: 620, baseType: !166, size: 64, offset: 1728)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !145, file: !146, line: 622, baseType: !141, size: 8, offset: 1792)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !145, file: !146, line: 623, baseType: !141, size: 8, offset: 1800)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !145, file: !146, line: 624, baseType: !141, size: 8, offset: 1808)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !145, file: !146, line: 625, baseType: !141, size: 8, offset: 1816)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !146, line: 630, baseType: !4154, size: 384, offset: 1824)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !4155)
!4155 = !{!4156}
!4156 = !DISubrange(count: 48)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !145, file: !146, line: 632, baseType: !318, size: 16, offset: 2208)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !145, file: !146, line: 633, baseType: !4159, size: 16, offset: 2224)
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !146, line: 237, baseType: !318)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !145, file: !146, line: 634, baseType: !3463, size: 64, offset: 2240)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !145, file: !146, line: 635, baseType: !3464, size: 5568, offset: 2304)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !145, file: !146, line: 636, baseType: !344, size: 64, offset: 7872)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !145, file: !146, line: 637, baseType: !344, size: 64, offset: 7936)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !145, file: !146, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !133, file: !134, line: 34, baseType: !158, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "latch_status", scope: !133, file: !134, line: 35, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "adapter_status", scope: !133, file: !134, line: 36, baseType: !7, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "extracting", scope: !133, file: !134, line: 37, baseType: !7, size: 32, offset: 224)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_slot", scope: !133, file: !134, line: 38, baseType: !177, size: 384, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "slot_list", scope: !133, file: !134, line: 39, baseType: !149, size: 128, offset: 640)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !152)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !189)
!4180 = !{!4181, !4186, !4188, !0, !4190, !4192, !4194, !4196, !4198, !4200}
!4181 = !DIGlobalVariableExpression(var: !4182, expr: !DIExpression())
!4182 = distinct !DIGlobalVariable(name: "first", scope: !4183, file: !3, line: 589, type: !189, isLocal: true, isDefinition: true)
!4183 = distinct !DISubprogram(name: "cpci_hp_start", scope: !3, file: !3, line: 587, type: !4184, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4184 = !DISubroutineType(types: !4185)
!4185 = !{!189}
!4186 = !DIGlobalVariableExpression(var: !4187, expr: !DIExpression())
!4187 = distinct !DIGlobalVariable(name: "slots", scope: !2, file: !3, line: 45, type: !189, isLocal: true, isDefinition: true)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(name: "cpci_debug", scope: !2, file: !3, line: 47, type: !189, isLocal: false, isDefinition: true)
!4190 = !DIGlobalVariableExpression(var: !4191, expr: !DIExpression())
!4191 = distinct !DIGlobalVariable(name: "thread_finished", scope: !2, file: !3, line: 50, type: !189, isLocal: true, isDefinition: true)
!4192 = !DIGlobalVariableExpression(var: !4193, expr: !DIExpression())
!4193 = distinct !DIGlobalVariable(name: "cpci_hotplug_slot_ops", scope: !2, file: !3, line: 60, type: !182, isLocal: true, isDefinition: true)
!4194 = !DIGlobalVariableExpression(var: !4195, expr: !DIExpression())
!4195 = distinct !DIGlobalVariable(name: "extracting", scope: !2, file: !3, line: 46, type: !744, isLocal: true, isDefinition: true)
!4196 = !DIGlobalVariableExpression(var: !4197, expr: !DIExpression())
!4197 = distinct !DIGlobalVariable(name: "list_rwsem", scope: !2, file: !3, line: 43, type: !764, isLocal: true, isDefinition: true)
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(name: "slot_list", scope: !2, file: !3, line: 44, type: !149, isLocal: true, isDefinition: true)
!4200 = !DIGlobalVariableExpression(var: !4201, expr: !DIExpression())
!4201 = distinct !DIGlobalVariable(name: "cpci_thread", scope: !2, file: !3, line: 49, type: !1213, isLocal: true, isDefinition: true)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpci_hp_controller", file: !134, line: 52, size: 384, elements: !4204)
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4203, file: !134, line: 53, baseType: !7, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags", scope: !4203, file: !134, line: 54, baseType: !326, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !4203, file: !134, line: 55, baseType: !276, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4203, file: !134, line: 56, baseType: !131, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4203, file: !134, line: 57, baseType: !276, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4203, file: !134, line: 58, baseType: !4211, size: 64, offset: 320)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpci_hp_controller_ops", file: !134, line: 42, size: 448, elements: !4213)
!4213 = !{!4214, !4216, !4217, !4218, !4222, !4226, !4230}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "query_enum", scope: !4212, file: !134, line: 43, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "enable_irq", scope: !4212, file: !134, line: 44, baseType: !4215, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "disable_irq", scope: !4212, file: !134, line: 45, baseType: !4215, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "check_irq", scope: !4212, file: !134, line: 46, baseType: !4219, size: 64, offset: 192)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!189, !131}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_test", scope: !4212, file: !134, line: 47, baseType: !4223, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!189, !132, !199}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4212, file: !134, line: 48, baseType: !4227, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!137, !132}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !4212, file: !134, line: 49, baseType: !4231, size: 64, offset: 384)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!189, !132, !189}
!4234 = !{i32 7, !"Dwarf Version", i32 4}
!4235 = !{i32 2, !"Debug Info Version", i32 3}
!4236 = !{i32 1, !"wchar_size", i32 2}
!4237 = !{i32 1, !"Code Model", i32 2}
!4238 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4239 = distinct !DISubprogram(name: "cpci_hp_register_bus", scope: !3, file: !3, line: 190, type: !4240, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!189, !144, !137, !137}
!4242 = !DILocalVariable(name: "bus", arg: 1, scope: !4239, file: !3, line: 190, type: !144)
!4243 = !DILocation(line: 190, column: 38, scope: !4239)
!4244 = !DILocalVariable(name: "first", arg: 2, scope: !4239, file: !3, line: 190, type: !137)
!4245 = !DILocation(line: 190, column: 46, scope: !4239)
!4246 = !DILocalVariable(name: "last", arg: 3, scope: !4239, file: !3, line: 190, type: !137)
!4247 = !DILocation(line: 190, column: 56, scope: !4239)
!4248 = !DILocalVariable(name: "slot", scope: !4239, file: !3, line: 192, type: !132)
!4249 = !DILocation(line: 192, column: 15, scope: !4239)
!4250 = !DILocalVariable(name: "name", scope: !4239, file: !3, line: 193, type: !1619)
!4251 = !DILocation(line: 193, column: 7, scope: !4239)
!4252 = !DILocalVariable(name: "status", scope: !4239, file: !3, line: 194, type: !189)
!4253 = !DILocation(line: 194, column: 6, scope: !4239)
!4254 = !DILocalVariable(name: "i", scope: !4239, file: !3, line: 195, type: !189)
!4255 = !DILocation(line: 195, column: 6, scope: !4239)
!4256 = !DILocation(line: 197, column: 8, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 197, column: 6)
!4258 = !DILocation(line: 197, column: 19, scope: !4257)
!4259 = !DILocation(line: 197, column: 22, scope: !4257)
!4260 = !DILocation(line: 197, column: 6, scope: !4239)
!4261 = !DILocation(line: 198, column: 3, scope: !4257)
!4262 = !DILocation(line: 204, column: 11, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 204, column: 2)
!4264 = !DILocation(line: 204, column: 9, scope: !4263)
!4265 = !DILocation(line: 204, column: 7, scope: !4263)
!4266 = !DILocation(line: 204, column: 18, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 204, column: 2)
!4268 = !DILocation(line: 204, column: 23, scope: !4267)
!4269 = !DILocation(line: 204, column: 20, scope: !4267)
!4270 = !DILocation(line: 204, column: 2, scope: !4263)
!4271 = !DILocation(line: 205, column: 10, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 204, column: 34)
!4273 = !DILocation(line: 205, column: 8, scope: !4272)
!4274 = !DILocation(line: 206, column: 8, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 206, column: 7)
!4276 = !DILocation(line: 206, column: 7, scope: !4272)
!4277 = !DILocation(line: 207, column: 11, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 206, column: 14)
!4279 = !DILocation(line: 208, column: 4, scope: !4278)
!4280 = !DILocation(line: 211, column: 15, scope: !4272)
!4281 = !DILocation(line: 211, column: 3, scope: !4272)
!4282 = !DILocation(line: 211, column: 9, scope: !4272)
!4283 = !DILocation(line: 211, column: 13, scope: !4272)
!4284 = !DILocation(line: 212, column: 18, scope: !4272)
!4285 = !DILocation(line: 212, column: 3, scope: !4272)
!4286 = !DILocation(line: 212, column: 9, scope: !4272)
!4287 = !DILocation(line: 212, column: 16, scope: !4272)
!4288 = !DILocation(line: 213, column: 17, scope: !4272)
!4289 = !DILocation(line: 213, column: 3, scope: !4272)
!4290 = !DILocation(line: 213, column: 9, scope: !4272)
!4291 = !DILocation(line: 213, column: 15, scope: !4272)
!4292 = !DILocation(line: 215, column: 12, scope: !4272)
!4293 = !DILocation(line: 215, column: 47, scope: !4272)
!4294 = !DILocation(line: 215, column: 52, scope: !4272)
!4295 = !DILocation(line: 215, column: 60, scope: !4272)
!4296 = !DILocation(line: 215, column: 3, scope: !4272)
!4297 = !DILocation(line: 217, column: 3, scope: !4272)
!4298 = !DILocation(line: 217, column: 9, scope: !4272)
!4299 = !DILocation(line: 217, column: 22, scope: !4272)
!4300 = !DILocation(line: 217, column: 26, scope: !4272)
!4301 = !DILocation(line: 219, column: 3, scope: !4272)
!4302 = !DILocation(line: 219, column: 3, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 219, column: 3)
!4304 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 219, column: 3)
!4305 = !DILocation(line: 219, column: 3, scope: !4304)
!4306 = !DILocation(line: 220, column: 12, scope: !4272)
!4307 = !DILocation(line: 220, column: 10, scope: !4272)
!4308 = !DILocation(line: 221, column: 7, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 221, column: 7)
!4310 = !DILocation(line: 221, column: 7, scope: !4272)
!4311 = !DILocation(line: 222, column: 4, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 221, column: 15)
!4313 = !DILocation(line: 223, column: 4, scope: !4312)
!4314 = !DILocation(line: 225, column: 3, scope: !4272)
!4315 = !DILocation(line: 225, column: 3, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 225, column: 3)
!4317 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 225, column: 3)
!4318 = !DILocation(line: 225, column: 3, scope: !4317)
!4319 = !DILocation(line: 228, column: 3, scope: !4272)
!4320 = !DILocation(line: 229, column: 13, scope: !4272)
!4321 = !DILocation(line: 229, column: 19, scope: !4272)
!4322 = !DILocation(line: 229, column: 3, scope: !4272)
!4323 = !DILocation(line: 230, column: 8, scope: !4272)
!4324 = !DILocation(line: 231, column: 3, scope: !4272)
!4325 = !DILocation(line: 232, column: 2, scope: !4272)
!4326 = !DILocation(line: 204, column: 29, scope: !4267)
!4327 = !DILocation(line: 204, column: 2, scope: !4267)
!4328 = distinct !{!4328, !4270, !4329}
!4329 = !DILocation(line: 232, column: 2, scope: !4263)
!4330 = !DILocation(line: 233, column: 2, scope: !4239)
!4331 = !DILabel(scope: !4239, name: "error_slot", file: !3, line: 234)
!4332 = !DILocation(line: 234, column: 1, scope: !4239)
!4333 = !DILocation(line: 235, column: 8, scope: !4239)
!4334 = !DILocation(line: 235, column: 2, scope: !4239)
!4335 = !DILabel(scope: !4239, name: "error", file: !3, line: 236)
!4336 = !DILocation(line: 236, column: 1, scope: !4239)
!4337 = !DILocation(line: 237, column: 9, scope: !4239)
!4338 = !DILocation(line: 237, column: 2, scope: !4239)
!4339 = !DILocation(line: 238, column: 1, scope: !4239)
!4340 = distinct !DISubprogram(name: "kzalloc", scope: !108, file: !108, line: 662, type: !4341, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!131, !323, !126}
!4343 = !DILocalVariable(name: "s", arg: 1, scope: !4344, file: !108, line: 445, type: !932)
!4344 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !108, file: !108, line: 445, type: !4345, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!131, !932, !126, !323}
!4347 = !DILocation(line: 445, column: 72, scope: !4344, inlinedAt: !4348)
!4348 = distinct !DILocation(line: 552, column: 10, scope: !4349, inlinedAt: !4352)
!4349 = distinct !DILexicalBlock(scope: !4350, file: !108, line: 540, column: 34)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !108, line: 540, column: 6)
!4351 = distinct !DISubprogram(name: "kmalloc", scope: !108, file: !108, line: 538, type: !4341, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4352 = distinct !DILocation(line: 664, column: 9, scope: !4340)
!4353 = !DILocalVariable(name: "flags", arg: 2, scope: !4344, file: !108, line: 446, type: !126)
!4354 = !DILocation(line: 446, column: 9, scope: !4344, inlinedAt: !4348)
!4355 = !DILocalVariable(name: "size", arg: 3, scope: !4344, file: !108, line: 446, type: !323)
!4356 = !DILocation(line: 446, column: 23, scope: !4344, inlinedAt: !4348)
!4357 = !DILocalVariable(name: "ret", scope: !4344, file: !108, line: 448, type: !131)
!4358 = !DILocation(line: 448, column: 8, scope: !4344, inlinedAt: !4348)
!4359 = !DILocalVariable(name: "flags", arg: 1, scope: !4360, file: !108, line: 318, type: !126)
!4360 = distinct !DISubprogram(name: "kmalloc_type", scope: !108, file: !108, line: 318, type: !4361, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!107, !126}
!4363 = !DILocation(line: 318, column: 67, scope: !4360, inlinedAt: !4364)
!4364 = distinct !DILocation(line: 553, column: 20, scope: !4349, inlinedAt: !4352)
!4365 = !DILocalVariable(name: "size", arg: 1, scope: !4366, file: !108, line: 346, type: !323)
!4366 = distinct !DISubprogram(name: "kmalloc_index", scope: !108, file: !108, line: 346, type: !4367, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!7, !323}
!4369 = !DILocation(line: 346, column: 58, scope: !4366, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 547, column: 11, scope: !4349, inlinedAt: !4352)
!4371 = !DILocalVariable(name: "size", arg: 1, scope: !4372, file: !108, line: 472, type: !323)
!4372 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !108, file: !108, line: 472, type: !4373, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!131, !323, !126, !7}
!4375 = !DILocation(line: 472, column: 28, scope: !4372, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 481, column: 9, scope: !4377, inlinedAt: !4378)
!4377 = distinct !DISubprogram(name: "kmalloc_large", scope: !108, file: !108, line: 478, type: !4341, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4378 = distinct !DILocation(line: 545, column: 11, scope: !4379, inlinedAt: !4352)
!4379 = distinct !DILexicalBlock(scope: !4349, file: !108, line: 544, column: 7)
!4380 = !DILocalVariable(name: "flags", arg: 2, scope: !4372, file: !108, line: 472, type: !126)
!4381 = !DILocation(line: 472, column: 40, scope: !4372, inlinedAt: !4376)
!4382 = !DILocalVariable(name: "order", arg: 3, scope: !4372, file: !108, line: 472, type: !7)
!4383 = !DILocation(line: 472, column: 60, scope: !4372, inlinedAt: !4376)
!4384 = !DILocalVariable(name: "size", arg: 1, scope: !4377, file: !108, line: 478, type: !323)
!4385 = !DILocation(line: 478, column: 51, scope: !4377, inlinedAt: !4378)
!4386 = !DILocalVariable(name: "flags", arg: 2, scope: !4377, file: !108, line: 478, type: !126)
!4387 = !DILocation(line: 478, column: 63, scope: !4377, inlinedAt: !4378)
!4388 = !DILocalVariable(name: "order", scope: !4377, file: !108, line: 480, type: !7)
!4389 = !DILocation(line: 480, column: 15, scope: !4377, inlinedAt: !4378)
!4390 = !DILocalVariable(name: "size", arg: 1, scope: !4351, file: !108, line: 538, type: !323)
!4391 = !DILocation(line: 538, column: 45, scope: !4351, inlinedAt: !4352)
!4392 = !DILocalVariable(name: "flags", arg: 2, scope: !4351, file: !108, line: 538, type: !126)
!4393 = !DILocation(line: 538, column: 57, scope: !4351, inlinedAt: !4352)
!4394 = !DILocalVariable(name: "index", scope: !4349, file: !108, line: 542, type: !7)
!4395 = !DILocation(line: 542, column: 16, scope: !4349, inlinedAt: !4352)
!4396 = !DILocalVariable(name: "size", arg: 1, scope: !4340, file: !108, line: 662, type: !323)
!4397 = !DILocation(line: 662, column: 36, scope: !4340)
!4398 = !DILocalVariable(name: "flags", arg: 2, scope: !4340, file: !108, line: 662, type: !126)
!4399 = !DILocation(line: 662, column: 48, scope: !4340)
!4400 = !DILocation(line: 664, column: 17, scope: !4340)
!4401 = !DILocation(line: 664, column: 23, scope: !4340)
!4402 = !DILocation(line: 664, column: 29, scope: !4340)
!4403 = !DILocation(line: 540, column: 27, scope: !4350, inlinedAt: !4352)
!4404 = !DILocation(line: 540, column: 6, scope: !4350, inlinedAt: !4352)
!4405 = !DILocation(line: 540, column: 6, scope: !4351, inlinedAt: !4352)
!4406 = !DILocation(line: 544, column: 7, scope: !4379, inlinedAt: !4352)
!4407 = !DILocation(line: 544, column: 12, scope: !4379, inlinedAt: !4352)
!4408 = !DILocation(line: 544, column: 7, scope: !4349, inlinedAt: !4352)
!4409 = !DILocation(line: 545, column: 25, scope: !4379, inlinedAt: !4352)
!4410 = !DILocation(line: 545, column: 31, scope: !4379, inlinedAt: !4352)
!4411 = !DILocation(line: 480, column: 33, scope: !4377, inlinedAt: !4378)
!4412 = !DILocation(line: 480, column: 23, scope: !4377, inlinedAt: !4378)
!4413 = !DILocation(line: 481, column: 29, scope: !4377, inlinedAt: !4378)
!4414 = !DILocation(line: 481, column: 35, scope: !4377, inlinedAt: !4378)
!4415 = !DILocation(line: 481, column: 42, scope: !4377, inlinedAt: !4378)
!4416 = !DILocation(line: 474, column: 23, scope: !4372, inlinedAt: !4376)
!4417 = !DILocation(line: 474, column: 29, scope: !4372, inlinedAt: !4376)
!4418 = !DILocation(line: 474, column: 36, scope: !4372, inlinedAt: !4376)
!4419 = !DILocation(line: 474, column: 9, scope: !4372, inlinedAt: !4376)
!4420 = !DILocation(line: 545, column: 4, scope: !4379, inlinedAt: !4352)
!4421 = !DILocation(line: 547, column: 25, scope: !4349, inlinedAt: !4352)
!4422 = !DILocation(line: 348, column: 7, scope: !4423, inlinedAt: !4370)
!4423 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 348, column: 6)
!4424 = !DILocation(line: 348, column: 6, scope: !4366, inlinedAt: !4370)
!4425 = !DILocation(line: 349, column: 3, scope: !4423, inlinedAt: !4370)
!4426 = !DILocation(line: 351, column: 6, scope: !4427, inlinedAt: !4370)
!4427 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 351, column: 6)
!4428 = !DILocation(line: 351, column: 11, scope: !4427, inlinedAt: !4370)
!4429 = !DILocation(line: 351, column: 6, scope: !4366, inlinedAt: !4370)
!4430 = !DILocation(line: 352, column: 3, scope: !4427, inlinedAt: !4370)
!4431 = !DILocation(line: 354, column: 32, scope: !4432, inlinedAt: !4370)
!4432 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 354, column: 6)
!4433 = !DILocation(line: 354, column: 37, scope: !4432, inlinedAt: !4370)
!4434 = !DILocation(line: 354, column: 42, scope: !4432, inlinedAt: !4370)
!4435 = !DILocation(line: 354, column: 45, scope: !4432, inlinedAt: !4370)
!4436 = !DILocation(line: 354, column: 50, scope: !4432, inlinedAt: !4370)
!4437 = !DILocation(line: 354, column: 6, scope: !4366, inlinedAt: !4370)
!4438 = !DILocation(line: 355, column: 3, scope: !4432, inlinedAt: !4370)
!4439 = !DILocation(line: 356, column: 32, scope: !4440, inlinedAt: !4370)
!4440 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 356, column: 6)
!4441 = !DILocation(line: 356, column: 37, scope: !4440, inlinedAt: !4370)
!4442 = !DILocation(line: 356, column: 43, scope: !4440, inlinedAt: !4370)
!4443 = !DILocation(line: 356, column: 46, scope: !4440, inlinedAt: !4370)
!4444 = !DILocation(line: 356, column: 51, scope: !4440, inlinedAt: !4370)
!4445 = !DILocation(line: 356, column: 6, scope: !4366, inlinedAt: !4370)
!4446 = !DILocation(line: 357, column: 3, scope: !4440, inlinedAt: !4370)
!4447 = !DILocation(line: 358, column: 6, scope: !4448, inlinedAt: !4370)
!4448 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 358, column: 6)
!4449 = !DILocation(line: 358, column: 11, scope: !4448, inlinedAt: !4370)
!4450 = !DILocation(line: 358, column: 6, scope: !4366, inlinedAt: !4370)
!4451 = !DILocation(line: 358, column: 26, scope: !4448, inlinedAt: !4370)
!4452 = !DILocation(line: 359, column: 6, scope: !4453, inlinedAt: !4370)
!4453 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 359, column: 6)
!4454 = !DILocation(line: 359, column: 11, scope: !4453, inlinedAt: !4370)
!4455 = !DILocation(line: 359, column: 6, scope: !4366, inlinedAt: !4370)
!4456 = !DILocation(line: 359, column: 26, scope: !4453, inlinedAt: !4370)
!4457 = !DILocation(line: 360, column: 6, scope: !4458, inlinedAt: !4370)
!4458 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 360, column: 6)
!4459 = !DILocation(line: 360, column: 11, scope: !4458, inlinedAt: !4370)
!4460 = !DILocation(line: 360, column: 6, scope: !4366, inlinedAt: !4370)
!4461 = !DILocation(line: 360, column: 26, scope: !4458, inlinedAt: !4370)
!4462 = !DILocation(line: 361, column: 6, scope: !4463, inlinedAt: !4370)
!4463 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 361, column: 6)
!4464 = !DILocation(line: 361, column: 11, scope: !4463, inlinedAt: !4370)
!4465 = !DILocation(line: 361, column: 6, scope: !4366, inlinedAt: !4370)
!4466 = !DILocation(line: 361, column: 26, scope: !4463, inlinedAt: !4370)
!4467 = !DILocation(line: 362, column: 6, scope: !4468, inlinedAt: !4370)
!4468 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 362, column: 6)
!4469 = !DILocation(line: 362, column: 11, scope: !4468, inlinedAt: !4370)
!4470 = !DILocation(line: 362, column: 6, scope: !4366, inlinedAt: !4370)
!4471 = !DILocation(line: 362, column: 26, scope: !4468, inlinedAt: !4370)
!4472 = !DILocation(line: 363, column: 6, scope: !4473, inlinedAt: !4370)
!4473 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 363, column: 6)
!4474 = !DILocation(line: 363, column: 11, scope: !4473, inlinedAt: !4370)
!4475 = !DILocation(line: 363, column: 6, scope: !4366, inlinedAt: !4370)
!4476 = !DILocation(line: 363, column: 26, scope: !4473, inlinedAt: !4370)
!4477 = !DILocation(line: 364, column: 6, scope: !4478, inlinedAt: !4370)
!4478 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 364, column: 6)
!4479 = !DILocation(line: 364, column: 11, scope: !4478, inlinedAt: !4370)
!4480 = !DILocation(line: 364, column: 6, scope: !4366, inlinedAt: !4370)
!4481 = !DILocation(line: 364, column: 26, scope: !4478, inlinedAt: !4370)
!4482 = !DILocation(line: 365, column: 6, scope: !4483, inlinedAt: !4370)
!4483 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 365, column: 6)
!4484 = !DILocation(line: 365, column: 11, scope: !4483, inlinedAt: !4370)
!4485 = !DILocation(line: 365, column: 6, scope: !4366, inlinedAt: !4370)
!4486 = !DILocation(line: 365, column: 26, scope: !4483, inlinedAt: !4370)
!4487 = !DILocation(line: 366, column: 6, scope: !4488, inlinedAt: !4370)
!4488 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 366, column: 6)
!4489 = !DILocation(line: 366, column: 11, scope: !4488, inlinedAt: !4370)
!4490 = !DILocation(line: 366, column: 6, scope: !4366, inlinedAt: !4370)
!4491 = !DILocation(line: 366, column: 26, scope: !4488, inlinedAt: !4370)
!4492 = !DILocation(line: 367, column: 6, scope: !4493, inlinedAt: !4370)
!4493 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 367, column: 6)
!4494 = !DILocation(line: 367, column: 11, scope: !4493, inlinedAt: !4370)
!4495 = !DILocation(line: 367, column: 6, scope: !4366, inlinedAt: !4370)
!4496 = !DILocation(line: 367, column: 26, scope: !4493, inlinedAt: !4370)
!4497 = !DILocation(line: 368, column: 6, scope: !4498, inlinedAt: !4370)
!4498 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 368, column: 6)
!4499 = !DILocation(line: 368, column: 11, scope: !4498, inlinedAt: !4370)
!4500 = !DILocation(line: 368, column: 6, scope: !4366, inlinedAt: !4370)
!4501 = !DILocation(line: 368, column: 26, scope: !4498, inlinedAt: !4370)
!4502 = !DILocation(line: 369, column: 6, scope: !4503, inlinedAt: !4370)
!4503 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 369, column: 6)
!4504 = !DILocation(line: 369, column: 11, scope: !4503, inlinedAt: !4370)
!4505 = !DILocation(line: 369, column: 6, scope: !4366, inlinedAt: !4370)
!4506 = !DILocation(line: 369, column: 26, scope: !4503, inlinedAt: !4370)
!4507 = !DILocation(line: 370, column: 6, scope: !4508, inlinedAt: !4370)
!4508 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 370, column: 6)
!4509 = !DILocation(line: 370, column: 11, scope: !4508, inlinedAt: !4370)
!4510 = !DILocation(line: 370, column: 6, scope: !4366, inlinedAt: !4370)
!4511 = !DILocation(line: 370, column: 26, scope: !4508, inlinedAt: !4370)
!4512 = !DILocation(line: 371, column: 6, scope: !4513, inlinedAt: !4370)
!4513 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 371, column: 6)
!4514 = !DILocation(line: 371, column: 11, scope: !4513, inlinedAt: !4370)
!4515 = !DILocation(line: 371, column: 6, scope: !4366, inlinedAt: !4370)
!4516 = !DILocation(line: 371, column: 26, scope: !4513, inlinedAt: !4370)
!4517 = !DILocation(line: 372, column: 6, scope: !4518, inlinedAt: !4370)
!4518 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 372, column: 6)
!4519 = !DILocation(line: 372, column: 11, scope: !4518, inlinedAt: !4370)
!4520 = !DILocation(line: 372, column: 6, scope: !4366, inlinedAt: !4370)
!4521 = !DILocation(line: 372, column: 26, scope: !4518, inlinedAt: !4370)
!4522 = !DILocation(line: 373, column: 6, scope: !4523, inlinedAt: !4370)
!4523 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 373, column: 6)
!4524 = !DILocation(line: 373, column: 11, scope: !4523, inlinedAt: !4370)
!4525 = !DILocation(line: 373, column: 6, scope: !4366, inlinedAt: !4370)
!4526 = !DILocation(line: 373, column: 26, scope: !4523, inlinedAt: !4370)
!4527 = !DILocation(line: 374, column: 6, scope: !4528, inlinedAt: !4370)
!4528 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 374, column: 6)
!4529 = !DILocation(line: 374, column: 11, scope: !4528, inlinedAt: !4370)
!4530 = !DILocation(line: 374, column: 6, scope: !4366, inlinedAt: !4370)
!4531 = !DILocation(line: 374, column: 26, scope: !4528, inlinedAt: !4370)
!4532 = !DILocation(line: 375, column: 6, scope: !4533, inlinedAt: !4370)
!4533 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 375, column: 6)
!4534 = !DILocation(line: 375, column: 11, scope: !4533, inlinedAt: !4370)
!4535 = !DILocation(line: 375, column: 6, scope: !4366, inlinedAt: !4370)
!4536 = !DILocation(line: 375, column: 27, scope: !4533, inlinedAt: !4370)
!4537 = !DILocation(line: 376, column: 6, scope: !4538, inlinedAt: !4370)
!4538 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 376, column: 6)
!4539 = !DILocation(line: 376, column: 11, scope: !4538, inlinedAt: !4370)
!4540 = !DILocation(line: 376, column: 6, scope: !4366, inlinedAt: !4370)
!4541 = !DILocation(line: 376, column: 32, scope: !4538, inlinedAt: !4370)
!4542 = !DILocation(line: 377, column: 6, scope: !4543, inlinedAt: !4370)
!4543 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 377, column: 6)
!4544 = !DILocation(line: 377, column: 11, scope: !4543, inlinedAt: !4370)
!4545 = !DILocation(line: 377, column: 6, scope: !4366, inlinedAt: !4370)
!4546 = !DILocation(line: 377, column: 32, scope: !4543, inlinedAt: !4370)
!4547 = !DILocation(line: 378, column: 6, scope: !4548, inlinedAt: !4370)
!4548 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 378, column: 6)
!4549 = !DILocation(line: 378, column: 11, scope: !4548, inlinedAt: !4370)
!4550 = !DILocation(line: 378, column: 6, scope: !4366, inlinedAt: !4370)
!4551 = !DILocation(line: 378, column: 32, scope: !4548, inlinedAt: !4370)
!4552 = !DILocation(line: 379, column: 6, scope: !4553, inlinedAt: !4370)
!4553 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 379, column: 6)
!4554 = !DILocation(line: 379, column: 11, scope: !4553, inlinedAt: !4370)
!4555 = !DILocation(line: 379, column: 6, scope: !4366, inlinedAt: !4370)
!4556 = !DILocation(line: 379, column: 33, scope: !4553, inlinedAt: !4370)
!4557 = !DILocation(line: 380, column: 6, scope: !4558, inlinedAt: !4370)
!4558 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 380, column: 6)
!4559 = !DILocation(line: 380, column: 11, scope: !4558, inlinedAt: !4370)
!4560 = !DILocation(line: 380, column: 6, scope: !4366, inlinedAt: !4370)
!4561 = !DILocation(line: 380, column: 33, scope: !4558, inlinedAt: !4370)
!4562 = !DILocation(line: 381, column: 6, scope: !4563, inlinedAt: !4370)
!4563 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 381, column: 6)
!4564 = !DILocation(line: 381, column: 11, scope: !4563, inlinedAt: !4370)
!4565 = !DILocation(line: 381, column: 6, scope: !4366, inlinedAt: !4370)
!4566 = !DILocation(line: 381, column: 33, scope: !4563, inlinedAt: !4370)
!4567 = !DILocation(line: 382, column: 2, scope: !4568, inlinedAt: !4370)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !108, line: 382, column: 2)
!4569 = distinct !DILexicalBlock(scope: !4366, file: !108, line: 382, column: 2)
!4570 = !{i32 -2143508321, i32 -2143508292, i32 -2143508246, i32 -2143508188, i32 -2143508134, i32 -2143508080, i32 -2143508025, i32 -2143507994}
!4571 = !DILocation(line: 382, column: 2, scope: !4572, inlinedAt: !4370)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !108, line: 382, column: 2)
!4573 = distinct !DILexicalBlock(scope: !4569, file: !108, line: 382, column: 2)
!4574 = !{i32 -2143507551, i32 -2143507544, i32 -2143507490, i32 -2143507459, i32 -2143507429}
!4575 = !DILocation(line: 382, column: 2, scope: !4573, inlinedAt: !4370)
!4576 = !DILocation(line: 386, column: 1, scope: !4366, inlinedAt: !4370)
!4577 = !DILocation(line: 547, column: 9, scope: !4349, inlinedAt: !4352)
!4578 = !DILocation(line: 549, column: 8, scope: !4579, inlinedAt: !4352)
!4579 = distinct !DILexicalBlock(scope: !4349, file: !108, line: 549, column: 7)
!4580 = !DILocation(line: 549, column: 7, scope: !4349, inlinedAt: !4352)
!4581 = !DILocation(line: 550, column: 4, scope: !4579, inlinedAt: !4352)
!4582 = !DILocation(line: 553, column: 33, scope: !4349, inlinedAt: !4352)
!4583 = !DILocation(line: 325, column: 6, scope: !4584, inlinedAt: !4364)
!4584 = distinct !DILexicalBlock(scope: !4360, file: !108, line: 325, column: 6)
!4585 = !DILocation(line: 325, column: 6, scope: !4360, inlinedAt: !4364)
!4586 = !DILocation(line: 326, column: 3, scope: !4584, inlinedAt: !4364)
!4587 = !DILocation(line: 332, column: 9, scope: !4360, inlinedAt: !4364)
!4588 = !DILocation(line: 332, column: 15, scope: !4360, inlinedAt: !4364)
!4589 = !DILocation(line: 332, column: 2, scope: !4360, inlinedAt: !4364)
!4590 = !DILocation(line: 336, column: 1, scope: !4360, inlinedAt: !4364)
!4591 = !DILocation(line: 553, column: 5, scope: !4349, inlinedAt: !4352)
!4592 = !DILocation(line: 553, column: 41, scope: !4349, inlinedAt: !4352)
!4593 = !DILocation(line: 554, column: 5, scope: !4349, inlinedAt: !4352)
!4594 = !DILocation(line: 554, column: 12, scope: !4349, inlinedAt: !4352)
!4595 = !DILocation(line: 448, column: 31, scope: !4344, inlinedAt: !4348)
!4596 = !DILocation(line: 448, column: 34, scope: !4344, inlinedAt: !4348)
!4597 = !DILocation(line: 448, column: 14, scope: !4344, inlinedAt: !4348)
!4598 = !DILocation(line: 450, column: 22, scope: !4344, inlinedAt: !4348)
!4599 = !DILocation(line: 450, column: 25, scope: !4344, inlinedAt: !4348)
!4600 = !DILocation(line: 450, column: 30, scope: !4344, inlinedAt: !4348)
!4601 = !DILocation(line: 450, column: 36, scope: !4344, inlinedAt: !4348)
!4602 = !DILocation(line: 450, column: 8, scope: !4344, inlinedAt: !4348)
!4603 = !DILocation(line: 450, column: 6, scope: !4344, inlinedAt: !4348)
!4604 = !DILocation(line: 451, column: 9, scope: !4344, inlinedAt: !4348)
!4605 = !DILocation(line: 552, column: 3, scope: !4349, inlinedAt: !4352)
!4606 = !DILocation(line: 557, column: 19, scope: !4351, inlinedAt: !4352)
!4607 = !DILocation(line: 557, column: 25, scope: !4351, inlinedAt: !4352)
!4608 = !DILocation(line: 557, column: 9, scope: !4351, inlinedAt: !4352)
!4609 = !DILocation(line: 557, column: 2, scope: !4351, inlinedAt: !4352)
!4610 = !DILocation(line: 558, column: 1, scope: !4351, inlinedAt: !4352)
!4611 = !DILocation(line: 664, column: 2, scope: !4340)
!4612 = distinct !DISubprogram(name: "slot_name", scope: !134, file: !134, line: 61, type: !4613, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!217, !132}
!4615 = !DILocalVariable(name: "slot", arg: 1, scope: !4612, file: !134, line: 61, type: !132)
!4616 = !DILocation(line: 61, column: 50, scope: !4612)
!4617 = !DILocation(line: 63, column: 28, scope: !4612)
!4618 = !DILocation(line: 63, column: 34, scope: !4612)
!4619 = !DILocation(line: 63, column: 9, scope: !4612)
!4620 = !DILocation(line: 63, column: 2, scope: !4612)
!4621 = distinct !DISubprogram(name: "list_add", scope: !4622, file: !4622, line: 84, type: !4623, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4622 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4623 = !DISubroutineType(types: !4624)
!4624 = !{null, !152, !152}
!4625 = !DILocalVariable(name: "new", arg: 1, scope: !4621, file: !4622, line: 84, type: !152)
!4626 = !DILocation(line: 84, column: 47, scope: !4621)
!4627 = !DILocalVariable(name: "head", arg: 2, scope: !4621, file: !4622, line: 84, type: !152)
!4628 = !DILocation(line: 84, column: 70, scope: !4621)
!4629 = !DILocation(line: 86, column: 13, scope: !4621)
!4630 = !DILocation(line: 86, column: 18, scope: !4621)
!4631 = !DILocation(line: 86, column: 24, scope: !4621)
!4632 = !DILocation(line: 86, column: 30, scope: !4621)
!4633 = !DILocation(line: 86, column: 2, scope: !4621)
!4634 = !DILocation(line: 87, column: 1, scope: !4621)
!4635 = distinct !DISubprogram(name: "cpci_hp_unregister_bus", scope: !3, file: !3, line: 242, type: !4126, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4636 = !DILocalVariable(name: "bus", arg: 1, scope: !4635, file: !3, line: 242, type: !144)
!4637 = !DILocation(line: 242, column: 40, scope: !4635)
!4638 = !DILocalVariable(name: "slot", scope: !4635, file: !3, line: 244, type: !132)
!4639 = !DILocation(line: 244, column: 15, scope: !4635)
!4640 = !DILocalVariable(name: "tmp", scope: !4635, file: !3, line: 245, type: !132)
!4641 = !DILocation(line: 245, column: 15, scope: !4635)
!4642 = !DILocalVariable(name: "status", scope: !4635, file: !3, line: 246, type: !189)
!4643 = !DILocation(line: 246, column: 6, scope: !4635)
!4644 = !DILocation(line: 248, column: 2, scope: !4635)
!4645 = !DILocation(line: 249, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 249, column: 6)
!4647 = !DILocation(line: 249, column: 6, scope: !4635)
!4648 = !DILocation(line: 250, column: 3, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 249, column: 14)
!4650 = !DILocation(line: 251, column: 3, scope: !4649)
!4651 = !DILocalVariable(name: "__mptr", scope: !4652, file: !3, line: 253, type: !131)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 253, column: 2)
!4653 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 253, column: 2)
!4654 = !DILocation(line: 253, column: 2, scope: !4652)
!4655 = !DILocation(line: 253, column: 2, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 253, column: 2)
!4657 = !DILocation(line: 253, column: 2, scope: !4653)
!4658 = !DILocalVariable(name: "__mptr", scope: !4659, file: !3, line: 253, type: !131)
!4659 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 253, column: 2)
!4660 = !DILocation(line: 253, column: 2, scope: !4659)
!4661 = !DILocation(line: 253, column: 2, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 253, column: 2)
!4663 = !DILocation(line: 253, column: 2, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 253, column: 2)
!4665 = !DILocation(line: 254, column: 7, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 254, column: 7)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 253, column: 61)
!4668 = !DILocation(line: 254, column: 13, scope: !4666)
!4669 = !DILocation(line: 254, column: 20, scope: !4666)
!4670 = !DILocation(line: 254, column: 17, scope: !4666)
!4671 = !DILocation(line: 254, column: 7, scope: !4667)
!4672 = !DILocation(line: 255, column: 14, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 254, column: 25)
!4674 = !DILocation(line: 255, column: 20, scope: !4673)
!4675 = !DILocation(line: 255, column: 4, scope: !4673)
!4676 = !DILocation(line: 256, column: 9, scope: !4673)
!4677 = !DILocation(line: 258, column: 4, scope: !4673)
!4678 = !DILocation(line: 258, column: 4, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 258, column: 4)
!4680 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 258, column: 4)
!4681 = !DILocation(line: 258, column: 4, scope: !4680)
!4682 = !DILocation(line: 259, column: 23, scope: !4673)
!4683 = !DILocation(line: 259, column: 29, scope: !4673)
!4684 = !DILocation(line: 259, column: 4, scope: !4673)
!4685 = !DILocation(line: 260, column: 17, scope: !4673)
!4686 = !DILocation(line: 260, column: 4, scope: !4673)
!4687 = !DILocation(line: 261, column: 3, scope: !4673)
!4688 = !DILocation(line: 262, column: 2, scope: !4667)
!4689 = !DILocalVariable(name: "__mptr", scope: !4690, file: !3, line: 253, type: !131)
!4690 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 253, column: 2)
!4691 = !DILocation(line: 253, column: 2, scope: !4690)
!4692 = !DILocation(line: 253, column: 2, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 253, column: 2)
!4694 = distinct !{!4694, !4657, !4695}
!4695 = !DILocation(line: 262, column: 2, scope: !4653)
!4696 = !DILocation(line: 263, column: 2, scope: !4635)
!4697 = !DILocation(line: 264, column: 9, scope: !4635)
!4698 = !DILocation(line: 264, column: 2, scope: !4635)
!4699 = !DILocation(line: 265, column: 1, scope: !4635)
!4700 = distinct !DISubprogram(name: "list_del", scope: !4622, file: !4622, line: 144, type: !4701, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !152}
!4703 = !DILocalVariable(name: "entry", arg: 1, scope: !4700, file: !4622, line: 144, type: !152)
!4704 = !DILocation(line: 144, column: 47, scope: !4700)
!4705 = !DILocation(line: 146, column: 19, scope: !4700)
!4706 = !DILocation(line: 146, column: 2, scope: !4700)
!4707 = !DILocation(line: 147, column: 2, scope: !4700)
!4708 = !DILocation(line: 147, column: 9, scope: !4700)
!4709 = !DILocation(line: 147, column: 14, scope: !4700)
!4710 = !DILocation(line: 148, column: 2, scope: !4700)
!4711 = !DILocation(line: 148, column: 9, scope: !4700)
!4712 = !DILocation(line: 148, column: 14, scope: !4700)
!4713 = !DILocation(line: 149, column: 1, scope: !4700)
!4714 = distinct !DISubprogram(name: "release_slot", scope: !3, file: !3, line: 181, type: !4715, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{null, !132}
!4717 = !DILocalVariable(name: "slot", arg: 1, scope: !4714, file: !3, line: 181, type: !132)
!4718 = !DILocation(line: 181, column: 39, scope: !4714)
!4719 = !DILocation(line: 183, column: 14, scope: !4714)
!4720 = !DILocation(line: 183, column: 20, scope: !4714)
!4721 = !DILocation(line: 183, column: 2, scope: !4714)
!4722 = !DILocation(line: 184, column: 8, scope: !4714)
!4723 = !DILocation(line: 184, column: 2, scope: !4714)
!4724 = !DILocation(line: 185, column: 1, scope: !4714)
!4725 = distinct !DISubprogram(name: "cpci_hp_register_controller", scope: !3, file: !3, line: 516, type: !4726, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!189, !4202}
!4728 = !DILocalVariable(name: "new_controller", arg: 1, scope: !4725, file: !3, line: 516, type: !4202)
!4729 = !DILocation(line: 516, column: 56, scope: !4725)
!4730 = !DILocalVariable(name: "status", scope: !4725, file: !3, line: 518, type: !189)
!4731 = !DILocation(line: 518, column: 6, scope: !4725)
!4732 = !DILocation(line: 520, column: 6, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 520, column: 6)
!4734 = !DILocation(line: 520, column: 6, scope: !4725)
!4735 = !DILocation(line: 521, column: 3, scope: !4733)
!4736 = !DILocation(line: 522, column: 8, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 522, column: 6)
!4738 = !DILocation(line: 522, column: 23, scope: !4737)
!4739 = !DILocation(line: 522, column: 26, scope: !4737)
!4740 = !DILocation(line: 522, column: 42, scope: !4737)
!4741 = !DILocation(line: 522, column: 6, scope: !4725)
!4742 = !DILocation(line: 523, column: 3, scope: !4737)
!4743 = !DILocation(line: 524, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 524, column: 6)
!4745 = !DILocation(line: 524, column: 22, scope: !4744)
!4746 = !DILocation(line: 524, column: 6, scope: !4725)
!4747 = !DILocation(line: 525, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 525, column: 7)
!4749 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 524, column: 27)
!4750 = !DILocation(line: 525, column: 25, scope: !4748)
!4751 = !DILocation(line: 525, column: 30, scope: !4748)
!4752 = !DILocation(line: 525, column: 41, scope: !4748)
!4753 = !DILocation(line: 526, column: 8, scope: !4748)
!4754 = !DILocation(line: 526, column: 24, scope: !4748)
!4755 = !DILocation(line: 526, column: 29, scope: !4748)
!4756 = !DILocation(line: 525, column: 7, scope: !4749)
!4757 = !DILocation(line: 527, column: 11, scope: !4748)
!4758 = !DILocation(line: 527, column: 4, scope: !4748)
!4759 = !DILocation(line: 528, column: 19, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 528, column: 7)
!4761 = !DILocation(line: 528, column: 35, scope: !4760)
!4762 = !DILocation(line: 530, column: 11, scope: !4760)
!4763 = !DILocation(line: 530, column: 27, scope: !4760)
!4764 = !DILocation(line: 532, column: 11, scope: !4760)
!4765 = !DILocation(line: 532, column: 27, scope: !4760)
!4766 = !DILocation(line: 528, column: 7, scope: !4760)
!4767 = !DILocation(line: 528, column: 7, scope: !4749)
!4768 = !DILocation(line: 533, column: 4, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 532, column: 36)
!4770 = !DILocation(line: 535, column: 11, scope: !4769)
!4771 = !DILocation(line: 536, column: 3, scope: !4769)
!4772 = !DILocation(line: 537, column: 3, scope: !4749)
!4773 = !DILocation(line: 537, column: 3, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 537, column: 3)
!4775 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 537, column: 3)
!4776 = !DILocation(line: 537, column: 3, scope: !4775)
!4777 = !DILocation(line: 539, column: 2, scope: !4749)
!4778 = !DILocation(line: 540, column: 7, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 540, column: 6)
!4780 = !DILocation(line: 540, column: 6, scope: !4725)
!4781 = !DILocation(line: 541, column: 16, scope: !4779)
!4782 = !DILocation(line: 541, column: 14, scope: !4779)
!4783 = !DILocation(line: 541, column: 3, scope: !4779)
!4784 = !DILocation(line: 542, column: 9, scope: !4725)
!4785 = !DILocation(line: 542, column: 2, scope: !4725)
!4786 = !DILocation(line: 543, column: 1, scope: !4725)
!4787 = distinct !DISubprogram(name: "request_irq", scope: !168, file: !168, line: 157, type: !4788, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!189, !7, !4790, !326, !217, !131}
!4790 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !168, line: 92, baseType: !4791)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4794, !189, !131}
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !120, line: 17, baseType: !119)
!4795 = !DILocalVariable(name: "irq", arg: 1, scope: !4787, file: !168, line: 157, type: !7)
!4796 = !DILocation(line: 157, column: 26, scope: !4787)
!4797 = !DILocalVariable(name: "handler", arg: 2, scope: !4787, file: !168, line: 157, type: !4790)
!4798 = !DILocation(line: 157, column: 45, scope: !4787)
!4799 = !DILocalVariable(name: "flags", arg: 3, scope: !4787, file: !168, line: 157, type: !326)
!4800 = !DILocation(line: 157, column: 68, scope: !4787)
!4801 = !DILocalVariable(name: "name", arg: 4, scope: !4787, file: !168, line: 158, type: !217)
!4802 = !DILocation(line: 158, column: 18, scope: !4787)
!4803 = !DILocalVariable(name: "dev", arg: 5, scope: !4787, file: !168, line: 158, type: !131)
!4804 = !DILocation(line: 158, column: 30, scope: !4787)
!4805 = !DILocation(line: 160, column: 30, scope: !4787)
!4806 = !DILocation(line: 160, column: 35, scope: !4787)
!4807 = !DILocation(line: 160, column: 50, scope: !4787)
!4808 = !DILocation(line: 160, column: 57, scope: !4787)
!4809 = !DILocation(line: 160, column: 63, scope: !4787)
!4810 = !DILocation(line: 160, column: 9, scope: !4787)
!4811 = !DILocation(line: 160, column: 2, scope: !4787)
!4812 = distinct !DISubprogram(name: "cpci_hp_intr", scope: !3, file: !3, line: 270, type: !4792, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4813 = !DILocalVariable(name: "irq", arg: 1, scope: !4812, file: !3, line: 270, type: !189)
!4814 = !DILocation(line: 270, column: 18, scope: !4812)
!4815 = !DILocalVariable(name: "data", arg: 2, scope: !4812, file: !3, line: 270, type: !131)
!4816 = !DILocation(line: 270, column: 29, scope: !4812)
!4817 = !DILocation(line: 272, column: 2, scope: !4812)
!4818 = !DILocation(line: 272, column: 2, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 272, column: 2)
!4820 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 272, column: 2)
!4821 = !DILocation(line: 272, column: 2, scope: !4820)
!4822 = !DILocation(line: 275, column: 7, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 275, column: 6)
!4824 = !DILocation(line: 275, column: 19, scope: !4823)
!4825 = !DILocation(line: 275, column: 29, scope: !4823)
!4826 = !DILocation(line: 275, column: 44, scope: !4823)
!4827 = !DILocation(line: 276, column: 7, scope: !4823)
!4828 = !DILocation(line: 276, column: 19, scope: !4823)
!4829 = !DILocation(line: 276, column: 24, scope: !4823)
!4830 = !DILocation(line: 276, column: 34, scope: !4823)
!4831 = !DILocation(line: 276, column: 46, scope: !4823)
!4832 = !DILocation(line: 275, column: 6, scope: !4812)
!4833 = !DILocation(line: 277, column: 3, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 276, column: 55)
!4835 = !DILocation(line: 277, column: 3, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 277, column: 3)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 277, column: 3)
!4838 = !DILocation(line: 277, column: 3, scope: !4837)
!4839 = !DILocation(line: 278, column: 3, scope: !4834)
!4840 = !DILocation(line: 282, column: 2, scope: !4812)
!4841 = !DILocation(line: 282, column: 14, scope: !4812)
!4842 = !DILocation(line: 282, column: 19, scope: !4812)
!4843 = !DILocation(line: 285, column: 18, scope: !4812)
!4844 = !DILocation(line: 285, column: 2, scope: !4812)
!4845 = !DILocation(line: 286, column: 2, scope: !4812)
!4846 = !DILocation(line: 287, column: 1, scope: !4812)
!4847 = distinct !DISubprogram(name: "cpci_hp_unregister_controller", scope: !3, file: !3, line: 569, type: !4726, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4848 = !DILocalVariable(name: "old_controller", arg: 1, scope: !4847, file: !3, line: 569, type: !4202)
!4849 = !DILocation(line: 569, column: 58, scope: !4847)
!4850 = !DILocalVariable(name: "status", scope: !4847, file: !3, line: 571, type: !189)
!4851 = !DILocation(line: 571, column: 6, scope: !4847)
!4852 = !DILocation(line: 573, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 573, column: 6)
!4854 = !DILocation(line: 573, column: 6, scope: !4847)
!4855 = !DILocation(line: 574, column: 8, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 574, column: 7)
!4857 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 573, column: 18)
!4858 = !DILocation(line: 574, column: 7, scope: !4857)
!4859 = !DILocation(line: 575, column: 4, scope: !4856)
!4860 = !DILocation(line: 576, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 576, column: 7)
!4862 = !DILocation(line: 576, column: 19, scope: !4861)
!4863 = !DILocation(line: 576, column: 7, scope: !4857)
!4864 = !DILocation(line: 577, column: 13, scope: !4861)
!4865 = !DILocation(line: 577, column: 25, scope: !4861)
!4866 = !DILocation(line: 577, column: 30, scope: !4861)
!4867 = !DILocation(line: 577, column: 42, scope: !4861)
!4868 = !DILocation(line: 577, column: 4, scope: !4861)
!4869 = !DILocation(line: 578, column: 14, scope: !4857)
!4870 = !DILocation(line: 579, column: 3, scope: !4857)
!4871 = !DILocation(line: 580, column: 2, scope: !4857)
!4872 = !DILocation(line: 581, column: 10, scope: !4853)
!4873 = !DILocation(line: 582, column: 9, scope: !4847)
!4874 = !DILocation(line: 582, column: 2, scope: !4847)
!4875 = distinct !DISubprogram(name: "cpci_stop_thread", scope: !3, file: !3, line: 509, type: !1875, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4876 = !DILocation(line: 511, column: 15, scope: !4875)
!4877 = !DILocation(line: 511, column: 2, scope: !4875)
!4878 = !DILocation(line: 512, column: 18, scope: !4875)
!4879 = !DILocation(line: 513, column: 1, scope: !4875)
!4880 = distinct !DISubprogram(name: "cleanup_slots", scope: !3, file: !3, line: 547, type: !1875, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4881 = !DILocalVariable(name: "slot", scope: !4880, file: !3, line: 549, type: !132)
!4882 = !DILocation(line: 549, column: 15, scope: !4880)
!4883 = !DILocalVariable(name: "tmp", scope: !4880, file: !3, line: 550, type: !132)
!4884 = !DILocation(line: 550, column: 15, scope: !4880)
!4885 = !DILocation(line: 556, column: 2, scope: !4880)
!4886 = !DILocation(line: 557, column: 7, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 557, column: 6)
!4888 = !DILocation(line: 557, column: 6, scope: !4880)
!4889 = !DILocation(line: 558, column: 3, scope: !4887)
!4890 = !DILocalVariable(name: "__mptr", scope: !4891, file: !3, line: 559, type: !131)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 559, column: 2)
!4892 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 559, column: 2)
!4893 = !DILocation(line: 559, column: 2, scope: !4891)
!4894 = !DILocation(line: 559, column: 2, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 559, column: 2)
!4896 = !DILocation(line: 559, column: 2, scope: !4892)
!4897 = !DILocalVariable(name: "__mptr", scope: !4898, file: !3, line: 559, type: !131)
!4898 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 559, column: 2)
!4899 = !DILocation(line: 559, column: 2, scope: !4898)
!4900 = !DILocation(line: 559, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 559, column: 2)
!4902 = !DILocation(line: 559, column: 2, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 559, column: 2)
!4904 = !DILocation(line: 560, column: 13, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 559, column: 61)
!4906 = !DILocation(line: 560, column: 19, scope: !4905)
!4907 = !DILocation(line: 560, column: 3, scope: !4905)
!4908 = !DILocation(line: 561, column: 22, scope: !4905)
!4909 = !DILocation(line: 561, column: 28, scope: !4905)
!4910 = !DILocation(line: 561, column: 3, scope: !4905)
!4911 = !DILocation(line: 562, column: 16, scope: !4905)
!4912 = !DILocation(line: 562, column: 3, scope: !4905)
!4913 = !DILocation(line: 563, column: 2, scope: !4905)
!4914 = !DILocalVariable(name: "__mptr", scope: !4915, file: !3, line: 559, type: !131)
!4915 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 559, column: 2)
!4916 = !DILocation(line: 559, column: 2, scope: !4915)
!4917 = !DILocation(line: 559, column: 2, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 559, column: 2)
!4919 = distinct !{!4919, !4896, !4920}
!4920 = !DILocation(line: 563, column: 2, scope: !4892)
!4921 = !DILabel(scope: !4880, name: "cleanup_null", file: !3, line: 564)
!4922 = !DILocation(line: 564, column: 1, scope: !4880)
!4923 = !DILocation(line: 565, column: 2, scope: !4880)
!4924 = !DILocation(line: 566, column: 1, scope: !4880)
!4925 = !DILocalVariable(name: "status", scope: !4183, file: !3, line: 590, type: !189)
!4926 = !DILocation(line: 590, column: 6, scope: !4183)
!4927 = !DILocation(line: 592, column: 2, scope: !4183)
!4928 = !DILocation(line: 592, column: 2, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 592, column: 2)
!4930 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 592, column: 2)
!4931 = !DILocation(line: 592, column: 2, scope: !4930)
!4932 = !DILocation(line: 593, column: 7, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 593, column: 6)
!4934 = !DILocation(line: 593, column: 6, scope: !4183)
!4935 = !DILocation(line: 594, column: 3, scope: !4933)
!4936 = !DILocation(line: 596, column: 2, scope: !4183)
!4937 = !DILocation(line: 597, column: 6, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 597, column: 6)
!4939 = !DILocation(line: 597, column: 6, scope: !4183)
!4940 = !DILocation(line: 598, column: 3, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 597, column: 30)
!4942 = !DILocation(line: 599, column: 3, scope: !4941)
!4943 = !DILocation(line: 601, column: 2, scope: !4183)
!4944 = !DILocation(line: 603, column: 22, scope: !4183)
!4945 = !DILocation(line: 603, column: 11, scope: !4183)
!4946 = !DILocation(line: 603, column: 9, scope: !4183)
!4947 = !DILocation(line: 604, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 604, column: 6)
!4949 = !DILocation(line: 604, column: 6, scope: !4183)
!4950 = !DILocation(line: 605, column: 9, scope: !4948)
!4951 = !DILocation(line: 605, column: 3, scope: !4948)
!4952 = !DILocation(line: 606, column: 6, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 606, column: 6)
!4954 = !DILocation(line: 606, column: 6, scope: !4183)
!4955 = !DILocation(line: 607, column: 10, scope: !4953)
!4956 = !DILocation(line: 607, column: 3, scope: !4953)
!4957 = !DILocation(line: 609, column: 11, scope: !4183)
!4958 = !DILocation(line: 609, column: 9, scope: !4183)
!4959 = !DILocation(line: 610, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 610, column: 6)
!4961 = !DILocation(line: 610, column: 6, scope: !4183)
!4962 = !DILocation(line: 611, column: 10, scope: !4960)
!4963 = !DILocation(line: 611, column: 3, scope: !4960)
!4964 = !DILocation(line: 612, column: 2, scope: !4183)
!4965 = !DILocation(line: 612, column: 2, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 612, column: 2)
!4967 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 612, column: 2)
!4968 = !DILocation(line: 612, column: 2, scope: !4967)
!4969 = !DILocation(line: 614, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 614, column: 6)
!4971 = !DILocation(line: 614, column: 18, scope: !4970)
!4972 = !DILocation(line: 614, column: 6, scope: !4183)
!4973 = !DILocation(line: 616, column: 3, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 614, column: 23)
!4975 = !DILocation(line: 616, column: 3, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 616, column: 3)
!4977 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 616, column: 3)
!4978 = !DILocation(line: 616, column: 3, scope: !4977)
!4979 = !DILocation(line: 617, column: 3, scope: !4974)
!4980 = !DILocation(line: 617, column: 15, scope: !4974)
!4981 = !DILocation(line: 617, column: 20, scope: !4974)
!4982 = !DILocation(line: 618, column: 2, scope: !4974)
!4983 = !DILocation(line: 619, column: 2, scope: !4183)
!4984 = !DILocation(line: 619, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 619, column: 2)
!4986 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 619, column: 2)
!4987 = !DILocation(line: 619, column: 2, scope: !4986)
!4988 = !DILocation(line: 620, column: 2, scope: !4183)
!4989 = !DILocation(line: 621, column: 1, scope: !4183)
!4990 = distinct !DISubprogram(name: "list_empty", scope: !4622, file: !4622, line: 280, type: !4991, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!189, !4993}
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!4995 = !DILocalVariable(name: "head", arg: 1, scope: !4990, file: !4622, line: 280, type: !4993)
!4996 = !DILocation(line: 280, column: 54, scope: !4990)
!4997 = !DILocation(line: 282, column: 9, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4990, file: !4622, line: 282, column: 9)
!4999 = !DILocation(line: 282, column: 9, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4998, file: !4622, line: 282, column: 9)
!5001 = !DILocation(line: 282, column: 34, scope: !4990)
!5002 = !DILocation(line: 282, column: 31, scope: !4990)
!5003 = !DILocation(line: 282, column: 2, scope: !4990)
!5004 = distinct !DISubprogram(name: "init_slots", scope: !3, file: !3, line: 295, type: !3049, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5005 = !DILocalVariable(name: "clear_ins", arg: 1, scope: !5004, file: !3, line: 295, type: !189)
!5006 = !DILocation(line: 295, column: 16, scope: !5004)
!5007 = !DILocalVariable(name: "slot", scope: !5004, file: !3, line: 297, type: !132)
!5008 = !DILocation(line: 297, column: 15, scope: !5004)
!5009 = !DILocalVariable(name: "dev", scope: !5004, file: !3, line: 298, type: !158)
!5010 = !DILocation(line: 298, column: 18, scope: !5004)
!5011 = !DILocation(line: 300, column: 2, scope: !5004)
!5012 = !DILocation(line: 300, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 300, column: 2)
!5014 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 300, column: 2)
!5015 = !DILocation(line: 300, column: 2, scope: !5014)
!5016 = !DILocation(line: 301, column: 2, scope: !5004)
!5017 = !DILocation(line: 302, column: 7, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 302, column: 6)
!5019 = !DILocation(line: 302, column: 6, scope: !5004)
!5020 = !DILocation(line: 303, column: 3, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 302, column: 14)
!5022 = !DILocation(line: 304, column: 3, scope: !5021)
!5023 = !DILocalVariable(name: "__mptr", scope: !5024, file: !3, line: 306, type: !131)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 306, column: 2)
!5025 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 306, column: 2)
!5026 = !DILocation(line: 306, column: 2, scope: !5024)
!5027 = !DILocation(line: 306, column: 2, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 306, column: 2)
!5029 = !DILocation(line: 306, column: 2, scope: !5025)
!5030 = !DILocation(line: 306, column: 2, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 306, column: 2)
!5032 = !DILocation(line: 307, column: 3, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 306, column: 51)
!5034 = !DILocation(line: 307, column: 3, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 307, column: 3)
!5036 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 307, column: 3)
!5037 = !DILocation(line: 307, column: 3, scope: !5036)
!5038 = !DILocation(line: 308, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 308, column: 7)
!5040 = !DILocation(line: 308, column: 17, scope: !5039)
!5041 = !DILocation(line: 308, column: 45, scope: !5039)
!5042 = !DILocation(line: 308, column: 20, scope: !5039)
!5043 = !DILocation(line: 308, column: 7, scope: !5033)
!5044 = !DILocation(line: 309, column: 4, scope: !5039)
!5045 = !DILocation(line: 309, column: 4, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5047, file: !3, line: 309, column: 4)
!5047 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 309, column: 4)
!5048 = !DILocation(line: 309, column: 4, scope: !5047)
!5049 = !DILocation(line: 311, column: 22, scope: !5033)
!5050 = !DILocation(line: 311, column: 28, scope: !5033)
!5051 = !DILocation(line: 311, column: 33, scope: !5033)
!5052 = !DILocation(line: 311, column: 9, scope: !5033)
!5053 = !DILocation(line: 311, column: 7, scope: !5033)
!5054 = !DILocation(line: 312, column: 7, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 312, column: 7)
!5056 = !DILocation(line: 312, column: 7, scope: !5033)
!5057 = !DILocation(line: 313, column: 4, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5055, file: !3, line: 312, column: 12)
!5059 = !DILocation(line: 313, column: 10, scope: !5058)
!5060 = !DILocation(line: 313, column: 25, scope: !5058)
!5061 = !DILocation(line: 314, column: 4, scope: !5058)
!5062 = !DILocation(line: 314, column: 10, scope: !5058)
!5063 = !DILocation(line: 314, column: 23, scope: !5058)
!5064 = !DILocation(line: 315, column: 16, scope: !5058)
!5065 = !DILocation(line: 315, column: 4, scope: !5058)
!5066 = !DILocation(line: 315, column: 10, scope: !5058)
!5067 = !DILocation(line: 315, column: 14, scope: !5058)
!5068 = !DILocation(line: 316, column: 3, scope: !5058)
!5069 = !DILocation(line: 317, column: 2, scope: !5033)
!5070 = !DILocalVariable(name: "__mptr", scope: !5071, file: !3, line: 306, type: !131)
!5071 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 306, column: 2)
!5072 = !DILocation(line: 306, column: 2, scope: !5071)
!5073 = !DILocation(line: 306, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 306, column: 2)
!5075 = distinct !{!5075, !5029, !5076}
!5076 = !DILocation(line: 317, column: 2, scope: !5025)
!5077 = !DILocation(line: 318, column: 2, scope: !5004)
!5078 = !DILocation(line: 319, column: 2, scope: !5004)
!5079 = !DILocation(line: 319, column: 2, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 319, column: 2)
!5081 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 319, column: 2)
!5082 = !DILocation(line: 319, column: 2, scope: !5081)
!5083 = !DILocation(line: 320, column: 2, scope: !5004)
!5084 = !DILocation(line: 321, column: 1, scope: !5004)
!5085 = distinct !DISubprogram(name: "cpci_start_thread", scope: !3, file: !3, line: 494, type: !4184, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5086 = !DILocation(line: 496, column: 6, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 496, column: 6)
!5088 = !DILocation(line: 496, column: 18, scope: !5087)
!5089 = !DILocation(line: 496, column: 6, scope: !5085)
!5090 = !DILocalVariable(name: "__k", scope: !5091, file: !3, line: 497, type: !1213)
!5091 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 497, column: 17)
!5092 = !DILocation(line: 497, column: 17, scope: !5091)
!5093 = !DILocation(line: 497, column: 17, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 497, column: 17)
!5095 = !DILocation(line: 497, column: 15, scope: !5087)
!5096 = !DILocation(line: 497, column: 3, scope: !5087)
!5097 = !DILocalVariable(name: "__k", scope: !5098, file: !3, line: 499, type: !1213)
!5098 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 499, column: 17)
!5099 = !DILocation(line: 499, column: 17, scope: !5098)
!5100 = !DILocation(line: 499, column: 17, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 499, column: 17)
!5102 = !DILocation(line: 499, column: 15, scope: !5087)
!5103 = !DILocation(line: 500, column: 13, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 500, column: 6)
!5105 = !DILocation(line: 500, column: 6, scope: !5104)
!5106 = !DILocation(line: 500, column: 6, scope: !5085)
!5107 = !DILocation(line: 501, column: 3, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 500, column: 27)
!5109 = !DILocation(line: 502, column: 18, scope: !5108)
!5110 = !DILocation(line: 502, column: 10, scope: !5108)
!5111 = !DILocation(line: 502, column: 3, scope: !5108)
!5112 = !DILocation(line: 504, column: 18, scope: !5085)
!5113 = !DILocation(line: 505, column: 2, scope: !5085)
!5114 = !DILocation(line: 506, column: 1, scope: !5085)
!5115 = distinct !DISubprogram(name: "cpci_hp_stop", scope: !3, file: !3, line: 625, type: !4184, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5116 = !DILocation(line: 627, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 627, column: 6)
!5118 = !DILocation(line: 627, column: 6, scope: !5115)
!5119 = !DILocation(line: 628, column: 3, scope: !5117)
!5120 = !DILocation(line: 629, column: 6, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 629, column: 6)
!5122 = !DILocation(line: 629, column: 18, scope: !5121)
!5123 = !DILocation(line: 629, column: 6, scope: !5115)
!5124 = !DILocation(line: 631, column: 3, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 629, column: 23)
!5126 = !DILocation(line: 631, column: 3, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5128, file: !3, line: 631, column: 3)
!5128 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 631, column: 3)
!5129 = !DILocation(line: 631, column: 3, scope: !5128)
!5130 = !DILocation(line: 632, column: 3, scope: !5125)
!5131 = !DILocation(line: 632, column: 15, scope: !5125)
!5132 = !DILocation(line: 632, column: 20, scope: !5125)
!5133 = !DILocation(line: 633, column: 2, scope: !5125)
!5134 = !DILocation(line: 634, column: 2, scope: !5115)
!5135 = !DILocation(line: 635, column: 2, scope: !5115)
!5136 = !DILocation(line: 636, column: 1, scope: !5115)
!5137 = distinct !DISubprogram(name: "cpci_hotplug_init", scope: !3, file: !3, line: 640, type: !3049, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5138 = !DILocalVariable(name: "debug", arg: 1, scope: !5137, file: !3, line: 640, type: !189)
!5139 = !DILocation(line: 640, column: 23, scope: !5137)
!5140 = !DILocation(line: 642, column: 15, scope: !5137)
!5141 = !DILocation(line: 642, column: 13, scope: !5137)
!5142 = !DILocation(line: 643, column: 2, scope: !5137)
!5143 = distinct !DISubprogram(name: "get_order", scope: !5144, file: !5144, line: 29, type: !5145, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5144 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!189, !326}
!5147 = !DILocalVariable(name: "x", arg: 1, scope: !5148, file: !5149, line: 366, type: !420)
!5148 = distinct !DISubprogram(name: "fls64", scope: !5149, file: !5149, line: 366, type: !5150, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5149 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5150 = !DISubroutineType(types: !5151)
!5151 = !{!189, !420}
!5152 = !DILocation(line: 366, column: 40, scope: !5148, inlinedAt: !5153)
!5153 = distinct !DILocation(line: 46, column: 9, scope: !5143)
!5154 = !DILocalVariable(name: "bitpos", scope: !5148, file: !5149, line: 368, type: !189)
!5155 = !DILocation(line: 368, column: 6, scope: !5148, inlinedAt: !5153)
!5156 = !DILocalVariable(name: "size", arg: 1, scope: !5143, file: !5144, line: 29, type: !326)
!5157 = !DILocation(line: 29, column: 63, scope: !5143)
!5158 = !DILocation(line: 31, column: 27, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5143, file: !5144, line: 31, column: 6)
!5160 = !DILocation(line: 31, column: 6, scope: !5159)
!5161 = !DILocation(line: 31, column: 6, scope: !5143)
!5162 = !DILocation(line: 32, column: 8, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !5144, line: 32, column: 7)
!5164 = distinct !DILexicalBlock(scope: !5159, file: !5144, line: 31, column: 34)
!5165 = !DILocation(line: 32, column: 7, scope: !5164)
!5166 = !DILocation(line: 33, column: 4, scope: !5163)
!5167 = !DILocation(line: 35, column: 7, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !5144, line: 35, column: 7)
!5169 = !DILocation(line: 35, column: 12, scope: !5168)
!5170 = !DILocation(line: 35, column: 7, scope: !5164)
!5171 = !DILocation(line: 36, column: 4, scope: !5168)
!5172 = !DILocation(line: 38, column: 10, scope: !5164)
!5173 = !DILocation(line: 38, column: 28, scope: !5164)
!5174 = !DILocation(line: 38, column: 41, scope: !5164)
!5175 = !DILocation(line: 38, column: 3, scope: !5164)
!5176 = !DILocation(line: 41, column: 6, scope: !5143)
!5177 = !DILocation(line: 42, column: 7, scope: !5143)
!5178 = !DILocation(line: 46, column: 15, scope: !5143)
!5179 = !DILocation(line: 374, column: 2, scope: !5148, inlinedAt: !5153)
!5180 = !DILocation(line: 376, column: 14, scope: !5148, inlinedAt: !5153)
!5181 = !{i32 311181}
!5182 = !DILocation(line: 377, column: 9, scope: !5148, inlinedAt: !5153)
!5183 = !DILocation(line: 377, column: 16, scope: !5148, inlinedAt: !5153)
!5184 = !DILocation(line: 46, column: 2, scope: !5143)
!5185 = !DILocation(line: 48, column: 1, scope: !5143)
!5186 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5187, file: !5187, line: 30, type: !5188, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5187 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!189, !419}
!5190 = !DILocation(line: 366, column: 40, scope: !5148, inlinedAt: !5191)
!5191 = distinct !DILocation(line: 32, column: 9, scope: !5186)
!5192 = !DILocation(line: 368, column: 6, scope: !5148, inlinedAt: !5191)
!5193 = !DILocalVariable(name: "n", arg: 1, scope: !5186, file: !5187, line: 30, type: !419)
!5194 = !DILocation(line: 30, column: 21, scope: !5186)
!5195 = !DILocation(line: 32, column: 15, scope: !5186)
!5196 = !DILocation(line: 374, column: 2, scope: !5148, inlinedAt: !5191)
!5197 = !DILocation(line: 376, column: 14, scope: !5148, inlinedAt: !5191)
!5198 = !DILocation(line: 377, column: 9, scope: !5148, inlinedAt: !5191)
!5199 = !DILocation(line: 377, column: 16, scope: !5148, inlinedAt: !5191)
!5200 = !DILocation(line: 32, column: 18, scope: !5186)
!5201 = !DILocation(line: 32, column: 2, scope: !5186)
!5202 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5203, file: !5203, line: 137, type: !5204, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5203 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!131, !932, !2124, !323, !126}
!5206 = !DILocalVariable(name: "s", arg: 1, scope: !5202, file: !5203, line: 137, type: !932)
!5207 = !DILocation(line: 137, column: 54, scope: !5202)
!5208 = !DILocalVariable(name: "object", arg: 2, scope: !5202, file: !5203, line: 137, type: !2124)
!5209 = !DILocation(line: 137, column: 69, scope: !5202)
!5210 = !DILocalVariable(name: "size", arg: 3, scope: !5202, file: !5203, line: 138, type: !323)
!5211 = !DILocation(line: 138, column: 12, scope: !5202)
!5212 = !DILocalVariable(name: "flags", arg: 4, scope: !5202, file: !5203, line: 138, type: !126)
!5213 = !DILocation(line: 138, column: 24, scope: !5202)
!5214 = !DILocation(line: 140, column: 17, scope: !5202)
!5215 = !DILocation(line: 140, column: 2, scope: !5202)
!5216 = distinct !DISubprogram(name: "enable_slot", scope: !3, file: !3, line: 71, type: !187, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5217 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5216, file: !3, line: 71, type: !176)
!5218 = !DILocation(line: 71, column: 34, scope: !5216)
!5219 = !DILocalVariable(name: "slot", scope: !5216, file: !3, line: 73, type: !132)
!5220 = !DILocation(line: 73, column: 15, scope: !5216)
!5221 = !DILocation(line: 73, column: 30, scope: !5216)
!5222 = !DILocation(line: 73, column: 22, scope: !5216)
!5223 = !DILocalVariable(name: "retval", scope: !5216, file: !3, line: 74, type: !189)
!5224 = !DILocation(line: 74, column: 6, scope: !5216)
!5225 = !DILocation(line: 76, column: 2, scope: !5216)
!5226 = !DILocation(line: 76, column: 2, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 76, column: 2)
!5228 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 76, column: 2)
!5229 = !DILocation(line: 76, column: 2, scope: !5228)
!5230 = !DILocation(line: 78, column: 6, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 78, column: 6)
!5232 = !DILocation(line: 78, column: 18, scope: !5231)
!5233 = !DILocation(line: 78, column: 23, scope: !5231)
!5234 = !DILocation(line: 78, column: 6, scope: !5216)
!5235 = !DILocation(line: 79, column: 12, scope: !5231)
!5236 = !DILocation(line: 79, column: 24, scope: !5231)
!5237 = !DILocation(line: 79, column: 29, scope: !5231)
!5238 = !DILocation(line: 79, column: 39, scope: !5231)
!5239 = !DILocation(line: 79, column: 10, scope: !5231)
!5240 = !DILocation(line: 79, column: 3, scope: !5231)
!5241 = !DILocation(line: 80, column: 9, scope: !5216)
!5242 = !DILocation(line: 80, column: 2, scope: !5216)
!5243 = distinct !DISubprogram(name: "disable_slot", scope: !3, file: !3, line: 84, type: !187, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5244 = !DILocalVariable(name: "v", arg: 1, scope: !5245, file: !5246, line: 106, type: !5249)
!5245 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !5246, file: !5246, line: 106, type: !5247, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5246 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5247 = !DISubroutineType(types: !5248)
!5248 = !{null, !5249}
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!5250 = !DILocation(line: 106, column: 55, scope: !5245, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 331, column: 2, scope: !5252, inlinedAt: !5254)
!5252 = distinct !DISubprogram(name: "atomic_dec", scope: !5253, file: !5253, line: 328, type: !5247, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5253 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5254 = distinct !DILocation(line: 122, column: 3, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 120, column: 24)
!5256 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 120, column: 6)
!5257 = !DILocalVariable(name: "v", arg: 1, scope: !5258, file: !5259, line: 99, type: !5262)
!5258 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5259, file: !5259, line: 99, type: !5260, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5259 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !5262, !323}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5264)
!5264 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5265 = !DILocation(line: 99, column: 79, scope: !5258, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 330, column: 2, scope: !5252, inlinedAt: !5254)
!5267 = !DILocalVariable(name: "size", arg: 2, scope: !5258, file: !5259, line: 99, type: !323)
!5268 = !DILocation(line: 99, column: 89, scope: !5258, inlinedAt: !5266)
!5269 = !DILocalVariable(name: "v", arg: 1, scope: !5252, file: !5253, line: 328, type: !5249)
!5270 = !DILocation(line: 328, column: 22, scope: !5252, inlinedAt: !5254)
!5271 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5243, file: !3, line: 84, type: !176)
!5272 = !DILocation(line: 84, column: 35, scope: !5243)
!5273 = !DILocalVariable(name: "slot", scope: !5243, file: !3, line: 86, type: !132)
!5274 = !DILocation(line: 86, column: 15, scope: !5243)
!5275 = !DILocation(line: 86, column: 30, scope: !5243)
!5276 = !DILocation(line: 86, column: 22, scope: !5243)
!5277 = !DILocalVariable(name: "retval", scope: !5243, file: !3, line: 87, type: !189)
!5278 = !DILocation(line: 87, column: 6, scope: !5243)
!5279 = !DILocation(line: 89, column: 2, scope: !5243)
!5280 = !DILocation(line: 89, column: 2, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 89, column: 2)
!5282 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 89, column: 2)
!5283 = !DILocation(line: 89, column: 2, scope: !5282)
!5284 = !DILocation(line: 91, column: 2, scope: !5243)
!5285 = !DILocation(line: 94, column: 2, scope: !5243)
!5286 = !DILocation(line: 94, column: 2, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5288, file: !3, line: 94, column: 2)
!5288 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 94, column: 2)
!5289 = !DILocation(line: 94, column: 2, scope: !5288)
!5290 = !DILocation(line: 95, column: 33, scope: !5243)
!5291 = !DILocation(line: 95, column: 11, scope: !5243)
!5292 = !DILocation(line: 95, column: 9, scope: !5243)
!5293 = !DILocation(line: 96, column: 6, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 96, column: 6)
!5295 = !DILocation(line: 96, column: 6, scope: !5243)
!5296 = !DILocation(line: 97, column: 3, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 96, column: 14)
!5298 = !DILocation(line: 99, column: 3, scope: !5297)
!5299 = !DILocation(line: 101, column: 2, scope: !5243)
!5300 = !DILocation(line: 101, column: 2, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 101, column: 2)
!5302 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 101, column: 2)
!5303 = !DILocation(line: 101, column: 2, scope: !5302)
!5304 = !DILocation(line: 104, column: 21, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 104, column: 6)
!5306 = !DILocation(line: 104, column: 6, scope: !5305)
!5307 = !DILocation(line: 104, column: 6, scope: !5243)
!5308 = !DILocation(line: 105, column: 3, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 104, column: 28)
!5310 = !DILocation(line: 107, column: 10, scope: !5309)
!5311 = !DILocation(line: 108, column: 3, scope: !5309)
!5312 = !DILocation(line: 110, column: 14, scope: !5243)
!5313 = !DILocation(line: 110, column: 2, scope: !5243)
!5314 = !DILocation(line: 112, column: 6, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 112, column: 6)
!5316 = !DILocation(line: 112, column: 18, scope: !5315)
!5317 = !DILocation(line: 112, column: 23, scope: !5315)
!5318 = !DILocation(line: 112, column: 6, scope: !5243)
!5319 = !DILocation(line: 113, column: 12, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 112, column: 34)
!5321 = !DILocation(line: 113, column: 24, scope: !5320)
!5322 = !DILocation(line: 113, column: 29, scope: !5320)
!5323 = !DILocation(line: 113, column: 39, scope: !5320)
!5324 = !DILocation(line: 113, column: 10, scope: !5320)
!5325 = !DILocation(line: 114, column: 7, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5320, file: !3, line: 114, column: 7)
!5327 = !DILocation(line: 114, column: 7, scope: !5320)
!5328 = !DILocation(line: 115, column: 4, scope: !5326)
!5329 = !DILocation(line: 116, column: 2, scope: !5320)
!5330 = !DILocation(line: 118, column: 2, scope: !5243)
!5331 = !DILocation(line: 118, column: 8, scope: !5243)
!5332 = !DILocation(line: 118, column: 23, scope: !5243)
!5333 = !DILocation(line: 120, column: 6, scope: !5256)
!5334 = !DILocation(line: 120, column: 12, scope: !5256)
!5335 = !DILocation(line: 120, column: 6, scope: !5243)
!5336 = !DILocation(line: 121, column: 3, scope: !5255)
!5337 = !DILocation(line: 121, column: 9, scope: !5255)
!5338 = !DILocation(line: 121, column: 20, scope: !5255)
!5339 = !DILocation(line: 330, column: 31, scope: !5252, inlinedAt: !5254)
!5340 = !DILocation(line: 101, column: 20, scope: !5258, inlinedAt: !5266)
!5341 = !DILocation(line: 101, column: 23, scope: !5258, inlinedAt: !5266)
!5342 = !DILocation(line: 101, column: 2, scope: !5258, inlinedAt: !5266)
!5343 = !DILocation(line: 102, column: 2, scope: !5258, inlinedAt: !5266)
!5344 = !DILocation(line: 331, column: 18, scope: !5252, inlinedAt: !5254)
!5345 = !DILocation(line: 109, column: 16, scope: !5245, inlinedAt: !5251)
!5346 = !DILocation(line: 109, column: 19, scope: !5245, inlinedAt: !5251)
!5347 = !DILocation(line: 108, column: 2, scope: !5245, inlinedAt: !5251)
!5348 = !{i32 -2146616706}
!5349 = !DILocation(line: 123, column: 2, scope: !5255)
!5350 = !DILabel(scope: !5243, name: "disable_error", file: !3, line: 124)
!5351 = !DILocation(line: 124, column: 1, scope: !5243)
!5352 = !DILocation(line: 125, column: 2, scope: !5243)
!5353 = !DILocation(line: 126, column: 9, scope: !5243)
!5354 = !DILocation(line: 126, column: 2, scope: !5243)
!5355 = distinct !DISubprogram(name: "set_attention_status", scope: !3, file: !3, line: 158, type: !193, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5356 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5355, file: !3, line: 158, type: !176)
!5357 = !DILocation(line: 158, column: 43, scope: !5355)
!5358 = !DILocalVariable(name: "status", arg: 2, scope: !5355, file: !3, line: 158, type: !137)
!5359 = !DILocation(line: 158, column: 60, scope: !5355)
!5360 = !DILocation(line: 160, column: 43, scope: !5355)
!5361 = !DILocation(line: 160, column: 35, scope: !5355)
!5362 = !DILocation(line: 160, column: 58, scope: !5355)
!5363 = !DILocation(line: 160, column: 9, scope: !5355)
!5364 = !DILocation(line: 160, column: 2, scope: !5355)
!5365 = distinct !DISubprogram(name: "get_power_status", scope: !3, file: !3, line: 140, type: !203, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5366 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5365, file: !3, line: 140, type: !176)
!5367 = !DILocation(line: 140, column: 39, scope: !5365)
!5368 = !DILocalVariable(name: "value", arg: 2, scope: !5365, file: !3, line: 140, type: !205)
!5369 = !DILocation(line: 140, column: 57, scope: !5365)
!5370 = !DILocalVariable(name: "slot", scope: !5365, file: !3, line: 142, type: !132)
!5371 = !DILocation(line: 142, column: 15, scope: !5365)
!5372 = !DILocation(line: 142, column: 30, scope: !5365)
!5373 = !DILocation(line: 142, column: 22, scope: !5365)
!5374 = !DILocation(line: 144, column: 33, scope: !5365)
!5375 = !DILocation(line: 144, column: 11, scope: !5365)
!5376 = !DILocation(line: 144, column: 3, scope: !5365)
!5377 = !DILocation(line: 144, column: 9, scope: !5365)
!5378 = !DILocation(line: 145, column: 2, scope: !5365)
!5379 = distinct !DISubprogram(name: "get_attention_status", scope: !3, file: !3, line: 149, type: !203, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5380 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5379, file: !3, line: 149, type: !176)
!5381 = !DILocation(line: 149, column: 43, scope: !5379)
!5382 = !DILocalVariable(name: "value", arg: 2, scope: !5379, file: !3, line: 149, type: !205)
!5383 = !DILocation(line: 149, column: 61, scope: !5379)
!5384 = !DILocalVariable(name: "slot", scope: !5379, file: !3, line: 151, type: !132)
!5385 = !DILocation(line: 151, column: 15, scope: !5379)
!5386 = !DILocation(line: 151, column: 30, scope: !5379)
!5387 = !DILocation(line: 151, column: 22, scope: !5379)
!5388 = !DILocation(line: 153, column: 37, scope: !5379)
!5389 = !DILocation(line: 153, column: 11, scope: !5379)
!5390 = !DILocation(line: 153, column: 3, scope: !5379)
!5391 = !DILocation(line: 153, column: 9, scope: !5379)
!5392 = !DILocation(line: 154, column: 2, scope: !5379)
!5393 = distinct !DISubprogram(name: "get_latch_status", scope: !3, file: !3, line: 173, type: !203, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5394 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5393, file: !3, line: 173, type: !176)
!5395 = !DILocation(line: 173, column: 39, scope: !5393)
!5396 = !DILocalVariable(name: "value", arg: 2, scope: !5393, file: !3, line: 173, type: !205)
!5397 = !DILocation(line: 173, column: 57, scope: !5393)
!5398 = !DILocalVariable(name: "slot", scope: !5393, file: !3, line: 175, type: !132)
!5399 = !DILocation(line: 175, column: 15, scope: !5393)
!5400 = !DILocation(line: 175, column: 30, scope: !5393)
!5401 = !DILocation(line: 175, column: 22, scope: !5393)
!5402 = !DILocation(line: 177, column: 11, scope: !5393)
!5403 = !DILocation(line: 177, column: 17, scope: !5393)
!5404 = !DILocation(line: 177, column: 3, scope: !5393)
!5405 = !DILocation(line: 177, column: 9, scope: !5393)
!5406 = !DILocation(line: 178, column: 2, scope: !5393)
!5407 = distinct !DISubprogram(name: "get_adapter_status", scope: !3, file: !3, line: 164, type: !203, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5408 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5407, file: !3, line: 164, type: !176)
!5409 = !DILocation(line: 164, column: 41, scope: !5407)
!5410 = !DILocalVariable(name: "value", arg: 2, scope: !5407, file: !3, line: 164, type: !205)
!5411 = !DILocation(line: 164, column: 59, scope: !5407)
!5412 = !DILocalVariable(name: "slot", scope: !5407, file: !3, line: 166, type: !132)
!5413 = !DILocation(line: 166, column: 15, scope: !5407)
!5414 = !DILocation(line: 166, column: 30, scope: !5407)
!5415 = !DILocation(line: 166, column: 22, scope: !5407)
!5416 = !DILocation(line: 168, column: 11, scope: !5407)
!5417 = !DILocation(line: 168, column: 17, scope: !5407)
!5418 = !DILocation(line: 168, column: 3, scope: !5407)
!5419 = !DILocation(line: 168, column: 9, scope: !5407)
!5420 = !DILocation(line: 169, column: 2, scope: !5407)
!5421 = distinct !DISubprogram(name: "to_slot", scope: !134, file: !134, line: 66, type: !5422, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!132, !176}
!5424 = !DILocalVariable(name: "hotplug_slot", arg: 1, scope: !5421, file: !134, line: 66, type: !176)
!5425 = !DILocation(line: 66, column: 57, scope: !5421)
!5426 = !DILocalVariable(name: "__mptr", scope: !5427, file: !134, line: 68, type: !131)
!5427 = distinct !DILexicalBlock(scope: !5421, file: !134, line: 68, column: 9)
!5428 = !DILocation(line: 68, column: 9, scope: !5427)
!5429 = !DILocation(line: 68, column: 9, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5427, file: !134, line: 68, column: 9)
!5431 = !DILocation(line: 68, column: 2, scope: !5421)
!5432 = distinct !DISubprogram(name: "kasan_check_write", scope: !5433, file: !5433, line: 38, type: !5434, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5433 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!487, !5262, !7}
!5436 = !DILocalVariable(name: "p", arg: 1, scope: !5432, file: !5433, line: 38, type: !5262)
!5437 = !DILocation(line: 38, column: 59, scope: !5432)
!5438 = !DILocalVariable(name: "size", arg: 2, scope: !5432, file: !5433, line: 38, type: !7)
!5439 = !DILocation(line: 38, column: 75, scope: !5432)
!5440 = !DILocation(line: 40, column: 2, scope: !5432)
!5441 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5442, file: !5442, line: 178, type: !5443, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5442 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5443 = !DISubroutineType(types: !5444)
!5444 = !{null, !5262, !323, !189}
!5445 = !DILocalVariable(name: "ptr", arg: 1, scope: !5441, file: !5442, line: 178, type: !5262)
!5446 = !DILocation(line: 178, column: 60, scope: !5441)
!5447 = !DILocalVariable(name: "size", arg: 2, scope: !5441, file: !5442, line: 178, type: !323)
!5448 = !DILocation(line: 178, column: 72, scope: !5441)
!5449 = !DILocalVariable(name: "type", arg: 3, scope: !5441, file: !5442, line: 179, type: !189)
!5450 = !DILocation(line: 179, column: 15, scope: !5441)
!5451 = !DILocation(line: 179, column: 23, scope: !5441)
!5452 = distinct !DISubprogram(name: "cpci_get_power_status", scope: !3, file: !3, line: 130, type: !4228, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5453 = !DILocalVariable(name: "slot", arg: 1, scope: !5452, file: !3, line: 130, type: !132)
!5454 = !DILocation(line: 130, column: 36, scope: !5452)
!5455 = !DILocalVariable(name: "power", scope: !5452, file: !3, line: 132, type: !137)
!5456 = !DILocation(line: 132, column: 5, scope: !5452)
!5457 = !DILocation(line: 134, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5452, file: !3, line: 134, column: 6)
!5459 = !DILocation(line: 134, column: 18, scope: !5458)
!5460 = !DILocation(line: 134, column: 23, scope: !5458)
!5461 = !DILocation(line: 134, column: 6, scope: !5452)
!5462 = !DILocation(line: 135, column: 11, scope: !5458)
!5463 = !DILocation(line: 135, column: 23, scope: !5458)
!5464 = !DILocation(line: 135, column: 28, scope: !5458)
!5465 = !DILocation(line: 135, column: 38, scope: !5458)
!5466 = !DILocation(line: 135, column: 9, scope: !5458)
!5467 = !DILocation(line: 135, column: 3, scope: !5458)
!5468 = !DILocation(line: 136, column: 9, scope: !5452)
!5469 = !DILocation(line: 136, column: 2, scope: !5452)
!5470 = distinct !DISubprogram(name: "hotplug_slot_name", scope: !178, file: !178, line: 66, type: !5471, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!217, !5473}
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!5475 = !DILocalVariable(name: "slot", arg: 1, scope: !5470, file: !178, line: 66, type: !5473)
!5476 = !DILocation(line: 66, column: 72, scope: !5470)
!5477 = !DILocation(line: 68, column: 23, scope: !5470)
!5478 = !DILocation(line: 68, column: 29, scope: !5470)
!5479 = !DILocation(line: 68, column: 9, scope: !5470)
!5480 = !DILocation(line: 68, column: 2, scope: !5470)
!5481 = distinct !DISubprogram(name: "pci_slot_name", scope: !146, file: !146, line: 77, type: !5482, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!217, !5484}
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!5486 = !DILocalVariable(name: "slot", arg: 1, scope: !5481, file: !146, line: 77, type: !5484)
!5487 = !DILocation(line: 77, column: 64, scope: !5481)
!5488 = !DILocation(line: 79, column: 23, scope: !5481)
!5489 = !DILocation(line: 79, column: 29, scope: !5481)
!5490 = !DILocation(line: 79, column: 9, scope: !5481)
!5491 = !DILocation(line: 79, column: 2, scope: !5481)
!5492 = distinct !DISubprogram(name: "kobject_name", scope: !223, file: !223, line: 88, type: !5493, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!217, !5495}
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!5497 = !DILocalVariable(name: "kobj", arg: 1, scope: !5492, file: !223, line: 88, type: !5495)
!5498 = !DILocation(line: 88, column: 62, scope: !5492)
!5499 = !DILocation(line: 90, column: 9, scope: !5492)
!5500 = !DILocation(line: 90, column: 15, scope: !5492)
!5501 = !DILocation(line: 90, column: 2, scope: !5492)
!5502 = distinct !DISubprogram(name: "__list_add", scope: !4622, file: !4622, line: 63, type: !5503, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{null, !152, !152, !152}
!5505 = !DILocalVariable(name: "new", arg: 1, scope: !5502, file: !4622, line: 63, type: !152)
!5506 = !DILocation(line: 63, column: 49, scope: !5502)
!5507 = !DILocalVariable(name: "prev", arg: 2, scope: !5502, file: !4622, line: 64, type: !152)
!5508 = !DILocation(line: 64, column: 28, scope: !5502)
!5509 = !DILocalVariable(name: "next", arg: 3, scope: !5502, file: !4622, line: 65, type: !152)
!5510 = !DILocation(line: 65, column: 28, scope: !5502)
!5511 = !DILocation(line: 67, column: 24, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5502, file: !4622, line: 67, column: 6)
!5513 = !DILocation(line: 67, column: 29, scope: !5512)
!5514 = !DILocation(line: 67, column: 35, scope: !5512)
!5515 = !DILocation(line: 67, column: 7, scope: !5512)
!5516 = !DILocation(line: 67, column: 6, scope: !5502)
!5517 = !DILocation(line: 68, column: 3, scope: !5512)
!5518 = !DILocation(line: 70, column: 15, scope: !5502)
!5519 = !DILocation(line: 70, column: 2, scope: !5502)
!5520 = !DILocation(line: 70, column: 8, scope: !5502)
!5521 = !DILocation(line: 70, column: 13, scope: !5502)
!5522 = !DILocation(line: 71, column: 14, scope: !5502)
!5523 = !DILocation(line: 71, column: 2, scope: !5502)
!5524 = !DILocation(line: 71, column: 7, scope: !5502)
!5525 = !DILocation(line: 71, column: 12, scope: !5502)
!5526 = !DILocation(line: 72, column: 14, scope: !5502)
!5527 = !DILocation(line: 72, column: 2, scope: !5502)
!5528 = !DILocation(line: 72, column: 7, scope: !5502)
!5529 = !DILocation(line: 72, column: 12, scope: !5502)
!5530 = !DILocation(line: 73, column: 2, scope: !5502)
!5531 = !DILocation(line: 73, column: 2, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5502, file: !4622, line: 73, column: 2)
!5533 = !DILocation(line: 73, column: 2, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5532, file: !4622, line: 73, column: 2)
!5535 = !DILocation(line: 73, column: 2, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5532, file: !4622, line: 73, column: 2)
!5537 = !DILocation(line: 74, column: 1, scope: !5502)
!5538 = distinct !DISubprogram(name: "__list_add_valid", scope: !4622, file: !4622, line: 45, type: !5539, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!487, !152, !152, !152}
!5541 = !DILocalVariable(name: "new", arg: 1, scope: !5538, file: !4622, line: 45, type: !152)
!5542 = !DILocation(line: 45, column: 55, scope: !5538)
!5543 = !DILocalVariable(name: "prev", arg: 2, scope: !5538, file: !4622, line: 46, type: !152)
!5544 = !DILocation(line: 46, column: 23, scope: !5538)
!5545 = !DILocalVariable(name: "next", arg: 3, scope: !5538, file: !4622, line: 47, type: !152)
!5546 = !DILocation(line: 47, column: 23, scope: !5538)
!5547 = !DILocation(line: 49, column: 2, scope: !5538)
!5548 = distinct !DISubprogram(name: "__list_del_entry", scope: !4622, file: !4622, line: 130, type: !4701, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5549 = !DILocalVariable(name: "entry", arg: 1, scope: !5548, file: !4622, line: 130, type: !152)
!5550 = !DILocation(line: 130, column: 55, scope: !5548)
!5551 = !DILocation(line: 132, column: 30, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5548, file: !4622, line: 132, column: 6)
!5553 = !DILocation(line: 132, column: 7, scope: !5552)
!5554 = !DILocation(line: 132, column: 6, scope: !5548)
!5555 = !DILocation(line: 133, column: 3, scope: !5552)
!5556 = !DILocation(line: 135, column: 13, scope: !5548)
!5557 = !DILocation(line: 135, column: 20, scope: !5548)
!5558 = !DILocation(line: 135, column: 26, scope: !5548)
!5559 = !DILocation(line: 135, column: 33, scope: !5548)
!5560 = !DILocation(line: 135, column: 2, scope: !5548)
!5561 = !DILocation(line: 136, column: 1, scope: !5548)
!5562 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4622, file: !4622, line: 51, type: !5563, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!487, !152}
!5565 = !DILocalVariable(name: "entry", arg: 1, scope: !5562, file: !4622, line: 51, type: !152)
!5566 = !DILocation(line: 51, column: 61, scope: !5562)
!5567 = !DILocation(line: 53, column: 2, scope: !5562)
!5568 = distinct !DISubprogram(name: "__list_del", scope: !4622, file: !4622, line: 110, type: !4623, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5569 = !DILocalVariable(name: "prev", arg: 1, scope: !5568, file: !4622, line: 110, type: !152)
!5570 = !DILocation(line: 110, column: 50, scope: !5568)
!5571 = !DILocalVariable(name: "next", arg: 2, scope: !5568, file: !4622, line: 110, type: !152)
!5572 = !DILocation(line: 110, column: 75, scope: !5568)
!5573 = !DILocation(line: 112, column: 15, scope: !5568)
!5574 = !DILocation(line: 112, column: 2, scope: !5568)
!5575 = !DILocation(line: 112, column: 8, scope: !5568)
!5576 = !DILocation(line: 112, column: 13, scope: !5568)
!5577 = !DILocation(line: 113, column: 2, scope: !5568)
!5578 = !DILocation(line: 113, column: 2, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5568, file: !4622, line: 113, column: 2)
!5580 = !DILocation(line: 113, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5579, file: !4622, line: 113, column: 2)
!5582 = !DILocation(line: 113, column: 2, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5579, file: !4622, line: 113, column: 2)
!5584 = !DILocation(line: 114, column: 1, scope: !5568)
!5585 = distinct !DISubprogram(name: "event_thread", scope: !3, file: !3, line: 432, type: !4220, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5586 = !DILocalVariable(name: "v", arg: 1, scope: !5587, file: !5246, line: 23, type: !5590)
!5587 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5246, file: !5246, line: 23, type: !5588, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!189, !5590}
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!5592 = !DILocation(line: 23, column: 61, scope: !5587, inlinedAt: !5593)
!5593 = distinct !DILocation(line: 28, column: 9, scope: !5594, inlinedAt: !5595)
!5594 = distinct !DISubprogram(name: "atomic_read", scope: !5253, file: !5253, line: 25, type: !5588, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5595 = distinct !DILocation(line: 453, column: 12, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 437, column: 12)
!5597 = !DILocalVariable(name: "v", arg: 1, scope: !5598, file: !5259, line: 69, type: !5262)
!5598 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5259, file: !5259, line: 69, type: !5260, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5599 = !DILocation(line: 69, column: 73, scope: !5598, inlinedAt: !5600)
!5600 = distinct !DILocation(line: 27, column: 2, scope: !5594, inlinedAt: !5595)
!5601 = !DILocalVariable(name: "size", arg: 2, scope: !5598, file: !5259, line: 69, type: !323)
!5602 = !DILocation(line: 69, column: 83, scope: !5598, inlinedAt: !5600)
!5603 = !DILocalVariable(name: "v", arg: 1, scope: !5594, file: !5253, line: 25, type: !5590)
!5604 = !DILocation(line: 25, column: 29, scope: !5594, inlinedAt: !5595)
!5605 = !DILocalVariable(name: "pscr_ret__", scope: !5606, file: !5607, line: 15, type: !1213)
!5606 = distinct !DILexicalBlock(scope: !5608, file: !5607, line: 15, column: 9)
!5607 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!5608 = distinct !DISubprogram(name: "get_current", scope: !5607, file: !5607, line: 13, type: !5609, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!1213}
!5611 = !DILocation(line: 15, column: 9, scope: !5606, inlinedAt: !5612)
!5612 = distinct !DILocation(line: 439, column: 3, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 439, column: 3)
!5614 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 439, column: 3)
!5615 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 439, column: 3)
!5616 = !DILocalVariable(name: "__vpp_verify", scope: !5617, file: !5607, line: 15, type: !2124)
!5617 = distinct !DILexicalBlock(scope: !5606, file: !5607, line: 15, column: 9)
!5618 = !DILocation(line: 15, column: 9, scope: !5617, inlinedAt: !5612)
!5619 = !DILocalVariable(name: "pfo_val__", scope: !5620, file: !5607, line: 15, type: !419)
!5620 = distinct !DILexicalBlock(scope: !5606, file: !5607, line: 15, column: 9)
!5621 = !DILocation(line: 15, column: 9, scope: !5620, inlinedAt: !5612)
!5622 = !DILocalVariable(name: "data", arg: 1, scope: !5585, file: !3, line: 432, type: !131)
!5623 = !DILocation(line: 432, column: 20, scope: !5585)
!5624 = !DILocalVariable(name: "rc", scope: !5585, file: !3, line: 434, type: !189)
!5625 = !DILocation(line: 434, column: 6, scope: !5585)
!5626 = !DILocation(line: 436, column: 2, scope: !5585)
!5627 = !DILocation(line: 436, column: 2, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5629, file: !3, line: 436, column: 2)
!5629 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 436, column: 2)
!5630 = !DILocation(line: 436, column: 2, scope: !5629)
!5631 = !DILocation(line: 437, column: 2, scope: !5585)
!5632 = !DILocation(line: 438, column: 3, scope: !5596)
!5633 = !DILocation(line: 438, column: 3, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5635, file: !3, line: 438, column: 3)
!5635 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 438, column: 3)
!5636 = !DILocation(line: 438, column: 3, scope: !5635)
!5637 = !DILocation(line: 439, column: 3, scope: !5596)
!5638 = !DILocation(line: 439, column: 3, scope: !5615)
!5639 = !DILocation(line: 439, column: 3, scope: !5614)
!5640 = !DILocation(line: 439, column: 3, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 439, column: 3)
!5642 = !{i32 -2146217630}
!5643 = !DILocation(line: 439, column: 3, scope: !5613)
!5644 = !{i32 -2141116023}
!5645 = !DILocation(line: 440, column: 3, scope: !5596)
!5646 = !DILocation(line: 441, column: 7, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 441, column: 7)
!5648 = !DILocation(line: 441, column: 7, scope: !5596)
!5649 = !DILocation(line: 442, column: 4, scope: !5647)
!5650 = !DILocation(line: 443, column: 3, scope: !5596)
!5651 = !DILocation(line: 444, column: 9, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 443, column: 6)
!5653 = !DILocation(line: 444, column: 7, scope: !5652)
!5654 = !DILocation(line: 445, column: 8, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5652, file: !3, line: 445, column: 8)
!5656 = !DILocation(line: 445, column: 11, scope: !5655)
!5657 = !DILocation(line: 445, column: 8, scope: !5652)
!5658 = !DILocation(line: 447, column: 5, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 445, column: 16)
!5660 = !DILocation(line: 448, column: 4, scope: !5659)
!5661 = !DILocation(line: 448, column: 15, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 448, column: 15)
!5663 = !DILocation(line: 448, column: 18, scope: !5662)
!5664 = !DILocation(line: 448, column: 15, scope: !5655)
!5665 = !DILocation(line: 449, column: 5, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5662, file: !3, line: 448, column: 23)
!5667 = !DILocation(line: 449, column: 5, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5669, file: !3, line: 449, column: 5)
!5669 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 449, column: 5)
!5670 = !DILocation(line: 449, column: 5, scope: !5669)
!5671 = !DILocation(line: 450, column: 21, scope: !5666)
!5672 = !DILocation(line: 451, column: 5, scope: !5666)
!5673 = !DILocation(line: 453, column: 3, scope: !5652)
!5674 = !DILocation(line: 27, column: 25, scope: !5594, inlinedAt: !5595)
!5675 = !DILocation(line: 71, column: 19, scope: !5598, inlinedAt: !5600)
!5676 = !DILocation(line: 71, column: 22, scope: !5598, inlinedAt: !5600)
!5677 = !DILocation(line: 71, column: 2, scope: !5598, inlinedAt: !5600)
!5678 = !DILocation(line: 72, column: 2, scope: !5598, inlinedAt: !5600)
!5679 = !DILocation(line: 28, column: 26, scope: !5594, inlinedAt: !5595)
!5680 = !DILocation(line: 29, column: 9, scope: !5587, inlinedAt: !5593)
!5681 = !DILocation(line: 453, column: 12, scope: !5596)
!5682 = !DILocation(line: 453, column: 37, scope: !5596)
!5683 = !DILocation(line: 453, column: 41, scope: !5596)
!5684 = !DILocation(line: 453, column: 40, scope: !5596)
!5685 = !DILocation(line: 0, scope: !5596)
!5686 = distinct !{!5686, !5650, !5687}
!5687 = !DILocation(line: 453, column: 62, scope: !5596)
!5688 = !DILocation(line: 454, column: 7, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 454, column: 7)
!5690 = !DILocation(line: 454, column: 7, scope: !5596)
!5691 = !DILocation(line: 455, column: 4, scope: !5689)
!5692 = !DILocation(line: 458, column: 3, scope: !5596)
!5693 = !DILocation(line: 458, column: 3, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 458, column: 3)
!5695 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 458, column: 3)
!5696 = !DILocation(line: 458, column: 3, scope: !5695)
!5697 = !DILocation(line: 459, column: 3, scope: !5596)
!5698 = !DILocation(line: 459, column: 15, scope: !5596)
!5699 = !DILocation(line: 459, column: 20, scope: !5596)
!5700 = distinct !{!5700, !5631, !5701}
!5701 = !DILocation(line: 460, column: 2, scope: !5585)
!5702 = !DILabel(scope: !5585, name: "out", file: !3, line: 461)
!5703 = !DILocation(line: 461, column: 2, scope: !5585)
!5704 = !DILocation(line: 462, column: 2, scope: !5585)
!5705 = distinct !DISubprogram(name: "IS_ERR", scope: !5706, file: !5706, line: 34, type: !5707, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5706 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!487, !2124}
!5709 = !DILocalVariable(name: "ptr", arg: 1, scope: !5705, file: !5706, line: 34, type: !2124)
!5710 = !DILocation(line: 34, column: 60, scope: !5705)
!5711 = !DILocation(line: 36, column: 9, scope: !5705)
!5712 = !DILocation(line: 36, column: 2, scope: !5705)
!5713 = distinct !DISubprogram(name: "poll_thread", scope: !3, file: !3, line: 467, type: !4220, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5714 = !DILocation(line: 23, column: 61, scope: !5587, inlinedAt: !5715)
!5715 = distinct !DILocation(line: 28, column: 9, scope: !5594, inlinedAt: !5716)
!5716 = distinct !DILocation(line: 485, column: 13, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 474, column: 38)
!5718 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 474, column: 7)
!5719 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 471, column: 12)
!5720 = !DILocation(line: 69, column: 73, scope: !5598, inlinedAt: !5721)
!5721 = distinct !DILocation(line: 27, column: 2, scope: !5594, inlinedAt: !5716)
!5722 = !DILocation(line: 69, column: 83, scope: !5598, inlinedAt: !5721)
!5723 = !DILocation(line: 25, column: 29, scope: !5594, inlinedAt: !5716)
!5724 = !DILocation(line: 15, column: 9, scope: !5606, inlinedAt: !5725)
!5725 = distinct !DILocation(line: 472, column: 47, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 472, column: 7)
!5727 = !DILocation(line: 15, column: 9, scope: !5617, inlinedAt: !5725)
!5728 = !DILocation(line: 15, column: 9, scope: !5620, inlinedAt: !5725)
!5729 = !DILocalVariable(name: "data", arg: 1, scope: !5713, file: !3, line: 467, type: !131)
!5730 = !DILocation(line: 467, column: 19, scope: !5713)
!5731 = !DILocalVariable(name: "rc", scope: !5713, file: !3, line: 469, type: !189)
!5732 = !DILocation(line: 469, column: 6, scope: !5713)
!5733 = !DILocation(line: 471, column: 2, scope: !5713)
!5734 = !DILocation(line: 472, column: 7, scope: !5726)
!5735 = !DILocation(line: 472, column: 29, scope: !5726)
!5736 = !DILocation(line: 472, column: 32, scope: !5726)
!5737 = !DILocation(line: 472, column: 7, scope: !5719)
!5738 = !DILocation(line: 473, column: 4, scope: !5726)
!5739 = !DILocation(line: 474, column: 7, scope: !5718)
!5740 = !DILocation(line: 474, column: 19, scope: !5718)
!5741 = !DILocation(line: 474, column: 24, scope: !5718)
!5742 = !DILocation(line: 474, column: 7, scope: !5719)
!5743 = !DILocation(line: 475, column: 4, scope: !5717)
!5744 = !DILocation(line: 476, column: 10, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 475, column: 7)
!5746 = !DILocation(line: 476, column: 8, scope: !5745)
!5747 = !DILocation(line: 477, column: 9, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 477, column: 9)
!5749 = !DILocation(line: 477, column: 12, scope: !5748)
!5750 = !DILocation(line: 477, column: 9, scope: !5745)
!5751 = !DILocation(line: 479, column: 6, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 477, column: 17)
!5753 = !DILocation(line: 480, column: 5, scope: !5752)
!5754 = !DILocation(line: 480, column: 16, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 480, column: 16)
!5756 = !DILocation(line: 480, column: 19, scope: !5755)
!5757 = !DILocation(line: 480, column: 16, scope: !5748)
!5758 = !DILocation(line: 481, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 480, column: 24)
!5760 = !DILocation(line: 481, column: 6, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5762, file: !3, line: 481, column: 6)
!5762 = distinct !DILexicalBlock(scope: !5759, file: !3, line: 481, column: 6)
!5763 = !DILocation(line: 481, column: 6, scope: !5762)
!5764 = !DILocation(line: 482, column: 22, scope: !5759)
!5765 = !DILocation(line: 483, column: 6, scope: !5759)
!5766 = !DILocation(line: 485, column: 4, scope: !5745)
!5767 = !DILocation(line: 27, column: 25, scope: !5594, inlinedAt: !5716)
!5768 = !DILocation(line: 71, column: 19, scope: !5598, inlinedAt: !5721)
!5769 = !DILocation(line: 71, column: 22, scope: !5598, inlinedAt: !5721)
!5770 = !DILocation(line: 71, column: 2, scope: !5598, inlinedAt: !5721)
!5771 = !DILocation(line: 72, column: 2, scope: !5598, inlinedAt: !5721)
!5772 = !DILocation(line: 28, column: 26, scope: !5594, inlinedAt: !5716)
!5773 = !DILocation(line: 29, column: 9, scope: !5587, inlinedAt: !5715)
!5774 = !DILocation(line: 485, column: 13, scope: !5717)
!5775 = !DILocation(line: 485, column: 38, scope: !5717)
!5776 = !DILocation(line: 485, column: 42, scope: !5717)
!5777 = !DILocation(line: 485, column: 41, scope: !5717)
!5778 = !DILocation(line: 0, scope: !5717)
!5779 = distinct !{!5779, !5743, !5780}
!5780 = !DILocation(line: 485, column: 63, scope: !5717)
!5781 = !DILocation(line: 486, column: 3, scope: !5717)
!5782 = !DILocation(line: 487, column: 3, scope: !5719)
!5783 = distinct !{!5783, !5733, !5784}
!5784 = !DILocation(line: 488, column: 2, scope: !5713)
!5785 = !DILabel(scope: !5713, name: "out", file: !3, line: 489)
!5786 = !DILocation(line: 489, column: 2, scope: !5713)
!5787 = !DILocation(line: 490, column: 2, scope: !5713)
!5788 = distinct !DISubprogram(name: "PTR_ERR", scope: !5706, file: !5706, line: 29, type: !5789, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{!311, !2124}
!5791 = !DILocalVariable(name: "ptr", arg: 1, scope: !5788, file: !5706, line: 29, type: !2124)
!5792 = !DILocation(line: 29, column: 61, scope: !5788)
!5793 = !DILocation(line: 31, column: 16, scope: !5788)
!5794 = !DILocation(line: 31, column: 9, scope: !5788)
!5795 = !DILocation(line: 31, column: 2, scope: !5788)
!5796 = distinct !DISubprogram(name: "check_slots", scope: !3, file: !3, line: 324, type: !4184, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5797 = !DILocation(line: 23, column: 61, scope: !5587, inlinedAt: !5798)
!5798 = distinct !DILocation(line: 28, column: 9, scope: !5594, inlinedAt: !5799)
!5799 = distinct !DILocation(line: 423, column: 12, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5801, file: !3, line: 423, column: 11)
!5801 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 421, column: 6)
!5802 = !DILocation(line: 69, column: 73, scope: !5598, inlinedAt: !5803)
!5803 = distinct !DILocation(line: 27, column: 2, scope: !5594, inlinedAt: !5799)
!5804 = !DILocation(line: 69, column: 83, scope: !5598, inlinedAt: !5803)
!5805 = !DILocation(line: 25, column: 29, scope: !5594, inlinedAt: !5799)
!5806 = !DILocation(line: 23, column: 61, scope: !5587, inlinedAt: !5807)
!5807 = distinct !DILocation(line: 28, column: 9, scope: !5594, inlinedAt: !5808)
!5808 = distinct !DILocation(line: 419, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 419, column: 2)
!5810 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 419, column: 2)
!5811 = !DILocation(line: 69, column: 73, scope: !5598, inlinedAt: !5812)
!5812 = distinct !DILocation(line: 27, column: 2, scope: !5594, inlinedAt: !5808)
!5813 = !DILocation(line: 69, column: 83, scope: !5598, inlinedAt: !5812)
!5814 = !DILocation(line: 25, column: 29, scope: !5594, inlinedAt: !5808)
!5815 = !DILocation(line: 106, column: 55, scope: !5245, inlinedAt: !5816)
!5816 = distinct !DILocation(line: 331, column: 2, scope: !5252, inlinedAt: !5817)
!5817 = distinct !DILocation(line: 414, column: 5, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 405, column: 26)
!5819 = distinct !DILexicalBlock(scope: !5820, file: !3, line: 405, column: 8)
!5820 = distinct !DILexicalBlock(scope: !5821, file: !3, line: 403, column: 32)
!5821 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 403, column: 14)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 387, column: 14)
!5823 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 340, column: 7)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 338, column: 51)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 338, column: 2)
!5826 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 338, column: 2)
!5827 = !DILocation(line: 99, column: 79, scope: !5258, inlinedAt: !5828)
!5828 = distinct !DILocation(line: 330, column: 2, scope: !5252, inlinedAt: !5817)
!5829 = !DILocation(line: 99, column: 89, scope: !5258, inlinedAt: !5828)
!5830 = !DILocation(line: 328, column: 22, scope: !5252, inlinedAt: !5817)
!5831 = !DILocalVariable(name: "v", arg: 1, scope: !5832, file: !5246, line: 93, type: !5249)
!5832 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5246, file: !5246, line: 93, type: !5247, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5833 = !DILocation(line: 93, column: 55, scope: !5832, inlinedAt: !5834)
!5834 = distinct !DILocation(line: 241, column: 2, scope: !5835, inlinedAt: !5836)
!5835 = distinct !DISubprogram(name: "atomic_inc", scope: !5253, file: !5253, line: 238, type: !5247, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!5836 = distinct !DILocation(line: 400, column: 5, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5838, file: !3, line: 397, column: 27)
!5838 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 397, column: 8)
!5839 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 387, column: 36)
!5840 = !DILocation(line: 99, column: 79, scope: !5258, inlinedAt: !5841)
!5841 = distinct !DILocation(line: 240, column: 2, scope: !5835, inlinedAt: !5836)
!5842 = !DILocation(line: 99, column: 89, scope: !5258, inlinedAt: !5841)
!5843 = !DILocalVariable(name: "v", arg: 1, scope: !5835, file: !5253, line: 238, type: !5249)
!5844 = !DILocation(line: 238, column: 22, scope: !5835, inlinedAt: !5836)
!5845 = !DILocalVariable(name: "slot", scope: !5796, file: !3, line: 326, type: !132)
!5846 = !DILocation(line: 326, column: 15, scope: !5796)
!5847 = !DILocalVariable(name: "extracted", scope: !5796, file: !3, line: 327, type: !189)
!5848 = !DILocation(line: 327, column: 6, scope: !5796)
!5849 = !DILocalVariable(name: "inserted", scope: !5796, file: !3, line: 328, type: !189)
!5850 = !DILocation(line: 328, column: 6, scope: !5796)
!5851 = !DILocalVariable(name: "hs_csr", scope: !5796, file: !3, line: 329, type: !856)
!5852 = !DILocation(line: 329, column: 6, scope: !5796)
!5853 = !DILocation(line: 331, column: 2, scope: !5796)
!5854 = !DILocation(line: 332, column: 7, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 332, column: 6)
!5856 = !DILocation(line: 332, column: 6, scope: !5796)
!5857 = !DILocation(line: 333, column: 3, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 332, column: 14)
!5859 = !DILocation(line: 334, column: 3, scope: !5858)
!5860 = !DILocation(line: 335, column: 3, scope: !5858)
!5861 = !DILocation(line: 337, column: 23, scope: !5796)
!5862 = !DILocation(line: 337, column: 12, scope: !5796)
!5863 = !DILocalVariable(name: "__mptr", scope: !5864, file: !3, line: 338, type: !131)
!5864 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 338, column: 2)
!5865 = !DILocation(line: 338, column: 2, scope: !5864)
!5866 = !DILocation(line: 338, column: 2, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5864, file: !3, line: 338, column: 2)
!5868 = !DILocation(line: 338, column: 2, scope: !5826)
!5869 = !DILocation(line: 338, column: 2, scope: !5825)
!5870 = !DILocation(line: 339, column: 3, scope: !5824)
!5871 = !DILocation(line: 339, column: 3, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5873, file: !3, line: 339, column: 3)
!5873 = distinct !DILexicalBlock(scope: !5824, file: !3, line: 339, column: 3)
!5874 = !DILocation(line: 339, column: 3, scope: !5873)
!5875 = !DILocation(line: 340, column: 32, scope: !5823)
!5876 = !DILocation(line: 340, column: 7, scope: !5823)
!5877 = !DILocation(line: 340, column: 7, scope: !5824)
!5878 = !DILocation(line: 345, column: 8, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 345, column: 8)
!5880 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 340, column: 39)
!5881 = !DILocation(line: 345, column: 14, scope: !5879)
!5882 = !DILocation(line: 345, column: 8, scope: !5880)
!5883 = !DILocation(line: 346, column: 5, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 345, column: 19)
!5885 = !DILocation(line: 348, column: 13, scope: !5884)
!5886 = !DILocation(line: 349, column: 5, scope: !5884)
!5887 = !DILocation(line: 353, column: 4, scope: !5880)
!5888 = !DILocation(line: 353, column: 4, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 353, column: 4)
!5890 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 353, column: 4)
!5891 = !DILocation(line: 353, column: 4, scope: !5890)
!5892 = !DILocation(line: 356, column: 29, scope: !5880)
!5893 = !DILocation(line: 356, column: 13, scope: !5880)
!5894 = !DILocation(line: 356, column: 11, scope: !5880)
!5895 = !DILocation(line: 357, column: 4, scope: !5880)
!5896 = !DILocation(line: 357, column: 4, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 357, column: 4)
!5898 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 357, column: 4)
!5899 = !DILocation(line: 357, column: 4, scope: !5898)
!5900 = !DILocation(line: 361, column: 4, scope: !5880)
!5901 = !DILocation(line: 361, column: 4, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5903, file: !3, line: 361, column: 4)
!5903 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 361, column: 4)
!5904 = !DILocation(line: 361, column: 4, scope: !5903)
!5905 = !DILocation(line: 363, column: 28, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 363, column: 8)
!5907 = !DILocation(line: 363, column: 8, scope: !5906)
!5908 = !DILocation(line: 363, column: 8, scope: !5880)
!5909 = !DILocation(line: 364, column: 5, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5906, file: !3, line: 363, column: 35)
!5911 = !DILocation(line: 366, column: 5, scope: !5910)
!5912 = !DILocation(line: 368, column: 4, scope: !5880)
!5913 = !DILocation(line: 368, column: 4, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5915, file: !3, line: 368, column: 4)
!5915 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 368, column: 4)
!5916 = !DILocation(line: 368, column: 4, scope: !5915)
!5917 = !DILocation(line: 372, column: 29, scope: !5880)
!5918 = !DILocation(line: 372, column: 13, scope: !5880)
!5919 = !DILocation(line: 372, column: 11, scope: !5880)
!5920 = !DILocation(line: 373, column: 4, scope: !5880)
!5921 = !DILocation(line: 373, column: 4, scope: !5922)
!5922 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 373, column: 4)
!5923 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 373, column: 4)
!5924 = !DILocation(line: 373, column: 4, scope: !5923)
!5925 = !DILocation(line: 376, column: 4, scope: !5880)
!5926 = !DILocation(line: 376, column: 10, scope: !5880)
!5927 = !DILocation(line: 376, column: 23, scope: !5880)
!5928 = !DILocation(line: 377, column: 4, scope: !5880)
!5929 = !DILocation(line: 377, column: 10, scope: !5880)
!5930 = !DILocation(line: 377, column: 25, scope: !5880)
!5931 = !DILocation(line: 379, column: 17, scope: !5880)
!5932 = !DILocation(line: 379, column: 4, scope: !5880)
!5933 = !DILocation(line: 382, column: 29, scope: !5880)
!5934 = !DILocation(line: 382, column: 13, scope: !5880)
!5935 = !DILocation(line: 382, column: 11, scope: !5880)
!5936 = !DILocation(line: 383, column: 4, scope: !5880)
!5937 = !DILocation(line: 383, column: 4, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 383, column: 4)
!5939 = distinct !DILexicalBlock(scope: !5880, file: !3, line: 383, column: 4)
!5940 = !DILocation(line: 383, column: 4, scope: !5939)
!5941 = !DILocation(line: 386, column: 12, scope: !5880)
!5942 = !DILocation(line: 387, column: 3, scope: !5880)
!5943 = !DILocation(line: 387, column: 29, scope: !5822)
!5944 = !DILocation(line: 387, column: 14, scope: !5822)
!5945 = !DILocation(line: 387, column: 14, scope: !5823)
!5946 = !DILocation(line: 389, column: 4, scope: !5839)
!5947 = !DILocation(line: 389, column: 4, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !3, line: 389, column: 4)
!5949 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 389, column: 4)
!5950 = !DILocation(line: 389, column: 4, scope: !5949)
!5951 = !DILocation(line: 393, column: 29, scope: !5839)
!5952 = !DILocation(line: 393, column: 13, scope: !5839)
!5953 = !DILocation(line: 393, column: 11, scope: !5839)
!5954 = !DILocation(line: 394, column: 4, scope: !5839)
!5955 = !DILocation(line: 394, column: 4, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5957, file: !3, line: 394, column: 4)
!5957 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 394, column: 4)
!5958 = !DILocation(line: 394, column: 4, scope: !5957)
!5959 = !DILocation(line: 397, column: 9, scope: !5838)
!5960 = !DILocation(line: 397, column: 15, scope: !5838)
!5961 = !DILocation(line: 397, column: 8, scope: !5839)
!5962 = !DILocation(line: 398, column: 5, scope: !5837)
!5963 = !DILocation(line: 398, column: 11, scope: !5837)
!5964 = !DILocation(line: 398, column: 24, scope: !5837)
!5965 = !DILocation(line: 399, column: 5, scope: !5837)
!5966 = !DILocation(line: 399, column: 11, scope: !5837)
!5967 = !DILocation(line: 399, column: 22, scope: !5837)
!5968 = !DILocation(line: 240, column: 31, scope: !5835, inlinedAt: !5836)
!5969 = !DILocation(line: 101, column: 20, scope: !5258, inlinedAt: !5841)
!5970 = !DILocation(line: 101, column: 23, scope: !5258, inlinedAt: !5841)
!5971 = !DILocation(line: 101, column: 2, scope: !5258, inlinedAt: !5841)
!5972 = !DILocation(line: 102, column: 2, scope: !5258, inlinedAt: !5841)
!5973 = !DILocation(line: 241, column: 18, scope: !5835, inlinedAt: !5836)
!5974 = !DILocation(line: 96, column: 16, scope: !5832, inlinedAt: !5834)
!5975 = !DILocation(line: 96, column: 19, scope: !5832, inlinedAt: !5834)
!5976 = !DILocation(line: 95, column: 2, scope: !5832, inlinedAt: !5834)
!5977 = !{i32 -2146616916}
!5978 = !DILocation(line: 401, column: 4, scope: !5837)
!5979 = !DILocation(line: 402, column: 13, scope: !5839)
!5980 = !DILocation(line: 403, column: 3, scope: !5839)
!5981 = !DILocation(line: 403, column: 14, scope: !5821)
!5982 = !DILocation(line: 403, column: 20, scope: !5821)
!5983 = !DILocation(line: 403, column: 14, scope: !5822)
!5984 = !DILocation(line: 404, column: 29, scope: !5820)
!5985 = !DILocation(line: 404, column: 13, scope: !5820)
!5986 = !DILocation(line: 404, column: 11, scope: !5820)
!5987 = !DILocation(line: 405, column: 8, scope: !5819)
!5988 = !DILocation(line: 405, column: 15, scope: !5819)
!5989 = !DILocation(line: 405, column: 8, scope: !5820)
!5990 = !DILocation(line: 410, column: 5, scope: !5818)
!5991 = !DILocation(line: 412, column: 5, scope: !5818)
!5992 = !DILocation(line: 412, column: 11, scope: !5818)
!5993 = !DILocation(line: 412, column: 26, scope: !5818)
!5994 = !DILocation(line: 413, column: 5, scope: !5818)
!5995 = !DILocation(line: 413, column: 11, scope: !5818)
!5996 = !DILocation(line: 413, column: 22, scope: !5818)
!5997 = !DILocation(line: 330, column: 31, scope: !5252, inlinedAt: !5817)
!5998 = !DILocation(line: 101, column: 20, scope: !5258, inlinedAt: !5828)
!5999 = !DILocation(line: 101, column: 23, scope: !5258, inlinedAt: !5828)
!6000 = !DILocation(line: 101, column: 2, scope: !5258, inlinedAt: !5828)
!6001 = !DILocation(line: 102, column: 2, scope: !5258, inlinedAt: !5828)
!6002 = !DILocation(line: 331, column: 18, scope: !5252, inlinedAt: !5817)
!6003 = !DILocation(line: 109, column: 16, scope: !5245, inlinedAt: !5816)
!6004 = !DILocation(line: 109, column: 19, scope: !5245, inlinedAt: !5816)
!6005 = !DILocation(line: 108, column: 2, scope: !5245, inlinedAt: !5816)
!6006 = !DILocation(line: 415, column: 4, scope: !5818)
!6007 = !DILocation(line: 416, column: 3, scope: !5820)
!6008 = !DILocation(line: 417, column: 2, scope: !5824)
!6009 = !DILocalVariable(name: "__mptr", scope: !6010, file: !3, line: 338, type: !131)
!6010 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 338, column: 2)
!6011 = !DILocation(line: 338, column: 2, scope: !6010)
!6012 = !DILocation(line: 338, column: 2, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 338, column: 2)
!6014 = distinct !{!6014, !5868, !6015}
!6015 = !DILocation(line: 417, column: 2, scope: !5826)
!6016 = !DILocation(line: 418, column: 2, scope: !5796)
!6017 = !DILocation(line: 419, column: 2, scope: !5796)
!6018 = !DILocation(line: 419, column: 2, scope: !5809)
!6019 = !DILocation(line: 419, column: 2, scope: !5810)
!6020 = !DILocation(line: 27, column: 25, scope: !5594, inlinedAt: !5808)
!6021 = !DILocation(line: 71, column: 19, scope: !5598, inlinedAt: !5812)
!6022 = !DILocation(line: 71, column: 22, scope: !5598, inlinedAt: !5812)
!6023 = !DILocation(line: 71, column: 2, scope: !5598, inlinedAt: !5812)
!6024 = !DILocation(line: 72, column: 2, scope: !5598, inlinedAt: !5812)
!6025 = !DILocation(line: 28, column: 26, scope: !5594, inlinedAt: !5808)
!6026 = !DILocation(line: 29, column: 9, scope: !5587, inlinedAt: !5807)
!6027 = !DILocation(line: 421, column: 6, scope: !5801)
!6028 = !DILocation(line: 421, column: 15, scope: !5801)
!6029 = !DILocation(line: 421, column: 18, scope: !5801)
!6030 = !DILocation(line: 421, column: 6, scope: !5796)
!6031 = !DILocation(line: 422, column: 10, scope: !5801)
!6032 = !DILocation(line: 422, column: 3, scope: !5801)
!6033 = !DILocation(line: 27, column: 25, scope: !5594, inlinedAt: !5799)
!6034 = !DILocation(line: 71, column: 19, scope: !5598, inlinedAt: !5803)
!6035 = !DILocation(line: 71, column: 22, scope: !5598, inlinedAt: !5803)
!6036 = !DILocation(line: 71, column: 2, scope: !5598, inlinedAt: !5803)
!6037 = !DILocation(line: 72, column: 2, scope: !5598, inlinedAt: !5803)
!6038 = !DILocation(line: 28, column: 26, scope: !5594, inlinedAt: !5799)
!6039 = !DILocation(line: 29, column: 9, scope: !5587, inlinedAt: !5798)
!6040 = !DILocation(line: 423, column: 12, scope: !5800)
!6041 = !DILocation(line: 423, column: 11, scope: !5801)
!6042 = !DILocation(line: 424, column: 3, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 423, column: 38)
!6044 = !DILocation(line: 425, column: 3, scope: !6043)
!6045 = !DILocation(line: 427, column: 2, scope: !5796)
!6046 = !DILocation(line: 428, column: 1, scope: !5796)
!6047 = distinct !DISubprogram(name: "kasan_check_read", scope: !5433, file: !5433, line: 34, type: !5434, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6048 = !DILocalVariable(name: "p", arg: 1, scope: !6047, file: !5433, line: 34, type: !5262)
!6049 = !DILocation(line: 34, column: 58, scope: !6047)
!6050 = !DILocalVariable(name: "size", arg: 2, scope: !6047, file: !5433, line: 34, type: !7)
!6051 = !DILocation(line: 34, column: 74, scope: !6047)
!6052 = !DILocation(line: 36, column: 2, scope: !6047)
!6053 = distinct !DISubprogram(name: "signal_pending", scope: !1751, file: !1751, line: 356, type: !6054, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!189, !1213}
!6056 = !DILocalVariable(name: "p", arg: 1, scope: !6053, file: !1751, line: 356, type: !1213)
!6057 = !DILocation(line: 356, column: 54, scope: !6053)
!6058 = !DILocation(line: 358, column: 9, scope: !6053)
!6059 = !DILocation(line: 358, column: 2, scope: !6053)
!6060 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !1215, file: !1215, line: 1828, type: !6061, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{!189, !1213, !189}
!6063 = !DILocalVariable(name: "tsk", arg: 1, scope: !6060, file: !1215, line: 1828, type: !1213)
!6064 = !DILocation(line: 1828, column: 60, scope: !6060)
!6065 = !DILocalVariable(name: "flag", arg: 2, scope: !6060, file: !1215, line: 1828, type: !189)
!6066 = !DILocation(line: 1828, column: 69, scope: !6060)
!6067 = !DILocation(line: 1830, column: 46, scope: !6060)
!6068 = !DILocation(line: 1830, column: 29, scope: !6060)
!6069 = !DILocation(line: 1830, column: 52, scope: !6060)
!6070 = !DILocation(line: 1830, column: 9, scope: !6060)
!6071 = !DILocation(line: 1830, column: 2, scope: !6060)
!6072 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !6073, file: !6073, line: 82, type: !6074, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6073 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!189, !6076, !189}
!6076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!6077 = !DILocalVariable(name: "ti", arg: 1, scope: !6072, file: !6073, line: 82, type: !6076)
!6078 = !DILocation(line: 82, column: 59, scope: !6072)
!6079 = !DILocalVariable(name: "flag", arg: 2, scope: !6072, file: !6073, line: 82, type: !189)
!6080 = !DILocation(line: 82, column: 67, scope: !6072)
!6081 = !DILocation(line: 84, column: 18, scope: !6072)
!6082 = !DILocation(line: 84, column: 42, scope: !6072)
!6083 = !DILocation(line: 84, column: 46, scope: !6072)
!6084 = !DILocation(line: 84, column: 9, scope: !6072)
!6085 = !DILocation(line: 84, column: 2, scope: !6072)
!6086 = distinct !DISubprogram(name: "task_thread_info", scope: !1215, file: !1215, line: 1729, type: !6087, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!6076, !1213}
!6089 = !DILocalVariable(name: "task", arg: 1, scope: !6086, file: !1215, line: 1729, type: !1213)
!6090 = !DILocation(line: 1729, column: 72, scope: !6086)
!6091 = !DILocation(line: 1731, column: 10, scope: !6086)
!6092 = !DILocation(line: 1731, column: 16, scope: !6086)
!6093 = !DILocation(line: 1731, column: 2, scope: !6086)
!6094 = distinct !DISubprogram(name: "test_bit", scope: !6095, file: !6095, line: 132, type: !6096, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6095 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!6096 = !DISubroutineType(types: !6097)
!6097 = !{!487, !311, !6098}
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6100)
!6100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !326)
!6101 = !DILocalVariable(name: "nr", arg: 1, scope: !6102, file: !5149, line: 210, type: !311)
!6102 = distinct !DISubprogram(name: "variable_test_bit", scope: !5149, file: !5149, line: 210, type: !6096, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6103 = !DILocation(line: 210, column: 52, scope: !6102, inlinedAt: !6104)
!6104 = distinct !DILocation(line: 135, column: 9, scope: !6094)
!6105 = !DILocalVariable(name: "addr", arg: 2, scope: !6102, file: !5149, line: 210, type: !6098)
!6106 = !DILocation(line: 210, column: 86, scope: !6102, inlinedAt: !6104)
!6107 = !DILocalVariable(name: "oldbit", scope: !6102, file: !5149, line: 212, type: !487)
!6108 = !DILocation(line: 212, column: 7, scope: !6102, inlinedAt: !6104)
!6109 = !DILocalVariable(name: "nr", arg: 1, scope: !6110, file: !5149, line: 204, type: !311)
!6110 = distinct !DISubprogram(name: "constant_test_bit", scope: !5149, file: !5149, line: 204, type: !6096, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !249)
!6111 = !DILocation(line: 204, column: 52, scope: !6110, inlinedAt: !6112)
!6112 = distinct !DILocation(line: 135, column: 9, scope: !6094)
!6113 = !DILocalVariable(name: "addr", arg: 2, scope: !6110, file: !5149, line: 204, type: !6098)
!6114 = !DILocation(line: 204, column: 86, scope: !6110, inlinedAt: !6112)
!6115 = !DILocation(line: 69, column: 73, scope: !5598, inlinedAt: !6116)
!6116 = distinct !DILocation(line: 134, column: 2, scope: !6094)
!6117 = !DILocation(line: 69, column: 83, scope: !5598, inlinedAt: !6116)
!6118 = !DILocalVariable(name: "nr", arg: 1, scope: !6094, file: !6095, line: 132, type: !311)
!6119 = !DILocation(line: 132, column: 34, scope: !6094)
!6120 = !DILocalVariable(name: "addr", arg: 2, scope: !6094, file: !6095, line: 132, type: !6098)
!6121 = !DILocation(line: 132, column: 68, scope: !6094)
!6122 = !DILocation(line: 134, column: 25, scope: !6094)
!6123 = !DILocation(line: 134, column: 32, scope: !6094)
!6124 = !DILocation(line: 134, column: 30, scope: !6094)
!6125 = !DILocation(line: 71, column: 19, scope: !5598, inlinedAt: !6116)
!6126 = !DILocation(line: 71, column: 22, scope: !5598, inlinedAt: !6116)
!6127 = !DILocation(line: 71, column: 2, scope: !5598, inlinedAt: !6116)
!6128 = !DILocation(line: 72, column: 2, scope: !5598, inlinedAt: !6116)
!6129 = !DILocation(line: 135, column: 9, scope: !6094)
!6130 = !DILocation(line: 206, column: 19, scope: !6110, inlinedAt: !6112)
!6131 = !DILocation(line: 206, column: 22, scope: !6110, inlinedAt: !6112)
!6132 = !DILocation(line: 206, column: 15, scope: !6110, inlinedAt: !6112)
!6133 = !DILocation(line: 207, column: 4, scope: !6110, inlinedAt: !6112)
!6134 = !DILocation(line: 207, column: 9, scope: !6110, inlinedAt: !6112)
!6135 = !DILocation(line: 207, column: 12, scope: !6110, inlinedAt: !6112)
!6136 = !DILocation(line: 206, column: 44, scope: !6110, inlinedAt: !6112)
!6137 = !DILocation(line: 207, column: 37, scope: !6110, inlinedAt: !6112)
!6138 = !DILocation(line: 217, column: 33, scope: !6102, inlinedAt: !6104)
!6139 = !DILocation(line: 217, column: 46, scope: !6102, inlinedAt: !6104)
!6140 = !DILocation(line: 214, column: 2, scope: !6102, inlinedAt: !6104)
!6141 = !{i32 -2147131792, i32 -2147131732}
!6142 = !DILocation(line: 219, column: 9, scope: !6102, inlinedAt: !6104)
!6143 = !DILocation(line: 135, column: 2, scope: !6094)
