; ModuleID = '../bcout/drivers/pci/bus.llvm.bc'
source_filename = "drivers/pci/bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_bus_region = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.resource_entry = type { %struct.list_head, %struct.resource*, i64, %struct.resource }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
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
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.pci_bus_resource = type { %struct.list_head, %struct.resource*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"\013PCI: can't add host bridge window %pR\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"can't add %pR resource\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@pci_high = internal global %struct.pci_bus_region { i64 4294967296, i64 -1 }, align 8, !dbg !0
@pci_64_bit = internal global %struct.pci_bus_region { i64 0, i64 -1 }, align 8, !dbg !4059
@pci_32_bit = internal global %struct.pci_bus_region { i64 0, i64 4294967295 }, align 8, !dbg !4066
@.str.2 = private unnamed_addr constant [20 x i8] c"%pR clipped to %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"device attach failed (%d)\0A\00", align 1
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_add_resource_offset(%struct.list_head* %resources, %struct.resource* %res, i64 %offset) #0 !dbg !4073 {
entry:
  %resources.addr = alloca %struct.list_head*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %offset.addr = alloca i64, align 8
  %entry1 = alloca %struct.resource_entry*, align 8
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4076, metadata !DIExpression()), !dbg !4077
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4078, metadata !DIExpression()), !dbg !4079
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry1, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4084
  %call = call %struct.resource_entry* @resource_list_create_entry(%struct.resource* %0, i64 0) #8, !dbg !4085
  store %struct.resource_entry* %call, %struct.resource_entry** %entry1, align 8, !dbg !4086
  %1 = load %struct.resource_entry*, %struct.resource_entry** %entry1, align 8, !dbg !4087
  %tobool = icmp ne %struct.resource_entry* %1, null, !dbg !4087
  br i1 %tobool, label %if.end, label %if.then, !dbg !4089

if.then:                                          ; preds = %entry
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4090
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.resource* %2) #9, !dbg !4090
  br label %return, !dbg !4092

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %offset.addr, align 8, !dbg !4093
  %4 = load %struct.resource_entry*, %struct.resource_entry** %entry1, align 8, !dbg !4094
  %offset3 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %4, i32 0, i32 2, !dbg !4095
  store i64 %3, i64* %offset3, align 8, !dbg !4096
  %5 = load %struct.resource_entry*, %struct.resource_entry** %entry1, align 8, !dbg !4097
  %6 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4098
  call void @resource_list_add_tail(%struct.resource_entry* %5, %struct.list_head* %6) #8, !dbg !4099
  br label %return, !dbg !4100

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4100
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local %struct.resource_entry* @resource_list_create_entry(%struct.resource*, i64) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resource_list_add_tail(%struct.resource_entry* %entry1, %struct.list_head* %head) #0 !dbg !4101 {
entry:
  %entry.addr = alloca %struct.resource_entry*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.resource_entry* %entry1, %struct.resource_entry** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %entry.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  %0 = load %struct.resource_entry*, %struct.resource_entry** %entry.addr, align 8, !dbg !4108
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %0, i32 0, i32 0, !dbg !4109
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4110
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %1) #8, !dbg !4111
  ret void, !dbg !4112
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_add_resource(%struct.list_head* %resources, %struct.resource* %res) #0 !dbg !4113 {
entry:
  %resources.addr = alloca %struct.list_head*, align 8
  %res.addr = alloca %struct.resource*, align 8
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  %0 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4120
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4121
  call void @pci_add_resource_offset(%struct.list_head* %0, %struct.resource* %1, i64 0) #8, !dbg !4122
  ret void, !dbg !4123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_free_resource_list(%struct.list_head* %resources) #0 !dbg !4124 {
entry:
  %resources.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4127, metadata !DIExpression()), !dbg !4128
  %0 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4129
  call void @resource_list_free(%struct.list_head* %0) #8, !dbg !4130
  ret void, !dbg !4131
}

; Function Attrs: noredzone
declare dso_local void @resource_list_free(%struct.list_head*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_bus_add_resource(%struct.pci_bus* %bus, %struct.resource* %res, i32 %flags) #0 !dbg !4132 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %flags.addr = alloca i32, align 4
  %bus_res = alloca %struct.pci_bus_resource*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4135, metadata !DIExpression()), !dbg !4136
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.declare(metadata %struct.pci_bus_resource** %bus_res, metadata !4141, metadata !DIExpression()), !dbg !4142
  %call = call i8* @kzalloc(i64 32, i32 3264) #8, !dbg !4143
  %0 = bitcast i8* %call to %struct.pci_bus_resource*, !dbg !4143
  store %struct.pci_bus_resource* %0, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4144
  %1 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4145
  %tobool = icmp ne %struct.pci_bus_resource* %1, null, !dbg !4145
  br i1 %tobool, label %if.end, label %if.then, !dbg !4147

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4148
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %2, i32 0, i32 21, !dbg !4148
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4148
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %3) #9, !dbg !4148
  br label %return, !dbg !4150

if.end:                                           ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4151
  %5 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4152
  %res1 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %5, i32 0, i32 1, !dbg !4153
  store %struct.resource* %4, %struct.resource** %res1, align 8, !dbg !4154
  %6 = load i32, i32* %flags.addr, align 4, !dbg !4155
  %7 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4156
  %flags2 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %7, i32 0, i32 2, !dbg !4157
  store i32 %6, i32* %flags2, align 8, !dbg !4158
  %8 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4159
  %list = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %8, i32 0, i32 0, !dbg !4160
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4161
  %resources = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 7, !dbg !4162
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %resources) #8, !dbg !4163
  br label %return, !dbg !4164

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4165 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4168, metadata !DIExpression()), !dbg !4172
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4178, metadata !DIExpression()), !dbg !4179
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4180, metadata !DIExpression()), !dbg !4181
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4182, metadata !DIExpression()), !dbg !4183
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4184, metadata !DIExpression()), !dbg !4188
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4190, metadata !DIExpression()), !dbg !4194
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4196, metadata !DIExpression()), !dbg !4200
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4205, metadata !DIExpression()), !dbg !4206
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4209, metadata !DIExpression()), !dbg !4210
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4211, metadata !DIExpression()), !dbg !4212
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4213, metadata !DIExpression()), !dbg !4214
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4215, metadata !DIExpression()), !dbg !4216
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4217, metadata !DIExpression()), !dbg !4218
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4219, metadata !DIExpression()), !dbg !4220
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  %0 = load i64, i64* %size.addr, align 8, !dbg !4225
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4226
  %or = or i32 %1, 256, !dbg !4227
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4228
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4229
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4230

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4231
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4232
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4233

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4234
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4235
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4236
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4237
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4214
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4238
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4239
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4240
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4241
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4242
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4243
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4244
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4244
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4244
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4244
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4244
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4245
  br label %kmalloc.exit, !dbg !4245

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4246
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4247
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4247
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4249

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4250
  br label %kmalloc_index.exit.i, !dbg !4250

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4251
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4253
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4254

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4255
  br label %kmalloc_index.exit.i, !dbg !4255

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4256
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4258
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4259

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4260
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4261
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4262

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4263
  br label %kmalloc_index.exit.i, !dbg !4263

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4264
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4266
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4267

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4268
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4269
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4270

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4271
  br label %kmalloc_index.exit.i, !dbg !4271

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4272
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4274
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4275

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4276
  br label %kmalloc_index.exit.i, !dbg !4276

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4277
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4279
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4280

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4281
  br label %kmalloc_index.exit.i, !dbg !4281

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4282
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4284
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4285

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4286
  br label %kmalloc_index.exit.i, !dbg !4286

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4287
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4289
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4290

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4291
  br label %kmalloc_index.exit.i, !dbg !4291

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4292
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4294
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4295

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4296
  br label %kmalloc_index.exit.i, !dbg !4296

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4297
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4299
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4300

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4301
  br label %kmalloc_index.exit.i, !dbg !4301

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4302
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4304
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4305

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4306
  br label %kmalloc_index.exit.i, !dbg !4306

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4307
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4309
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4310

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4311
  br label %kmalloc_index.exit.i, !dbg !4311

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4312
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4314
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4315

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4316
  br label %kmalloc_index.exit.i, !dbg !4316

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4317
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4319
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4320

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4321
  br label %kmalloc_index.exit.i, !dbg !4321

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4322
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4324
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4325

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4326
  br label %kmalloc_index.exit.i, !dbg !4326

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4327
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4329
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4330

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4331
  br label %kmalloc_index.exit.i, !dbg !4331

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4332
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4334
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4335

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4336
  br label %kmalloc_index.exit.i, !dbg !4336

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4337
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4339
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4340

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4341
  br label %kmalloc_index.exit.i, !dbg !4341

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4342
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4344
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4345

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4346
  br label %kmalloc_index.exit.i, !dbg !4346

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4347
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4349
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4350

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4351
  br label %kmalloc_index.exit.i, !dbg !4351

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4352
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4354
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4355

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4356
  br label %kmalloc_index.exit.i, !dbg !4356

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4357
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4359
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4360

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4361
  br label %kmalloc_index.exit.i, !dbg !4361

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4362
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4364
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4365

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4366
  br label %kmalloc_index.exit.i, !dbg !4366

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4367
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4369
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4370

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4371
  br label %kmalloc_index.exit.i, !dbg !4371

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4372
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4374
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4375

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4376
  br label %kmalloc_index.exit.i, !dbg !4376

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4377
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4379
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4380

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4381
  br label %kmalloc_index.exit.i, !dbg !4381

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4382
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4384
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4385

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4386
  br label %kmalloc_index.exit.i, !dbg !4386

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4387
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4389
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4390

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4391
  br label %kmalloc_index.exit.i, !dbg !4391

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4392, !srcloc !4395
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #10, !dbg !4396, !srcloc !4399
  unreachable, !dbg !4400

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4401
  store i32 %45, i32* %index.i, align 4, !dbg !4402
  %46 = load i32, i32* %index.i, align 4, !dbg !4403
  %tobool.i = icmp ne i32 %46, 0, !dbg !4403
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4405

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4406
  br label %kmalloc.exit, !dbg !4406

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4407
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4408
  %and.i.i = and i32 %48, 17, !dbg !4408
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4408
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4408
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4408
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4408
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4410

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4411
  br label %kmalloc_type.exit.i, !dbg !4411

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4412
  %and2.i.i = and i32 %49, 1, !dbg !4413
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4412
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4412
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4412
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4414
  br label %kmalloc_type.exit.i, !dbg !4414

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4415
  %idxprom.i = zext i32 %51 to i64, !dbg !4416
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4416
  %52 = load i32, i32* %index.i, align 4, !dbg !4417
  %idxprom6.i = zext i32 %52 to i64, !dbg !4416
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4416
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4416
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4418
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4419
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4420
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4421
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4422
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4422
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4422
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4422
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4422
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4183
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4423
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4424
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4425
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4426
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4427
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4428
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4429
  store i8* %62, i8** %retval.i, align 8, !dbg !4430
  br label %kmalloc.exit, !dbg !4430

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4431
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4432
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4433
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4433
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4433
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4433
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4433
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4434
  br label %kmalloc.exit, !dbg !4434

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4435
  ret i8* %65, !dbg !4436
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4437 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4445
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4446
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4447
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4447
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4448
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !4449
  ret void, !dbg !4450
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.resource* @pci_bus_resource_n(%struct.pci_bus* %bus, i32 %n) #0 !dbg !4451 {
entry:
  %retval = alloca %struct.resource*, align 8
  %bus.addr = alloca %struct.pci_bus*, align 8
  %n.addr = alloca i32, align 4
  %bus_res = alloca %struct.pci_bus_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_bus_resource*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp11 = alloca %struct.pci_bus_resource*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.declare(metadata %struct.pci_bus_resource** %bus_res, metadata !4460, metadata !DIExpression()), !dbg !4461
  %0 = load i32, i32* %n.addr, align 4, !dbg !4462
  %cmp = icmp slt i32 %0, 4, !dbg !4464
  br i1 %cmp, label %if.then, label %if.end, !dbg !4465

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4466
  %resource = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 6, !dbg !4467
  %2 = load i32, i32* %n.addr, align 4, !dbg !4468
  %idxprom = sext i32 %2 to i64, !dbg !4466
  %arrayidx = getelementptr [4 x %struct.resource*], [4 x %struct.resource*]* %resource, i64 0, i64 %idxprom, !dbg !4466
  %3 = load %struct.resource*, %struct.resource** %arrayidx, align 8, !dbg !4466
  store %struct.resource* %3, %struct.resource** %retval, align 8, !dbg !4469
  br label %return, !dbg !4469

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4, !dbg !4470
  %sub = sub i32 %4, 4, !dbg !4470
  store i32 %sub, i32* %n.addr, align 4, !dbg !4470
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4471, metadata !DIExpression()), !dbg !4474
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4474
  %resources = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 7, !dbg !4474
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4474
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4474
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4474
  store i8* %7, i8** %__mptr, align 8, !dbg !4474
  br label %do.body, !dbg !4474

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4475

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4474
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !4474
  %9 = bitcast i8* %add.ptr to %struct.pci_bus_resource*, !dbg !4474
  store %struct.pci_bus_resource* %9, %struct.pci_bus_resource** %tmp, align 8, !dbg !4475
  %10 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp, align 8, !dbg !4474
  store %struct.pci_bus_resource* %10, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4477
  br label %for.cond, !dbg !4477

for.cond:                                         ; preds = %do.end10, %do.end
  %11 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4478
  %list = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %11, i32 0, i32 0, !dbg !4478
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4478
  %resources1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 7, !dbg !4478
  %cmp2 = icmp eq %struct.list_head* %list, %resources1, !dbg !4478
  %lnot = xor i1 %cmp2, true, !dbg !4478
  br i1 %lnot, label %for.body, label %for.end, !dbg !4477

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %n.addr, align 4, !dbg !4480
  %dec = add i32 %13, -1, !dbg !4480
  store i32 %dec, i32* %n.addr, align 4, !dbg !4480
  %cmp3 = icmp eq i32 %13, 0, !dbg !4483
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4484

if.then4:                                         ; preds = %for.body
  %14 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4485
  %res = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %14, i32 0, i32 1, !dbg !4486
  %15 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4486
  store %struct.resource* %15, %struct.resource** %retval, align 8, !dbg !4487
  br label %return, !dbg !4487

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !4488

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !4489, metadata !DIExpression()), !dbg !4491
  %16 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4491
  %list7 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %16, i32 0, i32 0, !dbg !4491
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %list7, i32 0, i32 0, !dbg !4491
  %17 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !4491
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4491
  store i8* %18, i8** %__mptr6, align 8, !dbg !4491
  br label %do.body9, !dbg !4491

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !4492

do.end10:                                         ; preds = %do.body9
  %19 = load i8*, i8** %__mptr6, align 8, !dbg !4491
  %add.ptr12 = getelementptr i8, i8* %19, i64 0, !dbg !4491
  %20 = bitcast i8* %add.ptr12 to %struct.pci_bus_resource*, !dbg !4491
  store %struct.pci_bus_resource* %20, %struct.pci_bus_resource** %tmp11, align 8, !dbg !4492
  %21 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp11, align 8, !dbg !4491
  store %struct.pci_bus_resource* %21, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4478
  br label %for.cond, !dbg !4478, !llvm.loop !4494

for.end:                                          ; preds = %for.cond
  store %struct.resource* null, %struct.resource** %retval, align 8, !dbg !4496
  br label %return, !dbg !4496

return:                                           ; preds = %for.end, %if.then4, %if.then
  %22 = load %struct.resource*, %struct.resource** %retval, align 8, !dbg !4497
  ret %struct.resource* %22, !dbg !4497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_bus_remove_resources(%struct.pci_bus* %bus) #0 !dbg !4498 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %i = alloca i32, align 4
  %bus_res = alloca %struct.pci_bus_resource*, align 8
  %tmp = alloca %struct.pci_bus_resource*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.pci_bus_resource*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.pci_bus_resource*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp20 = alloca %struct.pci_bus_resource*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4499, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4501, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.declare(metadata %struct.pci_bus_resource** %bus_res, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.pci_bus_resource** %tmp, metadata !4505, metadata !DIExpression()), !dbg !4506
  store i32 0, i32* %i, align 4, !dbg !4507
  br label %for.cond, !dbg !4509

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4510
  %cmp = icmp slt i32 %0, 4, !dbg !4512
  br i1 %cmp, label %for.body, label %for.end, !dbg !4513

for.body:                                         ; preds = %for.cond
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4514
  %resource = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 6, !dbg !4515
  %2 = load i32, i32* %i, align 4, !dbg !4516
  %idxprom = sext i32 %2 to i64, !dbg !4514
  %arrayidx = getelementptr [4 x %struct.resource*], [4 x %struct.resource*]* %resource, i64 0, i64 %idxprom, !dbg !4514
  store %struct.resource* null, %struct.resource** %arrayidx, align 8, !dbg !4517
  br label %for.inc, !dbg !4514

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !4518
  %inc = add i32 %3, 1, !dbg !4518
  store i32 %inc, i32* %i, align 4, !dbg !4518
  br label %for.cond, !dbg !4519, !llvm.loop !4520

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4522, metadata !DIExpression()), !dbg !4525
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4525
  %resources = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 7, !dbg !4525
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %resources, i32 0, i32 0, !dbg !4525
  %5 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4525
  %6 = bitcast %struct.list_head* %5 to i8*, !dbg !4525
  store i8* %6, i8** %__mptr, align 8, !dbg !4525
  br label %do.body, !dbg !4525

do.body:                                          ; preds = %for.end
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.body
  %7 = load i8*, i8** %__mptr, align 8, !dbg !4525
  %add.ptr = getelementptr i8, i8* %7, i64 0, !dbg !4525
  %8 = bitcast i8* %add.ptr to %struct.pci_bus_resource*, !dbg !4525
  store %struct.pci_bus_resource* %8, %struct.pci_bus_resource** %tmp1, align 8, !dbg !4526
  %9 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp1, align 8, !dbg !4525
  store %struct.pci_bus_resource* %9, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4528
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4529, metadata !DIExpression()), !dbg !4531
  %10 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4531
  %list = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %10, i32 0, i32 0, !dbg !4531
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !4531
  %11 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !4531
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4531
  store i8* %12, i8** %__mptr2, align 8, !dbg !4531
  br label %do.body4, !dbg !4531

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4532

do.end5:                                          ; preds = %do.body4
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !4531
  %add.ptr7 = getelementptr i8, i8* %13, i64 0, !dbg !4531
  %14 = bitcast i8* %add.ptr7 to %struct.pci_bus_resource*, !dbg !4531
  store %struct.pci_bus_resource* %14, %struct.pci_bus_resource** %tmp6, align 8, !dbg !4532
  %15 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp6, align 8, !dbg !4531
  store %struct.pci_bus_resource* %15, %struct.pci_bus_resource** %tmp, align 8, !dbg !4528
  br label %for.cond8, !dbg !4528

for.cond8:                                        ; preds = %do.end19, %do.end5
  %16 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4534
  %list9 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %16, i32 0, i32 0, !dbg !4534
  %17 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4534
  %resources10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %17, i32 0, i32 7, !dbg !4534
  %cmp11 = icmp eq %struct.list_head* %list9, %resources10, !dbg !4534
  %lnot = xor i1 %cmp11, true, !dbg !4534
  br i1 %lnot, label %for.body12, label %for.end22, !dbg !4528

for.body12:                                       ; preds = %for.cond8
  %18 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4536
  %list13 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %18, i32 0, i32 0, !dbg !4538
  call void @list_del(%struct.list_head* %list13) #8, !dbg !4539
  %19 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4540
  %20 = bitcast %struct.pci_bus_resource* %19 to i8*, !dbg !4540
  call void @kfree(i8* %20) #8, !dbg !4541
  br label %for.inc14, !dbg !4542

for.inc14:                                        ; preds = %for.body12
  %21 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp, align 8, !dbg !4534
  store %struct.pci_bus_resource* %21, %struct.pci_bus_resource** %bus_res, align 8, !dbg !4534
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !4543, metadata !DIExpression()), !dbg !4545
  %22 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp, align 8, !dbg !4545
  %list16 = getelementptr inbounds %struct.pci_bus_resource, %struct.pci_bus_resource* %22, i32 0, i32 0, !dbg !4545
  %next17 = getelementptr inbounds %struct.list_head, %struct.list_head* %list16, i32 0, i32 0, !dbg !4545
  %23 = load %struct.list_head*, %struct.list_head** %next17, align 8, !dbg !4545
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !4545
  store i8* %24, i8** %__mptr15, align 8, !dbg !4545
  br label %do.body18, !dbg !4545

do.body18:                                        ; preds = %for.inc14
  br label %do.end19, !dbg !4546

do.end19:                                         ; preds = %do.body18
  %25 = load i8*, i8** %__mptr15, align 8, !dbg !4545
  %add.ptr21 = getelementptr i8, i8* %25, i64 0, !dbg !4545
  %26 = bitcast i8* %add.ptr21 to %struct.pci_bus_resource*, !dbg !4545
  store %struct.pci_bus_resource* %26, %struct.pci_bus_resource** %tmp20, align 8, !dbg !4546
  %27 = load %struct.pci_bus_resource*, %struct.pci_bus_resource** %tmp20, align 8, !dbg !4545
  store %struct.pci_bus_resource* %27, %struct.pci_bus_resource** %tmp, align 8, !dbg !4534
  br label %for.cond8, !dbg !4534, !llvm.loop !4548

for.end22:                                        ; preds = %for.cond8
  ret void, !dbg !4550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4551 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4552, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4554
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !4555
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4556
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4557
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4558
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4559
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4560
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4561
  ret void, !dbg !4562
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_request_pci_bus_resources(%struct.device* %dev, %struct.list_head* %resources) #0 !dbg !4563 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %resources.addr = alloca %struct.list_head*, align 8
  %win = alloca %struct.resource_entry*, align 8
  %parent = alloca %struct.resource*, align 8
  %res = alloca %struct.resource*, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.resource_entry*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.resource_entry*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4566, metadata !DIExpression()), !dbg !4567
  store %struct.list_head* %resources, %struct.list_head** %resources.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %resources.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  call void @llvm.dbg.declare(metadata %struct.resource_entry** %win, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata %struct.resource** %parent, metadata !4572, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4576, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4578, metadata !DIExpression()), !dbg !4581
  %0 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4581
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4581
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4581
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4581
  store i8* %2, i8** %__mptr, align 8, !dbg !4581
  br label %do.body, !dbg !4581

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4582

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4581
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4581
  %4 = bitcast i8* %add.ptr to %struct.resource_entry*, !dbg !4581
  store %struct.resource_entry* %4, %struct.resource_entry** %tmp, align 8, !dbg !4582
  %5 = load %struct.resource_entry*, %struct.resource_entry** %tmp, align 8, !dbg !4581
  store %struct.resource_entry* %5, %struct.resource_entry** %win, align 8, !dbg !4584
  br label %for.cond, !dbg !4584

for.cond:                                         ; preds = %do.end8, %do.end
  %6 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !4585
  %node = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %6, i32 0, i32 0, !dbg !4585
  %7 = load %struct.list_head*, %struct.list_head** %resources.addr, align 8, !dbg !4585
  %cmp = icmp eq %struct.list_head* %node, %7, !dbg !4585
  %lnot = xor i1 %cmp, true, !dbg !4585
  br i1 %lnot, label %for.body, label %for.end, !dbg !4584

for.body:                                         ; preds = %for.cond
  %8 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !4587
  %res1 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %8, i32 0, i32 1, !dbg !4589
  %9 = load %struct.resource*, %struct.resource** %res1, align 8, !dbg !4589
  store %struct.resource* %9, %struct.resource** %res, align 8, !dbg !4590
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4591
  %call = call i64 @resource_type(%struct.resource* %10) #8, !dbg !4592
  switch i64 %call, label %sw.default [
    i64 256, label %sw.bb
    i64 512, label %sw.bb2
  ], !dbg !4593

sw.bb:                                            ; preds = %for.body
  store %struct.resource* @ioport_resource, %struct.resource** %parent, align 8, !dbg !4594
  br label %sw.epilog, !dbg !4596

sw.bb2:                                           ; preds = %for.body
  store %struct.resource* @iomem_resource, %struct.resource** %parent, align 8, !dbg !4597
  br label %sw.epilog, !dbg !4598

sw.default:                                       ; preds = %for.body
  br label %for.inc, !dbg !4599

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4600
  %12 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4601
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4602
  %call3 = call i32 @devm_request_resource(%struct.device* %11, %struct.resource* %12, %struct.resource* %13) #8, !dbg !4603
  store i32 %call3, i32* %err, align 4, !dbg !4604
  %14 = load i32, i32* %err, align 4, !dbg !4605
  %tobool = icmp ne i32 %14, 0, !dbg !4605
  br i1 %tobool, label %if.then, label %if.end, !dbg !4607

if.then:                                          ; preds = %sw.epilog
  %15 = load i32, i32* %err, align 4, !dbg !4608
  store i32 %15, i32* %retval, align 4, !dbg !4609
  br label %return, !dbg !4609

if.end:                                           ; preds = %sw.epilog
  br label %for.inc, !dbg !4610

for.inc:                                          ; preds = %if.end, %sw.default
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4611, metadata !DIExpression()), !dbg !4613
  %16 = load %struct.resource_entry*, %struct.resource_entry** %win, align 8, !dbg !4613
  %node5 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %16, i32 0, i32 0, !dbg !4613
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %node5, i32 0, i32 0, !dbg !4613
  %17 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !4613
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4613
  store i8* %18, i8** %__mptr4, align 8, !dbg !4613
  br label %do.body7, !dbg !4613

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !4614

do.end8:                                          ; preds = %do.body7
  %19 = load i8*, i8** %__mptr4, align 8, !dbg !4613
  %add.ptr10 = getelementptr i8, i8* %19, i64 0, !dbg !4613
  %20 = bitcast i8* %add.ptr10 to %struct.resource_entry*, !dbg !4613
  store %struct.resource_entry* %20, %struct.resource_entry** %tmp9, align 8, !dbg !4614
  %21 = load %struct.resource_entry*, %struct.resource_entry** %tmp9, align 8, !dbg !4613
  store %struct.resource_entry* %21, %struct.resource_entry** %win, align 8, !dbg !4585
  br label %for.cond, !dbg !4585, !llvm.loop !4616

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4618
  br label %return, !dbg !4618

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4619
  ret i32 %22, !dbg !4619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_type(%struct.resource* %res) #0 !dbg !4620 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4625, metadata !DIExpression()), !dbg !4626
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4627
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !4628
  %1 = load i64, i64* %flags, align 8, !dbg !4628
  %and = and i64 %1, 7936, !dbg !4629
  ret i64 %and, !dbg !4630
}

; Function Attrs: noredzone
declare dso_local i32 @devm_request_resource(%struct.device*, %struct.resource*, %struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_bus_alloc_resource(%struct.pci_bus* %bus, %struct.resource* %res, i64 %size, i64 %align, i64 %min, i64 %type_mask, i64 (i8*, %struct.resource*, i64, i64)* %alignf, i8* %alignf_data) #0 !dbg !4631 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %min.addr = alloca i64, align 8
  %type_mask.addr = alloca i64, align 8
  %alignf.addr = alloca i64 (i8*, %struct.resource*, i64, i64)*, align 8
  %alignf_data.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4637, metadata !DIExpression()), !dbg !4638
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4639, metadata !DIExpression()), !dbg !4640
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4641, metadata !DIExpression()), !dbg !4642
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i64 %min, i64* %min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  store i64 %type_mask, i64* %type_mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type_mask.addr, metadata !4647, metadata !DIExpression()), !dbg !4648
  store i64 (i8*, %struct.resource*, i64, i64)* %alignf, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  store i8* %alignf_data, i8** %alignf_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alignf_data.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4653, metadata !DIExpression()), !dbg !4654
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4655
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 3, !dbg !4657
  %1 = load i64, i64* %flags, align 8, !dbg !4657
  %and = and i64 %1, 1048576, !dbg !4658
  %tobool = icmp ne i64 %and, 0, !dbg !4658
  br i1 %tobool, label %if.then, label %if.end3, !dbg !4659

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4660
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4662
  %4 = load i64, i64* %size.addr, align 8, !dbg !4663
  %5 = load i64, i64* %align.addr, align 8, !dbg !4664
  %6 = load i64, i64* %min.addr, align 8, !dbg !4665
  %7 = load i64, i64* %type_mask.addr, align 8, !dbg !4666
  %8 = load i64 (i8*, %struct.resource*, i64, i64)*, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8, !dbg !4667
  %9 = load i8*, i8** %alignf_data.addr, align 8, !dbg !4668
  %call = call i32 @pci_bus_alloc_from_region(%struct.pci_bus* %2, %struct.resource* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 (i8*, %struct.resource*, i64, i64)* %8, i8* %9, %struct.pci_bus_region* @pci_high) #8, !dbg !4669
  store i32 %call, i32* %rc, align 4, !dbg !4670
  %10 = load i32, i32* %rc, align 4, !dbg !4671
  %cmp = icmp eq i32 %10, 0, !dbg !4673
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4674

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !4675
  br label %return, !dbg !4675

if.end:                                           ; preds = %if.then
  %11 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4676
  %12 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4677
  %13 = load i64, i64* %size.addr, align 8, !dbg !4678
  %14 = load i64, i64* %align.addr, align 8, !dbg !4679
  %15 = load i64, i64* %min.addr, align 8, !dbg !4680
  %16 = load i64, i64* %type_mask.addr, align 8, !dbg !4681
  %17 = load i64 (i8*, %struct.resource*, i64, i64)*, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8, !dbg !4682
  %18 = load i8*, i8** %alignf_data.addr, align 8, !dbg !4683
  %call2 = call i32 @pci_bus_alloc_from_region(%struct.pci_bus* %11, %struct.resource* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 (i8*, %struct.resource*, i64, i64)* %17, i8* %18, %struct.pci_bus_region* @pci_64_bit) #8, !dbg !4684
  store i32 %call2, i32* %retval, align 4, !dbg !4685
  br label %return, !dbg !4685

if.end3:                                          ; preds = %entry
  %19 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4686
  %20 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4687
  %21 = load i64, i64* %size.addr, align 8, !dbg !4688
  %22 = load i64, i64* %align.addr, align 8, !dbg !4689
  %23 = load i64, i64* %min.addr, align 8, !dbg !4690
  %24 = load i64, i64* %type_mask.addr, align 8, !dbg !4691
  %25 = load i64 (i8*, %struct.resource*, i64, i64)*, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8, !dbg !4692
  %26 = load i8*, i8** %alignf_data.addr, align 8, !dbg !4693
  %call4 = call i32 @pci_bus_alloc_from_region(%struct.pci_bus* %19, %struct.resource* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 (i8*, %struct.resource*, i64, i64)* %25, i8* %26, %struct.pci_bus_region* @pci_32_bit) #8, !dbg !4694
  store i32 %call4, i32* %retval, align 4, !dbg !4695
  br label %return, !dbg !4695

return:                                           ; preds = %if.end3, %if.end, %if.then1
  %27 = load i32, i32* %retval, align 4, !dbg !4696
  ret i32 %27, !dbg !4696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_bus_alloc_from_region(%struct.pci_bus* %bus, %struct.resource* %res, i64 %size, i64 %align, i64 %min, i64 %type_mask, i64 (i8*, %struct.resource*, i64, i64)* %alignf, i8* %alignf_data, %struct.pci_bus_region* %region) #0 !dbg !4697 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %min.addr = alloca i64, align 8
  %type_mask.addr = alloca i64, align 8
  %alignf.addr = alloca i64 (i8*, %struct.resource*, i64, i64)*, align 8
  %alignf_data.addr = alloca i8*, align 8
  %region.addr = alloca %struct.pci_bus_region*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %r = alloca %struct.resource*, align 8
  %avail = alloca %struct.resource, align 8
  %max = alloca i64, align 8
  %min_used = alloca i64, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4703, metadata !DIExpression()), !dbg !4704
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i64 %min, i64* %min.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i64 %type_mask, i64* %type_mask.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %type_mask.addr, metadata !4711, metadata !DIExpression()), !dbg !4712
  store i64 (i8*, %struct.resource*, i64, i64)* %alignf, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8
  call void @llvm.dbg.declare(metadata i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  store i8* %alignf_data, i8** %alignf_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alignf_data.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store %struct.pci_bus_region* %region, %struct.pci_bus_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region** %region.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata %struct.resource** %r, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.declare(metadata %struct.resource* %avail, metadata !4725, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.declare(metadata i64* %max, metadata !4727, metadata !DIExpression()), !dbg !4728
  %0 = load i64, i64* %type_mask.addr, align 8, !dbg !4729
  %or = or i64 %0, 7936, !dbg !4729
  store i64 %or, i64* %type_mask.addr, align 8, !dbg !4729
  store i32 0, i32* %i, align 4, !dbg !4730
  br label %for.cond, !dbg !4730

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4732
  %2 = load i32, i32* %i, align 4, !dbg !4732
  %call = call %struct.resource* @pci_bus_resource_n(%struct.pci_bus* %1, i32 %2) #8, !dbg !4732
  store %struct.resource* %call, %struct.resource** %r, align 8, !dbg !4732
  %tobool = icmp ne %struct.resource* %call, null, !dbg !4732
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4732

lor.rhs:                                          ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !4732
  %cmp = icmp slt i32 %3, 4, !dbg !4732
  br label %lor.end, !dbg !4732

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %4 = phi i1 [ true, %for.cond ], [ %cmp, %lor.rhs ]
  br i1 %4, label %for.body, label %for.end, !dbg !4730

for.body:                                         ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i64* %min_used, metadata !4734, metadata !DIExpression()), !dbg !4736
  %5 = load i64, i64* %min.addr, align 8, !dbg !4737
  store i64 %5, i64* %min_used, align 8, !dbg !4736
  %6 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4738
  %tobool1 = icmp ne %struct.resource* %6, null, !dbg !4738
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4740

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4741

if.end:                                           ; preds = %for.body
  %7 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4742
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !4744
  %8 = load i64, i64* %flags, align 8, !dbg !4744
  %9 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4745
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 3, !dbg !4746
  %10 = load i64, i64* %flags2, align 8, !dbg !4746
  %xor = xor i64 %8, %10, !dbg !4747
  %11 = load i64, i64* %type_mask.addr, align 8, !dbg !4748
  %and = and i64 %xor, %11, !dbg !4749
  %tobool3 = icmp ne i64 %and, 0, !dbg !4749
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4750

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !4751

if.end5:                                          ; preds = %if.end
  %12 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4752
  %flags6 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !4754
  %13 = load i64, i64* %flags6, align 8, !dbg !4754
  %and7 = and i64 %13, 8192, !dbg !4755
  %tobool8 = icmp ne i64 %and7, 0, !dbg !4755
  br i1 %tobool8, label %land.lhs.true, label %if.end13, !dbg !4756

land.lhs.true:                                    ; preds = %if.end5
  %14 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4757
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 3, !dbg !4758
  %15 = load i64, i64* %flags9, align 8, !dbg !4758
  %and10 = and i64 %15, 8192, !dbg !4759
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4759
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4760

if.then12:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !4761

if.end13:                                         ; preds = %land.lhs.true, %if.end5
  %16 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4762
  %17 = bitcast %struct.resource* %avail to i8*, !dbg !4763
  %18 = bitcast %struct.resource* %16 to i8*, !dbg !4763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 64, i1 false), !dbg !4763
  %19 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4764
  %20 = load %struct.pci_bus_region*, %struct.pci_bus_region** %region.addr, align 8, !dbg !4765
  call void @pci_clip_resource_to_region(%struct.pci_bus* %19, %struct.resource* %avail, %struct.pci_bus_region* %20) #8, !dbg !4766
  %start = getelementptr inbounds %struct.resource, %struct.resource* %avail, i32 0, i32 0, !dbg !4767
  %21 = load i64, i64* %start, align 8, !dbg !4767
  %tobool14 = icmp ne i64 %21, 0, !dbg !4769
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4770

if.then15:                                        ; preds = %if.end13
  %start16 = getelementptr inbounds %struct.resource, %struct.resource* %avail, i32 0, i32 0, !dbg !4771
  %22 = load i64, i64* %start16, align 8, !dbg !4771
  store i64 %22, i64* %min_used, align 8, !dbg !4772
  br label %if.end17, !dbg !4773

if.end17:                                         ; preds = %if.then15, %if.end13
  %end = getelementptr inbounds %struct.resource, %struct.resource* %avail, i32 0, i32 1, !dbg !4774
  %23 = load i64, i64* %end, align 8, !dbg !4774
  store i64 %23, i64* %max, align 8, !dbg !4775
  %24 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4776
  %25 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4777
  %26 = load i64, i64* %size.addr, align 8, !dbg !4778
  %27 = load i64, i64* %min_used, align 8, !dbg !4779
  %28 = load i64, i64* %max, align 8, !dbg !4780
  %29 = load i64, i64* %align.addr, align 8, !dbg !4781
  %30 = load i64 (i8*, %struct.resource*, i64, i64)*, i64 (i8*, %struct.resource*, i64, i64)** %alignf.addr, align 8, !dbg !4782
  %31 = load i8*, i8** %alignf_data.addr, align 8, !dbg !4783
  %call18 = call i32 @allocate_resource(%struct.resource* %24, %struct.resource* %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 (i8*, %struct.resource*, i64, i64)* %30, i8* %31) #8, !dbg !4784
  store i32 %call18, i32* %ret, align 4, !dbg !4785
  %32 = load i32, i32* %ret, align 4, !dbg !4786
  %cmp19 = icmp eq i32 %32, 0, !dbg !4788
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4789

if.then20:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4790
  br label %return, !dbg !4790

if.end21:                                         ; preds = %if.end17
  br label %for.inc, !dbg !4791

for.inc:                                          ; preds = %if.end21, %if.then12, %if.then4, %if.then
  %33 = load i32, i32* %i, align 4, !dbg !4732
  %inc = add i32 %33, 1, !dbg !4732
  store i32 %inc, i32* %i, align 4, !dbg !4732
  br label %for.cond, !dbg !4732, !llvm.loop !4792

for.end:                                          ; preds = %lor.end
  store i32 -12, i32* %retval, align 4, !dbg !4794
  br label %return, !dbg !4794

return:                                           ; preds = %for.end, %if.then20
  %34 = load i32, i32* %retval, align 4, !dbg !4795
  ret i32 %34, !dbg !4795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @pci_bus_clip_resource(%struct.pci_dev* %dev, i32 %idx) #0 !dbg !4796 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.pci_dev*, align 8
  %idx.addr = alloca i32, align 4
  %bus = alloca %struct.pci_bus*, align 8
  %res = alloca %struct.resource*, align 8
  %orig_res = alloca %struct.resource, align 8
  %r = alloca %struct.resource*, align 8
  %i = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %__UNIQUE_ID___x241 = alloca i64, align 8
  %__UNIQUE_ID___y242 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x243 = alloca i64, align 8
  %__UNIQUE_ID___y244 = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4799, metadata !DIExpression()), !dbg !4800
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4805
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4806
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !4806
  store %struct.pci_bus* %1, %struct.pci_bus** %bus, align 8, !dbg !4804
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4807, metadata !DIExpression()), !dbg !4808
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4809
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !4810
  %3 = load i32, i32* %idx.addr, align 4, !dbg !4811
  %idxprom = sext i32 %3 to i64, !dbg !4809
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !4809
  store %struct.resource* %arrayidx, %struct.resource** %res, align 8, !dbg !4808
  call void @llvm.dbg.declare(metadata %struct.resource* %orig_res, metadata !4812, metadata !DIExpression()), !dbg !4813
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4814
  %5 = bitcast %struct.resource* %orig_res to i8*, !dbg !4815
  %6 = bitcast %struct.resource* %4 to i8*, !dbg !4815
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 64, i1 false), !dbg !4815
  call void @llvm.dbg.declare(metadata %struct.resource** %r, metadata !4816, metadata !DIExpression()), !dbg !4817
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4818, metadata !DIExpression()), !dbg !4819
  store i32 0, i32* %i, align 4, !dbg !4820
  br label %for.cond, !dbg !4820

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4822
  %8 = load i32, i32* %i, align 4, !dbg !4822
  %call = call %struct.resource* @pci_bus_resource_n(%struct.pci_bus* %7, i32 %8) #8, !dbg !4822
  store %struct.resource* %call, %struct.resource** %r, align 8, !dbg !4822
  %tobool = icmp ne %struct.resource* %call, null, !dbg !4822
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !4822

lor.rhs:                                          ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !4822
  %cmp = icmp slt i32 %9, 4, !dbg !4822
  br label %lor.end, !dbg !4822

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %10 = phi i1 [ true, %for.cond ], [ %cmp, %lor.rhs ]
  br i1 %10, label %for.body, label %for.end, !dbg !4820

for.body:                                         ; preds = %lor.end
  call void @llvm.dbg.declare(metadata i64* %start, metadata !4824, metadata !DIExpression()), !dbg !4826
  call void @llvm.dbg.declare(metadata i64* %end, metadata !4827, metadata !DIExpression()), !dbg !4828
  %11 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4829
  %tobool2 = icmp ne %struct.resource* %11, null, !dbg !4829
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4831

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4832

if.end:                                           ; preds = %for.body
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4833
  %call3 = call i64 @resource_type(%struct.resource* %12) #8, !dbg !4835
  %13 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4836
  %call4 = call i64 @resource_type(%struct.resource* %13) #8, !dbg !4837
  %cmp5 = icmp ne i64 %call3, %call4, !dbg !4838
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4839

if.then6:                                         ; preds = %if.end
  br label %for.inc, !dbg !4840

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x241, metadata !4841, metadata !DIExpression()), !dbg !4843
  %14 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4843
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0, !dbg !4843
  %15 = load i64, i64* %start8, align 8, !dbg !4843
  store i64 %15, i64* %__UNIQUE_ID___x241, align 8, !dbg !4843
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y242, metadata !4844, metadata !DIExpression()), !dbg !4843
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4843
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0, !dbg !4843
  %17 = load i64, i64* %start9, align 8, !dbg !4843
  store i64 %17, i64* %__UNIQUE_ID___y242, align 8, !dbg !4843
  %18 = load i64, i64* %__UNIQUE_ID___x241, align 8, !dbg !4843
  %19 = load i64, i64* %__UNIQUE_ID___y242, align 8, !dbg !4843
  %cmp10 = icmp ugt i64 %18, %19, !dbg !4843
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !4843

cond.true:                                        ; preds = %if.end7
  %20 = load i64, i64* %__UNIQUE_ID___x241, align 8, !dbg !4843
  br label %cond.end, !dbg !4843

cond.false:                                       ; preds = %if.end7
  %21 = load i64, i64* %__UNIQUE_ID___y242, align 8, !dbg !4843
  br label %cond.end, !dbg !4843

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !4843
  store i64 %cond, i64* %tmp, align 8, !dbg !4843
  %22 = load i64, i64* %tmp, align 8, !dbg !4843
  store i64 %22, i64* %start, align 8, !dbg !4845
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x243, metadata !4846, metadata !DIExpression()), !dbg !4848
  %23 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4848
  %end11 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1, !dbg !4848
  %24 = load i64, i64* %end11, align 8, !dbg !4848
  store i64 %24, i64* %__UNIQUE_ID___x243, align 8, !dbg !4848
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y244, metadata !4849, metadata !DIExpression()), !dbg !4848
  %25 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4848
  %end12 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 1, !dbg !4848
  %26 = load i64, i64* %end12, align 8, !dbg !4848
  store i64 %26, i64* %__UNIQUE_ID___y244, align 8, !dbg !4848
  %27 = load i64, i64* %__UNIQUE_ID___x243, align 8, !dbg !4848
  %28 = load i64, i64* %__UNIQUE_ID___y244, align 8, !dbg !4848
  %cmp14 = icmp ult i64 %27, %28, !dbg !4848
  br i1 %cmp14, label %cond.true15, label %cond.false16, !dbg !4848

cond.true15:                                      ; preds = %cond.end
  %29 = load i64, i64* %__UNIQUE_ID___x243, align 8, !dbg !4848
  br label %cond.end17, !dbg !4848

cond.false16:                                     ; preds = %cond.end
  %30 = load i64, i64* %__UNIQUE_ID___y244, align 8, !dbg !4848
  br label %cond.end17, !dbg !4848

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i64 [ %29, %cond.true15 ], [ %30, %cond.false16 ], !dbg !4848
  store i64 %cond18, i64* %tmp13, align 8, !dbg !4848
  %31 = load i64, i64* %tmp13, align 8, !dbg !4848
  store i64 %31, i64* %end, align 8, !dbg !4850
  %32 = load i64, i64* %start, align 8, !dbg !4851
  %33 = load i64, i64* %end, align 8, !dbg !4853
  %cmp19 = icmp ugt i64 %32, %33, !dbg !4854
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4855

if.then20:                                        ; preds = %cond.end17
  br label %for.inc, !dbg !4856

if.end21:                                         ; preds = %cond.end17
  %34 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4857
  %start22 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0, !dbg !4859
  %35 = load i64, i64* %start22, align 8, !dbg !4859
  %36 = load i64, i64* %start, align 8, !dbg !4860
  %cmp23 = icmp eq i64 %35, %36, !dbg !4861
  br i1 %cmp23, label %land.lhs.true, label %if.end27, !dbg !4862

land.lhs.true:                                    ; preds = %if.end21
  %37 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4863
  %end24 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1, !dbg !4864
  %38 = load i64, i64* %end24, align 8, !dbg !4864
  %39 = load i64, i64* %end, align 8, !dbg !4865
  %cmp25 = icmp eq i64 %38, %39, !dbg !4866
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !4867

if.then26:                                        ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !4868
  br label %return, !dbg !4868

if.end27:                                         ; preds = %land.lhs.true, %if.end21
  %40 = load i64, i64* %start, align 8, !dbg !4869
  %41 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4870
  %start28 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0, !dbg !4871
  store i64 %40, i64* %start28, align 8, !dbg !4872
  %42 = load i64, i64* %end, align 8, !dbg !4873
  %43 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4874
  %end29 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1, !dbg !4875
  store i64 %42, i64* %end29, align 8, !dbg !4876
  %44 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4877
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 3, !dbg !4878
  %45 = load i64, i64* %flags, align 8, !dbg !4879
  %and = and i64 %45, -536870913, !dbg !4879
  store i64 %and, i64* %flags, align 8, !dbg !4879
  %flags30 = getelementptr inbounds %struct.resource, %struct.resource* %orig_res, i32 0, i32 3, !dbg !4880
  %46 = load i64, i64* %flags30, align 8, !dbg !4881
  %and31 = and i64 %46, -536870913, !dbg !4881
  store i64 %and31, i64* %flags30, align 8, !dbg !4881
  %47 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4882
  %dev32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 41, !dbg !4882
  %48 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4882
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %orig_res, %struct.resource* %48) #9, !dbg !4882
  store i1 true, i1* %retval, align 1, !dbg !4883
  br label %return, !dbg !4883

for.inc:                                          ; preds = %if.then20, %if.then6, %if.then
  %49 = load i32, i32* %i, align 4, !dbg !4822
  %inc = add i32 %49, 1, !dbg !4822
  store i32 %inc, i32* %i, align 4, !dbg !4822
  br label %for.cond, !dbg !4822, !llvm.loop !4884

for.end:                                          ; preds = %lor.end
  store i1 false, i1* %retval, align 1, !dbg !4886
  br label %return, !dbg !4886

return:                                           ; preds = %for.end, %if.end27, %if.then26
  %50 = load i1, i1* %retval, align 1, !dbg !4887
  ret i1 %50, !dbg !4887
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local void @pcibios_resource_survey_bus(%struct.pci_bus* %bus) #0 !dbg !4888 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  ret void, !dbg !4891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local void @pcibios_bus_add_device(%struct.pci_dev* %pdev) #0 !dbg !4892 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  ret void, !dbg !4895
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_bus_add_device(%struct.pci_dev* %dev) #0 !dbg !4896 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %retval = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !4899, metadata !DIExpression()), !dbg !4900
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4901
  call void @pcibios_bus_add_device(%struct.pci_dev* %0) #8, !dbg !4902
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4903
  call void @pci_fixup_device(i32 2, %struct.pci_dev* %1) #8, !dbg !4904
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4905
  %call = call i32 @pci_create_sysfs_dev_files(%struct.pci_dev* %2) #8, !dbg !4906
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4907
  %call1 = call i32 @pci_proc_attach_device(%struct.pci_dev* %3) #8, !dbg !4908
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4909
  call void @pci_bridge_d3_update(%struct.pci_dev* %4) #8, !dbg !4910
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4911
  %match_driver = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 45, !dbg !4912
  store i8 1, i8* %match_driver, align 8, !dbg !4913
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4914
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 41, !dbg !4915
  %call3 = call i32 @device_attach(%struct.device* %dev2) #8, !dbg !4916
  store i32 %call3, i32* %retval, align 4, !dbg !4917
  %7 = load i32, i32* %retval, align 4, !dbg !4918
  %cmp = icmp slt i32 %7, 0, !dbg !4920
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4921

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %retval, align 4, !dbg !4922
  %cmp4 = icmp ne i32 %8, -517, !dbg !4923
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4924

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4925
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4925
  %10 = load i32, i32* %retval, align 4, !dbg !4925
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %10) #9, !dbg !4925
  br label %if.end, !dbg !4925

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4926
  call void @pci_dev_assign_added(%struct.pci_dev* %11, i1 zeroext true) #8, !dbg !4927
  ret void, !dbg !4928
}

; Function Attrs: noredzone
declare dso_local void @pci_fixup_device(i32, %struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_create_sysfs_dev_files(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_proc_attach_device(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @pci_bridge_d3_update(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_dev_assign_added(%struct.pci_dev* %dev, i1 zeroext %added) #0 !dbg !4929 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4932, metadata !DIExpression()), !dbg !4939
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4941, metadata !DIExpression()), !dbg !4942
  %value.addr.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr.i, metadata !4943, metadata !DIExpression()), !dbg !4944
  %dev.addr = alloca %struct.pci_dev*, align 8
  %added.addr = alloca i8, align 1
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  %frombool = zext i1 %added to i8
  store i8 %frombool, i8* %added.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %added.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4949
  %priv_flags = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 68, !dbg !4950
  %1 = load i8, i8* %added.addr, align 1, !dbg !4951
  %tobool = trunc i8 %1 to i1, !dbg !4951
  store i64 0, i64* %nr.addr.i, align 8
  store i64* %priv_flags, i64** %addr.addr.i, align 8
  %frombool.i = zext i1 %tobool to i8
  store i8 %frombool.i, i8* %value.addr.i, align 1
  %2 = load i8, i8* %value.addr.i, align 1, !dbg !4952
  %tobool.i = trunc i8 %2 to i1, !dbg !4952
  br i1 %tobool.i, label %if.then.i, label %if.else.i, !dbg !4954

if.then.i:                                        ; preds = %entry
  %3 = load i64, i64* %nr.addr.i, align 8, !dbg !4955
  %4 = load i64*, i64** %addr.addr.i, align 8, !dbg !4956
  call void @set_bit(i64 %3, i64* %4) #12, !dbg !4957
  br label %assign_bit.exit, !dbg !4957

if.else.i:                                        ; preds = %entry
  %5 = load i64, i64* %nr.addr.i, align 8, !dbg !4958
  %6 = load i64*, i64** %addr.addr.i, align 8, !dbg !4959
  call void @clear_bit(i64 %5, i64* %6) #12, !dbg !4960
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_bus_add_devices(%struct.pci_bus* %bus) #0 !dbg !4962 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %child = alloca %struct.pci_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp7 = alloca %struct.pci_dev*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp14 = alloca %struct.pci_dev*, align 8
  %__mptr28 = alloca i8*, align 8
  %tmp33 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4967, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %child, metadata !4969, metadata !DIExpression()), !dbg !4970
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4971, metadata !DIExpression()), !dbg !4974
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4974
  %devices = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 3, !dbg !4974
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !4974
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4974
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4974
  store i8* %2, i8** %__mptr, align 8, !dbg !4974
  br label %do.body, !dbg !4974

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4975

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4974
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4974
  %4 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !4974
  store %struct.pci_dev* %4, %struct.pci_dev** %tmp, align 8, !dbg !4975
  %5 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !4974
  store %struct.pci_dev* %5, %struct.pci_dev** %dev, align 8, !dbg !4977
  br label %for.cond, !dbg !4977

for.cond:                                         ; preds = %do.end6, %do.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4978
  %bus_list = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0, !dbg !4978
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4978
  %devices1 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 3, !dbg !4978
  %cmp = icmp eq %struct.list_head* %bus_list, %devices1, !dbg !4978
  %lnot = xor i1 %cmp, true, !dbg !4978
  br i1 %lnot, label %for.body, label %for.end, !dbg !4977

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4980
  %call = call zeroext i1 @pci_dev_is_added(%struct.pci_dev* %8) #8, !dbg !4983
  br i1 %call, label %if.then, label %if.end, !dbg !4984

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4985

if.end:                                           ; preds = %for.body
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4986
  call void @pci_bus_add_device(%struct.pci_dev* %9) #8, !dbg !4987
  br label %for.inc, !dbg !4988

for.inc:                                          ; preds = %if.end, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4989, metadata !DIExpression()), !dbg !4991
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4991
  %bus_list3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0, !dbg !4991
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list3, i32 0, i32 0, !dbg !4991
  %11 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !4991
  %12 = bitcast %struct.list_head* %11 to i8*, !dbg !4991
  store i8* %12, i8** %__mptr2, align 8, !dbg !4991
  br label %do.body5, !dbg !4991

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !4992

do.end6:                                          ; preds = %do.body5
  %13 = load i8*, i8** %__mptr2, align 8, !dbg !4991
  %add.ptr8 = getelementptr i8, i8* %13, i64 0, !dbg !4991
  %14 = bitcast i8* %add.ptr8 to %struct.pci_dev*, !dbg !4991
  store %struct.pci_dev* %14, %struct.pci_dev** %tmp7, align 8, !dbg !4992
  %15 = load %struct.pci_dev*, %struct.pci_dev** %tmp7, align 8, !dbg !4991
  store %struct.pci_dev* %15, %struct.pci_dev** %dev, align 8, !dbg !4978
  br label %for.cond, !dbg !4978, !llvm.loop !4994

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !4996, metadata !DIExpression()), !dbg !4999
  %16 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4999
  %devices10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 3, !dbg !4999
  %next11 = getelementptr inbounds %struct.list_head, %struct.list_head* %devices10, i32 0, i32 0, !dbg !4999
  %17 = load %struct.list_head*, %struct.list_head** %next11, align 8, !dbg !4999
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !4999
  store i8* %18, i8** %__mptr9, align 8, !dbg !4999
  br label %do.body12, !dbg !4999

do.body12:                                        ; preds = %for.end
  br label %do.end13, !dbg !5000

do.end13:                                         ; preds = %do.body12
  %19 = load i8*, i8** %__mptr9, align 8, !dbg !4999
  %add.ptr15 = getelementptr i8, i8* %19, i64 0, !dbg !4999
  %20 = bitcast i8* %add.ptr15 to %struct.pci_dev*, !dbg !4999
  store %struct.pci_dev* %20, %struct.pci_dev** %tmp14, align 8, !dbg !5000
  %21 = load %struct.pci_dev*, %struct.pci_dev** %tmp14, align 8, !dbg !4999
  store %struct.pci_dev* %21, %struct.pci_dev** %dev, align 8, !dbg !5002
  br label %for.cond16, !dbg !5002

for.cond16:                                       ; preds = %do.end32, %do.end13
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5003
  %bus_list17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0, !dbg !5003
  %23 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5003
  %devices18 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 3, !dbg !5003
  %cmp19 = icmp eq %struct.list_head* %bus_list17, %devices18, !dbg !5003
  %lnot20 = xor i1 %cmp19, true, !dbg !5003
  br i1 %lnot20, label %for.body21, label %for.end35, !dbg !5002

for.body21:                                       ; preds = %for.cond16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5005
  %call22 = call zeroext i1 @pci_dev_is_added(%struct.pci_dev* %24) #8, !dbg !5008
  br i1 %call22, label %if.end24, label %if.then23, !dbg !5009

if.then23:                                        ; preds = %for.body21
  br label %for.inc27, !dbg !5010

if.end24:                                         ; preds = %for.body21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5011
  %subordinate = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 2, !dbg !5012
  %26 = load %struct.pci_bus*, %struct.pci_bus** %subordinate, align 8, !dbg !5012
  store %struct.pci_bus* %26, %struct.pci_bus** %child, align 8, !dbg !5013
  %27 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !5014
  %tobool = icmp ne %struct.pci_bus* %27, null, !dbg !5014
  br i1 %tobool, label %if.then25, label %if.end26, !dbg !5016

if.then25:                                        ; preds = %if.end24
  %28 = load %struct.pci_bus*, %struct.pci_bus** %child, align 8, !dbg !5017
  call void @pci_bus_add_devices(%struct.pci_bus* %28) #8, !dbg !5018
  br label %if.end26, !dbg !5018

if.end26:                                         ; preds = %if.then25, %if.end24
  br label %for.inc27, !dbg !5019

for.inc27:                                        ; preds = %if.end26, %if.then23
  call void @llvm.dbg.declare(metadata i8** %__mptr28, metadata !5020, metadata !DIExpression()), !dbg !5022
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5022
  %bus_list29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0, !dbg !5022
  %next30 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list29, i32 0, i32 0, !dbg !5022
  %30 = load %struct.list_head*, %struct.list_head** %next30, align 8, !dbg !5022
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !5022
  store i8* %31, i8** %__mptr28, align 8, !dbg !5022
  br label %do.body31, !dbg !5022

do.body31:                                        ; preds = %for.inc27
  br label %do.end32, !dbg !5023

do.end32:                                         ; preds = %do.body31
  %32 = load i8*, i8** %__mptr28, align 8, !dbg !5022
  %add.ptr34 = getelementptr i8, i8* %32, i64 0, !dbg !5022
  %33 = bitcast i8* %add.ptr34 to %struct.pci_dev*, !dbg !5022
  store %struct.pci_dev* %33, %struct.pci_dev** %tmp33, align 8, !dbg !5023
  %34 = load %struct.pci_dev*, %struct.pci_dev** %tmp33, align 8, !dbg !5022
  store %struct.pci_dev* %34, %struct.pci_dev** %dev, align 8, !dbg !5003
  br label %for.cond16, !dbg !5003, !llvm.loop !5025

for.end35:                                        ; preds = %for.cond16
  ret void, !dbg !5027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @pci_dev_is_added(%struct.pci_dev* %dev) #0 !dbg !5028 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5035
  %priv_flags = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 68, !dbg !5036
  %call = call zeroext i1 @test_bit(i64 0, i64* %priv_flags) #8, !dbg !5037
  ret i1 %call, !dbg !5038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_walk_bus(%struct.pci_bus* %top, i32 (%struct.pci_dev*, i8*)* %cb, i8* %userdata) #0 !dbg !5039 {
entry:
  %top.addr = alloca %struct.pci_bus*, align 8
  %cb.addr = alloca i32 (%struct.pci_dev*, i8*)*, align 8
  %userdata.addr = alloca i8*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %bus = alloca %struct.pci_bus*, align 8
  %next = alloca %struct.list_head*, align 8
  %retval = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %top, %struct.pci_bus** %top.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %top.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  store i32 (%struct.pci_dev*, i8*)* %cb, i32 (%struct.pci_dev*, i8*)** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.pci_dev*, i8*)** %cb.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  store i8* %userdata, i8** %userdata.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %userdata.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5051, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata %struct.list_head** %next, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i32* %retval, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load %struct.pci_bus*, %struct.pci_bus** %top.addr, align 8, !dbg !5059
  store %struct.pci_bus* %0, %struct.pci_bus** %bus, align 8, !dbg !5060
  call void @down_read(%struct.rw_semaphore* @pci_bus_sem) #8, !dbg !5061
  %1 = load %struct.pci_bus*, %struct.pci_bus** %top.addr, align 8, !dbg !5062
  %devices = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 3, !dbg !5063
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %devices, i32 0, i32 0, !dbg !5064
  %2 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !5064
  store %struct.list_head* %2, %struct.list_head** %next, align 8, !dbg !5065
  br label %for.cond, !dbg !5066

for.cond:                                         ; preds = %if.end19, %if.end, %entry
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5067
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5072
  %devices2 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %4, i32 0, i32 3, !dbg !5073
  %cmp = icmp eq %struct.list_head* %3, %devices2, !dbg !5074
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5075

if.then:                                          ; preds = %for.cond
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5076
  %6 = load %struct.pci_bus*, %struct.pci_bus** %top.addr, align 8, !dbg !5079
  %cmp3 = icmp eq %struct.pci_bus* %5, %6, !dbg !5080
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !5081

if.then4:                                         ; preds = %if.then
  br label %for.end, !dbg !5082

if.end:                                           ; preds = %if.then
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5083
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 4, !dbg !5084
  %8 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !5084
  %bus_list = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0, !dbg !5085
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list, i32 0, i32 0, !dbg !5086
  %9 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !5086
  store %struct.list_head* %9, %struct.list_head** %next, align 8, !dbg !5087
  %10 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5088
  %self6 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 4, !dbg !5089
  %11 = load %struct.pci_dev*, %struct.pci_dev** %self6, align 8, !dbg !5089
  %bus7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 1, !dbg !5090
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus7, align 8, !dbg !5090
  store %struct.pci_bus* %12, %struct.pci_bus** %bus, align 8, !dbg !5091
  br label %for.cond, !dbg !5092, !llvm.loop !5093

if.end8:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5096, metadata !DIExpression()), !dbg !5098
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5098
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !5098
  store i8* %14, i8** %__mptr, align 8, !dbg !5098
  br label %do.body, !dbg !5098

do.body:                                          ; preds = %if.end8
  br label %do.end, !dbg !5099

do.end:                                           ; preds = %do.body
  %15 = load i8*, i8** %__mptr, align 8, !dbg !5098
  %add.ptr = getelementptr i8, i8* %15, i64 0, !dbg !5098
  %16 = bitcast i8* %add.ptr to %struct.pci_dev*, !dbg !5098
  store %struct.pci_dev* %16, %struct.pci_dev** %tmp, align 8, !dbg !5099
  %17 = load %struct.pci_dev*, %struct.pci_dev** %tmp, align 8, !dbg !5098
  store %struct.pci_dev* %17, %struct.pci_dev** %dev, align 8, !dbg !5101
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5102
  %subordinate = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 2, !dbg !5104
  %19 = load %struct.pci_bus*, %struct.pci_bus** %subordinate, align 8, !dbg !5104
  %tobool = icmp ne %struct.pci_bus* %19, null, !dbg !5102
  br i1 %tobool, label %if.then9, label %if.else, !dbg !5105

if.then9:                                         ; preds = %do.end
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5106
  %subordinate10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 2, !dbg !5108
  %21 = load %struct.pci_bus*, %struct.pci_bus** %subordinate10, align 8, !dbg !5108
  %devices11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 3, !dbg !5109
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %devices11, i32 0, i32 0, !dbg !5110
  %22 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !5110
  store %struct.list_head* %22, %struct.list_head** %next, align 8, !dbg !5111
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5112
  %subordinate13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 2, !dbg !5113
  %24 = load %struct.pci_bus*, %struct.pci_bus** %subordinate13, align 8, !dbg !5113
  store %struct.pci_bus* %24, %struct.pci_bus** %bus, align 8, !dbg !5114
  br label %if.end16, !dbg !5115

if.else:                                          ; preds = %do.end
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5116
  %bus_list14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0, !dbg !5117
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %bus_list14, i32 0, i32 0, !dbg !5118
  %26 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !5118
  store %struct.list_head* %26, %struct.list_head** %next, align 8, !dbg !5119
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %27 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %cb.addr, align 8, !dbg !5120
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5121
  %29 = load i8*, i8** %userdata.addr, align 8, !dbg !5122
  %call = call i32 %27(%struct.pci_dev* %28, i8* %29) #8, !dbg !5120
  store i32 %call, i32* %retval, align 4, !dbg !5123
  %30 = load i32, i32* %retval, align 4, !dbg !5124
  %tobool17 = icmp ne i32 %30, 0, !dbg !5124
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5126

if.then18:                                        ; preds = %if.end16
  br label %for.end, !dbg !5127

if.end19:                                         ; preds = %if.end16
  br label %for.cond, !dbg !5128, !llvm.loop !5093

for.end:                                          ; preds = %if.then18, %if.then4
  call void @up_read(%struct.rw_semaphore* @pci_bus_sem) #8, !dbg !5129
  ret void, !dbg !5130
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.pci_bus* @pci_bus_get(%struct.pci_bus* %bus) #0 !dbg !5131 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5134, metadata !DIExpression()), !dbg !5135
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5136
  %tobool = icmp ne %struct.pci_bus* %0, null, !dbg !5136
  br i1 %tobool, label %if.then, label %if.end, !dbg !5138

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5139
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 21, !dbg !5140
  %call = call %struct.device* @get_device(%struct.device* %dev) #8, !dbg !5141
  br label %if.end, !dbg !5141

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5142
  ret %struct.pci_bus* %2, !dbg !5143
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_bus_put(%struct.pci_bus* %bus) #0 !dbg !5144 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5147
  %tobool = icmp ne %struct.pci_bus* %0, null, !dbg !5147
  br i1 %tobool, label %if.then, label %if.end, !dbg !5149

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5150
  %dev = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %1, i32 0, i32 21, !dbg !5151
  call void @put_device(%struct.device* %dev) #8, !dbg !5152
  br label %if.end, !dbg !5152

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5153
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5154 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5158, metadata !DIExpression()), !dbg !5163
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5165, metadata !DIExpression()), !dbg !5166
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load i64, i64* %size.addr, align 8, !dbg !5169
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5171
  br i1 %1, label %if.then, label %if.end447, !dbg !5172

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5173
  %tobool = icmp ne i64 %2, 0, !dbg !5173
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5176

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5178
  %cmp = icmp ult i64 %3, 4096, !dbg !5180
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5181

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5182
  br label %return, !dbg !5182

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub = sub i64 %4, 1, !dbg !5183
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5183
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5183

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub4 = sub i64 %6, 1, !dbg !5183
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5183
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5183

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub6 = sub i64 %8, 1, !dbg !5183
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5183
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5183

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5183

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub9 = sub i64 %9, 1, !dbg !5183
  %and = and i64 %sub9, -9223372036854775808, !dbg !5183
  %tobool10 = icmp ne i64 %and, 0, !dbg !5183
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5183

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5183

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub13 = sub i64 %10, 1, !dbg !5183
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5183
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5183
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5183

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5183

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub18 = sub i64 %11, 1, !dbg !5183
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5183
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5183
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5183

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5183

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub23 = sub i64 %12, 1, !dbg !5183
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5183
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5183
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5183

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5183

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub28 = sub i64 %13, 1, !dbg !5183
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5183
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5183
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5183

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5183

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub33 = sub i64 %14, 1, !dbg !5183
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5183
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5183
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5183

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5183

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub38 = sub i64 %15, 1, !dbg !5183
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5183
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5183
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5183

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5183

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub43 = sub i64 %16, 1, !dbg !5183
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5183
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5183
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5183

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5183

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub48 = sub i64 %17, 1, !dbg !5183
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5183
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5183
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5183

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5183

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub53 = sub i64 %18, 1, !dbg !5183
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5183
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5183
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5183

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5183

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub58 = sub i64 %19, 1, !dbg !5183
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5183
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5183
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5183

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5183

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub63 = sub i64 %20, 1, !dbg !5183
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5183
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5183
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5183

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5183

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub68 = sub i64 %21, 1, !dbg !5183
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5183
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5183
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5183

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5183

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub73 = sub i64 %22, 1, !dbg !5183
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5183
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5183
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5183

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5183

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub78 = sub i64 %23, 1, !dbg !5183
  %and79 = and i64 %sub78, 562949953421312, !dbg !5183
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5183
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5183

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5183

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub83 = sub i64 %24, 1, !dbg !5183
  %and84 = and i64 %sub83, 281474976710656, !dbg !5183
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5183
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5183

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5183

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub88 = sub i64 %25, 1, !dbg !5183
  %and89 = and i64 %sub88, 140737488355328, !dbg !5183
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5183
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5183

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5183

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub93 = sub i64 %26, 1, !dbg !5183
  %and94 = and i64 %sub93, 70368744177664, !dbg !5183
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5183
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5183

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5183

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub98 = sub i64 %27, 1, !dbg !5183
  %and99 = and i64 %sub98, 35184372088832, !dbg !5183
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5183
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5183

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5183

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub103 = sub i64 %28, 1, !dbg !5183
  %and104 = and i64 %sub103, 17592186044416, !dbg !5183
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5183
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5183

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5183

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub108 = sub i64 %29, 1, !dbg !5183
  %and109 = and i64 %sub108, 8796093022208, !dbg !5183
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5183
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5183

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5183

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub113 = sub i64 %30, 1, !dbg !5183
  %and114 = and i64 %sub113, 4398046511104, !dbg !5183
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5183
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5183

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5183

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub118 = sub i64 %31, 1, !dbg !5183
  %and119 = and i64 %sub118, 2199023255552, !dbg !5183
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5183
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5183

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5183

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub123 = sub i64 %32, 1, !dbg !5183
  %and124 = and i64 %sub123, 1099511627776, !dbg !5183
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5183
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5183

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5183

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub128 = sub i64 %33, 1, !dbg !5183
  %and129 = and i64 %sub128, 549755813888, !dbg !5183
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5183
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5183

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5183

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub133 = sub i64 %34, 1, !dbg !5183
  %and134 = and i64 %sub133, 274877906944, !dbg !5183
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5183
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5183

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5183

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub138 = sub i64 %35, 1, !dbg !5183
  %and139 = and i64 %sub138, 137438953472, !dbg !5183
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5183
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5183

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5183

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub143 = sub i64 %36, 1, !dbg !5183
  %and144 = and i64 %sub143, 68719476736, !dbg !5183
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5183
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5183

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5183

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub148 = sub i64 %37, 1, !dbg !5183
  %and149 = and i64 %sub148, 34359738368, !dbg !5183
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5183
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5183

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5183

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub153 = sub i64 %38, 1, !dbg !5183
  %and154 = and i64 %sub153, 17179869184, !dbg !5183
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5183
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5183

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5183

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub158 = sub i64 %39, 1, !dbg !5183
  %and159 = and i64 %sub158, 8589934592, !dbg !5183
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5183
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5183

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5183

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub163 = sub i64 %40, 1, !dbg !5183
  %and164 = and i64 %sub163, 4294967296, !dbg !5183
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5183
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5183

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5183

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub168 = sub i64 %41, 1, !dbg !5183
  %and169 = and i64 %sub168, 2147483648, !dbg !5183
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5183
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5183

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5183

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub173 = sub i64 %42, 1, !dbg !5183
  %and174 = and i64 %sub173, 1073741824, !dbg !5183
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5183
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5183

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5183

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub178 = sub i64 %43, 1, !dbg !5183
  %and179 = and i64 %sub178, 536870912, !dbg !5183
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5183
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5183

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5183

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub183 = sub i64 %44, 1, !dbg !5183
  %and184 = and i64 %sub183, 268435456, !dbg !5183
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5183
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5183

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5183

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub188 = sub i64 %45, 1, !dbg !5183
  %and189 = and i64 %sub188, 134217728, !dbg !5183
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5183
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5183

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5183

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub193 = sub i64 %46, 1, !dbg !5183
  %and194 = and i64 %sub193, 67108864, !dbg !5183
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5183
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5183

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5183

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub198 = sub i64 %47, 1, !dbg !5183
  %and199 = and i64 %sub198, 33554432, !dbg !5183
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5183
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5183

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5183

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub203 = sub i64 %48, 1, !dbg !5183
  %and204 = and i64 %sub203, 16777216, !dbg !5183
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5183
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5183

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5183

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub208 = sub i64 %49, 1, !dbg !5183
  %and209 = and i64 %sub208, 8388608, !dbg !5183
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5183
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5183

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5183

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub213 = sub i64 %50, 1, !dbg !5183
  %and214 = and i64 %sub213, 4194304, !dbg !5183
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5183
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5183

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5183

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub218 = sub i64 %51, 1, !dbg !5183
  %and219 = and i64 %sub218, 2097152, !dbg !5183
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5183
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5183

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5183

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub223 = sub i64 %52, 1, !dbg !5183
  %and224 = and i64 %sub223, 1048576, !dbg !5183
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5183
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5183

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5183

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub228 = sub i64 %53, 1, !dbg !5183
  %and229 = and i64 %sub228, 524288, !dbg !5183
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5183
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5183

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5183

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub233 = sub i64 %54, 1, !dbg !5183
  %and234 = and i64 %sub233, 262144, !dbg !5183
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5183
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5183

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5183

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub238 = sub i64 %55, 1, !dbg !5183
  %and239 = and i64 %sub238, 131072, !dbg !5183
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5183
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5183

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5183

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub243 = sub i64 %56, 1, !dbg !5183
  %and244 = and i64 %sub243, 65536, !dbg !5183
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5183
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5183

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5183

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub248 = sub i64 %57, 1, !dbg !5183
  %and249 = and i64 %sub248, 32768, !dbg !5183
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5183
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5183

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5183

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub253 = sub i64 %58, 1, !dbg !5183
  %and254 = and i64 %sub253, 16384, !dbg !5183
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5183
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5183

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5183

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub258 = sub i64 %59, 1, !dbg !5183
  %and259 = and i64 %sub258, 8192, !dbg !5183
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5183
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5183

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5183

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub263 = sub i64 %60, 1, !dbg !5183
  %and264 = and i64 %sub263, 4096, !dbg !5183
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5183
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5183

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5183

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub268 = sub i64 %61, 1, !dbg !5183
  %and269 = and i64 %sub268, 2048, !dbg !5183
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5183
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5183

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5183

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub273 = sub i64 %62, 1, !dbg !5183
  %and274 = and i64 %sub273, 1024, !dbg !5183
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5183
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5183

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5183

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub278 = sub i64 %63, 1, !dbg !5183
  %and279 = and i64 %sub278, 512, !dbg !5183
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5183
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5183

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5183

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub283 = sub i64 %64, 1, !dbg !5183
  %and284 = and i64 %sub283, 256, !dbg !5183
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5183
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5183

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5183

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub288 = sub i64 %65, 1, !dbg !5183
  %and289 = and i64 %sub288, 128, !dbg !5183
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5183
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5183

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5183

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub293 = sub i64 %66, 1, !dbg !5183
  %and294 = and i64 %sub293, 64, !dbg !5183
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5183
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5183

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5183

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub298 = sub i64 %67, 1, !dbg !5183
  %and299 = and i64 %sub298, 32, !dbg !5183
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5183
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5183

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5183

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub303 = sub i64 %68, 1, !dbg !5183
  %and304 = and i64 %sub303, 16, !dbg !5183
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5183
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5183

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5183

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub308 = sub i64 %69, 1, !dbg !5183
  %and309 = and i64 %sub308, 8, !dbg !5183
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5183
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5183

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5183

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub313 = sub i64 %70, 1, !dbg !5183
  %and314 = and i64 %sub313, 4, !dbg !5183
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5183
  %71 = zext i1 %tobool315 to i64, !dbg !5183
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5183
  br label %cond.end, !dbg !5183

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5183
  br label %cond.end317, !dbg !5183

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5183
  br label %cond.end319, !dbg !5183

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5183
  br label %cond.end321, !dbg !5183

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5183
  br label %cond.end323, !dbg !5183

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5183
  br label %cond.end325, !dbg !5183

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5183
  br label %cond.end327, !dbg !5183

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5183
  br label %cond.end329, !dbg !5183

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5183
  br label %cond.end331, !dbg !5183

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5183
  br label %cond.end333, !dbg !5183

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5183
  br label %cond.end335, !dbg !5183

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5183
  br label %cond.end337, !dbg !5183

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5183
  br label %cond.end339, !dbg !5183

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5183
  br label %cond.end341, !dbg !5183

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5183
  br label %cond.end343, !dbg !5183

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5183
  br label %cond.end345, !dbg !5183

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5183
  br label %cond.end347, !dbg !5183

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5183
  br label %cond.end349, !dbg !5183

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5183
  br label %cond.end351, !dbg !5183

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5183
  br label %cond.end353, !dbg !5183

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5183
  br label %cond.end355, !dbg !5183

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5183
  br label %cond.end357, !dbg !5183

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5183
  br label %cond.end359, !dbg !5183

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5183
  br label %cond.end361, !dbg !5183

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5183
  br label %cond.end363, !dbg !5183

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5183
  br label %cond.end365, !dbg !5183

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5183
  br label %cond.end367, !dbg !5183

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5183
  br label %cond.end369, !dbg !5183

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5183
  br label %cond.end371, !dbg !5183

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5183
  br label %cond.end373, !dbg !5183

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5183
  br label %cond.end375, !dbg !5183

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5183
  br label %cond.end377, !dbg !5183

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5183
  br label %cond.end379, !dbg !5183

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5183
  br label %cond.end381, !dbg !5183

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5183
  br label %cond.end383, !dbg !5183

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5183
  br label %cond.end385, !dbg !5183

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5183
  br label %cond.end387, !dbg !5183

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5183
  br label %cond.end389, !dbg !5183

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5183
  br label %cond.end391, !dbg !5183

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5183
  br label %cond.end393, !dbg !5183

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5183
  br label %cond.end395, !dbg !5183

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5183
  br label %cond.end397, !dbg !5183

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5183
  br label %cond.end399, !dbg !5183

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5183
  br label %cond.end401, !dbg !5183

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5183
  br label %cond.end403, !dbg !5183

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5183
  br label %cond.end405, !dbg !5183

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5183
  br label %cond.end407, !dbg !5183

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5183
  br label %cond.end409, !dbg !5183

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5183
  br label %cond.end411, !dbg !5183

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5183
  br label %cond.end413, !dbg !5183

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5183
  br label %cond.end415, !dbg !5183

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5183
  br label %cond.end417, !dbg !5183

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5183
  br label %cond.end419, !dbg !5183

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5183
  br label %cond.end421, !dbg !5183

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5183
  br label %cond.end423, !dbg !5183

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5183
  br label %cond.end425, !dbg !5183

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5183
  br label %cond.end427, !dbg !5183

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5183
  br label %cond.end429, !dbg !5183

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5183
  br label %cond.end431, !dbg !5183

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5183
  br label %cond.end433, !dbg !5183

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5183
  br label %cond.end435, !dbg !5183

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5183
  br label %cond.end437, !dbg !5183

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5183
  br label %cond.end440, !dbg !5183

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5183

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5183
  br label %cond.end444, !dbg !5183

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5183
  %sub443 = sub i64 %72, 1, !dbg !5183
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5183
  br label %cond.end444, !dbg !5183

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5183
  %sub446 = sub i32 %cond445, 12, !dbg !5184
  %add = add i32 %sub446, 1, !dbg !5185
  store i32 %add, i32* %retval, align 4, !dbg !5186
  br label %return, !dbg !5186

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5187
  %dec = add i64 %73, -1, !dbg !5187
  store i64 %dec, i64* %size.addr, align 8, !dbg !5187
  %74 = load i64, i64* %size.addr, align 8, !dbg !5188
  %shr = lshr i64 %74, 12, !dbg !5188
  store i64 %shr, i64* %size.addr, align 8, !dbg !5188
  %75 = load i64, i64* %size.addr, align 8, !dbg !5189
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5166
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5190
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5191
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5190, !srcloc !5192
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5190
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5193
  %add.i = add i32 %79, 1, !dbg !5194
  store i32 %add.i, i32* %retval, align 4, !dbg !5195
  br label %return, !dbg !5195

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5196
  ret i32 %80, !dbg !5196
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5197 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5158, metadata !DIExpression()), !dbg !5201
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5165, metadata !DIExpression()), !dbg !5203
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load i64, i64* %n.addr, align 8, !dbg !5206
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5203
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5207
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5208
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5207, !srcloc !5192
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5207
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5209
  %add.i = add i32 %4, 1, !dbg !5210
  %sub = sub i32 %add.i, 1, !dbg !5211
  ret i32 %sub, !dbg !5212
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5213 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5225
  ret i8* %0, !dbg !5226
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5227 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5236
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5238
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5239
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5240
  br i1 %call, label %if.end, label %if.then, !dbg !5241

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5242

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5243
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5244
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5245
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5246
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5247
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5248
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5249
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5250
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5251
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5252
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5253
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5254
  br label %do.body, !dbg !5255

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5256

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5258

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5256

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5260
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5260
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5260
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5260
  br label %do.end7, !dbg !5260

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5256

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5263 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  ret i1 true, !dbg !5272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5273 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5276
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5278
  br i1 %call, label %if.end, label %if.then, !dbg !5279

if.then:                                          ; preds = %entry
  br label %return, !dbg !5280

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5281
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5282
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5282
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5283
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5284
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5284
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5285
  br label %return, !dbg !5286

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5286
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5287 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5290, metadata !DIExpression()), !dbg !5291
  ret i1 true, !dbg !5292
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5293 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5294, metadata !DIExpression()), !dbg !5295
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5296, metadata !DIExpression()), !dbg !5297
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5298
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5299
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5300
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5301
  br label %do.body, !dbg !5302

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5303

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5305

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5303

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5307
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5307
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5307
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5307
  br label %do.end5, !dbg !5307

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5303

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_clip_resource_to_region(%struct.pci_bus* %bus, %struct.resource* %res, %struct.pci_bus_region* %region) #0 !dbg !5310 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %region.addr = alloca %struct.pci_bus_region*, align 8
  %r = alloca %struct.pci_bus_region, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store %struct.pci_bus_region* %region, %struct.pci_bus_region** %region.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region** %region.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %r, metadata !5319, metadata !DIExpression()), !dbg !5320
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5321
  %1 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5322
  call void @pcibios_resource_to_bus(%struct.pci_bus* %0, %struct.pci_bus_region* %r, %struct.resource* %1) #8, !dbg !5323
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 0, !dbg !5324
  %2 = load i64, i64* %start, align 8, !dbg !5324
  %3 = load %struct.pci_bus_region*, %struct.pci_bus_region** %region.addr, align 8, !dbg !5326
  %start1 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %3, i32 0, i32 0, !dbg !5327
  %4 = load i64, i64* %start1, align 8, !dbg !5327
  %cmp = icmp ult i64 %2, %4, !dbg !5328
  br i1 %cmp, label %if.then, label %if.end, !dbg !5329

if.then:                                          ; preds = %entry
  %5 = load %struct.pci_bus_region*, %struct.pci_bus_region** %region.addr, align 8, !dbg !5330
  %start2 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0, !dbg !5331
  %6 = load i64, i64* %start2, align 8, !dbg !5331
  %start3 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 0, !dbg !5332
  store i64 %6, i64* %start3, align 8, !dbg !5333
  br label %if.end, !dbg !5334

if.end:                                           ; preds = %if.then, %entry
  %end = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 1, !dbg !5335
  %7 = load i64, i64* %end, align 8, !dbg !5335
  %8 = load %struct.pci_bus_region*, %struct.pci_bus_region** %region.addr, align 8, !dbg !5337
  %end4 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %8, i32 0, i32 1, !dbg !5338
  %9 = load i64, i64* %end4, align 8, !dbg !5338
  %cmp5 = icmp ugt i64 %7, %9, !dbg !5339
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !5340

if.then6:                                         ; preds = %if.end
  %10 = load %struct.pci_bus_region*, %struct.pci_bus_region** %region.addr, align 8, !dbg !5341
  %end7 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %10, i32 0, i32 1, !dbg !5342
  %11 = load i64, i64* %end7, align 8, !dbg !5342
  %end8 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 1, !dbg !5343
  store i64 %11, i64* %end8, align 8, !dbg !5344
  br label %if.end9, !dbg !5345

if.end9:                                          ; preds = %if.then6, %if.end
  %end10 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 1, !dbg !5346
  %12 = load i64, i64* %end10, align 8, !dbg !5346
  %start11 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %r, i32 0, i32 0, !dbg !5348
  %13 = load i64, i64* %start11, align 8, !dbg !5348
  %cmp12 = icmp ult i64 %12, %13, !dbg !5349
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !5350

if.then13:                                        ; preds = %if.end9
  %14 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5351
  %start14 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0, !dbg !5352
  %15 = load i64, i64* %start14, align 8, !dbg !5352
  %sub = sub i64 %15, 1, !dbg !5353
  %16 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5354
  %end15 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1, !dbg !5355
  store i64 %sub, i64* %end15, align 8, !dbg !5356
  br label %if.end16, !dbg !5354

if.else:                                          ; preds = %if.end9
  %17 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !5357
  %18 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !5358
  call void @pcibios_bus_to_resource(%struct.pci_bus* %17, %struct.resource* %18, %struct.pci_bus_region* %r) #8, !dbg !5359
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  ret void, !dbg !5360
}

; Function Attrs: noredzone
declare dso_local i32 @allocate_resource(%struct.resource*, %struct.resource*, i64, i64, i64, i64, i64 (i8*, %struct.resource*, i64, i64)*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local void @pcibios_bus_to_resource(%struct.pci_bus*, %struct.resource*, %struct.pci_bus_region*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !5361 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5365, metadata !DIExpression()), !dbg !5367
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5369, metadata !DIExpression()), !dbg !5370
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5371, metadata !DIExpression()), !dbg !5379
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5381, metadata !DIExpression()), !dbg !5382
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5387
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5388
  %div = sdiv i64 %1, 64, !dbg !5388
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5389
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5387
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5390
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5391
  %conv.i = trunc i64 %4 to i32, !dbg !5391
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5392
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5393
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5393
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !5393
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5394
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5395
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5396
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5398
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5399

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5400
  %12 = bitcast i64* %11 to i8*, !dbg !5400
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5400
  %shr.i = ashr i64 %13, 3, !dbg !5400
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5400
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5402
  %and.i = and i64 %14, 7, !dbg !5402
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5402
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5402
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !5403, !srcloc !5404
  br label %arch_set_bit.exit, !dbg !5405

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5406
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5408
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5409, !srcloc !5410
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5411
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !5412 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5413, metadata !DIExpression()), !dbg !5415
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5417, metadata !DIExpression()), !dbg !5418
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5371, metadata !DIExpression()), !dbg !5419
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5381, metadata !DIExpression()), !dbg !5421
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5422, metadata !DIExpression()), !dbg !5423
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5424, metadata !DIExpression()), !dbg !5425
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5426
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5427
  %div = sdiv i64 %1, 64, !dbg !5427
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5428
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5426
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5429
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5430
  %conv.i = trunc i64 %4 to i32, !dbg !5430
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5431
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5432
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5432
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !5432
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5433
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5434
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5435
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !5437
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5438

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5439
  %12 = bitcast i64* %11 to i8*, !dbg !5439
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5439
  %shr.i = ashr i64 %13, 3, !dbg !5439
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5439
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5441
  %and.i = and i64 %14, 7, !dbg !5441
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5441
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5441
  %neg.i = xor i32 %shl.i, -1, !dbg !5442
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !5443, !srcloc !5444
  br label %arch_clear_bit.exit, !dbg !5445

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5446
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5448
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !5449, !srcloc !5450
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5451
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5452 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  ret i1 true, !dbg !5460
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5461 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5465, metadata !DIExpression()), !dbg !5466
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5469, metadata !DIExpression()), !dbg !5470
  ret void, !dbg !5471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5472 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5478, metadata !DIExpression()), !dbg !5480
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5482, metadata !DIExpression()), !dbg !5483
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5484, metadata !DIExpression()), !dbg !5485
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5486, metadata !DIExpression()), !dbg !5488
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5490, metadata !DIExpression()), !dbg !5491
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5492, metadata !DIExpression()), !dbg !5494
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5496, metadata !DIExpression()), !dbg !5497
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5498, metadata !DIExpression()), !dbg !5499
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5502
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5503
  %div = sdiv i64 %1, 64, !dbg !5503
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5504
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5502
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5505
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5506
  %conv.i = trunc i64 %4 to i32, !dbg !5506
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5507
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5508
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5508
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5508
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5509
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5509
  br i1 %8, label %cond.true, label %cond.false, !dbg !5509

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5509
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5509
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5510
  %and.i = and i64 %11, 63, !dbg !5511
  %shl.i = shl i64 1, %and.i, !dbg !5512
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5513
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5514
  %shr.i = ashr i64 %13, 6, !dbg !5515
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5513
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5513
  %and1.i = and i64 %shl.i, %14, !dbg !5516
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5517
  %conv = zext i1 %cmp.i to i32, !dbg !5509
  br label %cond.end, !dbg !5509

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5509
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5509
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5518
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5519
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #10, !dbg !5520, !srcloc !5521
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5520
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5522
  %tobool.i = trunc i8 %20 to i1, !dbg !5522
  %conv2 = zext i1 %tobool.i to i32, !dbg !5509
  br label %cond.end, !dbg !5509

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5509
  %tobool = icmp ne i32 %cond, 0, !dbg !5509
  ret i1 %tobool, !dbg !5523
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5524 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5525, metadata !DIExpression()), !dbg !5526
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5527, metadata !DIExpression()), !dbg !5528
  ret i1 true, !dbg !5529
}

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
!llvm.module.flags = !{!4068, !4069, !4070, !4071}
!llvm.ident = !{!4072}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_high", scope: !2, file: !3, line: 126, type: !4061, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !116, globals: !4058, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/bus.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !93, !98, !109}
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 44, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_fixup_pass", file: !99, line: 1903, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108}
!101 = !DIEnumerator(name: "pci_fixup_early", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "pci_fixup_header", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "pci_fixup_final", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "pci_fixup_enable", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "pci_fixup_resume", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "pci_fixup_suspend", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "pci_fixup_resume_early", value: 6, isUnsigned: true)
!108 = !DIEnumerator(name: "pci_fixup_suspend_late", value: 7, isUnsigned: true)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !110, line: 305, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!116 = !{!117, !119, !120, !154, !162, !4053, !4055, !4057, !3859}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !118, line: 148, baseType: !7)
!118 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_resource", file: !99, line: 597, size: 256, elements: !122)
!122 = !{!123, !129, !153}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !121, file: !99, line: 598, baseType: !124, size: 128)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !118, line: 178, size: 128, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !118, line: 179, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !118, line: 179, baseType: !127, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !121, file: !99, line: 599, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !132, line: 20, size: 512, elements: !133)
!132 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !142, !143, !147, !149, !150, !151, !152}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !131, file: !132, line: 21, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !118, line: 158, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !118, line: 153, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !138, line: 23, baseType: !139)
!138 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !140, line: 31, baseType: !141)
!140 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!141 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !131, file: !132, line: 22, baseType: !135, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !132, line: 23, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!146 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !131, file: !132, line: 24, baseType: !148, size: 64, offset: 192)
!148 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !131, file: !132, line: 25, baseType: !148, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !131, file: !132, line: 26, baseType: !130, size: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !131, file: !132, line: 26, baseType: !130, size: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !131, file: !132, line: 26, baseType: !130, size: 64, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !99, line: 600, baseType: !7, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !156, line: 23, size: 768, elements: !157)
!156 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/lizy2001/genbc/linux")
!157 = !{!158, !159, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !155, file: !156, line: 24, baseType: !124, size: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !155, file: !156, line: 25, baseType: !130, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !155, file: !156, line: 26, baseType: !135, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !155, file: !156, line: 27, baseType: !131, size: 512, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !99, line: 309, size: 19264, elements: !164)
!164 = !{!165, !166, !3829, !3830, !3831, !3832, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3860, !3925, !3926, !3927, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4001, !4002, !4004, !4005, !4006, !4007, !4009, !4010, !4011, !4014, !4046, !4047, !4048, !4049, !4050, !4051, !4052}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !163, file: !99, line: 310, baseType: !124, size: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !163, file: !99, line: 311, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !99, line: 605, size: 8064, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !180, !181, !182, !210, !213, !214, !218, !220, !221, !222, !223, !227, !229, !231, !3825, !3826, !3827, !3828}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !99, line: 606, baseType: !124, size: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !99, line: 607, baseType: !167, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !168, file: !99, line: 608, baseType: !124, size: 128, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !168, file: !99, line: 609, baseType: !124, size: 128, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !168, file: !99, line: 610, baseType: !162, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !168, file: !99, line: 611, baseType: !124, size: 128, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !168, file: !99, line: 613, baseType: !177, size: 256, offset: 640)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 256, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 4)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !168, file: !99, line: 614, baseType: !124, size: 128, offset: 896)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !168, file: !99, line: 615, baseType: !131, size: 512, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !168, file: !99, line: 617, baseType: !183, size: 64, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !99, line: 731, size: 320, elements: !185)
!185 = !{!186, !191, !195, !199, !206}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !184, file: !99, line: 732, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !167}
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !184, file: !99, line: 733, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !167}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !184, file: !99, line: 734, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!119, !167, !7, !190}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !184, file: !99, line: 735, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!190, !167, !7, !190, !190, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !138, line: 21, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !140, line: 27, baseType: !7)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !184, file: !99, line: 736, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!190, !167, !7, !190, !190, !204}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !168, file: !99, line: 618, baseType: !211, size: 64, offset: 1600)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !99, line: 537, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !168, file: !99, line: 619, baseType: !119, size: 64, offset: 1664)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !168, file: !99, line: 620, baseType: !215, size: 64, offset: 1728)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !217, line: 123, flags: DIFlagFwdDecl)
!217 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !168, file: !99, line: 622, baseType: !219, size: 8, offset: 1792)
!219 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !168, file: !99, line: 623, baseType: !219, size: 8, offset: 1800)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !168, file: !99, line: 624, baseType: !219, size: 8, offset: 1808)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !168, file: !99, line: 625, baseType: !219, size: 8, offset: 1816)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !99, line: 630, baseType: !224, size: 384, offset: 1824)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 48)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !168, file: !99, line: 632, baseType: !228, size: 16, offset: 2208)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !168, file: !99, line: 633, baseType: !230, size: 16, offset: 2224)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !99, line: 237, baseType: !228)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !168, file: !99, line: 634, baseType: !232, size: 64, offset: 2240)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !234)
!234 = !{!235, !3379, !3380, !3383, !3384, !3435, !3526, !3527, !3528, !3529, !3530, !3539, !3644, !3657, !3660, !3661, !3665, !3667, !3668, !3669, !3673, !3679, !3680, !3683, !3687, !3777, !3778, !3779, !3780, !3781, !3813, !3814, !3815, !3818, !3821, !3822, !3823, !3824}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !233, file: !67, line: 462, baseType: !236, size: 512)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !237, line: 64, size: 512, elements: !238)
!237 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !240, !241, !243, !303, !3230, !3369, !3374, !3375, !3376, !3377, !3378}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !237, line: 65, baseType: !144, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !236, file: !237, line: 66, baseType: !124, size: 128, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !237, line: 67, baseType: !242, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !236, file: !237, line: 68, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !237, line: 192, size: 704, elements: !246)
!246 = !{!247, !248, !264, !265}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !245, file: !237, line: 193, baseType: !124, size: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !245, file: !237, line: 194, baseType: !249, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !250, line: 83, baseType: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !250, line: 71, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !250, line: 72, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !250, line: 72, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !254, file: !250, line: 73, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !250, line: 20, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !257, file: !250, line: 21, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !261, line: 25, baseType: !262)
!261 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 25, elements: !263)
!263 = !{}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !245, file: !237, line: 195, baseType: !236, size: 512, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !245, file: !237, line: 196, baseType: !266, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !237, line: 156, size: 192, elements: !269)
!269 = !{!270, !275, !280}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !268, file: !237, line: 157, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!190, !244, !242}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !237, line: 158, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!144, !244, !242}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !268, file: !237, line: 159, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!190, !244, !242, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !237, line: 148, size: 20736, elements: !287)
!287 = !{!288, !293, !297, !298, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !286, file: !237, line: 149, baseType: !289, size: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !291)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !286, file: !237, line: 150, baseType: !294, size: 4096, offset: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !286, file: !237, line: 151, baseType: !190, size: 32, offset: 4288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !286, file: !237, line: 152, baseType: !299, size: 16384, offset: 4320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 16384, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !286, file: !237, line: 153, baseType: !190, size: 32, offset: 20704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !236, file: !237, line: 69, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !237, line: 138, size: 448, elements: !306)
!306 = !{!307, !311, !339, !341, !3192, !3220, !3224}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !305, file: !237, line: 139, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !242}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !305, file: !237, line: 140, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !315, line: 230, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!316 = !{!317, !332}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !314, file: !315, line: 231, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !242, !326, !290}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !118, line: 60, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !323, line: 73, baseType: !324)
!323 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !323, line: 15, baseType: !325)
!325 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !315, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !315, line: 31, baseType: !144, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !315, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !118, line: 19, baseType: !228)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !314, file: !315, line: 232, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!321, !242, !326, !144, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 55, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !323, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !323, line: 16, baseType: !148)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !305, file: !237, line: 141, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !305, file: !237, line: 142, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !315, line: 84, size: 320, elements: !346)
!346 = !{!347, !348, !352, !3189, !3190}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !315, line: 85, baseType: !144, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !345, file: !315, line: 86, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!331, !242, !326, !190}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !345, file: !315, line: 88, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!331, !242, !356, !190}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !315, line: 168, size: 448, elements: !358)
!358 = !{!359, !360, !361, !362, !3184, !3185}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !357, file: !315, line: 169, baseType: !327, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !315, line: 170, baseType: !336, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !357, file: !315, line: 171, baseType: !119, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !357, file: !315, line: 172, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!321, !366, !242, !356, !290, !537, !336}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !368)
!368 = !{!369, !387, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3167, !3168, !3177, !3178, !3179, !3180, !3181, !3182, !3183}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !367, file: !44, line: 920, baseType: !370, size: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !44, line: 917, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !370, file: !44, line: 918, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !374, line: 58, size: 64, elements: !375)
!374 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !374, line: 59, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !370, file: !44, line: 919, baseType: !379, size: 128, align: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !118, line: 216, size: 128, align: 64, elements: !380)
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !118, line: 217, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !379, file: !118, line: 218, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !382}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !367, file: !44, line: 921, baseType: !388, size: 128, offset: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !389, line: 8, size: 128, elements: !390)
!389 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !388, file: !389, line: 9, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !394, line: 18, flags: DIFlagFwdDecl)
!394 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !388, file: !389, line: 10, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !394, line: 89, size: 1536, elements: !398)
!398 = !{!399, !400, !410, !418, !419, !434, !3117, !3119, !3131, !3132, !3133, !3134, !3135, !3141, !3142, !3143}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !397, file: !394, line: 91, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !397, file: !394, line: 92, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !402, line: 277, baseType: !403)
!402 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !402, line: 277, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !403, file: !402, line: 277, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !402, line: 70, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !402, line: 65, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !407, file: !402, line: 66, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !397, file: !394, line: 93, baseType: !411, size: 128, offset: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !412, line: 38, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !412, line: 39, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !411, file: !412, line: 39, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !397, file: !394, line: 94, baseType: !396, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !397, file: !394, line: 95, baseType: !420, size: 128, offset: 256)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !394, line: 47, size: 128, elements: !421)
!421 = !{!422, !431}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !394, line: 48, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !394, line: 48, size: 64, elements: !424)
!424 = !{!425, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !394, line: 49, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !394, line: 49, size: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !426, file: !394, line: 50, baseType: !204, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !426, file: !394, line: 50, baseType: !204, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !423, file: !394, line: 52, baseType: !137, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !394, line: 54, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !397, file: !394, line: 96, baseType: !435, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !437)
!437 = !{!438, !439, !440, !448, !455, !456, !604, !2828, !2829, !2830, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !3093, !3101, !3102, !3103, !3113, !3114, !3115, !3116}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !436, file: !44, line: 611, baseType: !331, size: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !436, file: !44, line: 612, baseType: !228, size: 16, offset: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !436, file: !44, line: 613, baseType: !441, size: 32, offset: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !442, line: 23, baseType: !443)
!442 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 21, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !443, file: !442, line: 22, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !118, line: 32, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !323, line: 49, baseType: !7)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !436, file: !44, line: 614, baseType: !449, size: 32, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !442, line: 28, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 26, size: 32, elements: !451)
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !450, file: !442, line: 27, baseType: !453, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !118, line: 33, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !323, line: 50, baseType: !7)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !436, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !436, file: !44, line: 622, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !460)
!460 = !{!461, !465, !478, !482, !488, !492, !498, !502, !506, !510, !514, !515, !521, !525, !551, !580, !584, !590, !595, !599, !600}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !459, file: !44, line: 1865, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!396, !435, !396, !7}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !459, file: !44, line: 1866, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!144, !396, !435, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !471, line: 10, size: 128, elements: !472)
!471 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !470, file: !471, line: 11, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !119}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !470, file: !471, line: 12, baseType: !119, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !459, file: !44, line: 1867, baseType: !479, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!190, !435, !190}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !459, file: !44, line: 1868, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !435, !190}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !459, file: !44, line: 1870, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!190, !396, !290, !190}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !459, file: !44, line: 1872, baseType: !493, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!190, !435, !396, !331, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !118, line: 30, baseType: !497)
!497 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !459, file: !44, line: 1873, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!190, !396, !435, !396}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !459, file: !44, line: 1874, baseType: !503, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!190, !435, !396}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !459, file: !44, line: 1875, baseType: !507, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!190, !435, !396, !144}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !459, file: !44, line: 1876, baseType: !511, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!190, !435, !396, !331}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !459, file: !44, line: 1877, baseType: !503, size: 64, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !459, file: !44, line: 1878, baseType: !516, size: 64, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!190, !435, !396, !331, !519}
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !118, line: 16, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !118, line: 13, baseType: !204)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !459, file: !44, line: 1879, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!190, !435, !396, !435, !396, !7}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !459, file: !44, line: 1881, baseType: !526, size: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!190, !396, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !540, !548, !549, !550}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !530, file: !44, line: 220, baseType: !7, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !530, file: !44, line: 221, baseType: !331, size: 16, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !530, file: !44, line: 222, baseType: !441, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !530, file: !44, line: 223, baseType: !449, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !530, file: !44, line: 224, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !118, line: 46, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !323, line: 88, baseType: !539)
!539 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !530, file: !44, line: 225, baseType: !541, size: 128, offset: 192)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !542, line: 13, size: 128, elements: !543)
!542 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!543 = !{!544, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !541, file: !542, line: 14, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !542, line: 8, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !140, line: 30, baseType: !539)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !541, file: !542, line: 15, baseType: !325, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !530, file: !44, line: 226, baseType: !541, size: 128, offset: 320)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !530, file: !44, line: 227, baseType: !541, size: 128, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !530, file: !44, line: 234, baseType: !366, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !459, file: !44, line: 1882, baseType: !552, size: 64, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!190, !555, !557, !204, !7}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !559, line: 22, size: 1152, elements: !560)
!559 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !562, !563, !564, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !558, file: !559, line: 23, baseType: !204, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !558, file: !559, line: 24, baseType: !331, size: 16, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !558, file: !559, line: 25, baseType: !7, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !558, file: !559, line: 26, baseType: !565, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !118, line: 104, baseType: !204)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !558, file: !559, line: 27, baseType: !137, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !558, file: !559, line: 28, baseType: !137, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !558, file: !559, line: 37, baseType: !137, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !558, file: !559, line: 38, baseType: !519, size: 32, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !558, file: !559, line: 39, baseType: !519, size: 32, offset: 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !559, line: 40, baseType: !441, size: 32, offset: 384)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !558, file: !559, line: 41, baseType: !449, size: 32, offset: 416)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !558, file: !559, line: 42, baseType: !537, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !558, file: !559, line: 43, baseType: !541, size: 128, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !558, file: !559, line: 44, baseType: !541, size: 128, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !558, file: !559, line: 45, baseType: !541, size: 128, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !558, file: !559, line: 46, baseType: !541, size: 128, offset: 896)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !558, file: !559, line: 47, baseType: !137, size: 64, offset: 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !558, file: !559, line: 48, baseType: !137, size: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !459, file: !44, line: 1883, baseType: !581, size: 64, offset: 960)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!321, !396, !290, !336}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !459, file: !44, line: 1884, baseType: !585, size: 64, offset: 1024)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!190, !435, !588, !137, !137}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !459, file: !44, line: 1886, baseType: !591, size: 64, offset: 1088)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!190, !435, !594, !190}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !459, file: !44, line: 1887, baseType: !596, size: 64, offset: 1152)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!190, !435, !396, !366, !7, !331}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !459, file: !44, line: 1890, baseType: !511, size: 64, offset: 1216)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !459, file: !44, line: 1891, baseType: !601, size: 64, offset: 1280)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!190, !435, !486, !190}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !436, file: !44, line: 623, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !663, !2435, !2517, !2600, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2616, !2620, !2621, !2624, !2625, !2628, !2629, !2630, !2671, !2698, !2699, !2700, !2701, !2702, !2703, !2706, !2708, !2715, !2716, !2718, !2719, !2720, !2779, !2780, !2795, !2796, !2797, !2798, !2799, !2802, !2803, !2804, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !606, file: !44, line: 1417, baseType: !124, size: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !606, file: !44, line: 1418, baseType: !519, size: 32, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !606, file: !44, line: 1419, baseType: !219, size: 8, offset: 160)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !606, file: !44, line: 1420, baseType: !148, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !606, file: !44, line: 1421, baseType: !537, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !606, file: !44, line: 1422, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !616)
!616 = !{!617, !618, !619, !626, !630, !634, !638, !642, !643, !653, !656, !657, !658, !660, !661, !662}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !615, file: !44, line: 2229, baseType: !144, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !615, file: !44, line: 2230, baseType: !190, size: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !615, file: !44, line: 2238, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!190, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !625, line: 28, flags: DIFlagFwdDecl)
!625 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !615, file: !44, line: 2239, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !615, file: !44, line: 2240, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!396, !614, !190, !144, !119}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !615, file: !44, line: 2242, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !605}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !615, file: !44, line: 2243, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !641, line: 76, flags: DIFlagFwdDecl)
!641 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !615, file: !44, line: 2244, baseType: !614, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !615, file: !44, line: 2245, baseType: !644, size: 64, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !118, line: 182, size: 64, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !644, file: !118, line: 183, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !118, line: 186, size: 128, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !648, file: !118, line: 187, baseType: !647, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !648, file: !118, line: 187, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !615, file: !44, line: 2247, baseType: !654, offset: 576)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !655, line: 187, elements: !263)
!655 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !615, file: !44, line: 2248, baseType: !654, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !615, file: !44, line: 2249, baseType: !654, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !615, file: !44, line: 2250, baseType: !659, offset: 576)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, elements: !291)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !615, file: !44, line: 2252, baseType: !654, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !615, file: !44, line: 2253, baseType: !654, offset: 576)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !615, file: !44, line: 2254, baseType: !654, offset: 576)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !606, file: !44, line: 1423, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !667)
!667 = !{!668, !672, !676, !677, !681, !687, !691, !692, !693, !697, !701, !702, !703, !704, !710, !715, !716, !723, !724, !725, !726, !2419, !2434}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !666, file: !44, line: 1936, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!435, !605}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !666, file: !44, line: 1937, baseType: !673, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !435}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !666, file: !44, line: 1938, baseType: !673, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !666, file: !44, line: 1940, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !435, !190}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !666, file: !44, line: 1941, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!190, !435, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !666, file: !44, line: 1942, baseType: !688, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!190, !435}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !666, file: !44, line: 1943, baseType: !673, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !666, file: !44, line: 1944, baseType: !635, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !666, file: !44, line: 1945, baseType: !694, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!190, !605, !190}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !666, file: !44, line: 1946, baseType: !698, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!190, !605}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !666, file: !44, line: 1947, baseType: !698, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !666, file: !44, line: 1948, baseType: !698, size: 64, offset: 704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !666, file: !44, line: 1949, baseType: !698, size: 64, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !666, file: !44, line: 1950, baseType: !705, size: 64, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!190, !396, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !666, file: !44, line: 1951, baseType: !711, size: 64, offset: 896)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!190, !605, !714, !290}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !666, file: !44, line: 1952, baseType: !635, size: 64, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !666, file: !44, line: 1954, baseType: !717, size: 64, offset: 1024)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!190, !720, !396}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !722, line: 539, flags: DIFlagFwdDecl)
!722 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !666, file: !44, line: 1955, baseType: !717, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !666, file: !44, line: 1956, baseType: !717, size: 64, offset: 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !666, file: !44, line: 1957, baseType: !717, size: 64, offset: 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !666, file: !44, line: 1963, baseType: !727, size: 64, offset: 1280)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!190, !605, !730, !117}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !732, line: 68, size: 512, align: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!733 = !{!734, !735, !2411, !2418}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !732, line: 69, baseType: !148, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 77, baseType: !736, size: 320, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 77, size: 320, elements: !737)
!737 = !{!738, !925, !930, !958, !966, !972, !2342, !2410}
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 78, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 78, size: 320, elements: !740)
!740 = !{!741, !742, !923, !924}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !739, file: !732, line: 84, baseType: !124, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !739, file: !732, line: 86, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !745)
!745 = !{!746, !747, !754, !755, !760, !775, !791, !792, !793, !794, !916, !917, !920, !921, !922}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !744, file: !44, line: 452, baseType: !435, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !744, file: !44, line: 453, baseType: !748, size: 128, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !749, line: 292, size: 128, elements: !750)
!749 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !752, !753}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !748, file: !749, line: 293, baseType: !249)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !748, file: !749, line: 295, baseType: !117, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !748, file: !749, line: 296, baseType: !119, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !744, file: !44, line: 454, baseType: !117, size: 32, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !744, file: !44, line: 455, baseType: !756, size: 32, offset: 224)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !118, line: 168, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 166, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !757, file: !118, line: 167, baseType: !190, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !744, file: !44, line: 460, baseType: !761, size: 128, offset: 256)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !762, line: 125, size: 128, elements: !763)
!762 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !774}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !761, file: !762, line: 126, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !762, line: 31, size: 64, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !765, file: !762, line: 32, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !762, line: 24, size: 192, align: 64, elements: !770)
!770 = !{!771, !772, !773}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !769, file: !762, line: 25, baseType: !148, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !769, file: !762, line: 26, baseType: !768, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !769, file: !762, line: 27, baseType: !768, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !761, file: !762, line: 127, baseType: !768, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !744, file: !44, line: 461, baseType: !776, size: 256, offset: 384)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !777, line: 35, size: 256, elements: !778)
!777 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !787, !788, !790}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !776, file: !777, line: 36, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !781, line: 13, baseType: !782)
!781 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !118, line: 175, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 173, size: 64, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !783, file: !118, line: 174, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !138, line: 22, baseType: !546)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !776, file: !777, line: 42, baseType: !780, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !776, file: !777, line: 46, baseType: !789, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !250, line: 29, baseType: !257)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !776, file: !777, line: 47, baseType: !124, size: 128, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !744, file: !44, line: 462, baseType: !148, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !744, file: !44, line: 463, baseType: !148, size: 64, offset: 704)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !744, file: !44, line: 464, baseType: !148, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !744, file: !44, line: 465, baseType: !795, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !798)
!798 = !{!799, !803, !807, !811, !815, !819, !825, !831, !835, !840, !844, !848, !852, !880, !884, !890, !891, !892, !896, !901, !905, !912}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !797, file: !44, line: 368, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!190, !730, !685}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !797, file: !44, line: 369, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!190, !366, !730}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !797, file: !44, line: 372, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!190, !743, !685}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !797, file: !44, line: 375, baseType: !812, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!190, !730}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !797, file: !44, line: 381, baseType: !816, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!190, !366, !743, !127, !7}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !797, file: !44, line: 383, baseType: !820, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !823}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !797, file: !44, line: 385, baseType: !826, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!190, !366, !743, !537, !7, !7, !829, !830}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !797, file: !44, line: 388, baseType: !832, size: 64, offset: 448)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!190, !366, !743, !537, !7, !7, !730, !119}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !797, file: !44, line: 393, baseType: !836, size: 64, offset: 512)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!839, !743, !839}
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !118, line: 125, baseType: !137)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !797, file: !44, line: 394, baseType: !841, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !730, !7, !7}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !797, file: !44, line: 395, baseType: !845, size: 64, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!190, !730, !117}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !797, file: !44, line: 396, baseType: !849, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !730}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !797, file: !44, line: 397, baseType: !853, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!321, !856, !878}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !858)
!858 = !{!859, !860, !861, !865, !866, !867, !870, !871}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !857, file: !44, line: 321, baseType: !366, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !857, file: !44, line: 326, baseType: !537, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !857, file: !44, line: 327, baseType: !862, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !856, !325, !325}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !857, file: !44, line: 328, baseType: !119, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !857, file: !44, line: 329, baseType: !190, size: 32, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !857, file: !44, line: 330, baseType: !868, size: 16, offset: 288)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !138, line: 19, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !140, line: 24, baseType: !228)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !857, file: !44, line: 331, baseType: !868, size: 16, offset: 304)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !857, file: !44, line: 332, baseType: !872, size: 64, offset: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !44, line: 332, size: 64, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !872, file: !44, line: 333, baseType: !7, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !872, file: !44, line: 334, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !797, file: !44, line: 402, baseType: !881, size: 64, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!190, !743, !730, !730, !5}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !797, file: !44, line: 404, baseType: !885, size: 64, offset: 896)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!496, !730, !888}
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !889, line: 305, baseType: !7)
!889 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !797, file: !44, line: 405, baseType: !849, size: 64, offset: 960)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !797, file: !44, line: 406, baseType: !812, size: 64, offset: 1024)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !797, file: !44, line: 407, baseType: !893, size: 64, offset: 1088)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!190, !730, !148, !148}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !797, file: !44, line: 409, baseType: !897, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !730, !900, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !797, file: !44, line: 410, baseType: !902, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!190, !743, !730}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !797, file: !44, line: 413, baseType: !906, size: 64, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!190, !909, !366, !911}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !797, file: !44, line: 415, baseType: !913, size: 64, offset: 1344)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{null, !366}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !44, line: 466, baseType: !148, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !744, file: !44, line: 467, baseType: !918, size: 32, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !919, line: 8, baseType: !204)
!919 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!920 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !744, file: !44, line: 468, baseType: !249, offset: 992)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !744, file: !44, line: 469, baseType: !124, size: 128, offset: 1024)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !744, file: !44, line: 470, baseType: !119, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !739, file: !732, line: 87, baseType: !148, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !739, file: !732, line: 94, baseType: !148, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 96, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 96, size: 64, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !926, file: !732, line: 101, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !118, line: 143, baseType: !137)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 103, baseType: !931, size: 320)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 103, size: 320, elements: !932)
!932 = !{!933, !943, !946, !947}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !732, line: 104, baseType: !934, size: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !732, line: 104, size: 128, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !934, file: !732, line: 105, baseType: !124, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !934, file: !732, line: 106, baseType: !938, size: 128)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !934, file: !732, line: 106, size: 128, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !938, file: !732, line: 107, baseType: !730, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !938, file: !732, line: 109, baseType: !190, size: 32, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !938, file: !732, line: 110, baseType: !190, size: 32, offset: 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !931, file: !732, line: 117, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !732, line: 117, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !931, file: !732, line: 119, baseType: !119, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !732, line: 120, baseType: !948, size: 64, offset: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !732, line: 120, size: 64, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !948, file: !732, line: 121, baseType: !119, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !948, file: !732, line: 122, baseType: !148, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !732, line: 123, baseType: !953, size: 32)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !948, file: !732, line: 123, size: 32, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !953, file: !732, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !953, file: !732, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !953, file: !732, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 130, baseType: !959, size: 192)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 130, size: 192, elements: !960)
!960 = !{!961, !962, !963, !964, !965}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !959, file: !732, line: 131, baseType: !148, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !959, file: !732, line: 134, baseType: !219, size: 8, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !959, file: !732, line: 135, baseType: !219, size: 8, offset: 72)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !959, file: !732, line: 136, baseType: !756, size: 32, offset: 96)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !959, file: !732, line: 137, baseType: !7, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 139, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 139, size: 256, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !967, file: !732, line: 140, baseType: !148, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !967, file: !732, line: 141, baseType: !756, size: 32, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !967, file: !732, line: 143, baseType: !124, size: 128, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 145, baseType: !973, size: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 145, size: 256, elements: !974)
!974 = !{!975, !976, !978, !979, !2341}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !973, file: !732, line: 146, baseType: !148, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !973, file: !732, line: 147, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !722, line: 509, baseType: !730)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !973, file: !732, line: 148, baseType: !148, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !732, line: 149, baseType: !980, size: 64, offset: 192)
!980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !732, line: 149, size: 64, elements: !981)
!981 = !{!982, !2340}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !980, file: !732, line: 150, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !732, line: 388, size: 7296, elements: !985)
!985 = !{!986, !2336}
!986 = !DIDerivedType(tag: DW_TAG_member, scope: !984, file: !732, line: 389, baseType: !987, size: 7296)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !732, line: 389, size: 7296, elements: !988)
!988 = !{!989, !1107, !1108, !1109, !1113, !1114, !1115, !1116, !1117, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1158, !1164, !1167, !1213, !1214, !2320, !2321, !2324, !2325, !2326, !2329, !2330, !2331, !2334, !2335}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !987, file: !732, line: 390, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !732, line: 305, size: 1472, elements: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1007, !1008, !1013, !1014, !1017, !1101, !1102, !1103, !1104, !1105}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !991, file: !732, line: 308, baseType: !148, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !991, file: !732, line: 309, baseType: !148, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !991, file: !732, line: 313, baseType: !990, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !991, file: !732, line: 313, baseType: !990, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !991, file: !732, line: 315, baseType: !769, size: 192, align: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !991, file: !732, line: 323, baseType: !148, size: 64, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !991, file: !732, line: 327, baseType: !983, size: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !991, file: !732, line: 333, baseType: !1001, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !722, line: 284, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !722, line: 284, size: 64, elements: !1003)
!1003 = !{!1004}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1002, file: !722, line: 284, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1006, line: 19, baseType: !148)
!1006 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !991, file: !732, line: 334, baseType: !148, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !991, file: !732, line: 343, baseType: !1009, size: 256, offset: 704)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !991, file: !732, line: 340, size: 256, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1009, file: !732, line: 341, baseType: !769, size: 192, align: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1009, file: !732, line: 342, baseType: !148, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !991, file: !732, line: 351, baseType: !124, size: 128, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !991, file: !732, line: 353, baseType: !1015, size: 64, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !732, line: 353, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !991, file: !732, line: 356, baseType: !1018, size: 64, offset: 1152)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1021)
!1021 = !{!1022, !1026, !1027, !1031, !1035, !1075, !1079, !1083, !1087, !1088, !1089, !1093, !1097}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1020, file: !14, line: 558, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !990}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1020, file: !14, line: 559, baseType: !1023, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1020, file: !14, line: 560, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!190, !990, !148}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1020, file: !14, line: 561, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!190, !990}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1020, file: !14, line: 562, baseType: !1036, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !732, line: 682, baseType: !7)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1055, !1062, !1068, !1069, !1070, !1072, !1074}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1041, file: !14, line: 509, baseType: !990, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1041, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1041, file: !14, line: 511, baseType: !117, size: 32, offset: 96)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1041, file: !14, line: 512, baseType: !148, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1041, file: !14, line: 513, baseType: !148, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1041, file: !14, line: 514, baseType: !1049, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !722, line: 385, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 385, size: 64, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1051, file: !722, line: 385, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1006, line: 15, baseType: !148)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1041, file: !14, line: 516, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !722, line: 359, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 359, size: 64, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1058, file: !722, line: 359, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1006, line: 16, baseType: !148)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1041, file: !14, line: 519, baseType: !1063, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1006, line: 21, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1006, line: 21, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1064, file: !1006, line: 21, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1006, line: 14, baseType: !148)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1041, file: !14, line: 521, baseType: !730, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1041, file: !14, line: 522, baseType: !730, size: 64, offset: 512)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1041, file: !14, line: 528, baseType: !1071, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1041, file: !14, line: 532, baseType: !1073, size: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1041, file: !14, line: 536, baseType: !977, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1020, file: !14, line: 563, baseType: !1076, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1039, !1040, !13}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1020, file: !14, line: 565, baseType: !1080, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{null, !1040, !148, !148}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1020, file: !14, line: 567, baseType: !1084, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!148, !990}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1020, file: !14, line: 571, baseType: !1036, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1020, file: !14, line: 574, baseType: !1036, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1020, file: !14, line: 579, baseType: !1090, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!190, !990, !148, !119, !190, !190}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1020, file: !14, line: 585, baseType: !1094, size: 64, offset: 704)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!144, !990}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1020, file: !14, line: 615, baseType: !1098, size: 64, offset: 768)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!730, !990, !148}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !991, file: !732, line: 359, baseType: !148, size: 64, offset: 1216)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !991, file: !732, line: 361, baseType: !366, size: 64, offset: 1280)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !991, file: !732, line: 362, baseType: !119, size: 64, offset: 1344)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !991, file: !732, line: 365, baseType: !780, size: 64, offset: 1408)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !991, file: !732, line: 373, baseType: !1106, offset: 1472)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !732, line: 296, elements: !263)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !987, file: !732, line: 391, baseType: !765, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !987, file: !732, line: 392, baseType: !137, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !987, file: !732, line: 394, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!148, !366, !148, !148, !148, !148}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !987, file: !732, line: 398, baseType: !148, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !987, file: !732, line: 399, baseType: !148, size: 64, offset: 320)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !987, file: !732, line: 405, baseType: !148, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !987, file: !732, line: 406, baseType: !148, size: 64, offset: 448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !987, file: !732, line: 407, baseType: !1118, size: 64, offset: 512)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !722, line: 286, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !722, line: 286, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1120, file: !722, line: 286, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1006, line: 18, baseType: !148)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !987, file: !732, line: 416, baseType: !756, size: 32, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !987, file: !732, line: 428, baseType: !756, size: 32, offset: 608)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !987, file: !732, line: 437, baseType: !756, size: 32, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !987, file: !732, line: 447, baseType: !756, size: 32, offset: 672)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !987, file: !732, line: 450, baseType: !780, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !987, file: !732, line: 452, baseType: !190, size: 32, offset: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !987, file: !732, line: 454, baseType: !249, offset: 800)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !987, file: !732, line: 457, baseType: !776, size: 256, offset: 832)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !987, file: !732, line: 459, baseType: !124, size: 128, offset: 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !987, file: !732, line: 466, baseType: !148, size: 64, offset: 1216)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !987, file: !732, line: 467, baseType: !148, size: 64, offset: 1280)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !987, file: !732, line: 469, baseType: !148, size: 64, offset: 1344)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !987, file: !732, line: 470, baseType: !148, size: 64, offset: 1408)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !987, file: !732, line: 471, baseType: !782, size: 64, offset: 1472)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !987, file: !732, line: 472, baseType: !148, size: 64, offset: 1536)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !987, file: !732, line: 473, baseType: !148, size: 64, offset: 1600)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !987, file: !732, line: 474, baseType: !148, size: 64, offset: 1664)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !987, file: !732, line: 475, baseType: !148, size: 64, offset: 1728)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !987, file: !732, line: 477, baseType: !249, offset: 1792)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !987, file: !732, line: 478, baseType: !148, size: 64, offset: 1792)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !987, file: !732, line: 478, baseType: !148, size: 64, offset: 1856)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !987, file: !732, line: 478, baseType: !148, size: 64, offset: 1920)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !987, file: !732, line: 478, baseType: !148, size: 64, offset: 1984)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !987, file: !732, line: 479, baseType: !148, size: 64, offset: 2048)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !987, file: !732, line: 479, baseType: !148, size: 64, offset: 2112)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !987, file: !732, line: 479, baseType: !148, size: 64, offset: 2176)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !987, file: !732, line: 480, baseType: !148, size: 64, offset: 2240)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !987, file: !732, line: 480, baseType: !148, size: 64, offset: 2304)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !987, file: !732, line: 480, baseType: !148, size: 64, offset: 2368)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !987, file: !732, line: 480, baseType: !148, size: 64, offset: 2432)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !987, file: !732, line: 482, baseType: !1155, size: 2816, offset: 2496)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 2816, elements: !1156)
!1156 = !{!1157}
!1157 = !DISubrange(count: 44)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !987, file: !732, line: 488, baseType: !1159, size: 256, offset: 5312)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1160, line: 60, size: 256, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1159, file: !1160, line: 61, baseType: !1163, size: 256)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !780, size: 256, elements: !178)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !987, file: !732, line: 490, baseType: !1165, size: 64, offset: 5568)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !732, line: 490, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !987, file: !732, line: 493, baseType: !1168, size: 896, offset: 5632)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1169, line: 53, baseType: !1170)
!1169 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1169, line: 13, size: 896, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1178, !1179, !1186, !1187, !1207, !1208, !1209}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1170, file: !1169, line: 18, baseType: !137, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1170, file: !1169, line: 28, baseType: !782, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1170, file: !1169, line: 31, baseType: !776, size: 256, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1170, file: !1169, line: 32, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1169, line: 32, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1170, file: !1169, line: 37, baseType: !228, size: 16, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1170, file: !1169, line: 40, baseType: !1180, size: 192, offset: 512)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1181, line: 53, size: 192, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1180, file: !1181, line: 54, baseType: !780, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1180, file: !1181, line: 55, baseType: !249, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1180, file: !1181, line: 59, baseType: !124, size: 128, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1170, file: !1169, line: 41, baseType: !119, size: 64, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1170, file: !1169, line: 42, baseType: !1188, size: 64, offset: 768)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1191, line: 13, size: 896, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1190, file: !1191, line: 14, baseType: !119, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1190, file: !1191, line: 15, baseType: !148, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1190, file: !1191, line: 17, baseType: !148, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1190, file: !1191, line: 17, baseType: !148, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1190, file: !1191, line: 19, baseType: !325, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1190, file: !1191, line: 21, baseType: !325, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1190, file: !1191, line: 22, baseType: !325, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1190, file: !1191, line: 23, baseType: !325, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1190, file: !1191, line: 24, baseType: !325, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1190, file: !1191, line: 25, baseType: !325, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1190, file: !1191, line: 26, baseType: !325, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1190, file: !1191, line: 27, baseType: !325, size: 64, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1190, file: !1191, line: 28, baseType: !325, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1190, file: !1191, line: 29, baseType: !325, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1170, file: !1169, line: 44, baseType: !756, size: 32, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1170, file: !1169, line: 50, baseType: !868, size: 16, offset: 864)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1170, file: !1169, line: 51, baseType: !1210, size: 16, offset: 880)
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !138, line: 18, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !140, line: 23, baseType: !1212)
!1212 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !732, line: 495, baseType: !148, size: 64, offset: 6528)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !987, file: !732, line: 497, baseType: !1215, size: 64, offset: 6592)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !732, line: 381, size: 384, elements: !1217)
!1217 = !{!1218, !1219, !2319}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1216, file: !732, line: 382, baseType: !756, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1216, file: !732, line: 383, baseType: !1220, size: 128, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !732, line: 376, size: 128, elements: !1221)
!1221 = !{!1222, !2317}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1220, file: !732, line: 377, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1225, line: 640, size: 48640, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !{!1227, !1233, !1235, !1236, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1253, !1271, !1282, !1367, !1368, !1369, !1380, !1381, !1383, !1384, !1385, !1386, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1464, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1502, !1504, !1505, !1506, !1518, !1519, !1520, !1521, !1522, !1523, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1547, !1552, !1736, !1737, !1738, !1739, !1743, !1746, !1749, !1752, !1755, !1759, !1860, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1906, !1907, !1908, !1909, !1910, !1915, !1916, !1917, !1920, !1921, !1924, !1927, !1930, !1933, !1976, !1979, !1980, !2059, !2060, !2063, !2064, !2067, !2068, !2069, !2073, !2074, !2075, !2088, !2089, !2090, !2100, !2105, !2108, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1224, file: !1225, line: 646, baseType: !1228, size: 128)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1229, line: 56, size: 128, elements: !1230)
!1229 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !1229, line: 57, baseType: !148, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1228, file: !1229, line: 58, baseType: !204, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1224, file: !1225, line: 649, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !325)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1224, file: !1225, line: 657, baseType: !119, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1224, file: !1225, line: 658, baseType: !1237, size: 32, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1238, line: 113, baseType: !1239)
!1238 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1238, line: 111, size: 32, elements: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1239, file: !1238, line: 112, baseType: !756, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !1225, line: 660, baseType: !7, size: 32, offset: 288)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1224, file: !1225, line: 661, baseType: !7, size: 32, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1224, file: !1225, line: 684, baseType: !190, size: 32, offset: 352)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1224, file: !1225, line: 686, baseType: !190, size: 32, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1224, file: !1225, line: 687, baseType: !190, size: 32, offset: 416)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1224, file: !1225, line: 688, baseType: !190, size: 32, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1224, file: !1225, line: 689, baseType: !7, size: 32, offset: 480)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1224, file: !1225, line: 691, baseType: !1250, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1225, line: 691, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1224, file: !1225, line: 692, baseType: !1254, size: 832, offset: 576)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1225, line: 451, size: 832, elements: !1255)
!1255 = !{!1256, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1254, file: !1225, line: 453, baseType: !1257, size: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1225, line: 325, size: 128, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1257, file: !1225, line: 326, baseType: !148, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1257, file: !1225, line: 327, baseType: !204, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1254, file: !1225, line: 454, baseType: !769, size: 192, align: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1254, file: !1225, line: 455, baseType: !124, size: 128, offset: 320)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1254, file: !1225, line: 456, baseType: !7, size: 32, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1254, file: !1225, line: 458, baseType: !137, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1254, file: !1225, line: 459, baseType: !137, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1254, file: !1225, line: 460, baseType: !137, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1254, file: !1225, line: 461, baseType: !137, size: 64, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1254, file: !1225, line: 463, baseType: !137, size: 64, offset: 768)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1254, file: !1225, line: 465, baseType: !1270, offset: 832)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1225, line: 415, elements: !263)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1224, file: !1225, line: 693, baseType: !1272, size: 384, offset: 1408)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1225, line: 489, size: 384, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1272, file: !1225, line: 490, baseType: !124, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1272, file: !1225, line: 491, baseType: !148, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1272, file: !1225, line: 492, baseType: !148, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1272, file: !1225, line: 493, baseType: !7, size: 32, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1272, file: !1225, line: 494, baseType: !228, size: 16, offset: 288)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1272, file: !1225, line: 495, baseType: !228, size: 16, offset: 304)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1272, file: !1225, line: 497, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1224, file: !1225, line: 697, baseType: !1283, size: 1792, offset: 1792)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1225, line: 507, size: 1792, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1364, !1365}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1283, file: !1225, line: 508, baseType: !769, size: 192, align: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1283, file: !1225, line: 515, baseType: !137, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1283, file: !1225, line: 516, baseType: !137, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1283, file: !1225, line: 517, baseType: !137, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1283, file: !1225, line: 518, baseType: !137, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1283, file: !1225, line: 519, baseType: !137, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1283, file: !1225, line: 526, baseType: !786, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1283, file: !1225, line: 527, baseType: !137, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !1225, line: 528, baseType: !7, size: 32, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1283, file: !1225, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1283, file: !1225, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1283, file: !1225, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1283, file: !1225, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1283, file: !1225, line: 563, baseType: !1299, size: 512, offset: 704)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1300)
!1300 = !{!1301, !1309, !1310, !1315, !1358, !1361, !1362, !1363}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1299, file: !20, line: 119, baseType: !1302, size: 256)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1303, line: 9, size: 256, elements: !1304)
!1303 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1302, file: !1303, line: 10, baseType: !769, size: 192, align: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1302, file: !1303, line: 11, baseType: !1307, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1308, line: 29, baseType: !786)
!1308 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1299, file: !20, line: 120, baseType: !1307, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1299, file: !20, line: 121, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!19, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1299, file: !20, line: 122, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1318)
!1318 = !{!1319, !1339, !1340, !1343, !1348, !1349, !1353, !1357}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1317, file: !20, line: 160, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1321, file: !20, line: 215, baseType: !789)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1321, file: !20, line: 216, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1321, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1321, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1321, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1321, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1321, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1321, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1321, file: !20, line: 233, baseType: !1307, size: 64, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1321, file: !20, line: 234, baseType: !1314, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1321, file: !20, line: 235, baseType: !1307, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1321, file: !20, line: 236, baseType: !1314, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1321, file: !20, line: 237, baseType: !1336, size: 4096, offset: 512)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1317, size: 4096, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1317, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1317, file: !20, line: 162, baseType: !1341, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !118, line: 27, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !323, line: 96, baseType: !190)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1317, file: !20, line: 163, baseType: !1344, size: 32, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !402, line: 276, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !402, line: 276, size: 32, elements: !1346)
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1345, file: !402, line: 276, baseType: !406, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1317, file: !20, line: 164, baseType: !1314, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1317, file: !20, line: 165, baseType: !1350, size: 128, offset: 256)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1303, line: 14, size: 128, elements: !1351)
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1350, file: !1303, line: 15, baseType: !761, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1317, file: !20, line: 166, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!1307}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1317, file: !20, line: 167, baseType: !1307, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1299, file: !20, line: 123, baseType: !1359, size: 8, offset: 448)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !138, line: 17, baseType: !1360)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !140, line: 21, baseType: !219)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1299, file: !20, line: 124, baseType: !1359, size: 8, offset: 456)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1299, file: !20, line: 125, baseType: !1359, size: 8, offset: 464)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1299, file: !20, line: 126, baseType: !1359, size: 8, offset: 472)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1283, file: !1225, line: 572, baseType: !1299, size: 512, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1283, file: !1225, line: 580, baseType: !1366, size: 64, offset: 1728)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1224, file: !1225, line: 721, baseType: !7, size: 32, offset: 3584)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1224, file: !1225, line: 722, baseType: !190, size: 32, offset: 3616)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1224, file: !1225, line: 723, baseType: !1370, size: 64, offset: 3648)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1373, line: 17, baseType: !1374)
!1373 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1373, line: 17, size: 64, elements: !1375)
!1375 = !{!1376}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1374, file: !1373, line: 17, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, elements: !1378)
!1378 = !{!1379}
!1379 = !DISubrange(count: 1)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1224, file: !1225, line: 724, baseType: !1372, size: 64, offset: 3712)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1224, file: !1225, line: 749, baseType: !1382, offset: 3776)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1225, line: 290, elements: !263)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1224, file: !1225, line: 751, baseType: !124, size: 128, offset: 3776)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1224, file: !1225, line: 757, baseType: !983, size: 64, offset: 3904)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1224, file: !1225, line: 758, baseType: !983, size: 64, offset: 3968)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1224, file: !1225, line: 761, baseType: !1387, size: 320, offset: 4032)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1160, line: 34, size: 320, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1387, file: !1160, line: 35, baseType: !137, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1387, file: !1160, line: 36, baseType: !1391, size: 256, offset: 64)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 256, elements: !178)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1224, file: !1225, line: 766, baseType: !190, size: 32, offset: 4352)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1224, file: !1225, line: 767, baseType: !190, size: 32, offset: 4384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1224, file: !1225, line: 768, baseType: !190, size: 32, offset: 4416)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1224, file: !1225, line: 770, baseType: !190, size: 32, offset: 4448)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1224, file: !1225, line: 772, baseType: !148, size: 64, offset: 4480)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1224, file: !1225, line: 775, baseType: !7, size: 32, offset: 4544)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1224, file: !1225, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1224, file: !1225, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1224, file: !1225, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1224, file: !1225, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1224, file: !1225, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1224, file: !1225, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1224, file: !1225, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1224, file: !1225, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1224, file: !1225, line: 831, baseType: !148, size: 64, offset: 4672)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1224, file: !1225, line: 833, baseType: !1408, size: 384, offset: 4736)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1409)
!1409 = !{!1410, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1408, file: !25, line: 26, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!325, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !25, line: 27, baseType: !1416, size: 320, offset: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !25, line: 27, size: 320, elements: !1417)
!1417 = !{!1418, !1427, !1454}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1416, file: !25, line: 36, baseType: !1419, size: 320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !25, line: 29, size: 320, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425, !1426}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1419, file: !25, line: 30, baseType: !203, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1419, file: !25, line: 31, baseType: !204, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1419, file: !25, line: 32, baseType: !204, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1419, file: !25, line: 33, baseType: !204, size: 32, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1419, file: !25, line: 34, baseType: !137, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1419, file: !25, line: 35, baseType: !203, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1416, file: !25, line: 46, baseType: !1428, size: 192)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !25, line: 38, size: 192, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1453}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1428, file: !25, line: 39, baseType: !1341, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1428, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !25, line: 41, baseType: !1433, size: 64, offset: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !25, line: 41, size: 64, elements: !1434)
!1434 = !{!1435, !1443}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1433, file: !25, line: 42, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1438, line: 7, size: 128, elements: !1439)
!1438 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1437, file: !1438, line: 8, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !323, line: 93, baseType: !539)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1437, file: !1438, line: 9, baseType: !539, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1433, file: !25, line: 43, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1446, line: 7, size: 64, elements: !1447)
!1446 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1452}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1445, file: !1446, line: 8, baseType: !1449, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1446, line: 5, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !138, line: 20, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !140, line: 26, baseType: !190)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1445, file: !1446, line: 9, baseType: !1450, size: 32, offset: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1428, file: !25, line: 45, baseType: !137, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1416, file: !25, line: 54, baseType: !1455, size: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !25, line: 48, size: 256, elements: !1456)
!1456 = !{!1457, !1460, !1461, !1462, !1463}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1455, file: !25, line: 49, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1455, file: !25, line: 50, baseType: !190, size: 32, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1455, file: !25, line: 51, baseType: !190, size: 32, offset: 96)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1455, file: !25, line: 52, baseType: !148, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1455, file: !25, line: 53, baseType: !148, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1224, file: !1225, line: 835, baseType: !1465, size: 32, offset: 5120)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !118, line: 22, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !323, line: 28, baseType: !190)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1224, file: !1225, line: 836, baseType: !1465, size: 32, offset: 5152)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1224, file: !1225, line: 840, baseType: !148, size: 64, offset: 5184)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1224, file: !1225, line: 849, baseType: !1223, size: 64, offset: 5248)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1224, file: !1225, line: 852, baseType: !1223, size: 64, offset: 5312)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1224, file: !1225, line: 857, baseType: !124, size: 128, offset: 5376)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1224, file: !1225, line: 858, baseType: !124, size: 128, offset: 5504)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1224, file: !1225, line: 859, baseType: !1223, size: 64, offset: 5632)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1224, file: !1225, line: 867, baseType: !124, size: 128, offset: 5696)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1224, file: !1225, line: 868, baseType: !124, size: 128, offset: 5824)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1224, file: !1225, line: 871, baseType: !1477, size: 64, offset: 5952)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1485, !1486, !1493, !1494}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1478, file: !53, line: 61, baseType: !1237, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1478, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !53, line: 63, baseType: !249, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1478, file: !53, line: 65, baseType: !1484, size: 256, offset: 64)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 256, elements: !178)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1478, file: !53, line: 66, baseType: !644, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1478, file: !53, line: 68, baseType: !1487, size: 128, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1488, line: 40, baseType: !1489)
!1488 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1488, line: 36, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1489, file: !1488, line: 37, baseType: !249)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1489, file: !1488, line: 38, baseType: !124, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1478, file: !53, line: 69, baseType: !379, size: 128, align: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1478, file: !53, line: 70, baseType: !1495, size: 128, offset: 640)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1496, size: 128, elements: !1378)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1496, file: !53, line: 55, baseType: !190, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1496, file: !53, line: 56, baseType: !1500, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1224, file: !1225, line: 872, baseType: !1503, size: 512, offset: 6016)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 512, elements: !178)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1224, file: !1225, line: 873, baseType: !124, size: 128, offset: 6528)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1224, file: !1225, line: 874, baseType: !124, size: 128, offset: 6656)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1224, file: !1225, line: 876, baseType: !1507, size: 64, offset: 6784)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1509, line: 26, size: 192, elements: !1510)
!1509 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1508, file: !1509, line: 27, baseType: !7, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1508, file: !1509, line: 28, baseType: !1513, size: 128, offset: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1514, line: 43, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !1514, line: 44, baseType: !789)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1513, file: !1514, line: 45, baseType: !124, size: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1224, file: !1225, line: 879, baseType: !714, size: 64, offset: 6848)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1224, file: !1225, line: 882, baseType: !714, size: 64, offset: 6912)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1224, file: !1225, line: 884, baseType: !137, size: 64, offset: 6976)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1224, file: !1225, line: 885, baseType: !137, size: 64, offset: 7040)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1224, file: !1225, line: 890, baseType: !137, size: 64, offset: 7104)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1224, file: !1225, line: 891, baseType: !1524, size: 128, offset: 7168)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1225, line: 242, size: 128, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1524, file: !1225, line: 244, baseType: !137, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1524, file: !1225, line: 245, baseType: !137, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !1225, line: 246, baseType: !789, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1224, file: !1225, line: 900, baseType: !148, size: 64, offset: 7296)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1224, file: !1225, line: 901, baseType: !148, size: 64, offset: 7360)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1224, file: !1225, line: 904, baseType: !137, size: 64, offset: 7424)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1224, file: !1225, line: 907, baseType: !137, size: 64, offset: 7488)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1224, file: !1225, line: 910, baseType: !148, size: 64, offset: 7552)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1224, file: !1225, line: 911, baseType: !148, size: 64, offset: 7616)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1224, file: !1225, line: 914, baseType: !1536, size: 640, offset: 7680)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1537, line: 123, size: 640, elements: !1538)
!1537 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1538 = !{!1539, !1545, !1546}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1536, file: !1537, line: 124, baseType: !1540, size: 576)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1541, size: 576, elements: !291)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1537, line: 108, size: 192, elements: !1542)
!1542 = !{!1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1541, file: !1537, line: 109, baseType: !137, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1541, file: !1537, line: 110, baseType: !1350, size: 128, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1536, file: !1537, line: 125, baseType: !7, size: 32, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1536, file: !1537, line: 126, baseType: !7, size: 32, offset: 608)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1224, file: !1225, line: 917, baseType: !1548, size: 192, offset: 8320)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1537, line: 134, size: 192, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1548, file: !1537, line: 135, baseType: !379, size: 128, align: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1548, file: !1537, line: 136, baseType: !7, size: 32, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1224, file: !1225, line: 923, baseType: !1553, size: 64, offset: 8512)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1556, line: 111, size: 1280, elements: !1557)
!1556 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1577, !1578, !1579, !1580, !1581, !1582, !1689, !1690, !1691, !1692, !1718, !1721, !1731}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1555, file: !1556, line: 112, baseType: !756, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1555, file: !1556, line: 120, baseType: !441, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1555, file: !1556, line: 121, baseType: !449, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1555, file: !1556, line: 122, baseType: !441, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1555, file: !1556, line: 123, baseType: !449, size: 32, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1555, file: !1556, line: 124, baseType: !441, size: 32, offset: 160)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1555, file: !1556, line: 125, baseType: !449, size: 32, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1555, file: !1556, line: 126, baseType: !441, size: 32, offset: 224)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1555, file: !1556, line: 127, baseType: !449, size: 32, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1555, file: !1556, line: 128, baseType: !7, size: 32, offset: 288)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1555, file: !1556, line: 129, baseType: !1569, size: 64, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1570, line: 26, baseType: !1571)
!1570 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1570, line: 24, size: 64, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1571, file: !1570, line: 25, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 2)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1555, file: !1556, line: 130, baseType: !1569, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1555, file: !1556, line: 131, baseType: !1569, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1555, file: !1556, line: 132, baseType: !1569, size: 64, offset: 512)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1555, file: !1556, line: 133, baseType: !1569, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1555, file: !1556, line: 135, baseType: !219, size: 8, offset: 640)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1555, file: !1556, line: 137, baseType: !1583, size: 64, offset: 704)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1585, line: 189, size: 1664, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1588, !1591, !1596, !1597, !1600, !1601, !1606, !1607, !1608, !1609, !1611, !1612, !1613, !1614, !1615, !1653, !1674}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1584, file: !1585, line: 190, baseType: !1237, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1584, file: !1585, line: 191, baseType: !1589, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1585, line: 28, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !118, line: 98, baseType: !1450)
!1591 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 192, baseType: !1592, size: 192, offset: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 192, size: 192, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1592, file: !1585, line: 193, baseType: !124, size: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1592, file: !1585, line: 194, baseType: !769, size: 192, align: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1584, file: !1585, line: 199, baseType: !776, size: 256, offset: 256)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1584, file: !1585, line: 200, baseType: !1598, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1585, line: 200, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1584, file: !1585, line: 201, baseType: !119, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 202, baseType: !1602, size: 64, offset: 640)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 202, size: 64, elements: !1603)
!1603 = !{!1604, !1605}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1602, file: !1585, line: 203, baseType: !545, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1602, file: !1585, line: 204, baseType: !545, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1584, file: !1585, line: 206, baseType: !545, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1584, file: !1585, line: 207, baseType: !441, size: 32, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1584, file: !1585, line: 208, baseType: !449, size: 32, offset: 800)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1584, file: !1585, line: 209, baseType: !1610, size: 32, offset: 832)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1585, line: 31, baseType: !565)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1584, file: !1585, line: 210, baseType: !228, size: 16, offset: 864)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1584, file: !1585, line: 211, baseType: !228, size: 16, offset: 880)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1584, file: !1585, line: 215, baseType: !1212, size: 16, offset: 896)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1584, file: !1585, line: 222, baseType: !148, size: 64, offset: 960)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 239, baseType: !1616, size: 320, offset: 1024)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 239, size: 320, elements: !1617)
!1617 = !{!1618, !1645}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1616, file: !1585, line: 240, baseType: !1619, size: 320)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1585, line: 108, size: 320, elements: !1620)
!1620 = !{!1621, !1622, !1634, !1637, !1644}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1619, file: !1585, line: 110, baseType: !148, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1585, line: 111, baseType: !1623, size: 64, offset: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1585, line: 111, size: 64, elements: !1624)
!1624 = !{!1625, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1623, file: !1585, line: 112, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1623, file: !1585, line: 112, size: 64, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1626, file: !1585, line: 114, baseType: !868, size: 16)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1626, file: !1585, line: 115, baseType: !1630, size: 48, offset: 16)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 48, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 6)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1623, file: !1585, line: 121, baseType: !148, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1619, file: !1585, line: 123, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1585, line: 96, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1619, file: !1585, line: 124, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1585, line: 102, size: 192, elements: !1640)
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1639, file: !1585, line: 103, baseType: !379, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1639, file: !1585, line: 104, baseType: !1237, size: 32, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1639, file: !1585, line: 105, baseType: !496, size: 8, offset: 160)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1619, file: !1585, line: 125, baseType: !144, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !1585, line: 241, baseType: !1646, size: 320)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !1585, line: 241, size: 320, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1646, file: !1585, line: 242, baseType: !148, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1646, file: !1585, line: 243, baseType: !148, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !1585, line: 244, baseType: !1635, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1646, file: !1585, line: 245, baseType: !1638, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1646, file: !1585, line: 246, baseType: !290, size: 64, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1585, line: 254, baseType: !1654, size: 256, offset: 1344)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1585, line: 254, size: 256, elements: !1655)
!1655 = !{!1656, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1654, file: !1585, line: 255, baseType: !1657, size: 256)
!1657 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1585, line: 128, size: 256, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1657, file: !1585, line: 129, baseType: !119, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1657, file: !1585, line: 130, baseType: !1661, size: 256)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !178)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !1585, line: 256, baseType: !1663, size: 256)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !1585, line: 256, size: 256, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1663, file: !1585, line: 258, baseType: !124, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1663, file: !1585, line: 259, baseType: !1667, size: 128, offset: 128)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1668, line: 22, size: 128, elements: !1669)
!1668 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1669 = !{!1670, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1667, file: !1668, line: 23, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1668, line: 23, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1667, file: !1668, line: 24, baseType: !148, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1584, file: !1585, line: 274, baseType: !1675, size: 64, offset: 1600)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1585, line: 170, size: 192, elements: !1677)
!1677 = !{!1678, !1687, !1688}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1676, file: !1585, line: 171, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1585, line: 165, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!190, !1583, !1683, !1685, !1583}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1636)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1657)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1676, file: !1585, line: 172, baseType: !1583, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1676, file: !1585, line: 173, baseType: !1635, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1555, file: !1556, line: 138, baseType: !1583, size: 64, offset: 768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1555, file: !1556, line: 139, baseType: !1583, size: 64, offset: 832)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1555, file: !1556, line: 140, baseType: !1583, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1555, file: !1556, line: 145, baseType: !1693, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1695, line: 13, size: 896, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1694, file: !1695, line: 14, baseType: !1237, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1694, file: !1695, line: 15, baseType: !756, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1694, file: !1695, line: 16, baseType: !756, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1694, file: !1695, line: 21, baseType: !780, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1694, file: !1695, line: 27, baseType: !148, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1694, file: !1695, line: 28, baseType: !148, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1694, file: !1695, line: 29, baseType: !780, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1694, file: !1695, line: 32, baseType: !648, size: 128, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1694, file: !1695, line: 33, baseType: !441, size: 32, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1694, file: !1695, line: 37, baseType: !780, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1694, file: !1695, line: 44, baseType: !1708, size: 256, offset: 640)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1709, line: 15, size: 256, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !1709, line: 16, baseType: !789)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1708, file: !1709, line: 18, baseType: !190, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1708, file: !1709, line: 19, baseType: !190, size: 32, offset: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1708, file: !1709, line: 20, baseType: !190, size: 32, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1708, file: !1709, line: 21, baseType: !190, size: 32, offset: 96)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1708, file: !1709, line: 22, baseType: !148, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1708, file: !1709, line: 23, baseType: !148, size: 64, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1555, file: !1556, line: 146, baseType: !1719, size: 64, offset: 1024)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !442, line: 18, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1555, file: !1556, line: 147, baseType: !1722, size: 64, offset: 1088)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1556, line: 25, size: 64, elements: !1724)
!1724 = !{!1725, !1726, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1723, file: !1556, line: 26, baseType: !756, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1723, file: !1556, line: 27, baseType: !190, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1723, file: !1556, line: 28, baseType: !1728, offset: 64)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, elements: !1729)
!1729 = !{!1730}
!1730 = !DISubrange(count: 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1556, line: 149, baseType: !1732, size: 128, offset: 1152)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1555, file: !1556, line: 149, size: 128, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1732, file: !1556, line: 150, baseType: !190, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1732, file: !1556, line: 151, baseType: !379, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1224, file: !1225, line: 926, baseType: !1553, size: 64, offset: 8576)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1224, file: !1225, line: 929, baseType: !1553, size: 64, offset: 8640)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1224, file: !1225, line: 933, baseType: !1583, size: 64, offset: 8704)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1224, file: !1225, line: 943, baseType: !1740, size: 128, offset: 8768)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 128, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 16)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1224, file: !1225, line: 945, baseType: !1744, size: 64, offset: 8896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1225, line: 49, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1224, file: !1225, line: 956, baseType: !1747, size: 64, offset: 8960)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1225, line: 45, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1224, file: !1225, line: 959, baseType: !1750, size: 64, offset: 9024)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1225, line: 959, flags: DIFlagFwdDecl)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1224, file: !1225, line: 962, baseType: !1753, size: 64, offset: 9088)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1225, line: 66, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1224, file: !1225, line: 966, baseType: !1756, size: 64, offset: 9152)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1758, line: 35, flags: DIFlagFwdDecl)
!1758 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1224, file: !1225, line: 969, baseType: !1760, size: 64, offset: 9216)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1762, line: 82, size: 7296, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1799, !1808, !1809, !1811, !1812, !1813, !1816, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1846, !1847, !1854, !1855, !1856, !1857, !1858, !1859}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1761, file: !1762, line: 83, baseType: !1237, size: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1761, file: !1762, line: 84, baseType: !756, size: 32, offset: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1761, file: !1762, line: 85, baseType: !190, size: 32, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1761, file: !1762, line: 86, baseType: !124, size: 128, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1761, file: !1762, line: 88, baseType: !1487, size: 128, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1761, file: !1762, line: 91, baseType: !1223, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1761, file: !1762, line: 94, baseType: !1771, size: 192, offset: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1772, line: 30, size: 192, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1771, file: !1772, line: 31, baseType: !124, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1771, file: !1772, line: 32, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1777, line: 25, baseType: !1778)
!1777 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1777, line: 23, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1778, file: !1777, line: 24, baseType: !1377, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1761, file: !1762, line: 97, baseType: !644, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1761, file: !1762, line: 100, baseType: !190, size: 32, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1761, file: !1762, line: 106, baseType: !190, size: 32, offset: 736)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1761, file: !1762, line: 107, baseType: !1223, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1761, file: !1762, line: 110, baseType: !190, size: 32, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1761, file: !1762, line: 111, baseType: !7, size: 32, offset: 864)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1761, file: !1762, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1761, file: !1762, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1761, file: !1762, line: 128, baseType: !190, size: 32, offset: 928)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1761, file: !1762, line: 129, baseType: !124, size: 128, offset: 960)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1761, file: !1762, line: 132, baseType: !1299, size: 512, offset: 1088)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1761, file: !1762, line: 133, baseType: !1307, size: 64, offset: 1600)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1761, file: !1762, line: 140, baseType: !1794, size: 256, offset: 1664)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1795, size: 256, elements: !1575)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1762, line: 38, size: 128, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1795, file: !1762, line: 39, baseType: !137, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1795, file: !1762, line: 40, baseType: !137, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1761, file: !1762, line: 146, baseType: !1800, size: 192, offset: 1920)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1762, line: 66, size: 192, elements: !1801)
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1800, file: !1762, line: 67, baseType: !1803, size: 192)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1762, line: 47, size: 192, elements: !1804)
!1804 = !{!1805, !1806, !1807}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1803, file: !1762, line: 48, baseType: !782, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1803, file: !1762, line: 49, baseType: !782, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1803, file: !1762, line: 50, baseType: !782, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1761, file: !1762, line: 150, baseType: !1536, size: 640, offset: 2112)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1761, file: !1762, line: 153, baseType: !1810, size: 256, offset: 2752)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1477, size: 256, elements: !178)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1761, file: !1762, line: 159, baseType: !1477, size: 64, offset: 3008)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1761, file: !1762, line: 162, baseType: !190, size: 32, offset: 3072)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1761, file: !1762, line: 164, baseType: !1814, size: 64, offset: 3136)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1762, line: 164, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1761, file: !1762, line: 175, baseType: !1817, size: 32, offset: 3200)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !402, line: 805, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 798, size: 32, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1818, file: !402, line: 803, baseType: !401, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1818, file: !402, line: 804, baseType: !249, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1761, file: !1762, line: 176, baseType: !137, size: 64, offset: 3264)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1761, file: !1762, line: 176, baseType: !137, size: 64, offset: 3328)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1761, file: !1762, line: 176, baseType: !137, size: 64, offset: 3392)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1761, file: !1762, line: 176, baseType: !137, size: 64, offset: 3456)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1761, file: !1762, line: 177, baseType: !137, size: 64, offset: 3520)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1761, file: !1762, line: 178, baseType: !137, size: 64, offset: 3584)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1761, file: !1762, line: 179, baseType: !1524, size: 128, offset: 3648)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1761, file: !1762, line: 180, baseType: !148, size: 64, offset: 3776)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1761, file: !1762, line: 180, baseType: !148, size: 64, offset: 3840)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1761, file: !1762, line: 180, baseType: !148, size: 64, offset: 3904)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1761, file: !1762, line: 180, baseType: !148, size: 64, offset: 3968)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1761, file: !1762, line: 181, baseType: !148, size: 64, offset: 4032)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1761, file: !1762, line: 181, baseType: !148, size: 64, offset: 4096)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1761, file: !1762, line: 181, baseType: !148, size: 64, offset: 4160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1761, file: !1762, line: 181, baseType: !148, size: 64, offset: 4224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1761, file: !1762, line: 182, baseType: !148, size: 64, offset: 4288)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1761, file: !1762, line: 182, baseType: !148, size: 64, offset: 4352)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1761, file: !1762, line: 182, baseType: !148, size: 64, offset: 4416)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1761, file: !1762, line: 182, baseType: !148, size: 64, offset: 4480)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1761, file: !1762, line: 183, baseType: !148, size: 64, offset: 4544)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1761, file: !1762, line: 183, baseType: !148, size: 64, offset: 4608)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1761, file: !1762, line: 184, baseType: !1844, offset: 4672)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1845, line: 12, elements: !263)
!1845 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1761, file: !1762, line: 192, baseType: !141, size: 64, offset: 4672)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1761, file: !1762, line: 203, baseType: !1848, size: 2048, offset: 4736)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1849, size: 2048, elements: !1741)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1850, line: 43, size: 128, elements: !1851)
!1850 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1851 = !{!1852, !1853}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1849, file: !1850, line: 44, baseType: !338, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1849, file: !1850, line: 45, baseType: !338, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1761, file: !1762, line: 220, baseType: !496, size: 8, offset: 6784)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1761, file: !1762, line: 221, baseType: !1212, size: 16, offset: 6800)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1761, file: !1762, line: 222, baseType: !1212, size: 16, offset: 6816)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1761, file: !1762, line: 224, baseType: !983, size: 64, offset: 6848)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1761, file: !1762, line: 227, baseType: !1180, size: 192, offset: 6912)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1761, file: !1762, line: 233, baseType: !1180, size: 192, offset: 7104)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1224, file: !1225, line: 970, baseType: !1861, size: 64, offset: 9280)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1762, line: 20, size: 16576, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1862, file: !1762, line: 21, baseType: !249)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1862, file: !1762, line: 22, baseType: !1237, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1862, file: !1762, line: 23, baseType: !1487, size: 128, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1862, file: !1762, line: 24, baseType: !1868, size: 16384, offset: 192)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1869, size: 16384, elements: !295)
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
!1880 = !{null, !190}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1872, file: !1772, line: 38, baseType: !148, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1872, file: !1772, line: 44, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1876, line: 22, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1876, line: 21, baseType: !1886)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1872, file: !1772, line: 46, baseType: !1776, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1224, file: !1225, line: 971, baseType: !1776, size: 64, offset: 9344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1224, file: !1225, line: 972, baseType: !1776, size: 64, offset: 9408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1224, file: !1225, line: 974, baseType: !1776, size: 64, offset: 9472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1224, file: !1225, line: 975, baseType: !1771, size: 192, offset: 9536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1224, file: !1225, line: 976, baseType: !148, size: 64, offset: 9728)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1224, file: !1225, line: 977, baseType: !336, size: 64, offset: 9792)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1224, file: !1225, line: 978, baseType: !7, size: 32, offset: 9856)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1224, file: !1225, line: 980, baseType: !382, size: 64, offset: 9920)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1224, file: !1225, line: 989, baseType: !1898, size: 128, offset: 9984)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1899, line: 35, size: 128, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1900 = !{!1901, !1902, !1903}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1898, file: !1899, line: 36, baseType: !190, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1898, file: !1899, line: 37, baseType: !756, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1898, file: !1899, line: 38, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1899, line: 23, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1224, file: !1225, line: 992, baseType: !137, size: 64, offset: 10112)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1224, file: !1225, line: 993, baseType: !137, size: 64, offset: 10176)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1224, file: !1225, line: 996, baseType: !249, offset: 10240)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1224, file: !1225, line: 999, baseType: !789, offset: 10240)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1224, file: !1225, line: 1001, baseType: !1911, size: 64, offset: 10240)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1225, line: 636, size: 64, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1911, file: !1225, line: 637, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1224, file: !1225, line: 1005, baseType: !761, size: 128, offset: 10304)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1224, file: !1225, line: 1007, baseType: !1223, size: 64, offset: 10432)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1224, file: !1225, line: 1009, baseType: !1918, size: 64, offset: 10496)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1225, line: 1009, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1224, file: !1225, line: 1043, baseType: !119, size: 64, offset: 10560)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1224, file: !1225, line: 1046, baseType: !1922, size: 64, offset: 10624)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1225, line: 41, flags: DIFlagFwdDecl)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1224, file: !1225, line: 1050, baseType: !1925, size: 64, offset: 10688)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1225, line: 42, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1224, file: !1225, line: 1054, baseType: !1928, size: 64, offset: 10752)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1225, line: 55, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1224, file: !1225, line: 1056, baseType: !1931, size: 64, offset: 10816)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1225, line: 40, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1224, file: !1225, line: 1058, baseType: !1934, size: 64, offset: 10880)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1936, line: 99, size: 704, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1944, !1963, !1964}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1935, file: !1936, line: 100, baseType: !780, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1935, file: !1936, line: 101, baseType: !756, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1935, file: !1936, line: 102, baseType: !756, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 105, baseType: !249, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1935, file: !1936, line: 107, baseType: !228, size: 16, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1935, file: !1936, line: 109, baseType: !748, size: 128, offset: 192)
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
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1953, file: !1936, line: 84, baseType: !124, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1953, file: !1936, line: 85, baseType: !944, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, scope: !1946, file: !1936, line: 87, baseType: !1958, size: 128, offset: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1946, file: !1936, line: 87, size: 128, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1958, file: !1936, line: 88, baseType: !648, size: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1958, file: !1936, line: 89, baseType: !379, size: 128, align: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1936, line: 92, baseType: !7, size: 32, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1935, file: !1936, line: 111, baseType: !644, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1935, file: !1936, line: 113, baseType: !1965, size: 256, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1966, line: 102, size: 256, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1965, file: !1966, line: 103, baseType: !780, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1966, line: 104, baseType: !124, size: 128, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1965, file: !1966, line: 105, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1966, line: 21, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1224, file: !1225, line: 1061, baseType: !1977, size: 64, offset: 10944)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1225, line: 43, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1224, file: !1225, line: 1064, baseType: !148, size: 64, offset: 11008)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1224, file: !1225, line: 1065, baseType: !1981, size: 64, offset: 11072)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1772, line: 14, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1772, line: 12, size: 384, elements: !1984)
!1984 = !{!1985}
!1985 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1772, line: 13, baseType: !1986, size: 384)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1983, file: !1772, line: 13, size: 384, elements: !1987)
!1987 = !{!1988, !1989, !1990, !1991}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1986, file: !1772, line: 13, baseType: !190, size: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1986, file: !1772, line: 13, baseType: !190, size: 32, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1986, file: !1772, line: 13, baseType: !190, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1986, file: !1772, line: 13, baseType: !1992, size: 256, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1993, line: 32, size: 256, elements: !1994)
!1993 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2000, !2013, !2019, !2028, !2048, !2053}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1992, file: !1993, line: 37, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 34, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1996, file: !1993, line: 35, baseType: !1466, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1996, file: !1993, line: 36, baseType: !447, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1992, file: !1993, line: 45, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 40, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006, !2012}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2001, file: !1993, line: 41, baseType: !2004, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !323, line: 95, baseType: !190)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2001, file: !1993, line: 42, baseType: !190, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2001, file: !1993, line: 43, baseType: !2007, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1993, line: 11, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1993, line: 8, size: 64, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2008, file: !1993, line: 9, baseType: !190, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2008, file: !1993, line: 10, baseType: !119, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2001, file: !1993, line: 44, baseType: !190, size: 32, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1992, file: !1993, line: 52, baseType: !2014, size: 128)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 48, size: 128, elements: !2015)
!2015 = !{!2016, !2017, !2018}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2014, file: !1993, line: 49, baseType: !1466, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2014, file: !1993, line: 50, baseType: !447, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2014, file: !1993, line: 51, baseType: !2007, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1992, file: !1993, line: 61, baseType: !2020, size: 256)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 55, size: 256, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2027}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !1993, line: 56, baseType: !1466, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !1993, line: 57, baseType: !447, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2020, file: !1993, line: 58, baseType: !190, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2020, file: !1993, line: 59, baseType: !2026, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !323, line: 94, baseType: !324)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2020, file: !1993, line: 60, baseType: !2026, size: 64, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1992, file: !1993, line: 95, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 64, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2029, file: !1993, line: 65, baseType: !119, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !1993, line: 77, baseType: !2033, size: 192, offset: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !1993, line: 77, size: 192, elements: !2034)
!2034 = !{!2035, !2036, !2043}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2033, file: !1993, line: 82, baseType: !1212, size: 16)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2033, file: !1993, line: 88, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 84, size: 192, elements: !2038)
!2038 = !{!2039, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2037, file: !1993, line: 85, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 64, elements: !1337)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2037, file: !1993, line: 86, baseType: !119, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2037, file: !1993, line: 87, baseType: !119, size: 64, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2033, file: !1993, line: 93, baseType: !2044, size: 96)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2033, file: !1993, line: 90, size: 96, elements: !2045)
!2045 = !{!2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2044, file: !1993, line: 91, baseType: !2040, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2044, file: !1993, line: 92, baseType: !205, size: 32, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1992, file: !1993, line: 101, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 98, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2049, file: !1993, line: 99, baseType: !325, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2049, file: !1993, line: 100, baseType: !190, size: 32, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1992, file: !1993, line: 108, baseType: !2054, size: 128)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1992, file: !1993, line: 104, size: 128, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2054, file: !1993, line: 105, baseType: !119, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2054, file: !1993, line: 106, baseType: !190, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2054, file: !1993, line: 107, baseType: !7, size: 32, offset: 96)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1224, file: !1225, line: 1067, baseType: !1844, offset: 11136)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1224, file: !1225, line: 1099, baseType: !2061, size: 64, offset: 11136)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1225, line: 56, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1224, file: !1225, line: 1103, baseType: !124, size: 128, offset: 11200)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1224, file: !1225, line: 1104, baseType: !2065, size: 64, offset: 11328)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1225, line: 46, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1224, file: !1225, line: 1105, baseType: !1180, size: 192, offset: 11392)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1224, file: !1225, line: 1106, baseType: !7, size: 32, offset: 11584)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1224, file: !1225, line: 1109, baseType: !2070, size: 128, offset: 11648)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2071, size: 128, elements: !1575)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1225, line: 51, flags: DIFlagFwdDecl)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1224, file: !1225, line: 1110, baseType: !1180, size: 192, offset: 11776)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1224, file: !1225, line: 1111, baseType: !124, size: 128, offset: 11968)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1224, file: !1225, line: 1173, baseType: !2076, size: 64, offset: 12096)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2078, line: 62, size: 256, align: 256, elements: !2079)
!2078 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2087}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2077, file: !2078, line: 75, baseType: !205, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2077, file: !2078, line: 90, baseType: !205, size: 32, offset: 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2077, file: !2078, line: 124, baseType: !2083, size: 64, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !2078, line: 109, size: 64, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2083, file: !2078, line: 110, baseType: !139, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2083, file: !2078, line: 112, baseType: !139, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2077, file: !2078, line: 144, baseType: !205, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1224, file: !1225, line: 1174, baseType: !204, size: 32, offset: 12160)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1224, file: !1225, line: 1179, baseType: !148, size: 64, offset: 12224)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1224, file: !1225, line: 1182, baseType: !2091, size: 128, offset: 12288)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1160, line: 76, size: 128, elements: !2092)
!2092 = !{!2093, !2098, !2099}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2091, file: !1160, line: 85, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2095, line: 7, size: 64, elements: !2096)
!2095 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2094, file: !2095, line: 12, baseType: !1374, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2091, file: !1160, line: 88, baseType: !496, size: 8, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2091, file: !1160, line: 95, baseType: !496, size: 8, offset: 72)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !1225, line: 1184, baseType: !2101, size: 128, offset: 12416)
!2101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !1225, line: 1184, size: 128, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2101, file: !1225, line: 1185, baseType: !1237, size: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2101, file: !1225, line: 1186, baseType: !379, size: 128, align: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1224, file: !1225, line: 1190, baseType: !2106, size: 64, offset: 12544)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1225, line: 53, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1224, file: !1225, line: 1192, baseType: !2109, size: 128, offset: 12608)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1160, line: 64, size: 128, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2109, file: !1160, line: 65, baseType: !730, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2109, file: !1160, line: 67, baseType: !205, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2109, file: !1160, line: 68, baseType: !205, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1224, file: !1225, line: 1206, baseType: !190, size: 32, offset: 12736)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1224, file: !1225, line: 1207, baseType: !190, size: 32, offset: 12768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1224, file: !1225, line: 1209, baseType: !148, size: 64, offset: 12800)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1224, file: !1225, line: 1219, baseType: !137, size: 64, offset: 12864)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1224, file: !1225, line: 1220, baseType: !137, size: 64, offset: 12928)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1224, file: !1225, line: 1317, baseType: !190, size: 32, offset: 12992)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1224, file: !1225, line: 1319, baseType: !1223, size: 64, offset: 13056)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1224, file: !1225, line: 1322, baseType: !2122, size: 64, offset: 13120)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2124, line: 56, size: 512, elements: !2125)
!2124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2125 = !{!2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2123, file: !2124, line: 57, baseType: !2122, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2123, file: !2124, line: 58, baseType: !119, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2123, file: !2124, line: 59, baseType: !148, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2123, file: !2124, line: 60, baseType: !148, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2123, file: !2124, line: 61, baseType: !829, size: 64, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2123, file: !2124, line: 62, baseType: !7, size: 32, offset: 320)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2123, file: !2124, line: 63, baseType: !136, size: 64, offset: 384)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2123, file: !2124, line: 64, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1224, file: !1225, line: 1326, baseType: !1237, size: 32, offset: 13184)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1224, file: !1225, line: 1342, baseType: !119, size: 64, offset: 13248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1224, file: !1225, line: 1343, baseType: !139, size: 64, offset: 13312)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1224, file: !1225, line: 1344, baseType: !137, size: 64, offset: 13376)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1224, file: !1225, line: 1345, baseType: !139, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1224, file: !1225, line: 1346, baseType: !139, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1224, file: !1225, line: 1347, baseType: !139, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1224, file: !1225, line: 1348, baseType: !379, size: 128, align: 64, offset: 13504)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1224, file: !1225, line: 1358, baseType: !2145, size: 34816, offset: 13824)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2146, line: 485, size: 34816, elements: !2147)
!2146 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2177, !2178, !2179, !2180, !2181, !2182, !2185, !2186, !2187}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2145, file: !2146, line: 487, baseType: !2149, size: 192)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2150, size: 192, elements: !291)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2151, line: 16, size: 64, elements: !2152)
!2151 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2150, file: !2151, line: 17, baseType: !868, size: 16)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2150, file: !2151, line: 18, baseType: !868, size: 16, offset: 16)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2150, file: !2151, line: 19, baseType: !868, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !2151, line: 19, baseType: !868, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2150, file: !2151, line: 19, baseType: !868, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2150, file: !2151, line: 19, baseType: !868, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2150, file: !2151, line: 19, baseType: !868, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2150, file: !2151, line: 20, baseType: !868, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2150, file: !2151, line: 20, baseType: !868, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2150, file: !2151, line: 20, baseType: !868, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2150, file: !2151, line: 20, baseType: !868, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2150, file: !2151, line: 20, baseType: !868, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2150, file: !2151, line: 20, baseType: !868, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2145, file: !2146, line: 491, baseType: !148, size: 64, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2145, file: !2146, line: 495, baseType: !228, size: 16, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2145, file: !2146, line: 496, baseType: !228, size: 16, offset: 272)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2145, file: !2146, line: 497, baseType: !228, size: 16, offset: 288)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2145, file: !2146, line: 498, baseType: !228, size: 16, offset: 304)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2145, file: !2146, line: 502, baseType: !148, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2145, file: !2146, line: 503, baseType: !148, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2145, file: !2146, line: 514, baseType: !2174, size: 256, offset: 448)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 256, elements: !178)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2146, line: 483, flags: DIFlagFwdDecl)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2145, file: !2146, line: 516, baseType: !148, size: 64, offset: 704)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2145, file: !2146, line: 518, baseType: !148, size: 64, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2145, file: !2146, line: 520, baseType: !148, size: 64, offset: 832)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2145, file: !2146, line: 521, baseType: !148, size: 64, offset: 896)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2145, file: !2146, line: 522, baseType: !148, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2145, file: !2146, line: 528, baseType: !2183, size: 64, offset: 1024)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2146, line: 10, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2145, file: !2146, line: 535, baseType: !148, size: 64, offset: 1088)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2145, file: !2146, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2145, file: !2146, line: 540, baseType: !2188, size: 33280, offset: 1536)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2189, line: 317, size: 33280, elements: !2190)
!2189 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2188, file: !2189, line: 330, baseType: !7, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2188, file: !2189, line: 337, baseType: !148, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2188, file: !2189, line: 348, baseType: !2194, size: 32768, offset: 512)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2189, line: 304, size: 32768, elements: !2195)
!2195 = !{!2196, !2211, !2250, !2300, !2313}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2194, file: !2189, line: 305, baseType: !2197, size: 896)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2189, line: 12, size: 896, elements: !2198)
!2198 = !{!2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2210}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2197, file: !2189, line: 13, baseType: !204, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2197, file: !2189, line: 14, baseType: !204, size: 32, offset: 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2197, file: !2189, line: 15, baseType: !204, size: 32, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2197, file: !2189, line: 16, baseType: !204, size: 32, offset: 96)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2197, file: !2189, line: 17, baseType: !204, size: 32, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2197, file: !2189, line: 18, baseType: !204, size: 32, offset: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2197, file: !2189, line: 19, baseType: !204, size: 32, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2197, file: !2189, line: 22, baseType: !2207, size: 640, offset: 224)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 640, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 20)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2197, file: !2189, line: 25, baseType: !204, size: 32, offset: 864)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2194, file: !2189, line: 306, baseType: !2212, size: 4096, align: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2189, line: 34, size: 4096, align: 128, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2233, !2234, !2235, !2239, !2241, !2245}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2212, file: !2189, line: 35, baseType: !868, size: 16)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2212, file: !2189, line: 36, baseType: !868, size: 16, offset: 16)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2212, file: !2189, line: 37, baseType: !868, size: 16, offset: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2212, file: !2189, line: 38, baseType: !868, size: 16, offset: 48)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !2189, line: 39, baseType: !2219, size: 128, offset: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !2189, line: 39, size: 128, elements: !2220)
!2220 = !{!2221, !2226}
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 40, baseType: !2222, size: 128)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 40, size: 128, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2222, file: !2189, line: 41, baseType: !137, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2222, file: !2189, line: 42, baseType: !137, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2219, file: !2189, line: 44, baseType: !2227, size: 128)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2189, line: 44, size: 128, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2227, file: !2189, line: 45, baseType: !204, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2227, file: !2189, line: 46, baseType: !204, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2227, file: !2189, line: 47, baseType: !204, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2227, file: !2189, line: 48, baseType: !204, size: 32, offset: 96)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2212, file: !2189, line: 51, baseType: !204, size: 32, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2212, file: !2189, line: 52, baseType: !204, size: 32, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2212, file: !2189, line: 55, baseType: !2236, size: 1024, offset: 256)
!2236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 1024, elements: !2237)
!2237 = !{!2238}
!2238 = !DISubrange(count: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2212, file: !2189, line: 58, baseType: !2240, size: 2048, offset: 1280)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !295)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2212, file: !2189, line: 60, baseType: !2242, size: 384, offset: 3328)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 384, elements: !2243)
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
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2251, file: !2189, line: 80, baseType: !204, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2251, file: !2189, line: 81, baseType: !204, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2251, file: !2189, line: 82, baseType: !204, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2251, file: !2189, line: 83, baseType: !204, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2251, file: !2189, line: 84, baseType: !204, size: 32, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2251, file: !2189, line: 85, baseType: !204, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2251, file: !2189, line: 86, baseType: !204, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2251, file: !2189, line: 88, baseType: !2207, size: 640, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2251, file: !2189, line: 89, baseType: !1359, size: 8, offset: 864)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2251, file: !2189, line: 90, baseType: !1359, size: 8, offset: 872)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2251, file: !2189, line: 91, baseType: !1359, size: 8, offset: 880)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2251, file: !2189, line: 92, baseType: !1359, size: 8, offset: 888)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2251, file: !2189, line: 93, baseType: !1359, size: 8, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2251, file: !2189, line: 94, baseType: !1359, size: 8, offset: 904)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2251, file: !2189, line: 95, baseType: !2268, size: 64, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2270, line: 11, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2269, file: !2270, line: 12, baseType: !325, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2269, file: !2270, line: 13, baseType: !2274, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2276, line: 56, size: 1344, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2275, file: !2276, line: 61, baseType: !148, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2275, file: !2276, line: 62, baseType: !148, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2275, file: !2276, line: 63, baseType: !148, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2275, file: !2276, line: 64, baseType: !148, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2275, file: !2276, line: 65, baseType: !148, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2275, file: !2276, line: 66, baseType: !148, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2275, file: !2276, line: 68, baseType: !148, size: 64, offset: 384)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2275, file: !2276, line: 69, baseType: !148, size: 64, offset: 448)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2275, file: !2276, line: 70, baseType: !148, size: 64, offset: 512)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2275, file: !2276, line: 71, baseType: !148, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2275, file: !2276, line: 72, baseType: !148, size: 64, offset: 640)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2275, file: !2276, line: 73, baseType: !148, size: 64, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2275, file: !2276, line: 74, baseType: !148, size: 64, offset: 768)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2275, file: !2276, line: 75, baseType: !148, size: 64, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2275, file: !2276, line: 76, baseType: !148, size: 64, offset: 896)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2275, file: !2276, line: 81, baseType: !148, size: 64, offset: 960)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2275, file: !2276, line: 83, baseType: !148, size: 64, offset: 1024)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2275, file: !2276, line: 84, baseType: !148, size: 64, offset: 1088)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2275, file: !2276, line: 85, baseType: !148, size: 64, offset: 1152)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2275, file: !2276, line: 86, baseType: !148, size: 64, offset: 1216)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2275, file: !2276, line: 87, baseType: !148, size: 64, offset: 1280)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2251, file: !2189, line: 96, baseType: !204, size: 32, offset: 1024)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2194, file: !2189, line: 308, baseType: !2301, size: 4608, align: 512)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2189, line: 289, size: 4608, align: 512, elements: !2302)
!2302 = !{!2303, !2304, !2311}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2301, file: !2189, line: 290, baseType: !2212, size: 4096, align: 128)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2301, file: !2189, line: 291, baseType: !2305, size: 512, offset: 4096)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2189, line: 268, size: 512, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2305, file: !2189, line: 269, baseType: !137, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2305, file: !2189, line: 270, baseType: !137, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2305, file: !2189, line: 271, baseType: !2310, size: 384, offset: 128)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 384, elements: !1631)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2301, file: !2189, line: 292, baseType: !2312, offset: 4608)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, elements: !1729)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2194, file: !2189, line: 309, baseType: !2314, size: 32768)
!2314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 32768, elements: !2315)
!2315 = !{!2316}
!2316 = !DISubrange(count: 4096)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !732, line: 378, baseType: !2318, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1216, file: !732, line: 384, baseType: !1508, size: 192, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !987, file: !732, line: 500, baseType: !249, offset: 6656)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !987, file: !732, line: 501, baseType: !2322, size: 64, offset: 6656)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !732, line: 387, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !987, file: !732, line: 516, baseType: !1719, size: 64, offset: 6720)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !987, file: !732, line: 519, baseType: !366, size: 64, offset: 6784)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !987, file: !732, line: 521, baseType: !2327, size: 64, offset: 6848)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !732, line: 521, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !987, file: !732, line: 545, baseType: !756, size: 32, offset: 6912)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !987, file: !732, line: 548, baseType: !496, size: 8, offset: 6944)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !987, file: !732, line: 550, baseType: !2332, offset: 6952)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2333, line: 142, elements: !263)
!2333 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !987, file: !732, line: 554, baseType: !1965, size: 256, offset: 6976)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !987, file: !732, line: 557, baseType: !204, size: 32, offset: 7232)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !984, file: !732, line: 565, baseType: !2337, offset: 7296)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, elements: !2338)
!2338 = !{!2339}
!2339 = !DISubrange(count: -1)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !980, file: !732, line: 151, baseType: !756, size: 32)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !973, file: !732, line: 156, baseType: !249, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !732, line: 159, baseType: !2343, size: 128)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !732, line: 159, size: 128, elements: !2344)
!2344 = !{!2345, !2409}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2343, file: !732, line: 161, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2348)
!2348 = !{!2349, !2359, !2380, !2381, !2382, !2383, !2384, !2396, !2397, !2398}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2347, file: !31, line: 111, baseType: !2350, size: 384)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2351)
!2351 = !{!2352, !2354, !2355, !2356, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2350, file: !31, line: 20, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2350, file: !31, line: 21, baseType: !2353, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2350, file: !31, line: 22, baseType: !2353, size: 64, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2350, file: !31, line: 23, baseType: !148, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2350, file: !31, line: 24, baseType: !148, size: 64, offset: 256)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2350, file: !31, line: 25, baseType: !148, size: 64, offset: 320)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2347, file: !31, line: 112, baseType: !2360, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2362, line: 105, size: 128, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2363 = !{!2364, !2365}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2361, file: !2362, line: 110, baseType: !148, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2361, file: !2362, line: 118, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2362, line: 95, size: 448, elements: !2368)
!2368 = !{!2369, !2370, !2375, !2376, !2377, !2378, !2379}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2367, file: !2362, line: 96, baseType: !780, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2367, file: !2362, line: 97, baseType: !2371, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2362, line: 60, baseType: !2373)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{null, !2360}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2367, file: !2362, line: 98, baseType: !2371, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2367, file: !2362, line: 99, baseType: !496, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2367, file: !2362, line: 100, baseType: !496, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2367, file: !2362, line: 101, baseType: !379, size: 128, align: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2367, file: !2362, line: 102, baseType: !2360, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2347, file: !31, line: 113, baseType: !2361, size: 128, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2347, file: !31, line: 114, baseType: !1508, size: 192, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2347, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2347, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2347, file: !31, line: 117, baseType: !2385, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2387)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2387, file: !31, line: 73, baseType: !849, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2387, file: !31, line: 78, baseType: !2391, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !2346}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2387, file: !31, line: 83, baseType: !2391, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2387, file: !31, line: 89, baseType: !1036, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2347, file: !31, line: 118, baseType: !119, size: 64, offset: 896)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2347, file: !31, line: 119, baseType: !190, size: 32, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, scope: !2347, file: !31, line: 120, baseType: !2399, size: 128, offset: 1024)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2347, file: !31, line: 120, size: 128, elements: !2400)
!2400 = !{!2401, !2407}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2399, file: !31, line: 121, baseType: !2402, size: 128)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2403, line: 6, size: 128, elements: !2404)
!2403 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2402, file: !2403, line: 7, baseType: !137, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2402, file: !2403, line: 8, baseType: !137, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2399, file: !31, line: 122, baseType: !2408)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2402, elements: !1729)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2343, file: !732, line: 162, baseType: !119, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !736, file: !732, line: 176, baseType: !379, size: 128, align: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 179, baseType: !2412, size: 32, offset: 384)
!2412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 179, size: 32, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2417}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2412, file: !732, line: 184, baseType: !756, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2412, file: !732, line: 192, baseType: !7, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2412, file: !732, line: 194, baseType: !7, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2412, file: !732, line: 195, baseType: !190, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !731, file: !732, line: 199, baseType: !756, size: 32, offset: 416)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !666, file: !44, line: 1964, baseType: !2420, size: 64, offset: 1344)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!325, !605, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2425, line: 12, size: 256, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428, !2429, !2430, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2424, file: !2425, line: 13, baseType: !117, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2424, file: !2425, line: 16, baseType: !190, size: 32, offset: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2424, file: !2425, line: 23, baseType: !148, size: 64, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2424, file: !2425, line: 30, baseType: !148, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2424, file: !2425, line: 33, baseType: !2432, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !732, line: 27, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !666, file: !44, line: 1966, baseType: !2420, size: 64, offset: 1408)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !606, file: !44, line: 1424, baseType: !2436, size: 64, offset: 448)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2439)
!2439 = !{!2440, !2486, !2490, !2494, !2495, !2496, !2497, !2498, !2503, !2508, !2512}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2438, file: !38, line: 323, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!190, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2446)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2471, !2472, !2473}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2445, file: !38, line: 295, baseType: !648, size: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2445, file: !38, line: 296, baseType: !124, size: 128, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2445, file: !38, line: 297, baseType: !124, size: 128, offset: 256)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2445, file: !38, line: 298, baseType: !124, size: 128, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2445, file: !38, line: 299, baseType: !1180, size: 192, offset: 512)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2445, file: !38, line: 300, baseType: !249, offset: 704)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2445, file: !38, line: 301, baseType: !756, size: 32, offset: 704)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2445, file: !38, line: 302, baseType: !605, size: 64, offset: 768)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2445, file: !38, line: 303, baseType: !2456, size: 64, offset: 832)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2457)
!2457 = !{!2458, !2470}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !38, line: 69, baseType: !2459, size: 32)
!2459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2456, file: !38, line: 69, size: 32, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2459, file: !38, line: 70, baseType: !441, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2459, file: !38, line: 71, baseType: !449, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2459, file: !38, line: 72, baseType: !2464, size: 32)
!2464 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2465, line: 24, baseType: !2466)
!2465 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2465, line: 22, size: 32, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2466, file: !2465, line: 23, baseType: !2469, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2465, line: 20, baseType: !447)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2456, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2445, file: !38, line: 304, baseType: !537, size: 64, offset: 896)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2445, file: !38, line: 305, baseType: !148, size: 64, offset: 960)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2445, file: !38, line: 306, baseType: !2474, size: 576, offset: 1024)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2475)
!2475 = !{!2476, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2474, file: !38, line: 206, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !539)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2474, file: !38, line: 207, baseType: !2477, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2474, file: !38, line: 208, baseType: !2477, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2474, file: !38, line: 209, baseType: !2477, size: 64, offset: 192)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2474, file: !38, line: 210, baseType: !2477, size: 64, offset: 256)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2474, file: !38, line: 211, baseType: !2477, size: 64, offset: 320)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2474, file: !38, line: 212, baseType: !2477, size: 64, offset: 384)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2474, file: !38, line: 213, baseType: !545, size: 64, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2474, file: !38, line: 214, baseType: !545, size: 64, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2438, file: !38, line: 324, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!2444, !605, !190}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2438, file: !38, line: 325, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !2444}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2438, file: !38, line: 326, baseType: !2441, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2438, file: !38, line: 327, baseType: !2441, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2438, file: !38, line: 328, baseType: !2441, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2438, file: !38, line: 329, baseType: !694, size: 64, offset: 384)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2438, file: !38, line: 332, baseType: !2499, size: 64, offset: 448)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!2502, !435}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2438, file: !38, line: 333, baseType: !2504, size: 64, offset: 512)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!190, !435, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2438, file: !38, line: 335, baseType: !2509, size: 64, offset: 576)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!190, !435, !2502}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2438, file: !38, line: 337, baseType: !2513, size: 64, offset: 640)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!190, !605, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !606, file: !44, line: 1425, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2521)
!2521 = !{!2522, !2526, !2527, !2531, !2532, !2533, !2548, !2571, !2575, !2576, !2599}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2520, file: !38, line: 429, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!190, !605, !190, !190, !555}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2520, file: !38, line: 430, baseType: !694, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2520, file: !38, line: 431, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!190, !605, !7}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2520, file: !38, line: 432, baseType: !2528, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2520, file: !38, line: 433, baseType: !694, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2520, file: !38, line: 434, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!190, !605, !190, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2538, file: !38, line: 416, baseType: !190, size: 32)
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
!2551 = !{!190, !605, !2456, !2552}
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2554)
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2553, file: !38, line: 344, baseType: !190, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2553, file: !38, line: 345, baseType: !137, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2553, file: !38, line: 346, baseType: !137, size: 64, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2553, file: !38, line: 347, baseType: !137, size: 64, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2553, file: !38, line: 348, baseType: !137, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2553, file: !38, line: 349, baseType: !137, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2553, file: !38, line: 350, baseType: !137, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2553, file: !38, line: 351, baseType: !786, size: 64, offset: 448)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2553, file: !38, line: 353, baseType: !786, size: 64, offset: 512)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2553, file: !38, line: 354, baseType: !190, size: 32, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2553, file: !38, line: 355, baseType: !190, size: 32, offset: 608)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2553, file: !38, line: 356, baseType: !137, size: 64, offset: 640)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2553, file: !38, line: 357, baseType: !137, size: 64, offset: 704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2553, file: !38, line: 358, baseType: !137, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2553, file: !38, line: 359, baseType: !786, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2553, file: !38, line: 360, baseType: !190, size: 32, offset: 896)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2520, file: !38, line: 436, baseType: !2572, size: 64, offset: 448)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!190, !605, !2516, !2552}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2520, file: !38, line: 438, baseType: !2549, size: 64, offset: 512)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2520, file: !38, line: 439, baseType: !2577, size: 64, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!190, !605, !2580}
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2581, file: !38, line: 410, baseType: !7, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2581, file: !38, line: 411, baseType: !2585, size: 1344, offset: 64)
!2585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2586, size: 1344, elements: !291)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2587)
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2598}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2586, file: !38, line: 396, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2586, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2586, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2586, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2586, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2586, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2586, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2586, file: !38, line: 404, baseType: !141, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2586, file: !38, line: 405, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !118, line: 126, baseType: !137)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2586, file: !38, line: 406, baseType: !2597, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2520, file: !38, line: 440, baseType: !2528, size: 64, offset: 640)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !606, file: !44, line: 1426, baseType: !2601, size: 64, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !606, file: !44, line: 1427, baseType: !148, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !606, file: !44, line: 1428, baseType: !148, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !606, file: !44, line: 1429, baseType: !148, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !606, file: !44, line: 1430, baseType: !396, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !606, file: !44, line: 1431, baseType: !776, size: 256, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !606, file: !44, line: 1432, baseType: !190, size: 32, offset: 1152)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !606, file: !44, line: 1433, baseType: !756, size: 32, offset: 1184)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !606, file: !44, line: 1437, baseType: !2612, size: 64, offset: 1216)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2615)
!2615 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !606, file: !44, line: 1449, baseType: !2617, size: 64, offset: 1280)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !412, line: 34, size: 64, elements: !2618)
!2618 = !{!2619}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2617, file: !412, line: 35, baseType: !415, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !606, file: !44, line: 1450, baseType: !124, size: 128, offset: 1344)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !606, file: !44, line: 1451, baseType: !2622, size: 64, offset: 1472)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !606, file: !44, line: 1452, baseType: !1931, size: 64, offset: 1536)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !606, file: !44, line: 1453, baseType: !2626, size: 64, offset: 1600)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !606, file: !44, line: 1454, baseType: !648, size: 128, offset: 1664)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !606, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !606, file: !44, line: 1456, baseType: !2631, size: 2432, offset: 1856)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2637, !2669}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2631, file: !38, line: 519, baseType: !7, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2631, file: !38, line: 520, baseType: !776, size: 256, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2631, file: !38, line: 521, baseType: !2636, size: 192, offset: 320)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 192, elements: !291)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2631, file: !38, line: 522, baseType: !2638, size: 1728, offset: 512)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2639, size: 1728, elements: !291)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2640)
!2640 = !{!2641, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2639, file: !38, line: 223, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2644)
!2644 = !{!2645, !2646, !2659, !2660}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2643, file: !38, line: 444, baseType: !190, size: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2643, file: !38, line: 445, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2649)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2649, file: !38, line: 311, baseType: !694, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2649, file: !38, line: 312, baseType: !694, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2649, file: !38, line: 313, baseType: !694, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2649, file: !38, line: 314, baseType: !694, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2649, file: !38, line: 315, baseType: !2441, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2649, file: !38, line: 316, baseType: !2441, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2649, file: !38, line: 317, baseType: !2441, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2649, file: !38, line: 318, baseType: !2513, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2643, file: !38, line: 446, baseType: !639, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2643, file: !38, line: 447, baseType: !2642, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2639, file: !38, line: 224, baseType: !190, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2639, file: !38, line: 226, baseType: !124, size: 128, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2639, file: !38, line: 227, baseType: !148, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2639, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2639, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2639, file: !38, line: 230, baseType: !2477, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2639, file: !38, line: 231, baseType: !2477, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2639, file: !38, line: 232, baseType: !119, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2631, file: !38, line: 523, baseType: !2670, size: 192, offset: 2240)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 192, elements: !291)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !606, file: !44, line: 1458, baseType: !2672, size: 2112, offset: 4288)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2673)
!2673 = !{!2674, !2675, !2676}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2672, file: !44, line: 1411, baseType: !190, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2672, file: !44, line: 1412, baseType: !1487, size: 128, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2672, file: !44, line: 1413, baseType: !2677, size: 1920, offset: 192)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 1920, elements: !291)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2679, line: 12, size: 640, elements: !2680)
!2679 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2680 = !{!2681, !2689, !2691, !2696, !2697}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2678, file: !2679, line: 13, baseType: !2682, size: 320)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2683, line: 17, size: 320, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2682, file: !2683, line: 18, baseType: !190, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2682, file: !2683, line: 19, baseType: !190, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2682, file: !2683, line: 20, baseType: !1487, size: 128, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2682, file: !2683, line: 22, baseType: !379, size: 128, align: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2678, file: !2679, line: 14, baseType: !2690, size: 64, offset: 320)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2678, file: !2679, line: 15, baseType: !2692, size: 64, offset: 384)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2693, line: 16, size: 64, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2692, file: !2693, line: 17, baseType: !1223, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2678, file: !2679, line: 16, baseType: !1487, size: 128, offset: 448)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2678, file: !2679, line: 17, baseType: !756, size: 32, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !606, file: !44, line: 1465, baseType: !119, size: 64, offset: 6400)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !606, file: !44, line: 1468, baseType: !204, size: 32, offset: 6464)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !606, file: !44, line: 1470, baseType: !545, size: 64, offset: 6528)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !606, file: !44, line: 1471, baseType: !545, size: 64, offset: 6592)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !606, file: !44, line: 1473, baseType: !205, size: 32, offset: 6656)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !606, file: !44, line: 1474, baseType: !2704, size: 64, offset: 6720)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !606, file: !44, line: 1477, baseType: !2707, size: 256, offset: 6784)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !2237)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !606, file: !44, line: 1478, baseType: !2709, size: 128, offset: 7040)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2710, line: 18, baseType: !2711)
!2710 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2710, line: 16, size: 128, elements: !2712)
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2711, file: !2710, line: 17, baseType: !2714, size: 128)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 128, elements: !1741)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !606, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !606, file: !44, line: 1481, baseType: !2717, size: 32, offset: 7200)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !118, line: 150, baseType: !7)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !606, file: !44, line: 1487, baseType: !1180, size: 192, offset: 7232)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !606, file: !44, line: 1493, baseType: !144, size: 64, offset: 7424)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !606, file: !44, line: 1495, baseType: !2721, size: 64, offset: 7488)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !394, line: 135, size: 1024, align: 512, elements: !2724)
!2724 = !{!2725, !2729, !2730, !2737, !2743, !2747, !2751, !2755, !2756, !2760, !2764, !2769, !2773}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2723, file: !394, line: 136, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!190, !396, !7}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2723, file: !394, line: 137, baseType: !2726, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2723, file: !394, line: 138, baseType: !2731, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!190, !2734, !2736}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2723, file: !394, line: 139, baseType: !2738, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!190, !2734, !7, !144, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2723, file: !394, line: 141, baseType: !2744, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!190, !2734}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2723, file: !394, line: 142, baseType: !2748, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!190, !396}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2723, file: !394, line: 143, baseType: !2752, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !396}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2723, file: !394, line: 144, baseType: !2752, size: 64, offset: 448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2723, file: !394, line: 145, baseType: !2757, size: 64, offset: 512)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !396, !435}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2723, file: !394, line: 146, baseType: !2761, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!290, !396, !290, !190}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2723, file: !394, line: 147, baseType: !2765, size: 64, offset: 640)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!392, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2723, file: !394, line: 148, baseType: !2770, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!190, !555, !496}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2723, file: !394, line: 149, baseType: !2774, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!396, !396, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !606, file: !44, line: 1500, baseType: !190, size: 32, offset: 7552)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !606, file: !44, line: 1502, baseType: !2781, size: 448, offset: 7616)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2425, line: 60, size: 448, elements: !2782)
!2782 = !{!2783, !2788, !2789, !2790, !2791, !2792, !2793}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2781, file: !2425, line: 61, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!148, !2787, !2423}
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2781, file: !2425, line: 63, baseType: !2784, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2781, file: !2425, line: 66, baseType: !325, size: 64, offset: 128)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2781, file: !2425, line: 67, baseType: !190, size: 32, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2425, line: 68, baseType: !7, size: 32, offset: 224)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2781, file: !2425, line: 71, baseType: !124, size: 128, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2781, file: !2425, line: 77, baseType: !2794, size: 64, offset: 384)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !606, file: !44, line: 1505, baseType: !780, size: 64, offset: 8064)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !606, file: !44, line: 1508, baseType: !780, size: 64, offset: 8128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !606, file: !44, line: 1511, baseType: !190, size: 32, offset: 8192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !606, file: !44, line: 1514, baseType: !918, size: 32, offset: 8224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !606, file: !44, line: 1517, baseType: !2800, size: 64, offset: 8256)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1966, line: 18, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !606, file: !44, line: 1518, baseType: !644, size: 64, offset: 8320)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !606, file: !44, line: 1525, baseType: !1719, size: 64, offset: 8384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !606, file: !44, line: 1532, baseType: !2805, size: 64, offset: 8448)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2806, line: 52, size: 64, elements: !2807)
!2806 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2805, file: !2806, line: 53, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2806, line: 40, size: 256, elements: !2811)
!2811 = !{!2812, !2813, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2810, file: !2806, line: 42, baseType: !249)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2810, file: !2806, line: 44, baseType: !2814, size: 192)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2806, line: 28, size: 192, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2814, file: !2806, line: 29, baseType: !124, size: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2814, file: !2806, line: 31, baseType: !325, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2810, file: !2806, line: 49, baseType: !325, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !606, file: !44, line: 1533, baseType: !2805, size: 64, offset: 8512)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !606, file: !44, line: 1534, baseType: !379, size: 128, align: 64, offset: 8576)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !606, file: !44, line: 1535, baseType: !1965, size: 256, offset: 8704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !606, file: !44, line: 1537, baseType: !1180, size: 192, offset: 8960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !606, file: !44, line: 1542, baseType: !190, size: 32, offset: 9152)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !606, file: !44, line: 1545, baseType: !249, offset: 9184)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !606, file: !44, line: 1546, baseType: !124, size: 128, offset: 9216)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !606, file: !44, line: 1548, baseType: !249, offset: 9344)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !606, file: !44, line: 1549, baseType: !124, size: 128, offset: 9344)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !436, file: !44, line: 624, baseType: !743, size: 64, offset: 256)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !436, file: !44, line: 631, baseType: !148, size: 64, offset: 320)
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !44, line: 639, baseType: !2831, size: 32, offset: 384)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !44, line: 639, size: 32, elements: !2832)
!2832 = !{!2833, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2831, file: !44, line: 640, baseType: !2834, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2831, file: !44, line: 641, baseType: !7, size: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !436, file: !44, line: 643, baseType: !519, size: 32, offset: 416)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !436, file: !44, line: 644, baseType: !537, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !436, file: !44, line: 645, baseType: !541, size: 128, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !436, file: !44, line: 646, baseType: !541, size: 128, offset: 640)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !436, file: !44, line: 647, baseType: !541, size: 128, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !436, file: !44, line: 648, baseType: !249, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !436, file: !44, line: 649, baseType: !228, size: 16, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !436, file: !44, line: 650, baseType: !1359, size: 8, offset: 912)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !436, file: !44, line: 651, baseType: !1359, size: 8, offset: 920)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !436, file: !44, line: 652, baseType: !2597, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !436, file: !44, line: 659, baseType: !148, size: 64, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !436, file: !44, line: 660, baseType: !776, size: 256, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !436, file: !44, line: 662, baseType: !148, size: 64, offset: 1344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !436, file: !44, line: 663, baseType: !148, size: 64, offset: 1408)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !436, file: !44, line: 665, baseType: !648, size: 128, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !436, file: !44, line: 666, baseType: !124, size: 128, offset: 1600)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !436, file: !44, line: 675, baseType: !124, size: 128, offset: 1728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !436, file: !44, line: 676, baseType: !124, size: 128, offset: 1856)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !436, file: !44, line: 677, baseType: !124, size: 128, offset: 1984)
!2855 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !44, line: 678, baseType: !2856, size: 128, offset: 2112)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !44, line: 678, size: 128, elements: !2857)
!2857 = !{!2858, !2859}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2856, file: !44, line: 679, baseType: !644, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2856, file: !44, line: 680, baseType: !379, size: 128, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !436, file: !44, line: 682, baseType: !782, size: 64, offset: 2240)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !436, file: !44, line: 683, baseType: !782, size: 64, offset: 2304)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !436, file: !44, line: 684, baseType: !756, size: 32, offset: 2368)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !436, file: !44, line: 685, baseType: !756, size: 32, offset: 2400)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !436, file: !44, line: 686, baseType: !756, size: 32, offset: 2432)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !436, file: !44, line: 688, baseType: !756, size: 32, offset: 2464)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !44, line: 690, baseType: !2867, size: 64, offset: 2496)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !44, line: 690, size: 64, elements: !2868)
!2868 = !{!2869, !3092}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2867, file: !44, line: 691, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2873)
!2873 = !{!2874, !2875, !2879, !2884, !2888, !2889, !2890, !2894, !2907, !2908, !2916, !2920, !2921, !2925, !2926, !2930, !2935, !2936, !2940, !2944, !3052, !3056, !3057, !3061, !3062, !3066, !3070, !3075, !3079, !3083, !3087, !3091}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2872, file: !44, line: 1823, baseType: !639, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2872, file: !44, line: 1824, baseType: !2876, size: 64, offset: 64)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!537, !366, !537, !190}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2872, file: !44, line: 1825, baseType: !2880, size: 64, offset: 128)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!321, !366, !290, !336, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2872, file: !44, line: 1826, baseType: !2885, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!321, !366, !144, !336, !2883}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2872, file: !44, line: 1827, baseType: !853, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2872, file: !44, line: 1828, baseType: !853, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2872, file: !44, line: 1829, baseType: !2891, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!190, !856, !496}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2872, file: !44, line: 1830, baseType: !2895, size: 64, offset: 448)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!190, !366, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2900)
!2900 = !{!2901, !2906}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2899, file: !44, line: 1777, baseType: !2902, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!190, !2898, !144, !190, !537, !137, !7}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2899, file: !44, line: 1778, baseType: !537, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2872, file: !44, line: 1831, baseType: !2895, size: 64, offset: 512)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2872, file: !44, line: 1832, baseType: !2909, size: 64, offset: 576)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!2912, !366, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2913, line: 52, baseType: !7)
!2913 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !625, line: 27, flags: DIFlagFwdDecl)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2872, file: !44, line: 1833, baseType: !2917, size: 64, offset: 640)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!325, !366, !7, !148}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2872, file: !44, line: 1834, baseType: !2917, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2872, file: !44, line: 1835, baseType: !2922, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!190, !366, !990}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2872, file: !44, line: 1836, baseType: !148, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2872, file: !44, line: 1837, baseType: !2927, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!190, !435, !366}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2872, file: !44, line: 1838, baseType: !2931, size: 64, offset: 960)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!190, !366, !2934}
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !119)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2872, file: !44, line: 1839, baseType: !2927, size: 64, offset: 1024)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2872, file: !44, line: 1840, baseType: !2937, size: 64, offset: 1088)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!190, !366, !537, !537, !190}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2872, file: !44, line: 1841, baseType: !2941, size: 64, offset: 1152)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!190, !190, !366, !190}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2872, file: !44, line: 1842, baseType: !2945, size: 64, offset: 1216)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!190, !366, !190, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2982, !2983, !2984, !2997, !3028}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2949, file: !44, line: 1063, baseType: !2948, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2949, file: !44, line: 1064, baseType: !124, size: 128, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2949, file: !44, line: 1065, baseType: !648, size: 128, offset: 192)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2949, file: !44, line: 1066, baseType: !124, size: 128, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2949, file: !44, line: 1069, baseType: !124, size: 128, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2949, file: !44, line: 1072, baseType: !2934, size: 64, offset: 576)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2949, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2949, file: !44, line: 1074, baseType: !219, size: 8, offset: 672)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2949, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2949, file: !44, line: 1076, baseType: !190, size: 32, offset: 736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2949, file: !44, line: 1077, baseType: !1487, size: 128, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2949, file: !44, line: 1078, baseType: !366, size: 64, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2949, file: !44, line: 1079, baseType: !537, size: 64, offset: 960)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2949, file: !44, line: 1080, baseType: !537, size: 64, offset: 1024)
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
!2975 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !261, line: 33, baseType: !2976)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 31, elements: !263)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2967, file: !44, line: 1316, baseType: !190, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2967, file: !44, line: 1317, baseType: !190, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2967, file: !44, line: 1318, baseType: !2966, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2967, file: !44, line: 1319, baseType: !366, size: 64, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2967, file: !44, line: 1320, baseType: !379, size: 128, align: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2949, file: !44, line: 1084, baseType: !148, size: 64, offset: 1152)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2949, file: !44, line: 1085, baseType: !148, size: 64, offset: 1216)
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
!3014 = !{!190, !2948, !190}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3000, file: !44, line: 1021, baseType: !3016, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!496, !2948}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3000, file: !44, line: 1022, baseType: !3020, size: 64, offset: 320)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!190, !2948, !190, !127}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3000, file: !44, line: 1023, baseType: !3024, size: 64, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{null, !2948, !830}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3000, file: !44, line: 1024, baseType: !3016, size: 64, offset: 448)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2949, file: !44, line: 1097, baseType: !3029, size: 256, offset: 1408)
!3029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2949, file: !44, line: 1089, size: 256, elements: !3030)
!3030 = !{!3031, !3040, !3046}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3029, file: !44, line: 1090, baseType: !3032, size: 256)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3033, line: 10, size: 256, elements: !3034)
!3033 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !{!3035, !3036, !3039}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3032, file: !3033, line: 11, baseType: !204, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3032, file: !3033, line: 12, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3033, line: 5, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3032, file: !3033, line: 13, baseType: !124, size: 128, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3029, file: !44, line: 1091, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3033, line: 17, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3041, file: !3033, line: 18, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3033, line: 16, flags: DIFlagFwdDecl)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3029, file: !44, line: 1096, baseType: !3047, size: 192)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3029, file: !44, line: 1092, size: 192, elements: !3048)
!3048 = !{!3049, !3050, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3047, file: !44, line: 1093, baseType: !124, size: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3047, file: !44, line: 1094, baseType: !190, size: 32, offset: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3047, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2872, file: !44, line: 1843, baseType: !3053, size: 64, offset: 1280)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!321, !366, !730, !190, !336, !2883, !190}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2872, file: !44, line: 1844, baseType: !1110, size: 64, offset: 1344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2872, file: !44, line: 1845, baseType: !3058, size: 64, offset: 1408)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!190, !190}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2872, file: !44, line: 1846, baseType: !2945, size: 64, offset: 1472)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2872, file: !44, line: 1847, baseType: !3063, size: 64, offset: 1536)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!321, !2106, !366, !2883, !336, !7}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2872, file: !44, line: 1848, baseType: !3067, size: 64, offset: 1600)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!321, !366, !2883, !2106, !336, !7}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2872, file: !44, line: 1849, baseType: !3071, size: 64, offset: 1664)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!190, !366, !325, !3074, !830}
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2872, file: !44, line: 1850, baseType: !3076, size: 64, offset: 1728)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!325, !366, !190, !537, !537}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2872, file: !44, line: 1852, baseType: !3080, size: 64, offset: 1792)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !720, !366}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2872, file: !44, line: 1856, baseType: !3084, size: 64, offset: 1856)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!321, !366, !537, !366, !537, !336, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2872, file: !44, line: 1858, baseType: !3088, size: 64, offset: 1920)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!537, !366, !537, !366, !537, !537, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2872, file: !44, line: 1861, baseType: !2937, size: 64, offset: 1984)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2867, file: !44, line: 692, baseType: !673, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !436, file: !44, line: 694, baseType: !3094, size: 64, offset: 2560)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3095, file: !44, line: 1101, baseType: !249)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3095, file: !44, line: 1102, baseType: !124, size: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3095, file: !44, line: 1103, baseType: !124, size: 128, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3095, file: !44, line: 1104, baseType: !124, size: 128, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !436, file: !44, line: 695, baseType: !744, size: 1216, align: 64, offset: 2624)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !436, file: !44, line: 696, baseType: !124, size: 128, offset: 3840)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !44, line: 697, baseType: !3104, size: 64, offset: 3968)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !44, line: 697, size: 64, elements: !3105)
!3105 = !{!3106, !3107, !3108, !3111, !3112}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3104, file: !44, line: 698, baseType: !2106, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3104, file: !44, line: 699, baseType: !2622, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3104, file: !44, line: 700, baseType: !3109, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3104, file: !44, line: 701, baseType: !290, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3104, file: !44, line: 702, baseType: !7, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !436, file: !44, line: 705, baseType: !205, size: 32, offset: 4032)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !436, file: !44, line: 708, baseType: !205, size: 32, offset: 4064)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !436, file: !44, line: 709, baseType: !2704, size: 64, offset: 4096)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !436, file: !44, line: 720, baseType: !119, size: 64, offset: 4160)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !397, file: !394, line: 98, baseType: !3118, size: 256, offset: 448)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !2237)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !397, file: !394, line: 101, baseType: !3120, size: 32, offset: 704)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3121, line: 25, size: 32, elements: !3122)
!3121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3122 = !{!3123}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3121, line: 26, baseType: !3124, size: 32)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3121, line: 26, size: 32, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3121, line: 30, baseType: !3127, size: 32)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3121, line: 30, size: 32, elements: !3128)
!3128 = !{!3129, !3130}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3127, file: !3121, line: 31, baseType: !249)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3127, file: !3121, line: 32, baseType: !190, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !397, file: !394, line: 102, baseType: !2721, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !397, file: !394, line: 103, baseType: !605, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !397, file: !394, line: 104, baseType: !148, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !397, file: !394, line: 105, baseType: !119, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !394, line: 107, baseType: !3136, size: 128, offset: 1024)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !394, line: 107, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3136, file: !394, line: 108, baseType: !124, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3136, file: !394, line: 109, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !397, file: !394, line: 111, baseType: !124, size: 128, offset: 1152)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !397, file: !394, line: 112, baseType: !124, size: 128, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !397, file: !394, line: 120, baseType: !3144, size: 128, offset: 1408)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !394, line: 116, size: 128, elements: !3145)
!3145 = !{!3146, !3147, !3148}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3144, file: !394, line: 117, baseType: !648, size: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3144, file: !394, line: 118, baseType: !411, size: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3144, file: !394, line: 119, baseType: !379, size: 128, align: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !367, file: !44, line: 922, baseType: !435, size: 64, offset: 256)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !367, file: !44, line: 923, baseType: !2870, size: 64, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !367, file: !44, line: 929, baseType: !249, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !367, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !367, file: !44, line: 931, baseType: !780, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !367, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !367, file: !44, line: 933, baseType: !2717, size: 32, offset: 544)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !367, file: !44, line: 934, baseType: !1180, size: 192, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !367, file: !44, line: 935, baseType: !537, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !367, file: !44, line: 936, baseType: !3159, size: 192, offset: 832)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3159, file: !44, line: 886, baseType: !2970)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3159, file: !44, line: 887, baseType: !1477, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3159, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3159, file: !44, line: 889, baseType: !441, size: 32, offset: 96)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3159, file: !44, line: 889, baseType: !441, size: 32, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3159, file: !44, line: 890, baseType: !190, size: 32, offset: 160)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !367, file: !44, line: 937, baseType: !1553, size: 64, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !367, file: !44, line: 938, baseType: !3169, size: 256, offset: 1088)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3169, file: !44, line: 897, baseType: !148, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3169, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3169, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3169, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3169, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3169, file: !44, line: 904, baseType: !537, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !367, file: !44, line: 940, baseType: !137, size: 64, offset: 1344)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !367, file: !44, line: 945, baseType: !119, size: 64, offset: 1408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !367, file: !44, line: 949, baseType: !124, size: 128, offset: 1472)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !367, file: !44, line: 950, baseType: !124, size: 128, offset: 1600)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !367, file: !44, line: 952, baseType: !743, size: 64, offset: 1728)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !367, file: !44, line: 953, baseType: !918, size: 32, offset: 1792)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !367, file: !44, line: 954, baseType: !918, size: 32, offset: 1824)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !357, file: !315, line: 174, baseType: !363, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !357, file: !315, line: 176, baseType: !3186, size: 64, offset: 384)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!190, !366, !242, !356, !990}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !345, file: !315, line: 90, baseType: !340, size: 64, offset: 192)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !345, file: !315, line: 91, baseType: !3191, size: 64, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !305, file: !237, line: 143, baseType: !3193, size: 64, offset: 256)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!3196, !242}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3198)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3199)
!3199 = !{!3200, !3201, !3205, !3209, !3215, !3219}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3198, file: !61, line: 40, baseType: !60, size: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3198, file: !61, line: 41, baseType: !3202, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!496}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3198, file: !61, line: 42, baseType: !3206, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!119}
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
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3198, file: !61, line: 45, baseType: !474, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !305, file: !237, line: 144, baseType: !3221, size: 64, offset: 320)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!2134, !242}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !305, file: !237, line: 145, baseType: !3225, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{null, !242, !3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !236, file: !237, line: 70, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !625, line: 123, size: 1024, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3362, !3363, !3364, !3365, !3366}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3232, file: !625, line: 124, baseType: !756, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3232, file: !625, line: 125, baseType: !756, size: 32, offset: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3232, file: !625, line: 135, baseType: !3231, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !625, line: 136, baseType: !144, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3232, file: !625, line: 138, baseType: !769, size: 192, align: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3232, file: !625, line: 140, baseType: !2134, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3232, file: !625, line: 141, baseType: !7, size: 32, offset: 448)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !625, line: 142, baseType: !3242, size: 256, offset: 512)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !625, line: 142, size: 256, elements: !3243)
!3243 = !{!3244, !3290, !3294}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3242, file: !625, line: 143, baseType: !3245, size: 192)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !625, line: 91, size: 192, elements: !3246)
!3246 = !{!3247, !3248, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3245, file: !625, line: 92, baseType: !148, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3245, file: !625, line: 94, baseType: !765, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3245, file: !625, line: 100, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !625, line: 180, size: 704, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3262, !3263, !3264, !3288, !3289}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3251, file: !625, line: 182, baseType: !3231, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3251, file: !625, line: 183, baseType: !7, size: 32, offset: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3251, file: !625, line: 186, baseType: !3256, size: 192, offset: 128)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3257, line: 19, size: 192, elements: !3258)
!3257 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3256, file: !3257, line: 20, baseType: !748, size: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3256, file: !3257, line: 21, baseType: !7, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3256, file: !3257, line: 22, baseType: !7, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3251, file: !625, line: 187, baseType: !204, size: 32, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3251, file: !625, line: 188, baseType: !204, size: 32, offset: 352)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3251, file: !625, line: 189, baseType: !3265, size: 64, offset: 384)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !625, line: 168, size: 320, elements: !3267)
!3267 = !{!3268, !3272, !3276, !3280, !3284}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3266, file: !625, line: 169, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!190, !720, !3250}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3266, file: !625, line: 171, baseType: !3273, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!190, !3231, !144, !331}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3266, file: !625, line: 173, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!190, !3231}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3266, file: !625, line: 174, baseType: !3281, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!190, !3231, !3231, !144}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3266, file: !625, line: 176, baseType: !3285, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!190, !720, !3231, !3250}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3251, file: !625, line: 192, baseType: !124, size: 128, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3251, file: !625, line: 194, baseType: !1487, size: 128, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3242, file: !625, line: 144, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !625, line: 103, size: 64, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3291, file: !625, line: 104, baseType: !3231, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3242, file: !625, line: 145, baseType: !3295, size: 256)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !625, line: 107, size: 256, elements: !3296)
!3296 = !{!3297, !3357, !3360, !3361}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3295, file: !625, line: 108, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3300)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !625, line: 217, size: 768, elements: !3301)
!3301 = !{!3302, !3322, !3326, !3330, !3334, !3338, !3342, !3346, !3347, !3348, !3349, !3353}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3300, file: !625, line: 222, baseType: !3303, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!190, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !625, line: 197, size: 1088, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3307, file: !625, line: 199, baseType: !3231, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3307, file: !625, line: 200, baseType: !366, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3307, file: !625, line: 201, baseType: !720, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3307, file: !625, line: 202, baseType: !119, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3307, file: !625, line: 205, baseType: !1180, size: 192, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3307, file: !625, line: 206, baseType: !1180, size: 192, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3307, file: !625, line: 207, baseType: !190, size: 32, offset: 640)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3307, file: !625, line: 208, baseType: !124, size: 128, offset: 704)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3307, file: !625, line: 209, baseType: !290, size: 64, offset: 832)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3307, file: !625, line: 211, baseType: !336, size: 64, offset: 896)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3307, file: !625, line: 212, baseType: !496, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3307, file: !625, line: 213, baseType: !496, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3307, file: !625, line: 214, baseType: !1018, size: 64, offset: 1024)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3300, file: !625, line: 223, baseType: !3323, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{null, !3306}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3300, file: !625, line: 236, baseType: !3327, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!190, !720, !119}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3300, file: !625, line: 238, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!119, !720, !2883}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3300, file: !625, line: 239, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!119, !720, !119, !2883}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3300, file: !625, line: 240, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !720, !119}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3300, file: !625, line: 242, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!321, !3306, !290, !336, !537}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3300, file: !625, line: 252, baseType: !336, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3300, file: !625, line: 259, baseType: !496, size: 8, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3300, file: !625, line: 260, baseType: !3343, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3300, file: !625, line: 263, baseType: !3350, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!2912, !3306, !2914}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3300, file: !625, line: 266, baseType: !3354, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!190, !3306, !990}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3295, file: !625, line: 109, baseType: !3358, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !625, line: 31, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3295, file: !625, line: 110, baseType: !537, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3295, file: !625, line: 111, baseType: !3231, size: 64, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3232, file: !625, line: 148, baseType: !119, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3232, file: !625, line: 154, baseType: !137, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3232, file: !625, line: 156, baseType: !228, size: 16, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3232, file: !625, line: 157, baseType: !331, size: 16, offset: 912)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3232, file: !625, line: 158, baseType: !3367, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !625, line: 32, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !236, file: !237, line: 71, baseType: !3370, size: 32, offset: 448)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3371, line: 19, size: 32, elements: !3372)
!3371 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3372 = !{!3373}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3370, file: !3371, line: 20, baseType: !1237, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !236, file: !237, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !236, file: !237, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !236, file: !237, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !236, file: !237, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !236, file: !237, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !233, file: !67, line: 463, baseType: !232, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !233, file: !67, line: 465, baseType: !3381, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !233, file: !67, line: 467, baseType: !144, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !233, file: !67, line: 468, baseType: !3385, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3387)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3395, !3400, !3404}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3387, file: !67, line: 88, baseType: !144, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3387, file: !67, line: 89, baseType: !342, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3387, file: !67, line: 90, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!190, !232, !285}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3387, file: !67, line: 91, baseType: !3396, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!290, !232, !3399, !3228, !3229}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3387, file: !67, line: 93, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !232}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3387, file: !67, line: 95, baseType: !3405, size: 64, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3407)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3408)
!3408 = !{!3409, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3407, file: !74, line: 279, baseType: !3410, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!190, !232}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3407, file: !74, line: 280, baseType: !3401, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3407, file: !74, line: 281, baseType: !3410, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3407, file: !74, line: 282, baseType: !3410, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3407, file: !74, line: 283, baseType: !3410, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3407, file: !74, line: 284, baseType: !3410, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3407, file: !74, line: 285, baseType: !3410, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3407, file: !74, line: 286, baseType: !3410, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3407, file: !74, line: 287, baseType: !3410, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3407, file: !74, line: 288, baseType: !3410, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3407, file: !74, line: 289, baseType: !3410, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3407, file: !74, line: 290, baseType: !3410, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3407, file: !74, line: 291, baseType: !3410, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3407, file: !74, line: 292, baseType: !3410, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3407, file: !74, line: 293, baseType: !3410, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3407, file: !74, line: 294, baseType: !3410, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3407, file: !74, line: 295, baseType: !3410, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3407, file: !74, line: 296, baseType: !3410, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3407, file: !74, line: 297, baseType: !3410, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3407, file: !74, line: 298, baseType: !3410, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3407, file: !74, line: 299, baseType: !3410, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3407, file: !74, line: 300, baseType: !3410, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3407, file: !74, line: 301, baseType: !3410, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !233, file: !67, line: 470, baseType: !3436, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3438, line: 82, size: 1408, elements: !3439)
!3438 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3521, !3524, !3525}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3437, file: !3438, line: 83, baseType: !144, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3437, file: !3438, line: 84, baseType: !144, size: 64, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3437, file: !3438, line: 85, baseType: !232, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3437, file: !3438, line: 86, baseType: !342, size: 64, offset: 192)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3437, file: !3438, line: 87, baseType: !342, size: 64, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3437, file: !3438, line: 88, baseType: !342, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3437, file: !3438, line: 90, baseType: !3447, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!190, !232, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 95, size: 1152, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3472, !3485, !3486, !3487, !3488, !3489, !3497, !3498, !3499, !3500, !3501, !3502}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !88, line: 96, baseType: !144, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3451, file: !88, line: 97, baseType: !3436, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3451, file: !88, line: 99, baseType: !639, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3451, file: !88, line: 100, baseType: !144, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3451, file: !88, line: 102, baseType: !496, size: 8, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3451, file: !88, line: 103, baseType: !87, size: 32, offset: 288)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3451, file: !88, line: 105, baseType: !3460, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3463, line: 262, size: 1600, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !{!3465, !3466, !3467, !3471}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3462, file: !3463, line: 263, baseType: !2707, size: 256)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3462, file: !3463, line: 264, baseType: !2707, size: 256, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3462, file: !3463, line: 265, baseType: !3468, size: 1024, offset: 512)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3462, file: !3463, line: 266, baseType: !2134, size: 64, offset: 1536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3451, file: !88, line: 106, baseType: !3473, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3463, line: 210, size: 256, elements: !3476)
!3476 = !{!3477, !3481, !3483, !3484}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3475, file: !3463, line: 211, baseType: !3478, size: 72)
!3478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1360, size: 72, elements: !3479)
!3479 = !{!3480}
!3480 = !DISubrange(count: 9)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3475, file: !3463, line: 212, baseType: !3482, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3463, line: 14, baseType: !148)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3475, file: !3463, line: 213, baseType: !205, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3475, file: !3463, line: 214, baseType: !205, size: 32, offset: 224)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3451, file: !88, line: 108, baseType: !3410, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3451, file: !88, line: 109, baseType: !3401, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3451, file: !88, line: 110, baseType: !3410, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3451, file: !88, line: 111, baseType: !3401, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3451, file: !88, line: 112, baseType: !3490, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!190, !232, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3494, file: !74, line: 51, baseType: !190, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3451, file: !88, line: 113, baseType: !3410, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !88, line: 114, baseType: !342, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3451, file: !88, line: 115, baseType: !342, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !88, line: 117, baseType: !3405, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3451, file: !88, line: 118, baseType: !3401, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3451, file: !88, line: 120, baseType: !3503, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 120, flags: DIFlagFwdDecl)
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
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3437, file: !3438, line: 112, baseType: !654, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3437, file: !3438, line: 114, baseType: !496, size: 8, offset: 1344)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !233, file: !67, line: 471, baseType: !3450, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !233, file: !67, line: 473, baseType: !119, size: 64, offset: 896)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !233, file: !67, line: 475, baseType: !119, size: 64, offset: 960)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !233, file: !67, line: 480, baseType: !1180, size: 192, offset: 1024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !233, file: !67, line: 484, baseType: !3531, size: 576, offset: 1216)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3531, file: !67, line: 362, baseType: !124, size: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3531, file: !67, line: 363, baseType: !124, size: 128, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3531, file: !67, line: 364, baseType: !124, size: 128, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3531, file: !67, line: 365, baseType: !124, size: 128, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3531, file: !67, line: 366, baseType: !496, size: 8, offset: 512)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3531, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !233, file: !67, line: 485, baseType: !3540, size: 2304, offset: 1792)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3637, !3641}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3540, file: !74, line: 566, baseType: !3493, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3540, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3540, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3540, file: !74, line: 569, baseType: !496, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3540, file: !74, line: 570, baseType: !496, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3540, file: !74, line: 571, baseType: !496, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3540, file: !74, line: 572, baseType: !496, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3540, file: !74, line: 573, baseType: !496, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3540, file: !74, line: 574, baseType: !496, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3540, file: !74, line: 575, baseType: !496, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3540, file: !74, line: 576, baseType: !496, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3540, file: !74, line: 577, baseType: !204, size: 32, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3540, file: !74, line: 578, baseType: !249, offset: 96)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3540, file: !74, line: 580, baseType: !124, size: 128, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3540, file: !74, line: 581, baseType: !1508, size: 192, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3540, file: !74, line: 582, baseType: !3558, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3560, line: 43, size: 1472, elements: !3561)
!3560 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3569, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3559, file: !3560, line: 44, baseType: !144, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3559, file: !3560, line: 45, baseType: !190, size: 32, offset: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3559, file: !3560, line: 46, baseType: !124, size: 128, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3559, file: !3560, line: 47, baseType: !249, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3559, file: !3560, line: 48, baseType: !3567, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3559, file: !3560, line: 49, baseType: !3570, size: 320, offset: 320)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3571, line: 11, size: 320, elements: !3572)
!3571 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3572 = !{!3573, !3574, !3575, !3580}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3570, file: !3571, line: 16, baseType: !648, size: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3570, file: !3571, line: 17, baseType: !148, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3570, file: !3571, line: 18, baseType: !3576, size: 64, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{null, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3570, file: !3571, line: 19, baseType: !204, size: 32, offset: 256)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3559, file: !3560, line: 50, baseType: !148, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3559, file: !3560, line: 51, baseType: !1307, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3559, file: !3560, line: 52, baseType: !1307, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3559, file: !3560, line: 53, baseType: !1307, size: 64, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3559, file: !3560, line: 54, baseType: !1307, size: 64, offset: 896)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3559, file: !3560, line: 55, baseType: !1307, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3559, file: !3560, line: 56, baseType: !148, size: 64, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3559, file: !3560, line: 57, baseType: !148, size: 64, offset: 1088)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3559, file: !3560, line: 58, baseType: !148, size: 64, offset: 1152)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3559, file: !3560, line: 59, baseType: !148, size: 64, offset: 1216)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3559, file: !3560, line: 60, baseType: !148, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3559, file: !3560, line: 61, baseType: !232, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3559, file: !3560, line: 62, baseType: !496, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3559, file: !3560, line: 63, baseType: !496, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3540, file: !74, line: 583, baseType: !496, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3540, file: !74, line: 584, baseType: !496, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3540, file: !74, line: 585, baseType: !496, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3540, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3540, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3540, file: !74, line: 592, baseType: !1299, size: 512, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3540, file: !74, line: 593, baseType: !137, size: 64, offset: 1088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3540, file: !74, line: 594, baseType: !1965, size: 256, offset: 1152)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3540, file: !74, line: 595, baseType: !1487, size: 128, offset: 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3540, file: !74, line: 596, baseType: !3567, size: 64, offset: 1536)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3540, file: !74, line: 597, baseType: !756, size: 32, offset: 1600)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3540, file: !74, line: 598, baseType: !756, size: 32, offset: 1632)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3540, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3540, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3540, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3540, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3540, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3540, file: !74, line: 604, baseType: !496, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3540, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3540, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3540, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3540, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3540, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3540, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3540, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3540, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3540, file: !74, line: 613, baseType: !190, size: 32, offset: 1792)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3540, file: !74, line: 614, baseType: !190, size: 32, offset: 1824)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3540, file: !74, line: 615, baseType: !137, size: 64, offset: 1856)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3540, file: !74, line: 616, baseType: !137, size: 64, offset: 1920)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3540, file: !74, line: 617, baseType: !137, size: 64, offset: 1984)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3540, file: !74, line: 618, baseType: !137, size: 64, offset: 2048)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3540, file: !74, line: 620, baseType: !3628, size: 64, offset: 2112)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3629, file: !74, line: 537, baseType: !249)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3629, file: !74, line: 538, baseType: !7, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3629, file: !74, line: 540, baseType: !124, size: 128, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3629, file: !74, line: 543, baseType: !3635, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3540, file: !74, line: 621, baseType: !3638, size: 64, offset: 2176)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !232, !1450}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3540, file: !74, line: 622, baseType: !3642, size: 64, offset: 2240)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !233, file: !67, line: 486, baseType: !3645, size: 64, offset: 4096)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3654, !3655, !3656}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3646, file: !74, line: 643, baseType: !3407, size: 1472)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3646, file: !74, line: 644, baseType: !3410, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3646, file: !74, line: 645, baseType: !3651, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !232, !496}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3646, file: !74, line: 646, baseType: !3410, size: 64, offset: 1600)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3646, file: !74, line: 647, baseType: !3401, size: 64, offset: 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3646, file: !74, line: 648, baseType: !3401, size: 64, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !233, file: !67, line: 493, baseType: !3658, size: 64, offset: 4160)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !233, file: !67, line: 499, baseType: !124, size: 128, offset: 4224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !233, file: !67, line: 502, baseType: !3662, size: 64, offset: 4352)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3664)
!3664 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !233, file: !67, line: 504, baseType: !3666, size: 64, offset: 4416)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !233, file: !67, line: 505, baseType: !137, size: 64, offset: 4480)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !233, file: !67, line: 510, baseType: !137, size: 64, offset: 4544)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !233, file: !67, line: 511, baseType: !3670, size: 64, offset: 4608)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !233, file: !67, line: 513, baseType: !3674, size: 64, offset: 4672)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3676)
!3676 = !{!3677, !3678}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3675, file: !67, line: 293, baseType: !7, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3675, file: !67, line: 294, baseType: !148, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !233, file: !67, line: 515, baseType: !124, size: 128, offset: 4736)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !233, file: !67, line: 526, baseType: !3681, offset: 4864)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3682, line: 5, elements: !263)
!3682 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !233, file: !67, line: 528, baseType: !3684, size: 64, offset: 4864)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3686, line: 14, flags: DIFlagFwdDecl)
!3686 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !233, file: !67, line: 529, baseType: !3688, size: 64, offset: 4928)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3690, line: 17, size: 192, elements: !3691)
!3690 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !{!3692, !3693, !3776}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3689, file: !3690, line: 18, baseType: !3688, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3689, file: !3690, line: 19, baseType: !3694, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3690, line: 110, size: 1152, elements: !3697)
!3697 = !{!3698, !3702, !3706, !3712, !3718, !3722, !3726, !3731, !3735, !3736, !3740, !3744, !3748, !3759, !3760, !3761, !3762, !3772}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3696, file: !3690, line: 111, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!3688, !3688}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3696, file: !3690, line: 112, baseType: !3703, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3688}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3696, file: !3690, line: 113, baseType: !3707, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!496, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3696, file: !3690, line: 114, baseType: !3713, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!2134, !3710, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3696, file: !3690, line: 116, baseType: !3719, size: 64, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!496, !3710, !144}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3696, file: !3690, line: 118, baseType: !3723, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!190, !3710, !144, !7, !119, !336}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3696, file: !3690, line: 123, baseType: !3727, size: 64, offset: 384)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!190, !3710, !144, !3730, !336}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3696, file: !3690, line: 126, baseType: !3732, size: 64, offset: 448)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!144, !3710}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3696, file: !3690, line: 127, baseType: !3732, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3696, file: !3690, line: 128, baseType: !3737, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!3688, !3710}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3696, file: !3690, line: 130, baseType: !3741, size: 64, offset: 640)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!3688, !3710, !3688}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3696, file: !3690, line: 133, baseType: !3745, size: 64, offset: 704)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3688, !3710, !144}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3696, file: !3690, line: 135, baseType: !3749, size: 64, offset: 768)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!190, !3710, !144, !144, !7, !7, !3752}
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3690, line: 43, size: 640, elements: !3754)
!3754 = !{!3755, !3756, !3757}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3753, file: !3690, line: 44, baseType: !3688, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3753, file: !3690, line: 45, baseType: !7, size: 32, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3753, file: !3690, line: 46, baseType: !3758, size: 512, offset: 128)
!3758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 512, elements: !1337)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3696, file: !3690, line: 140, baseType: !3741, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3696, file: !3690, line: 143, baseType: !3737, size: 64, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3696, file: !3690, line: 145, baseType: !3699, size: 64, offset: 960)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3696, file: !3690, line: 146, baseType: !3763, size: 64, offset: 1024)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!190, !3710, !3766}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3690, line: 29, size: 128, elements: !3768)
!3768 = !{!3769, !3770, !3771}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3767, file: !3690, line: 30, baseType: !7, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3767, file: !3690, line: 31, baseType: !7, size: 32, offset: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3767, file: !3690, line: 32, baseType: !3710, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3696, file: !3690, line: 148, baseType: !3773, size: 64, offset: 1088)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!190, !3710, !232}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3689, file: !3690, line: 20, baseType: !232, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !233, file: !67, line: 534, baseType: !519, size: 32, offset: 4992)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !233, file: !67, line: 535, baseType: !204, size: 32, offset: 5024)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !233, file: !67, line: 537, baseType: !249, offset: 5056)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !233, file: !67, line: 538, baseType: !124, size: 128, offset: 5056)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !233, file: !67, line: 540, baseType: !3782, size: 64, offset: 5184)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3784, line: 54, size: 960, elements: !3785)
!3784 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3785 = !{!3786, !3787, !3788, !3789, !3790, !3791, !3792, !3796, !3800, !3801, !3802, !3803, !3807, !3811, !3812}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3783, file: !3784, line: 55, baseType: !144, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3783, file: !3784, line: 56, baseType: !639, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3783, file: !3784, line: 58, baseType: !342, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3783, file: !3784, line: 59, baseType: !342, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3783, file: !3784, line: 60, baseType: !242, size: 64, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3783, file: !3784, line: 62, baseType: !3392, size: 64, offset: 320)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3783, file: !3784, line: 63, baseType: !3793, size: 64, offset: 384)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!290, !232, !3399}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3783, file: !3784, line: 65, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !3782}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3783, file: !3784, line: 66, baseType: !3401, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3783, file: !3784, line: 68, baseType: !3410, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3783, file: !3784, line: 70, baseType: !3196, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3783, file: !3784, line: 71, baseType: !3804, size: 64, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!2134, !232}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3783, file: !3784, line: 73, baseType: !3808, size: 64, offset: 768)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !232, !3228, !3229}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3783, file: !3784, line: 75, baseType: !3405, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3783, file: !3784, line: 77, baseType: !3522, size: 64, offset: 896)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !233, file: !67, line: 541, baseType: !342, size: 64, offset: 5248)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !233, file: !67, line: 543, baseType: !3401, size: 64, offset: 5312)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !233, file: !67, line: 544, baseType: !3816, size: 64, offset: 5376)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !233, file: !67, line: 545, baseType: !3819, size: 64, offset: 5440)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !233, file: !67, line: 547, baseType: !496, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !233, file: !67, line: 548, baseType: !496, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !233, file: !67, line: 549, baseType: !496, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !233, file: !67, line: 550, baseType: !496, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !168, file: !99, line: 635, baseType: !233, size: 5568, offset: 2304)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !168, file: !99, line: 636, baseType: !356, size: 64, offset: 7872)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !168, file: !99, line: 637, baseType: !356, size: 64, offset: 7936)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !168, file: !99, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !163, file: !99, line: 312, baseType: !167, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !163, file: !99, line: 314, baseType: !119, size: 64, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !163, file: !99, line: 315, baseType: !215, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !163, file: !99, line: 316, baseType: !3833, size: 64, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !99, line: 69, size: 832, elements: !3835)
!3835 = !{!3836, !3837, !3838, !3841, !3842}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3834, file: !99, line: 70, baseType: !167, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3834, file: !99, line: 71, baseType: !124, size: 128, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3834, file: !99, line: 72, baseType: !3839, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !99, line: 72, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3834, file: !99, line: 73, baseType: !219, size: 8, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3834, file: !99, line: 74, baseType: !236, size: 512, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !163, file: !99, line: 318, baseType: !7, size: 32, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !163, file: !99, line: 319, baseType: !228, size: 16, offset: 480)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !163, file: !99, line: 320, baseType: !228, size: 16, offset: 496)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !163, file: !99, line: 321, baseType: !228, size: 16, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !163, file: !99, line: 322, baseType: !228, size: 16, offset: 528)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !163, file: !99, line: 323, baseType: !7, size: 32, offset: 544)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !163, file: !99, line: 324, baseType: !1359, size: 8, offset: 576)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !163, file: !99, line: 325, baseType: !1359, size: 8, offset: 584)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !163, file: !99, line: 330, baseType: !1359, size: 8, offset: 592)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !163, file: !99, line: 331, baseType: !1359, size: 8, offset: 600)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !163, file: !99, line: 332, baseType: !1359, size: 8, offset: 608)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !163, file: !99, line: 333, baseType: !1359, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !163, file: !99, line: 334, baseType: !1359, size: 8, offset: 624)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !163, file: !99, line: 335, baseType: !1359, size: 8, offset: 632)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !163, file: !99, line: 336, baseType: !868, size: 16, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !163, file: !99, line: 337, baseType: !3859, size: 64, offset: 704)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !163, file: !99, line: 339, baseType: !3861, size: 64, offset: 768)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !99, line: 858, size: 2048, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3878, !3882, !3886, !3890, !3894, !3895, !3899, !3918, !3919, !3920}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3862, file: !99, line: 859, baseType: !124, size: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3862, file: !99, line: 860, baseType: !144, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3862, file: !99, line: 861, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3463, line: 38, size: 256, elements: !3870)
!3870 = !{!3871, !3872, !3873, !3874, !3875, !3876, !3877}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3869, file: !3463, line: 39, baseType: !205, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3869, file: !3463, line: 39, baseType: !205, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3869, file: !3463, line: 40, baseType: !205, size: 32, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3869, file: !3463, line: 40, baseType: !205, size: 32, offset: 96)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3869, file: !3463, line: 41, baseType: !205, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3869, file: !3463, line: 41, baseType: !205, size: 32, offset: 160)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3869, file: !3463, line: 42, baseType: !3482, size: 64, offset: 192)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3862, file: !99, line: 862, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!190, !162, !3867}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3862, file: !99, line: 863, baseType: !3883, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !162}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3862, file: !99, line: 864, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!190, !162, !3493}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3862, file: !99, line: 865, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!190, !162}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3862, file: !99, line: 866, baseType: !3883, size: 64, offset: 512)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3862, file: !99, line: 867, baseType: !3896, size: 64, offset: 576)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!190, !162, !190}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3862, file: !99, line: 868, baseType: !3900, size: 64, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3902)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !99, line: 795, size: 384, elements: !3903)
!3903 = !{!3904, !3910, !3914, !3915, !3916, !3917}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3902, file: !99, line: 797, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!3908, !162, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !99, line: 772, baseType: !7)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !99, line: 180, baseType: !7)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3902, file: !99, line: 801, baseType: !3911, size: 64, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!3908, !162}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3902, file: !99, line: 804, baseType: !3911, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3902, file: !99, line: 807, baseType: !3883, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3902, file: !99, line: 808, baseType: !3883, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3902, file: !99, line: 811, baseType: !3883, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3862, file: !99, line: 869, baseType: !342, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3862, file: !99, line: 870, baseType: !3451, size: 1152, offset: 768)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3862, file: !99, line: 871, baseType: !3921, size: 128, offset: 1920)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !99, line: 759, size: 128, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3921, file: !99, line: 760, baseType: !249)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3921, file: !99, line: 761, baseType: !124, size: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !163, file: !99, line: 340, baseType: !137, size: 64, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !163, file: !99, line: 346, baseType: !3675, size: 128, offset: 896)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !163, file: !99, line: 348, baseType: !3928, size: 32, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !99, line: 155, baseType: !190)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !163, file: !99, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !163, file: !99, line: 352, baseType: !1359, size: 8, offset: 1064)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !163, file: !99, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !163, file: !99, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !163, file: !99, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !163, file: !99, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !163, file: !99, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !163, file: !99, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !163, file: !99, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !163, file: !99, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !163, file: !99, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !163, file: !99, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !163, file: !99, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !163, file: !99, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !163, file: !99, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !163, file: !99, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !163, file: !99, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !163, file: !99, line: 376, baseType: !7, size: 32, offset: 1120)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !163, file: !99, line: 377, baseType: !7, size: 32, offset: 1152)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !163, file: !99, line: 380, baseType: !3949, size: 64, offset: 1216)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !99, line: 303, flags: DIFlagFwdDecl)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !163, file: !99, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !163, file: !99, line: 383, baseType: !190, size: 32, offset: 1312)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !163, file: !99, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !163, file: !99, line: 387, baseType: !3909, size: 32, offset: 1376)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !163, file: !99, line: 388, baseType: !233, size: 5568, offset: 1408)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !163, file: !99, line: 390, baseType: !190, size: 32, offset: 6976)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !163, file: !99, line: 396, baseType: !7, size: 32, offset: 7008)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !163, file: !99, line: 397, baseType: !3959, size: 8704, offset: 7040)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 8704, elements: !3960)
!3960 = !{!3961}
!3961 = !DISubrange(count: 17)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !163, file: !99, line: 399, baseType: !496, size: 8, offset: 15744)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !163, file: !99, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !163, file: !99, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !163, file: !99, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !163, file: !99, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !163, file: !99, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !163, file: !99, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !163, file: !99, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !163, file: !99, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !163, file: !99, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !163, file: !99, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !163, file: !99, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !163, file: !99, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !163, file: !99, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !163, file: !99, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !163, file: !99, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !163, file: !99, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !163, file: !99, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !163, file: !99, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !163, file: !99, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !163, file: !99, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !163, file: !99, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !163, file: !99, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !163, file: !99, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !163, file: !99, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !163, file: !99, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !163, file: !99, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !163, file: !99, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !163, file: !99, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !163, file: !99, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !163, file: !99, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !163, file: !99, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !163, file: !99, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !163, file: !99, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !163, file: !99, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !163, file: !99, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !163, file: !99, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !163, file: !99, line: 450, baseType: !4000, size: 16, offset: 15792)
!4000 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !99, line: 206, baseType: !228)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !163, file: !99, line: 451, baseType: !756, size: 32, offset: 15808)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !163, file: !99, line: 453, baseType: !4003, size: 512, offset: 15840)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 512, elements: !1741)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !163, file: !99, line: 454, baseType: !644, size: 64, offset: 16384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !163, file: !99, line: 455, baseType: !356, size: 64, offset: 16448)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !163, file: !99, line: 456, baseType: !190, size: 32, offset: 16512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !163, file: !99, line: 457, baseType: !4008, size: 1088, offset: 16576)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 1088, elements: !3960)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !163, file: !99, line: 458, baseType: !4008, size: 1088, offset: 17664)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !163, file: !99, line: 469, baseType: !342, size: 64, offset: 18752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !163, file: !99, line: 471, baseType: !4012, size: 64, offset: 18816)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !99, line: 304, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !99, line: 478, baseType: !4015, size: 64, offset: 18880)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !99, line: 478, size: 64, elements: !4016)
!4016 = !{!4017, !4045}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4015, file: !99, line: 479, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4020, line: 323, size: 1024, elements: !4021)
!4020 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4042, !4044}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4019, file: !4020, line: 324, baseType: !190, size: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4019, file: !4020, line: 325, baseType: !190, size: 32, offset: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4019, file: !4020, line: 326, baseType: !204, size: 32, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4019, file: !4020, line: 327, baseType: !868, size: 16, offset: 96)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4019, file: !4020, line: 328, baseType: !868, size: 16, offset: 112)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4019, file: !4020, line: 329, baseType: !868, size: 16, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4019, file: !4020, line: 330, baseType: !868, size: 16, offset: 144)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4019, file: !4020, line: 331, baseType: !868, size: 16, offset: 160)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4019, file: !4020, line: 332, baseType: !868, size: 16, offset: 176)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4019, file: !4020, line: 333, baseType: !868, size: 16, offset: 192)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4019, file: !4020, line: 334, baseType: !204, size: 32, offset: 224)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4019, file: !4020, line: 335, baseType: !1359, size: 8, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4019, file: !4020, line: 336, baseType: !1359, size: 8, offset: 264)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4019, file: !4020, line: 337, baseType: !868, size: 16, offset: 272)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4019, file: !4020, line: 338, baseType: !162, size: 64, offset: 320)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4019, file: !4020, line: 339, baseType: !162, size: 64, offset: 384)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4019, file: !4020, line: 340, baseType: !204, size: 32, offset: 448)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4019, file: !4020, line: 341, baseType: !1359, size: 8, offset: 480)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4019, file: !4020, line: 342, baseType: !868, size: 16, offset: 496)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4019, file: !4020, line: 343, baseType: !868, size: 16, offset: 512)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4019, file: !4020, line: 344, baseType: !4043, size: 384, offset: 576)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !1631)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4019, file: !4020, line: 345, baseType: !496, size: 8, offset: 960)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4015, file: !99, line: 480, baseType: !162, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !163, file: !99, line: 482, baseType: !868, size: 16, offset: 18944)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !163, file: !99, line: 483, baseType: !1359, size: 8, offset: 18960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !163, file: !99, line: 497, baseType: !868, size: 16, offset: 18976)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !163, file: !99, line: 498, baseType: !136, size: 64, offset: 19008)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !163, file: !99, line: 499, baseType: !336, size: 64, offset: 19072)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !163, file: !99, line: 500, baseType: !290, size: 64, offset: 19136)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !163, file: !99, line: 502, baseType: !148, size: 64, offset: 19200)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !127)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !146)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!4058 = !{!0, !4059, !4066}
!4059 = !DIGlobalVariableExpression(var: !4060, expr: !DIExpression())
!4060 = distinct !DIGlobalVariable(name: "pci_64_bit", scope: !2, file: !3, line: 124, type: !4061, isLocal: true, isDefinition: true)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !99, line: 754, size: 128, elements: !4062)
!4062 = !{!4063, !4065}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4061, file: !99, line: 755, baseType: !4064, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !99, line: 749, baseType: !137)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4061, file: !99, line: 756, baseType: !4064, size: 64, offset: 64)
!4066 = !DIGlobalVariableExpression(var: !4067, expr: !DIExpression())
!4067 = distinct !DIGlobalVariable(name: "pci_32_bit", scope: !2, file: !3, line: 122, type: !4061, isLocal: true, isDefinition: true)
!4068 = !{i32 7, !"Dwarf Version", i32 4}
!4069 = !{i32 2, !"Debug Info Version", i32 3}
!4070 = !{i32 1, !"wchar_size", i32 2}
!4071 = !{i32 1, !"Code Model", i32 2}
!4072 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4073 = distinct !DISubprogram(name: "pci_add_resource_offset", scope: !3, file: !3, line: 19, type: !4074, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{null, !127, !130, !135}
!4076 = !DILocalVariable(name: "resources", arg: 1, scope: !4073, file: !3, line: 19, type: !127)
!4077 = !DILocation(line: 19, column: 48, scope: !4073)
!4078 = !DILocalVariable(name: "res", arg: 2, scope: !4073, file: !3, line: 19, type: !130)
!4079 = !DILocation(line: 19, column: 76, scope: !4073)
!4080 = !DILocalVariable(name: "offset", arg: 3, scope: !4073, file: !3, line: 20, type: !135)
!4081 = !DILocation(line: 20, column: 25, scope: !4073)
!4082 = !DILocalVariable(name: "entry", scope: !4073, file: !3, line: 22, type: !154)
!4083 = !DILocation(line: 22, column: 25, scope: !4073)
!4084 = !DILocation(line: 24, column: 37, scope: !4073)
!4085 = !DILocation(line: 24, column: 10, scope: !4073)
!4086 = !DILocation(line: 24, column: 8, scope: !4073)
!4087 = !DILocation(line: 25, column: 7, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 25, column: 6)
!4089 = !DILocation(line: 25, column: 6, scope: !4073)
!4090 = !DILocation(line: 26, column: 3, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 25, column: 14)
!4092 = !DILocation(line: 27, column: 3, scope: !4091)
!4093 = !DILocation(line: 30, column: 18, scope: !4073)
!4094 = !DILocation(line: 30, column: 2, scope: !4073)
!4095 = !DILocation(line: 30, column: 9, scope: !4073)
!4096 = !DILocation(line: 30, column: 16, scope: !4073)
!4097 = !DILocation(line: 31, column: 25, scope: !4073)
!4098 = !DILocation(line: 31, column: 32, scope: !4073)
!4099 = !DILocation(line: 31, column: 2, scope: !4073)
!4100 = !DILocation(line: 32, column: 1, scope: !4073)
!4101 = distinct !DISubprogram(name: "resource_list_add_tail", scope: !156, file: !156, line: 40, type: !4102, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !154, !127}
!4104 = !DILocalVariable(name: "entry", arg: 1, scope: !4101, file: !156, line: 40, type: !154)
!4105 = !DILocation(line: 40, column: 66, scope: !4101)
!4106 = !DILocalVariable(name: "head", arg: 2, scope: !4101, file: !156, line: 41, type: !127)
!4107 = !DILocation(line: 41, column: 26, scope: !4101)
!4108 = !DILocation(line: 43, column: 17, scope: !4101)
!4109 = !DILocation(line: 43, column: 24, scope: !4101)
!4110 = !DILocation(line: 43, column: 30, scope: !4101)
!4111 = !DILocation(line: 43, column: 2, scope: !4101)
!4112 = !DILocation(line: 44, column: 1, scope: !4101)
!4113 = distinct !DISubprogram(name: "pci_add_resource", scope: !3, file: !3, line: 35, type: !4114, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !127, !130}
!4116 = !DILocalVariable(name: "resources", arg: 1, scope: !4113, file: !3, line: 35, type: !127)
!4117 = !DILocation(line: 35, column: 41, scope: !4113)
!4118 = !DILocalVariable(name: "res", arg: 2, scope: !4113, file: !3, line: 35, type: !130)
!4119 = !DILocation(line: 35, column: 69, scope: !4113)
!4120 = !DILocation(line: 37, column: 26, scope: !4113)
!4121 = !DILocation(line: 37, column: 37, scope: !4113)
!4122 = !DILocation(line: 37, column: 2, scope: !4113)
!4123 = !DILocation(line: 38, column: 1, scope: !4113)
!4124 = distinct !DISubprogram(name: "pci_free_resource_list", scope: !3, file: !3, line: 41, type: !4125, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !127}
!4127 = !DILocalVariable(name: "resources", arg: 1, scope: !4124, file: !3, line: 41, type: !127)
!4128 = !DILocation(line: 41, column: 47, scope: !4124)
!4129 = !DILocation(line: 43, column: 21, scope: !4124)
!4130 = !DILocation(line: 43, column: 2, scope: !4124)
!4131 = !DILocation(line: 44, column: 1, scope: !4124)
!4132 = distinct !DISubprogram(name: "pci_bus_add_resource", scope: !3, file: !3, line: 47, type: !4133, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !167, !130, !7}
!4135 = !DILocalVariable(name: "bus", arg: 1, scope: !4132, file: !3, line: 47, type: !167)
!4136 = !DILocation(line: 47, column: 43, scope: !4132)
!4137 = !DILocalVariable(name: "res", arg: 2, scope: !4132, file: !3, line: 47, type: !130)
!4138 = !DILocation(line: 47, column: 65, scope: !4132)
!4139 = !DILocalVariable(name: "flags", arg: 3, scope: !4132, file: !3, line: 48, type: !7)
!4140 = !DILocation(line: 48, column: 19, scope: !4132)
!4141 = !DILocalVariable(name: "bus_res", scope: !4132, file: !3, line: 50, type: !120)
!4142 = !DILocation(line: 50, column: 27, scope: !4132)
!4143 = !DILocation(line: 52, column: 12, scope: !4132)
!4144 = !DILocation(line: 52, column: 10, scope: !4132)
!4145 = !DILocation(line: 53, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 53, column: 6)
!4147 = !DILocation(line: 53, column: 6, scope: !4132)
!4148 = !DILocation(line: 54, column: 3, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 53, column: 16)
!4150 = !DILocation(line: 55, column: 3, scope: !4149)
!4151 = !DILocation(line: 58, column: 17, scope: !4132)
!4152 = !DILocation(line: 58, column: 2, scope: !4132)
!4153 = !DILocation(line: 58, column: 11, scope: !4132)
!4154 = !DILocation(line: 58, column: 15, scope: !4132)
!4155 = !DILocation(line: 59, column: 19, scope: !4132)
!4156 = !DILocation(line: 59, column: 2, scope: !4132)
!4157 = !DILocation(line: 59, column: 11, scope: !4132)
!4158 = !DILocation(line: 59, column: 17, scope: !4132)
!4159 = !DILocation(line: 60, column: 17, scope: !4132)
!4160 = !DILocation(line: 60, column: 26, scope: !4132)
!4161 = !DILocation(line: 60, column: 33, scope: !4132)
!4162 = !DILocation(line: 60, column: 38, scope: !4132)
!4163 = !DILocation(line: 60, column: 2, scope: !4132)
!4164 = !DILocation(line: 61, column: 1, scope: !4132)
!4165 = distinct !DISubprogram(name: "kzalloc", scope: !110, file: !110, line: 662, type: !4166, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!119, !336, !117}
!4168 = !DILocalVariable(name: "s", arg: 1, scope: !4169, file: !110, line: 445, type: !944)
!4169 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !110, file: !110, line: 445, type: !4170, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!119, !944, !117, !336}
!4172 = !DILocation(line: 445, column: 72, scope: !4169, inlinedAt: !4173)
!4173 = distinct !DILocation(line: 552, column: 10, scope: !4174, inlinedAt: !4177)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !110, line: 540, column: 34)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !110, line: 540, column: 6)
!4176 = distinct !DISubprogram(name: "kmalloc", scope: !110, file: !110, line: 538, type: !4166, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4177 = distinct !DILocation(line: 664, column: 9, scope: !4165)
!4178 = !DILocalVariable(name: "flags", arg: 2, scope: !4169, file: !110, line: 446, type: !117)
!4179 = !DILocation(line: 446, column: 9, scope: !4169, inlinedAt: !4173)
!4180 = !DILocalVariable(name: "size", arg: 3, scope: !4169, file: !110, line: 446, type: !336)
!4181 = !DILocation(line: 446, column: 23, scope: !4169, inlinedAt: !4173)
!4182 = !DILocalVariable(name: "ret", scope: !4169, file: !110, line: 448, type: !119)
!4183 = !DILocation(line: 448, column: 8, scope: !4169, inlinedAt: !4173)
!4184 = !DILocalVariable(name: "flags", arg: 1, scope: !4185, file: !110, line: 318, type: !117)
!4185 = distinct !DISubprogram(name: "kmalloc_type", scope: !110, file: !110, line: 318, type: !4186, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!109, !117}
!4188 = !DILocation(line: 318, column: 67, scope: !4185, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 553, column: 20, scope: !4174, inlinedAt: !4177)
!4190 = !DILocalVariable(name: "size", arg: 1, scope: !4191, file: !110, line: 346, type: !336)
!4191 = distinct !DISubprogram(name: "kmalloc_index", scope: !110, file: !110, line: 346, type: !4192, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!7, !336}
!4194 = !DILocation(line: 346, column: 58, scope: !4191, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 547, column: 11, scope: !4174, inlinedAt: !4177)
!4196 = !DILocalVariable(name: "size", arg: 1, scope: !4197, file: !110, line: 472, type: !336)
!4197 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !110, file: !110, line: 472, type: !4198, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!119, !336, !117, !7}
!4200 = !DILocation(line: 472, column: 28, scope: !4197, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 481, column: 9, scope: !4202, inlinedAt: !4203)
!4202 = distinct !DISubprogram(name: "kmalloc_large", scope: !110, file: !110, line: 478, type: !4166, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4203 = distinct !DILocation(line: 545, column: 11, scope: !4204, inlinedAt: !4177)
!4204 = distinct !DILexicalBlock(scope: !4174, file: !110, line: 544, column: 7)
!4205 = !DILocalVariable(name: "flags", arg: 2, scope: !4197, file: !110, line: 472, type: !117)
!4206 = !DILocation(line: 472, column: 40, scope: !4197, inlinedAt: !4201)
!4207 = !DILocalVariable(name: "order", arg: 3, scope: !4197, file: !110, line: 472, type: !7)
!4208 = !DILocation(line: 472, column: 60, scope: !4197, inlinedAt: !4201)
!4209 = !DILocalVariable(name: "size", arg: 1, scope: !4202, file: !110, line: 478, type: !336)
!4210 = !DILocation(line: 478, column: 51, scope: !4202, inlinedAt: !4203)
!4211 = !DILocalVariable(name: "flags", arg: 2, scope: !4202, file: !110, line: 478, type: !117)
!4212 = !DILocation(line: 478, column: 63, scope: !4202, inlinedAt: !4203)
!4213 = !DILocalVariable(name: "order", scope: !4202, file: !110, line: 480, type: !7)
!4214 = !DILocation(line: 480, column: 15, scope: !4202, inlinedAt: !4203)
!4215 = !DILocalVariable(name: "size", arg: 1, scope: !4176, file: !110, line: 538, type: !336)
!4216 = !DILocation(line: 538, column: 45, scope: !4176, inlinedAt: !4177)
!4217 = !DILocalVariable(name: "flags", arg: 2, scope: !4176, file: !110, line: 538, type: !117)
!4218 = !DILocation(line: 538, column: 57, scope: !4176, inlinedAt: !4177)
!4219 = !DILocalVariable(name: "index", scope: !4174, file: !110, line: 542, type: !7)
!4220 = !DILocation(line: 542, column: 16, scope: !4174, inlinedAt: !4177)
!4221 = !DILocalVariable(name: "size", arg: 1, scope: !4165, file: !110, line: 662, type: !336)
!4222 = !DILocation(line: 662, column: 36, scope: !4165)
!4223 = !DILocalVariable(name: "flags", arg: 2, scope: !4165, file: !110, line: 662, type: !117)
!4224 = !DILocation(line: 662, column: 48, scope: !4165)
!4225 = !DILocation(line: 664, column: 17, scope: !4165)
!4226 = !DILocation(line: 664, column: 23, scope: !4165)
!4227 = !DILocation(line: 664, column: 29, scope: !4165)
!4228 = !DILocation(line: 540, column: 27, scope: !4175, inlinedAt: !4177)
!4229 = !DILocation(line: 540, column: 6, scope: !4175, inlinedAt: !4177)
!4230 = !DILocation(line: 540, column: 6, scope: !4176, inlinedAt: !4177)
!4231 = !DILocation(line: 544, column: 7, scope: !4204, inlinedAt: !4177)
!4232 = !DILocation(line: 544, column: 12, scope: !4204, inlinedAt: !4177)
!4233 = !DILocation(line: 544, column: 7, scope: !4174, inlinedAt: !4177)
!4234 = !DILocation(line: 545, column: 25, scope: !4204, inlinedAt: !4177)
!4235 = !DILocation(line: 545, column: 31, scope: !4204, inlinedAt: !4177)
!4236 = !DILocation(line: 480, column: 33, scope: !4202, inlinedAt: !4203)
!4237 = !DILocation(line: 480, column: 23, scope: !4202, inlinedAt: !4203)
!4238 = !DILocation(line: 481, column: 29, scope: !4202, inlinedAt: !4203)
!4239 = !DILocation(line: 481, column: 35, scope: !4202, inlinedAt: !4203)
!4240 = !DILocation(line: 481, column: 42, scope: !4202, inlinedAt: !4203)
!4241 = !DILocation(line: 474, column: 23, scope: !4197, inlinedAt: !4201)
!4242 = !DILocation(line: 474, column: 29, scope: !4197, inlinedAt: !4201)
!4243 = !DILocation(line: 474, column: 36, scope: !4197, inlinedAt: !4201)
!4244 = !DILocation(line: 474, column: 9, scope: !4197, inlinedAt: !4201)
!4245 = !DILocation(line: 545, column: 4, scope: !4204, inlinedAt: !4177)
!4246 = !DILocation(line: 547, column: 25, scope: !4174, inlinedAt: !4177)
!4247 = !DILocation(line: 348, column: 7, scope: !4248, inlinedAt: !4195)
!4248 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 348, column: 6)
!4249 = !DILocation(line: 348, column: 6, scope: !4191, inlinedAt: !4195)
!4250 = !DILocation(line: 349, column: 3, scope: !4248, inlinedAt: !4195)
!4251 = !DILocation(line: 351, column: 6, scope: !4252, inlinedAt: !4195)
!4252 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 351, column: 6)
!4253 = !DILocation(line: 351, column: 11, scope: !4252, inlinedAt: !4195)
!4254 = !DILocation(line: 351, column: 6, scope: !4191, inlinedAt: !4195)
!4255 = !DILocation(line: 352, column: 3, scope: !4252, inlinedAt: !4195)
!4256 = !DILocation(line: 354, column: 32, scope: !4257, inlinedAt: !4195)
!4257 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 354, column: 6)
!4258 = !DILocation(line: 354, column: 37, scope: !4257, inlinedAt: !4195)
!4259 = !DILocation(line: 354, column: 42, scope: !4257, inlinedAt: !4195)
!4260 = !DILocation(line: 354, column: 45, scope: !4257, inlinedAt: !4195)
!4261 = !DILocation(line: 354, column: 50, scope: !4257, inlinedAt: !4195)
!4262 = !DILocation(line: 354, column: 6, scope: !4191, inlinedAt: !4195)
!4263 = !DILocation(line: 355, column: 3, scope: !4257, inlinedAt: !4195)
!4264 = !DILocation(line: 356, column: 32, scope: !4265, inlinedAt: !4195)
!4265 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 356, column: 6)
!4266 = !DILocation(line: 356, column: 37, scope: !4265, inlinedAt: !4195)
!4267 = !DILocation(line: 356, column: 43, scope: !4265, inlinedAt: !4195)
!4268 = !DILocation(line: 356, column: 46, scope: !4265, inlinedAt: !4195)
!4269 = !DILocation(line: 356, column: 51, scope: !4265, inlinedAt: !4195)
!4270 = !DILocation(line: 356, column: 6, scope: !4191, inlinedAt: !4195)
!4271 = !DILocation(line: 357, column: 3, scope: !4265, inlinedAt: !4195)
!4272 = !DILocation(line: 358, column: 6, scope: !4273, inlinedAt: !4195)
!4273 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 358, column: 6)
!4274 = !DILocation(line: 358, column: 11, scope: !4273, inlinedAt: !4195)
!4275 = !DILocation(line: 358, column: 6, scope: !4191, inlinedAt: !4195)
!4276 = !DILocation(line: 358, column: 26, scope: !4273, inlinedAt: !4195)
!4277 = !DILocation(line: 359, column: 6, scope: !4278, inlinedAt: !4195)
!4278 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 359, column: 6)
!4279 = !DILocation(line: 359, column: 11, scope: !4278, inlinedAt: !4195)
!4280 = !DILocation(line: 359, column: 6, scope: !4191, inlinedAt: !4195)
!4281 = !DILocation(line: 359, column: 26, scope: !4278, inlinedAt: !4195)
!4282 = !DILocation(line: 360, column: 6, scope: !4283, inlinedAt: !4195)
!4283 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 360, column: 6)
!4284 = !DILocation(line: 360, column: 11, scope: !4283, inlinedAt: !4195)
!4285 = !DILocation(line: 360, column: 6, scope: !4191, inlinedAt: !4195)
!4286 = !DILocation(line: 360, column: 26, scope: !4283, inlinedAt: !4195)
!4287 = !DILocation(line: 361, column: 6, scope: !4288, inlinedAt: !4195)
!4288 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 361, column: 6)
!4289 = !DILocation(line: 361, column: 11, scope: !4288, inlinedAt: !4195)
!4290 = !DILocation(line: 361, column: 6, scope: !4191, inlinedAt: !4195)
!4291 = !DILocation(line: 361, column: 26, scope: !4288, inlinedAt: !4195)
!4292 = !DILocation(line: 362, column: 6, scope: !4293, inlinedAt: !4195)
!4293 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 362, column: 6)
!4294 = !DILocation(line: 362, column: 11, scope: !4293, inlinedAt: !4195)
!4295 = !DILocation(line: 362, column: 6, scope: !4191, inlinedAt: !4195)
!4296 = !DILocation(line: 362, column: 26, scope: !4293, inlinedAt: !4195)
!4297 = !DILocation(line: 363, column: 6, scope: !4298, inlinedAt: !4195)
!4298 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 363, column: 6)
!4299 = !DILocation(line: 363, column: 11, scope: !4298, inlinedAt: !4195)
!4300 = !DILocation(line: 363, column: 6, scope: !4191, inlinedAt: !4195)
!4301 = !DILocation(line: 363, column: 26, scope: !4298, inlinedAt: !4195)
!4302 = !DILocation(line: 364, column: 6, scope: !4303, inlinedAt: !4195)
!4303 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 364, column: 6)
!4304 = !DILocation(line: 364, column: 11, scope: !4303, inlinedAt: !4195)
!4305 = !DILocation(line: 364, column: 6, scope: !4191, inlinedAt: !4195)
!4306 = !DILocation(line: 364, column: 26, scope: !4303, inlinedAt: !4195)
!4307 = !DILocation(line: 365, column: 6, scope: !4308, inlinedAt: !4195)
!4308 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 365, column: 6)
!4309 = !DILocation(line: 365, column: 11, scope: !4308, inlinedAt: !4195)
!4310 = !DILocation(line: 365, column: 6, scope: !4191, inlinedAt: !4195)
!4311 = !DILocation(line: 365, column: 26, scope: !4308, inlinedAt: !4195)
!4312 = !DILocation(line: 366, column: 6, scope: !4313, inlinedAt: !4195)
!4313 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 366, column: 6)
!4314 = !DILocation(line: 366, column: 11, scope: !4313, inlinedAt: !4195)
!4315 = !DILocation(line: 366, column: 6, scope: !4191, inlinedAt: !4195)
!4316 = !DILocation(line: 366, column: 26, scope: !4313, inlinedAt: !4195)
!4317 = !DILocation(line: 367, column: 6, scope: !4318, inlinedAt: !4195)
!4318 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 367, column: 6)
!4319 = !DILocation(line: 367, column: 11, scope: !4318, inlinedAt: !4195)
!4320 = !DILocation(line: 367, column: 6, scope: !4191, inlinedAt: !4195)
!4321 = !DILocation(line: 367, column: 26, scope: !4318, inlinedAt: !4195)
!4322 = !DILocation(line: 368, column: 6, scope: !4323, inlinedAt: !4195)
!4323 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 368, column: 6)
!4324 = !DILocation(line: 368, column: 11, scope: !4323, inlinedAt: !4195)
!4325 = !DILocation(line: 368, column: 6, scope: !4191, inlinedAt: !4195)
!4326 = !DILocation(line: 368, column: 26, scope: !4323, inlinedAt: !4195)
!4327 = !DILocation(line: 369, column: 6, scope: !4328, inlinedAt: !4195)
!4328 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 369, column: 6)
!4329 = !DILocation(line: 369, column: 11, scope: !4328, inlinedAt: !4195)
!4330 = !DILocation(line: 369, column: 6, scope: !4191, inlinedAt: !4195)
!4331 = !DILocation(line: 369, column: 26, scope: !4328, inlinedAt: !4195)
!4332 = !DILocation(line: 370, column: 6, scope: !4333, inlinedAt: !4195)
!4333 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 370, column: 6)
!4334 = !DILocation(line: 370, column: 11, scope: !4333, inlinedAt: !4195)
!4335 = !DILocation(line: 370, column: 6, scope: !4191, inlinedAt: !4195)
!4336 = !DILocation(line: 370, column: 26, scope: !4333, inlinedAt: !4195)
!4337 = !DILocation(line: 371, column: 6, scope: !4338, inlinedAt: !4195)
!4338 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 371, column: 6)
!4339 = !DILocation(line: 371, column: 11, scope: !4338, inlinedAt: !4195)
!4340 = !DILocation(line: 371, column: 6, scope: !4191, inlinedAt: !4195)
!4341 = !DILocation(line: 371, column: 26, scope: !4338, inlinedAt: !4195)
!4342 = !DILocation(line: 372, column: 6, scope: !4343, inlinedAt: !4195)
!4343 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 372, column: 6)
!4344 = !DILocation(line: 372, column: 11, scope: !4343, inlinedAt: !4195)
!4345 = !DILocation(line: 372, column: 6, scope: !4191, inlinedAt: !4195)
!4346 = !DILocation(line: 372, column: 26, scope: !4343, inlinedAt: !4195)
!4347 = !DILocation(line: 373, column: 6, scope: !4348, inlinedAt: !4195)
!4348 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 373, column: 6)
!4349 = !DILocation(line: 373, column: 11, scope: !4348, inlinedAt: !4195)
!4350 = !DILocation(line: 373, column: 6, scope: !4191, inlinedAt: !4195)
!4351 = !DILocation(line: 373, column: 26, scope: !4348, inlinedAt: !4195)
!4352 = !DILocation(line: 374, column: 6, scope: !4353, inlinedAt: !4195)
!4353 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 374, column: 6)
!4354 = !DILocation(line: 374, column: 11, scope: !4353, inlinedAt: !4195)
!4355 = !DILocation(line: 374, column: 6, scope: !4191, inlinedAt: !4195)
!4356 = !DILocation(line: 374, column: 26, scope: !4353, inlinedAt: !4195)
!4357 = !DILocation(line: 375, column: 6, scope: !4358, inlinedAt: !4195)
!4358 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 375, column: 6)
!4359 = !DILocation(line: 375, column: 11, scope: !4358, inlinedAt: !4195)
!4360 = !DILocation(line: 375, column: 6, scope: !4191, inlinedAt: !4195)
!4361 = !DILocation(line: 375, column: 27, scope: !4358, inlinedAt: !4195)
!4362 = !DILocation(line: 376, column: 6, scope: !4363, inlinedAt: !4195)
!4363 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 376, column: 6)
!4364 = !DILocation(line: 376, column: 11, scope: !4363, inlinedAt: !4195)
!4365 = !DILocation(line: 376, column: 6, scope: !4191, inlinedAt: !4195)
!4366 = !DILocation(line: 376, column: 32, scope: !4363, inlinedAt: !4195)
!4367 = !DILocation(line: 377, column: 6, scope: !4368, inlinedAt: !4195)
!4368 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 377, column: 6)
!4369 = !DILocation(line: 377, column: 11, scope: !4368, inlinedAt: !4195)
!4370 = !DILocation(line: 377, column: 6, scope: !4191, inlinedAt: !4195)
!4371 = !DILocation(line: 377, column: 32, scope: !4368, inlinedAt: !4195)
!4372 = !DILocation(line: 378, column: 6, scope: !4373, inlinedAt: !4195)
!4373 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 378, column: 6)
!4374 = !DILocation(line: 378, column: 11, scope: !4373, inlinedAt: !4195)
!4375 = !DILocation(line: 378, column: 6, scope: !4191, inlinedAt: !4195)
!4376 = !DILocation(line: 378, column: 32, scope: !4373, inlinedAt: !4195)
!4377 = !DILocation(line: 379, column: 6, scope: !4378, inlinedAt: !4195)
!4378 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 379, column: 6)
!4379 = !DILocation(line: 379, column: 11, scope: !4378, inlinedAt: !4195)
!4380 = !DILocation(line: 379, column: 6, scope: !4191, inlinedAt: !4195)
!4381 = !DILocation(line: 379, column: 33, scope: !4378, inlinedAt: !4195)
!4382 = !DILocation(line: 380, column: 6, scope: !4383, inlinedAt: !4195)
!4383 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 380, column: 6)
!4384 = !DILocation(line: 380, column: 11, scope: !4383, inlinedAt: !4195)
!4385 = !DILocation(line: 380, column: 6, scope: !4191, inlinedAt: !4195)
!4386 = !DILocation(line: 380, column: 33, scope: !4383, inlinedAt: !4195)
!4387 = !DILocation(line: 381, column: 6, scope: !4388, inlinedAt: !4195)
!4388 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 381, column: 6)
!4389 = !DILocation(line: 381, column: 11, scope: !4388, inlinedAt: !4195)
!4390 = !DILocation(line: 381, column: 6, scope: !4191, inlinedAt: !4195)
!4391 = !DILocation(line: 381, column: 33, scope: !4388, inlinedAt: !4195)
!4392 = !DILocation(line: 382, column: 2, scope: !4393, inlinedAt: !4195)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !110, line: 382, column: 2)
!4394 = distinct !DILexicalBlock(scope: !4191, file: !110, line: 382, column: 2)
!4395 = !{i32 -2143270242, i32 -2143270213, i32 -2143270167, i32 -2143270109, i32 -2143270055, i32 -2143270001, i32 -2143269946, i32 -2143269915}
!4396 = !DILocation(line: 382, column: 2, scope: !4397, inlinedAt: !4195)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !110, line: 382, column: 2)
!4398 = distinct !DILexicalBlock(scope: !4394, file: !110, line: 382, column: 2)
!4399 = !{i32 -2143269472, i32 -2143269465, i32 -2143269411, i32 -2143269380, i32 -2143269350}
!4400 = !DILocation(line: 382, column: 2, scope: !4398, inlinedAt: !4195)
!4401 = !DILocation(line: 386, column: 1, scope: !4191, inlinedAt: !4195)
!4402 = !DILocation(line: 547, column: 9, scope: !4174, inlinedAt: !4177)
!4403 = !DILocation(line: 549, column: 8, scope: !4404, inlinedAt: !4177)
!4404 = distinct !DILexicalBlock(scope: !4174, file: !110, line: 549, column: 7)
!4405 = !DILocation(line: 549, column: 7, scope: !4174, inlinedAt: !4177)
!4406 = !DILocation(line: 550, column: 4, scope: !4404, inlinedAt: !4177)
!4407 = !DILocation(line: 553, column: 33, scope: !4174, inlinedAt: !4177)
!4408 = !DILocation(line: 325, column: 6, scope: !4409, inlinedAt: !4189)
!4409 = distinct !DILexicalBlock(scope: !4185, file: !110, line: 325, column: 6)
!4410 = !DILocation(line: 325, column: 6, scope: !4185, inlinedAt: !4189)
!4411 = !DILocation(line: 326, column: 3, scope: !4409, inlinedAt: !4189)
!4412 = !DILocation(line: 332, column: 9, scope: !4185, inlinedAt: !4189)
!4413 = !DILocation(line: 332, column: 15, scope: !4185, inlinedAt: !4189)
!4414 = !DILocation(line: 332, column: 2, scope: !4185, inlinedAt: !4189)
!4415 = !DILocation(line: 336, column: 1, scope: !4185, inlinedAt: !4189)
!4416 = !DILocation(line: 553, column: 5, scope: !4174, inlinedAt: !4177)
!4417 = !DILocation(line: 553, column: 41, scope: !4174, inlinedAt: !4177)
!4418 = !DILocation(line: 554, column: 5, scope: !4174, inlinedAt: !4177)
!4419 = !DILocation(line: 554, column: 12, scope: !4174, inlinedAt: !4177)
!4420 = !DILocation(line: 448, column: 31, scope: !4169, inlinedAt: !4173)
!4421 = !DILocation(line: 448, column: 34, scope: !4169, inlinedAt: !4173)
!4422 = !DILocation(line: 448, column: 14, scope: !4169, inlinedAt: !4173)
!4423 = !DILocation(line: 450, column: 22, scope: !4169, inlinedAt: !4173)
!4424 = !DILocation(line: 450, column: 25, scope: !4169, inlinedAt: !4173)
!4425 = !DILocation(line: 450, column: 30, scope: !4169, inlinedAt: !4173)
!4426 = !DILocation(line: 450, column: 36, scope: !4169, inlinedAt: !4173)
!4427 = !DILocation(line: 450, column: 8, scope: !4169, inlinedAt: !4173)
!4428 = !DILocation(line: 450, column: 6, scope: !4169, inlinedAt: !4173)
!4429 = !DILocation(line: 451, column: 9, scope: !4169, inlinedAt: !4173)
!4430 = !DILocation(line: 552, column: 3, scope: !4174, inlinedAt: !4177)
!4431 = !DILocation(line: 557, column: 19, scope: !4176, inlinedAt: !4177)
!4432 = !DILocation(line: 557, column: 25, scope: !4176, inlinedAt: !4177)
!4433 = !DILocation(line: 557, column: 9, scope: !4176, inlinedAt: !4177)
!4434 = !DILocation(line: 557, column: 2, scope: !4176, inlinedAt: !4177)
!4435 = !DILocation(line: 558, column: 1, scope: !4176, inlinedAt: !4177)
!4436 = !DILocation(line: 664, column: 2, scope: !4165)
!4437 = distinct !DISubprogram(name: "list_add_tail", scope: !4438, file: !4438, line: 98, type: !4439, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4438 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !127, !127}
!4441 = !DILocalVariable(name: "new", arg: 1, scope: !4437, file: !4438, line: 98, type: !127)
!4442 = !DILocation(line: 98, column: 52, scope: !4437)
!4443 = !DILocalVariable(name: "head", arg: 2, scope: !4437, file: !4438, line: 98, type: !127)
!4444 = !DILocation(line: 98, column: 75, scope: !4437)
!4445 = !DILocation(line: 100, column: 13, scope: !4437)
!4446 = !DILocation(line: 100, column: 18, scope: !4437)
!4447 = !DILocation(line: 100, column: 24, scope: !4437)
!4448 = !DILocation(line: 100, column: 30, scope: !4437)
!4449 = !DILocation(line: 100, column: 2, scope: !4437)
!4450 = !DILocation(line: 101, column: 1, scope: !4437)
!4451 = distinct !DISubprogram(name: "pci_bus_resource_n", scope: !3, file: !3, line: 63, type: !4452, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!130, !4454, !190}
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!4456 = !DILocalVariable(name: "bus", arg: 1, scope: !4451, file: !3, line: 63, type: !4454)
!4457 = !DILocation(line: 63, column: 59, scope: !4451)
!4458 = !DILocalVariable(name: "n", arg: 2, scope: !4451, file: !3, line: 63, type: !190)
!4459 = !DILocation(line: 63, column: 68, scope: !4451)
!4460 = !DILocalVariable(name: "bus_res", scope: !4451, file: !3, line: 65, type: !120)
!4461 = !DILocation(line: 65, column: 27, scope: !4451)
!4462 = !DILocation(line: 67, column: 6, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 67, column: 6)
!4464 = !DILocation(line: 67, column: 8, scope: !4463)
!4465 = !DILocation(line: 67, column: 6, scope: !4451)
!4466 = !DILocation(line: 68, column: 10, scope: !4463)
!4467 = !DILocation(line: 68, column: 15, scope: !4463)
!4468 = !DILocation(line: 68, column: 24, scope: !4463)
!4469 = !DILocation(line: 68, column: 3, scope: !4463)
!4470 = !DILocation(line: 70, column: 4, scope: !4451)
!4471 = !DILocalVariable(name: "__mptr", scope: !4472, file: !3, line: 71, type: !119)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 71, column: 2)
!4473 = distinct !DILexicalBlock(scope: !4451, file: !3, line: 71, column: 2)
!4474 = !DILocation(line: 71, column: 2, scope: !4472)
!4475 = !DILocation(line: 71, column: 2, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 71, column: 2)
!4477 = !DILocation(line: 71, column: 2, scope: !4473)
!4478 = !DILocation(line: 71, column: 2, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 71, column: 2)
!4480 = !DILocation(line: 72, column: 8, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 72, column: 7)
!4482 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 71, column: 54)
!4483 = !DILocation(line: 72, column: 11, scope: !4481)
!4484 = !DILocation(line: 72, column: 7, scope: !4482)
!4485 = !DILocation(line: 73, column: 11, scope: !4481)
!4486 = !DILocation(line: 73, column: 20, scope: !4481)
!4487 = !DILocation(line: 73, column: 4, scope: !4481)
!4488 = !DILocation(line: 74, column: 2, scope: !4482)
!4489 = !DILocalVariable(name: "__mptr", scope: !4490, file: !3, line: 71, type: !119)
!4490 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 71, column: 2)
!4491 = !DILocation(line: 71, column: 2, scope: !4490)
!4492 = !DILocation(line: 71, column: 2, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 71, column: 2)
!4494 = distinct !{!4494, !4477, !4495}
!4495 = !DILocation(line: 74, column: 2, scope: !4473)
!4496 = !DILocation(line: 75, column: 2, scope: !4451)
!4497 = !DILocation(line: 76, column: 1, scope: !4451)
!4498 = distinct !DISubprogram(name: "pci_bus_remove_resources", scope: !3, file: !3, line: 79, type: !193, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4499 = !DILocalVariable(name: "bus", arg: 1, scope: !4498, file: !3, line: 79, type: !167)
!4500 = !DILocation(line: 79, column: 47, scope: !4498)
!4501 = !DILocalVariable(name: "i", scope: !4498, file: !3, line: 81, type: !190)
!4502 = !DILocation(line: 81, column: 6, scope: !4498)
!4503 = !DILocalVariable(name: "bus_res", scope: !4498, file: !3, line: 82, type: !120)
!4504 = !DILocation(line: 82, column: 27, scope: !4498)
!4505 = !DILocalVariable(name: "tmp", scope: !4498, file: !3, line: 82, type: !120)
!4506 = !DILocation(line: 82, column: 37, scope: !4498)
!4507 = !DILocation(line: 84, column: 9, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 84, column: 2)
!4509 = !DILocation(line: 84, column: 7, scope: !4508)
!4510 = !DILocation(line: 84, column: 14, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 84, column: 2)
!4512 = !DILocation(line: 84, column: 16, scope: !4511)
!4513 = !DILocation(line: 84, column: 2, scope: !4508)
!4514 = !DILocation(line: 85, column: 3, scope: !4511)
!4515 = !DILocation(line: 85, column: 8, scope: !4511)
!4516 = !DILocation(line: 85, column: 17, scope: !4511)
!4517 = !DILocation(line: 85, column: 20, scope: !4511)
!4518 = !DILocation(line: 84, column: 44, scope: !4511)
!4519 = !DILocation(line: 84, column: 2, scope: !4511)
!4520 = distinct !{!4520, !4513, !4521}
!4521 = !DILocation(line: 85, column: 22, scope: !4508)
!4522 = !DILocalVariable(name: "__mptr", scope: !4523, file: !3, line: 87, type: !119)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 87, column: 2)
!4524 = distinct !DILexicalBlock(scope: !4498, file: !3, line: 87, column: 2)
!4525 = !DILocation(line: 87, column: 2, scope: !4523)
!4526 = !DILocation(line: 87, column: 2, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !3, line: 87, column: 2)
!4528 = !DILocation(line: 87, column: 2, scope: !4524)
!4529 = !DILocalVariable(name: "__mptr", scope: !4530, file: !3, line: 87, type: !119)
!4530 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 87, column: 2)
!4531 = !DILocation(line: 87, column: 2, scope: !4530)
!4532 = !DILocation(line: 87, column: 2, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 87, column: 2)
!4534 = !DILocation(line: 87, column: 2, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 87, column: 2)
!4536 = !DILocation(line: 88, column: 13, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 87, column: 64)
!4538 = !DILocation(line: 88, column: 22, scope: !4537)
!4539 = !DILocation(line: 88, column: 3, scope: !4537)
!4540 = !DILocation(line: 89, column: 9, scope: !4537)
!4541 = !DILocation(line: 89, column: 3, scope: !4537)
!4542 = !DILocation(line: 90, column: 2, scope: !4537)
!4543 = !DILocalVariable(name: "__mptr", scope: !4544, file: !3, line: 87, type: !119)
!4544 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 87, column: 2)
!4545 = !DILocation(line: 87, column: 2, scope: !4544)
!4546 = !DILocation(line: 87, column: 2, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 87, column: 2)
!4548 = distinct !{!4548, !4528, !4549}
!4549 = !DILocation(line: 90, column: 2, scope: !4524)
!4550 = !DILocation(line: 91, column: 1, scope: !4498)
!4551 = distinct !DISubprogram(name: "list_del", scope: !4438, file: !4438, line: 144, type: !4125, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4552 = !DILocalVariable(name: "entry", arg: 1, scope: !4551, file: !4438, line: 144, type: !127)
!4553 = !DILocation(line: 144, column: 47, scope: !4551)
!4554 = !DILocation(line: 146, column: 19, scope: !4551)
!4555 = !DILocation(line: 146, column: 2, scope: !4551)
!4556 = !DILocation(line: 147, column: 2, scope: !4551)
!4557 = !DILocation(line: 147, column: 9, scope: !4551)
!4558 = !DILocation(line: 147, column: 14, scope: !4551)
!4559 = !DILocation(line: 148, column: 2, scope: !4551)
!4560 = !DILocation(line: 148, column: 9, scope: !4551)
!4561 = !DILocation(line: 148, column: 14, scope: !4551)
!4562 = !DILocation(line: 149, column: 1, scope: !4551)
!4563 = distinct !DISubprogram(name: "devm_request_pci_bus_resources", scope: !3, file: !3, line: 93, type: !4564, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!190, !232, !127}
!4566 = !DILocalVariable(name: "dev", arg: 1, scope: !4563, file: !3, line: 93, type: !232)
!4567 = !DILocation(line: 93, column: 51, scope: !4563)
!4568 = !DILocalVariable(name: "resources", arg: 2, scope: !4563, file: !3, line: 94, type: !127)
!4569 = !DILocation(line: 94, column: 26, scope: !4563)
!4570 = !DILocalVariable(name: "win", scope: !4563, file: !3, line: 96, type: !154)
!4571 = !DILocation(line: 96, column: 25, scope: !4563)
!4572 = !DILocalVariable(name: "parent", scope: !4563, file: !3, line: 97, type: !130)
!4573 = !DILocation(line: 97, column: 19, scope: !4563)
!4574 = !DILocalVariable(name: "res", scope: !4563, file: !3, line: 97, type: !130)
!4575 = !DILocation(line: 97, column: 28, scope: !4563)
!4576 = !DILocalVariable(name: "err", scope: !4563, file: !3, line: 98, type: !190)
!4577 = !DILocation(line: 98, column: 6, scope: !4563)
!4578 = !DILocalVariable(name: "__mptr", scope: !4579, file: !3, line: 100, type: !119)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 100, column: 2)
!4580 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 100, column: 2)
!4581 = !DILocation(line: 100, column: 2, scope: !4579)
!4582 = !DILocation(line: 100, column: 2, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 100, column: 2)
!4584 = !DILocation(line: 100, column: 2, scope: !4580)
!4585 = !DILocation(line: 100, column: 2, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 100, column: 2)
!4587 = !DILocation(line: 101, column: 9, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 100, column: 47)
!4589 = !DILocation(line: 101, column: 14, scope: !4588)
!4590 = !DILocation(line: 101, column: 7, scope: !4588)
!4591 = !DILocation(line: 102, column: 25, scope: !4588)
!4592 = !DILocation(line: 102, column: 11, scope: !4588)
!4593 = !DILocation(line: 102, column: 3, scope: !4588)
!4594 = !DILocation(line: 104, column: 11, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 102, column: 31)
!4596 = !DILocation(line: 105, column: 4, scope: !4595)
!4597 = !DILocation(line: 107, column: 11, scope: !4595)
!4598 = !DILocation(line: 108, column: 4, scope: !4595)
!4599 = !DILocation(line: 110, column: 4, scope: !4595)
!4600 = !DILocation(line: 113, column: 31, scope: !4588)
!4601 = !DILocation(line: 113, column: 36, scope: !4588)
!4602 = !DILocation(line: 113, column: 44, scope: !4588)
!4603 = !DILocation(line: 113, column: 9, scope: !4588)
!4604 = !DILocation(line: 113, column: 7, scope: !4588)
!4605 = !DILocation(line: 114, column: 7, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 114, column: 7)
!4607 = !DILocation(line: 114, column: 7, scope: !4588)
!4608 = !DILocation(line: 115, column: 11, scope: !4606)
!4609 = !DILocation(line: 115, column: 4, scope: !4606)
!4610 = !DILocation(line: 116, column: 2, scope: !4588)
!4611 = !DILocalVariable(name: "__mptr", scope: !4612, file: !3, line: 100, type: !119)
!4612 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 100, column: 2)
!4613 = !DILocation(line: 100, column: 2, scope: !4612)
!4614 = !DILocation(line: 100, column: 2, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 100, column: 2)
!4616 = distinct !{!4616, !4584, !4617}
!4617 = !DILocation(line: 116, column: 2, scope: !4580)
!4618 = !DILocation(line: 118, column: 2, scope: !4563)
!4619 = !DILocation(line: 119, column: 1, scope: !4563)
!4620 = distinct !DISubprogram(name: "resource_type", scope: !132, file: !132, line: 214, type: !4621, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!148, !4623}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!4625 = !DILocalVariable(name: "res", arg: 1, scope: !4620, file: !132, line: 214, type: !4623)
!4626 = !DILocation(line: 214, column: 66, scope: !4620)
!4627 = !DILocation(line: 216, column: 9, scope: !4620)
!4628 = !DILocation(line: 216, column: 14, scope: !4620)
!4629 = !DILocation(line: 216, column: 20, scope: !4620)
!4630 = !DILocation(line: 216, column: 2, scope: !4620)
!4631 = distinct !DISubprogram(name: "pci_bus_alloc_resource", scope: !3, file: !3, line: 224, type: !4632, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!190, !167, !130, !135, !135, !135, !148, !4634, !119}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!135, !119, !4623, !135, !135}
!4637 = !DILocalVariable(name: "bus", arg: 1, scope: !4631, file: !3, line: 224, type: !167)
!4638 = !DILocation(line: 224, column: 44, scope: !4631)
!4639 = !DILocalVariable(name: "res", arg: 2, scope: !4631, file: !3, line: 224, type: !130)
!4640 = !DILocation(line: 224, column: 66, scope: !4631)
!4641 = !DILocalVariable(name: "size", arg: 3, scope: !4631, file: !3, line: 225, type: !135)
!4642 = !DILocation(line: 225, column: 19, scope: !4631)
!4643 = !DILocalVariable(name: "align", arg: 4, scope: !4631, file: !3, line: 225, type: !135)
!4644 = !DILocation(line: 225, column: 41, scope: !4631)
!4645 = !DILocalVariable(name: "min", arg: 5, scope: !4631, file: !3, line: 226, type: !135)
!4646 = !DILocation(line: 226, column: 19, scope: !4631)
!4647 = !DILocalVariable(name: "type_mask", arg: 6, scope: !4631, file: !3, line: 226, type: !148)
!4648 = !DILocation(line: 226, column: 38, scope: !4631)
!4649 = !DILocalVariable(name: "alignf", arg: 7, scope: !4631, file: !3, line: 227, type: !4634)
!4650 = !DILocation(line: 227, column: 21, scope: !4631)
!4651 = !DILocalVariable(name: "alignf_data", arg: 8, scope: !4631, file: !3, line: 231, type: !119)
!4652 = !DILocation(line: 231, column: 9, scope: !4631)
!4653 = !DILocalVariable(name: "rc", scope: !4631, file: !3, line: 234, type: !190)
!4654 = !DILocation(line: 234, column: 6, scope: !4631)
!4655 = !DILocation(line: 236, column: 6, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 236, column: 6)
!4657 = !DILocation(line: 236, column: 11, scope: !4656)
!4658 = !DILocation(line: 236, column: 17, scope: !4656)
!4659 = !DILocation(line: 236, column: 6, scope: !4631)
!4660 = !DILocation(line: 237, column: 34, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 236, column: 38)
!4662 = !DILocation(line: 237, column: 39, scope: !4661)
!4663 = !DILocation(line: 237, column: 44, scope: !4661)
!4664 = !DILocation(line: 237, column: 50, scope: !4661)
!4665 = !DILocation(line: 237, column: 57, scope: !4661)
!4666 = !DILocation(line: 238, column: 13, scope: !4661)
!4667 = !DILocation(line: 238, column: 24, scope: !4661)
!4668 = !DILocation(line: 238, column: 32, scope: !4661)
!4669 = !DILocation(line: 237, column: 8, scope: !4661)
!4670 = !DILocation(line: 237, column: 6, scope: !4661)
!4671 = !DILocation(line: 240, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4661, file: !3, line: 240, column: 7)
!4673 = !DILocation(line: 240, column: 10, scope: !4672)
!4674 = !DILocation(line: 240, column: 7, scope: !4661)
!4675 = !DILocation(line: 241, column: 4, scope: !4672)
!4676 = !DILocation(line: 243, column: 36, scope: !4661)
!4677 = !DILocation(line: 243, column: 41, scope: !4661)
!4678 = !DILocation(line: 243, column: 46, scope: !4661)
!4679 = !DILocation(line: 243, column: 52, scope: !4661)
!4680 = !DILocation(line: 243, column: 59, scope: !4661)
!4681 = !DILocation(line: 244, column: 8, scope: !4661)
!4682 = !DILocation(line: 244, column: 19, scope: !4661)
!4683 = !DILocation(line: 244, column: 27, scope: !4661)
!4684 = !DILocation(line: 243, column: 10, scope: !4661)
!4685 = !DILocation(line: 243, column: 3, scope: !4661)
!4686 = !DILocation(line: 249, column: 35, scope: !4631)
!4687 = !DILocation(line: 249, column: 40, scope: !4631)
!4688 = !DILocation(line: 249, column: 45, scope: !4631)
!4689 = !DILocation(line: 249, column: 51, scope: !4631)
!4690 = !DILocation(line: 249, column: 58, scope: !4631)
!4691 = !DILocation(line: 250, column: 7, scope: !4631)
!4692 = !DILocation(line: 250, column: 18, scope: !4631)
!4693 = !DILocation(line: 250, column: 26, scope: !4631)
!4694 = !DILocation(line: 249, column: 9, scope: !4631)
!4695 = !DILocation(line: 249, column: 2, scope: !4631)
!4696 = !DILocation(line: 252, column: 1, scope: !4631)
!4697 = distinct !DISubprogram(name: "pci_bus_alloc_from_region", scope: !3, file: !3, line: 154, type: !4698, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!190, !167, !130, !135, !135, !135, !148, !4634, !119, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4701 = !DILocalVariable(name: "bus", arg: 1, scope: !4697, file: !3, line: 154, type: !167)
!4702 = !DILocation(line: 154, column: 54, scope: !4697)
!4703 = !DILocalVariable(name: "res", arg: 2, scope: !4697, file: !3, line: 154, type: !130)
!4704 = !DILocation(line: 154, column: 76, scope: !4697)
!4705 = !DILocalVariable(name: "size", arg: 3, scope: !4697, file: !3, line: 155, type: !135)
!4706 = !DILocation(line: 155, column: 19, scope: !4697)
!4707 = !DILocalVariable(name: "align", arg: 4, scope: !4697, file: !3, line: 155, type: !135)
!4708 = !DILocation(line: 155, column: 41, scope: !4697)
!4709 = !DILocalVariable(name: "min", arg: 5, scope: !4697, file: !3, line: 156, type: !135)
!4710 = !DILocation(line: 156, column: 19, scope: !4697)
!4711 = !DILocalVariable(name: "type_mask", arg: 6, scope: !4697, file: !3, line: 156, type: !148)
!4712 = !DILocation(line: 156, column: 38, scope: !4697)
!4713 = !DILocalVariable(name: "alignf", arg: 7, scope: !4697, file: !3, line: 157, type: !4634)
!4714 = !DILocation(line: 157, column: 21, scope: !4697)
!4715 = !DILocalVariable(name: "alignf_data", arg: 8, scope: !4697, file: !3, line: 161, type: !119)
!4716 = !DILocation(line: 161, column: 9, scope: !4697)
!4717 = !DILocalVariable(name: "region", arg: 9, scope: !4697, file: !3, line: 162, type: !4700)
!4718 = !DILocation(line: 162, column: 26, scope: !4697)
!4719 = !DILocalVariable(name: "i", scope: !4697, file: !3, line: 164, type: !190)
!4720 = !DILocation(line: 164, column: 6, scope: !4697)
!4721 = !DILocalVariable(name: "ret", scope: !4697, file: !3, line: 164, type: !190)
!4722 = !DILocation(line: 164, column: 9, scope: !4697)
!4723 = !DILocalVariable(name: "r", scope: !4697, file: !3, line: 165, type: !130)
!4724 = !DILocation(line: 165, column: 19, scope: !4697)
!4725 = !DILocalVariable(name: "avail", scope: !4697, file: !3, line: 165, type: !131)
!4726 = !DILocation(line: 165, column: 22, scope: !4697)
!4727 = !DILocalVariable(name: "max", scope: !4697, file: !3, line: 166, type: !135)
!4728 = !DILocation(line: 166, column: 18, scope: !4697)
!4729 = !DILocation(line: 168, column: 12, scope: !4697)
!4730 = !DILocation(line: 170, column: 2, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4697, file: !3, line: 170, column: 2)
!4732 = !DILocation(line: 170, column: 2, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 170, column: 2)
!4734 = !DILocalVariable(name: "min_used", scope: !4735, file: !3, line: 171, type: !135)
!4735 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 170, column: 39)
!4736 = !DILocation(line: 171, column: 19, scope: !4735)
!4737 = !DILocation(line: 171, column: 30, scope: !4735)
!4738 = !DILocation(line: 173, column: 8, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 173, column: 7)
!4740 = !DILocation(line: 173, column: 7, scope: !4735)
!4741 = !DILocation(line: 174, column: 4, scope: !4739)
!4742 = !DILocation(line: 177, column: 8, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 177, column: 7)
!4744 = !DILocation(line: 177, column: 13, scope: !4743)
!4745 = !DILocation(line: 177, column: 21, scope: !4743)
!4746 = !DILocation(line: 177, column: 24, scope: !4743)
!4747 = !DILocation(line: 177, column: 19, scope: !4743)
!4748 = !DILocation(line: 177, column: 33, scope: !4743)
!4749 = !DILocation(line: 177, column: 31, scope: !4743)
!4750 = !DILocation(line: 177, column: 7, scope: !4735)
!4751 = !DILocation(line: 178, column: 4, scope: !4743)
!4752 = !DILocation(line: 182, column: 8, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 182, column: 7)
!4754 = !DILocation(line: 182, column: 11, scope: !4753)
!4755 = !DILocation(line: 182, column: 17, scope: !4753)
!4756 = !DILocation(line: 182, column: 40, scope: !4753)
!4757 = !DILocation(line: 183, column: 9, scope: !4753)
!4758 = !DILocation(line: 183, column: 14, scope: !4753)
!4759 = !DILocation(line: 183, column: 20, scope: !4753)
!4760 = !DILocation(line: 182, column: 7, scope: !4735)
!4761 = !DILocation(line: 184, column: 4, scope: !4753)
!4762 = !DILocation(line: 186, column: 12, scope: !4735)
!4763 = !DILocation(line: 186, column: 11, scope: !4735)
!4764 = !DILocation(line: 187, column: 31, scope: !4735)
!4765 = !DILocation(line: 187, column: 44, scope: !4735)
!4766 = !DILocation(line: 187, column: 3, scope: !4735)
!4767 = !DILocation(line: 195, column: 13, scope: !4768)
!4768 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 195, column: 7)
!4769 = !DILocation(line: 195, column: 7, scope: !4768)
!4770 = !DILocation(line: 195, column: 7, scope: !4735)
!4771 = !DILocation(line: 196, column: 21, scope: !4768)
!4772 = !DILocation(line: 196, column: 13, scope: !4768)
!4773 = !DILocation(line: 196, column: 4, scope: !4768)
!4774 = !DILocation(line: 198, column: 15, scope: !4735)
!4775 = !DILocation(line: 198, column: 7, scope: !4735)
!4776 = !DILocation(line: 201, column: 27, scope: !4735)
!4777 = !DILocation(line: 201, column: 30, scope: !4735)
!4778 = !DILocation(line: 201, column: 35, scope: !4735)
!4779 = !DILocation(line: 201, column: 41, scope: !4735)
!4780 = !DILocation(line: 201, column: 51, scope: !4735)
!4781 = !DILocation(line: 202, column: 6, scope: !4735)
!4782 = !DILocation(line: 202, column: 13, scope: !4735)
!4783 = !DILocation(line: 202, column: 21, scope: !4735)
!4784 = !DILocation(line: 201, column: 9, scope: !4735)
!4785 = !DILocation(line: 201, column: 7, scope: !4735)
!4786 = !DILocation(line: 203, column: 7, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 203, column: 7)
!4788 = !DILocation(line: 203, column: 11, scope: !4787)
!4789 = !DILocation(line: 203, column: 7, scope: !4735)
!4790 = !DILocation(line: 204, column: 4, scope: !4787)
!4791 = !DILocation(line: 205, column: 2, scope: !4735)
!4792 = distinct !{!4792, !4730, !4793}
!4793 = !DILocation(line: 205, column: 2, scope: !4731)
!4794 = !DILocation(line: 206, column: 2, scope: !4697)
!4795 = !DILocation(line: 207, column: 1, scope: !4697)
!4796 = distinct !DISubprogram(name: "pci_bus_clip_resource", scope: !3, file: !3, line: 261, type: !4797, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!496, !162, !190}
!4799 = !DILocalVariable(name: "dev", arg: 1, scope: !4796, file: !3, line: 261, type: !162)
!4800 = !DILocation(line: 261, column: 44, scope: !4796)
!4801 = !DILocalVariable(name: "idx", arg: 2, scope: !4796, file: !3, line: 261, type: !190)
!4802 = !DILocation(line: 261, column: 53, scope: !4796)
!4803 = !DILocalVariable(name: "bus", scope: !4796, file: !3, line: 263, type: !167)
!4804 = !DILocation(line: 263, column: 18, scope: !4796)
!4805 = !DILocation(line: 263, column: 24, scope: !4796)
!4806 = !DILocation(line: 263, column: 29, scope: !4796)
!4807 = !DILocalVariable(name: "res", scope: !4796, file: !3, line: 264, type: !130)
!4808 = !DILocation(line: 264, column: 19, scope: !4796)
!4809 = !DILocation(line: 264, column: 26, scope: !4796)
!4810 = !DILocation(line: 264, column: 31, scope: !4796)
!4811 = !DILocation(line: 264, column: 40, scope: !4796)
!4812 = !DILocalVariable(name: "orig_res", scope: !4796, file: !3, line: 265, type: !131)
!4813 = !DILocation(line: 265, column: 18, scope: !4796)
!4814 = !DILocation(line: 265, column: 30, scope: !4796)
!4815 = !DILocation(line: 265, column: 29, scope: !4796)
!4816 = !DILocalVariable(name: "r", scope: !4796, file: !3, line: 266, type: !130)
!4817 = !DILocation(line: 266, column: 19, scope: !4796)
!4818 = !DILocalVariable(name: "i", scope: !4796, file: !3, line: 267, type: !190)
!4819 = !DILocation(line: 267, column: 6, scope: !4796)
!4820 = !DILocation(line: 269, column: 2, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4796, file: !3, line: 269, column: 2)
!4822 = !DILocation(line: 269, column: 2, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 269, column: 2)
!4824 = !DILocalVariable(name: "start", scope: !4825, file: !3, line: 270, type: !135)
!4825 = distinct !DILexicalBlock(scope: !4823, file: !3, line: 269, column: 39)
!4826 = !DILocation(line: 270, column: 19, scope: !4825)
!4827 = !DILocalVariable(name: "end", scope: !4825, file: !3, line: 270, type: !135)
!4828 = !DILocation(line: 270, column: 26, scope: !4825)
!4829 = !DILocation(line: 272, column: 8, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 272, column: 7)
!4831 = !DILocation(line: 272, column: 7, scope: !4825)
!4832 = !DILocation(line: 273, column: 4, scope: !4830)
!4833 = !DILocation(line: 275, column: 21, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 275, column: 7)
!4835 = !DILocation(line: 275, column: 7, scope: !4834)
!4836 = !DILocation(line: 275, column: 43, scope: !4834)
!4837 = !DILocation(line: 275, column: 29, scope: !4834)
!4838 = !DILocation(line: 275, column: 26, scope: !4834)
!4839 = !DILocation(line: 275, column: 7, scope: !4825)
!4840 = !DILocation(line: 276, column: 4, scope: !4834)
!4841 = !DILocalVariable(name: "__UNIQUE_ID___x241", scope: !4842, file: !3, line: 278, type: !135)
!4842 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 278, column: 11)
!4843 = !DILocation(line: 278, column: 11, scope: !4842)
!4844 = !DILocalVariable(name: "__UNIQUE_ID___y242", scope: !4842, file: !3, line: 278, type: !135)
!4845 = !DILocation(line: 278, column: 9, scope: !4825)
!4846 = !DILocalVariable(name: "__UNIQUE_ID___x243", scope: !4847, file: !3, line: 279, type: !135)
!4847 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 279, column: 9)
!4848 = !DILocation(line: 279, column: 9, scope: !4847)
!4849 = !DILocalVariable(name: "__UNIQUE_ID___y244", scope: !4847, file: !3, line: 279, type: !135)
!4850 = !DILocation(line: 279, column: 7, scope: !4825)
!4851 = !DILocation(line: 281, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 281, column: 7)
!4853 = !DILocation(line: 281, column: 15, scope: !4852)
!4854 = !DILocation(line: 281, column: 13, scope: !4852)
!4855 = !DILocation(line: 281, column: 7, scope: !4825)
!4856 = !DILocation(line: 282, column: 4, scope: !4852)
!4857 = !DILocation(line: 284, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 284, column: 7)
!4859 = !DILocation(line: 284, column: 12, scope: !4858)
!4860 = !DILocation(line: 284, column: 21, scope: !4858)
!4861 = !DILocation(line: 284, column: 18, scope: !4858)
!4862 = !DILocation(line: 284, column: 27, scope: !4858)
!4863 = !DILocation(line: 284, column: 30, scope: !4858)
!4864 = !DILocation(line: 284, column: 35, scope: !4858)
!4865 = !DILocation(line: 284, column: 42, scope: !4858)
!4866 = !DILocation(line: 284, column: 39, scope: !4858)
!4867 = !DILocation(line: 284, column: 7, scope: !4825)
!4868 = !DILocation(line: 285, column: 4, scope: !4858)
!4869 = !DILocation(line: 287, column: 16, scope: !4825)
!4870 = !DILocation(line: 287, column: 3, scope: !4825)
!4871 = !DILocation(line: 287, column: 8, scope: !4825)
!4872 = !DILocation(line: 287, column: 14, scope: !4825)
!4873 = !DILocation(line: 288, column: 14, scope: !4825)
!4874 = !DILocation(line: 288, column: 3, scope: !4825)
!4875 = !DILocation(line: 288, column: 8, scope: !4825)
!4876 = !DILocation(line: 288, column: 12, scope: !4825)
!4877 = !DILocation(line: 289, column: 3, scope: !4825)
!4878 = !DILocation(line: 289, column: 8, scope: !4825)
!4879 = !DILocation(line: 289, column: 14, scope: !4825)
!4880 = !DILocation(line: 290, column: 12, scope: !4825)
!4881 = !DILocation(line: 290, column: 18, scope: !4825)
!4882 = !DILocation(line: 291, column: 3, scope: !4825)
!4883 = !DILocation(line: 293, column: 3, scope: !4825)
!4884 = distinct !{!4884, !4820, !4885}
!4885 = !DILocation(line: 294, column: 2, scope: !4821)
!4886 = !DILocation(line: 296, column: 2, scope: !4796)
!4887 = !DILocation(line: 297, column: 1, scope: !4796)
!4888 = distinct !DISubprogram(name: "pcibios_resource_survey_bus", scope: !3, file: !3, line: 299, type: !193, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4889 = !DILocalVariable(name: "bus", arg: 1, scope: !4888, file: !3, line: 299, type: !167)
!4890 = !DILocation(line: 299, column: 57, scope: !4888)
!4891 = !DILocation(line: 299, column: 64, scope: !4888)
!4892 = distinct !DISubprogram(name: "pcibios_bus_add_device", scope: !3, file: !3, line: 301, type: !3884, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4893 = !DILocalVariable(name: "pdev", arg: 1, scope: !4892, file: !3, line: 301, type: !162)
!4894 = !DILocation(line: 301, column: 52, scope: !4892)
!4895 = !DILocation(line: 301, column: 60, scope: !4892)
!4896 = distinct !DISubprogram(name: "pci_bus_add_device", scope: !3, file: !3, line: 309, type: !3884, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4897 = !DILocalVariable(name: "dev", arg: 1, scope: !4896, file: !3, line: 309, type: !162)
!4898 = !DILocation(line: 309, column: 41, scope: !4896)
!4899 = !DILocalVariable(name: "retval", scope: !4896, file: !3, line: 311, type: !190)
!4900 = !DILocation(line: 311, column: 6, scope: !4896)
!4901 = !DILocation(line: 317, column: 25, scope: !4896)
!4902 = !DILocation(line: 317, column: 2, scope: !4896)
!4903 = !DILocation(line: 318, column: 36, scope: !4896)
!4904 = !DILocation(line: 318, column: 2, scope: !4896)
!4905 = !DILocation(line: 319, column: 29, scope: !4896)
!4906 = !DILocation(line: 319, column: 2, scope: !4896)
!4907 = !DILocation(line: 320, column: 25, scope: !4896)
!4908 = !DILocation(line: 320, column: 2, scope: !4896)
!4909 = !DILocation(line: 321, column: 23, scope: !4896)
!4910 = !DILocation(line: 321, column: 2, scope: !4896)
!4911 = !DILocation(line: 323, column: 2, scope: !4896)
!4912 = !DILocation(line: 323, column: 7, scope: !4896)
!4913 = !DILocation(line: 323, column: 20, scope: !4896)
!4914 = !DILocation(line: 324, column: 26, scope: !4896)
!4915 = !DILocation(line: 324, column: 31, scope: !4896)
!4916 = !DILocation(line: 324, column: 11, scope: !4896)
!4917 = !DILocation(line: 324, column: 9, scope: !4896)
!4918 = !DILocation(line: 325, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 325, column: 6)
!4920 = !DILocation(line: 325, column: 13, scope: !4919)
!4921 = !DILocation(line: 325, column: 17, scope: !4919)
!4922 = !DILocation(line: 325, column: 20, scope: !4919)
!4923 = !DILocation(line: 325, column: 27, scope: !4919)
!4924 = !DILocation(line: 325, column: 6, scope: !4896)
!4925 = !DILocation(line: 326, column: 3, scope: !4919)
!4926 = !DILocation(line: 328, column: 23, scope: !4896)
!4927 = !DILocation(line: 328, column: 2, scope: !4896)
!4928 = !DILocation(line: 329, column: 1, scope: !4896)
!4929 = distinct !DISubprogram(name: "pci_dev_assign_added", scope: !4020, file: !4020, line: 413, type: !4930, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4930 = !DISubroutineType(types: !4931)
!4931 = !{null, !162, !496}
!4932 = !DILocalVariable(name: "nr", arg: 1, scope: !4933, file: !4934, line: 235, type: !325)
!4933 = distinct !DISubprogram(name: "assign_bit", scope: !4934, file: !4934, line: 235, type: !4935, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4934 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4935 = !DISubroutineType(types: !4936)
!4936 = !{null, !325, !4937, !496}
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !148)
!4939 = !DILocation(line: 235, column: 45, scope: !4933, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 415, column: 2, scope: !4929)
!4941 = !DILocalVariable(name: "addr", arg: 2, scope: !4933, file: !4934, line: 235, type: !4937)
!4942 = !DILocation(line: 235, column: 73, scope: !4933, inlinedAt: !4940)
!4943 = !DILocalVariable(name: "value", arg: 3, scope: !4933, file: !4934, line: 236, type: !496)
!4944 = !DILocation(line: 236, column: 17, scope: !4933, inlinedAt: !4940)
!4945 = !DILocalVariable(name: "dev", arg: 1, scope: !4929, file: !4020, line: 413, type: !162)
!4946 = !DILocation(line: 413, column: 57, scope: !4929)
!4947 = !DILocalVariable(name: "added", arg: 2, scope: !4929, file: !4020, line: 413, type: !496)
!4948 = !DILocation(line: 413, column: 67, scope: !4929)
!4949 = !DILocation(line: 415, column: 29, scope: !4929)
!4950 = !DILocation(line: 415, column: 34, scope: !4929)
!4951 = !DILocation(line: 415, column: 46, scope: !4929)
!4952 = !DILocation(line: 238, column: 6, scope: !4953, inlinedAt: !4940)
!4953 = distinct !DILexicalBlock(scope: !4933, file: !4934, line: 238, column: 6)
!4954 = !DILocation(line: 238, column: 6, scope: !4933, inlinedAt: !4940)
!4955 = !DILocation(line: 239, column: 11, scope: !4953, inlinedAt: !4940)
!4956 = !DILocation(line: 239, column: 15, scope: !4953, inlinedAt: !4940)
!4957 = !DILocation(line: 239, column: 3, scope: !4953, inlinedAt: !4940)
!4958 = !DILocation(line: 241, column: 13, scope: !4953, inlinedAt: !4940)
!4959 = !DILocation(line: 241, column: 17, scope: !4953, inlinedAt: !4940)
!4960 = !DILocation(line: 241, column: 3, scope: !4953, inlinedAt: !4940)
!4961 = !DILocation(line: 416, column: 1, scope: !4929)
!4962 = distinct !DISubprogram(name: "pci_bus_add_devices", scope: !3, file: !3, line: 338, type: !4963, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{null, !4454}
!4965 = !DILocalVariable(name: "bus", arg: 1, scope: !4962, file: !3, line: 338, type: !4454)
!4966 = !DILocation(line: 338, column: 48, scope: !4962)
!4967 = !DILocalVariable(name: "dev", scope: !4962, file: !3, line: 340, type: !162)
!4968 = !DILocation(line: 340, column: 18, scope: !4962)
!4969 = !DILocalVariable(name: "child", scope: !4962, file: !3, line: 341, type: !167)
!4970 = !DILocation(line: 341, column: 18, scope: !4962)
!4971 = !DILocalVariable(name: "__mptr", scope: !4972, file: !3, line: 343, type: !119)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 343, column: 2)
!4973 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 343, column: 2)
!4974 = !DILocation(line: 343, column: 2, scope: !4972)
!4975 = !DILocation(line: 343, column: 2, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 343, column: 2)
!4977 = !DILocation(line: 343, column: 2, scope: !4973)
!4978 = !DILocation(line: 343, column: 2, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 343, column: 2)
!4980 = !DILocation(line: 345, column: 24, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 345, column: 7)
!4982 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 343, column: 52)
!4983 = !DILocation(line: 345, column: 7, scope: !4981)
!4984 = !DILocation(line: 345, column: 7, scope: !4982)
!4985 = !DILocation(line: 346, column: 4, scope: !4981)
!4986 = !DILocation(line: 347, column: 22, scope: !4982)
!4987 = !DILocation(line: 347, column: 3, scope: !4982)
!4988 = !DILocation(line: 348, column: 2, scope: !4982)
!4989 = !DILocalVariable(name: "__mptr", scope: !4990, file: !3, line: 343, type: !119)
!4990 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 343, column: 2)
!4991 = !DILocation(line: 343, column: 2, scope: !4990)
!4992 = !DILocation(line: 343, column: 2, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 343, column: 2)
!4994 = distinct !{!4994, !4977, !4995}
!4995 = !DILocation(line: 348, column: 2, scope: !4973)
!4996 = !DILocalVariable(name: "__mptr", scope: !4997, file: !3, line: 350, type: !119)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 350, column: 2)
!4998 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 350, column: 2)
!4999 = !DILocation(line: 350, column: 2, scope: !4997)
!5000 = !DILocation(line: 350, column: 2, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 350, column: 2)
!5002 = !DILocation(line: 350, column: 2, scope: !4998)
!5003 = !DILocation(line: 350, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 350, column: 2)
!5005 = !DILocation(line: 352, column: 25, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 352, column: 7)
!5007 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 350, column: 52)
!5008 = !DILocation(line: 352, column: 8, scope: !5006)
!5009 = !DILocation(line: 352, column: 7, scope: !5007)
!5010 = !DILocation(line: 353, column: 4, scope: !5006)
!5011 = !DILocation(line: 354, column: 11, scope: !5007)
!5012 = !DILocation(line: 354, column: 16, scope: !5007)
!5013 = !DILocation(line: 354, column: 9, scope: !5007)
!5014 = !DILocation(line: 355, column: 7, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 355, column: 7)
!5016 = !DILocation(line: 355, column: 7, scope: !5007)
!5017 = !DILocation(line: 356, column: 24, scope: !5015)
!5018 = !DILocation(line: 356, column: 4, scope: !5015)
!5019 = !DILocation(line: 357, column: 2, scope: !5007)
!5020 = !DILocalVariable(name: "__mptr", scope: !5021, file: !3, line: 350, type: !119)
!5021 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 350, column: 2)
!5022 = !DILocation(line: 350, column: 2, scope: !5021)
!5023 = !DILocation(line: 350, column: 2, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 350, column: 2)
!5025 = distinct !{!5025, !5002, !5026}
!5026 = !DILocation(line: 357, column: 2, scope: !4998)
!5027 = !DILocation(line: 358, column: 1, scope: !4962)
!5028 = distinct !DISubprogram(name: "pci_dev_is_added", scope: !4020, file: !4020, line: 418, type: !5029, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!496, !5031}
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!5033 = !DILocalVariable(name: "dev", arg: 1, scope: !5028, file: !4020, line: 418, type: !5031)
!5034 = !DILocation(line: 418, column: 59, scope: !5028)
!5035 = !DILocation(line: 420, column: 34, scope: !5028)
!5036 = !DILocation(line: 420, column: 39, scope: !5028)
!5037 = !DILocation(line: 420, column: 9, scope: !5028)
!5038 = !DILocation(line: 420, column: 2, scope: !5028)
!5039 = distinct !DISubprogram(name: "pci_walk_bus", scope: !3, file: !3, line: 374, type: !5040, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !167, !5042, !119}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!190, !162, !119}
!5045 = !DILocalVariable(name: "top", arg: 1, scope: !5039, file: !3, line: 374, type: !167)
!5046 = !DILocation(line: 374, column: 35, scope: !5039)
!5047 = !DILocalVariable(name: "cb", arg: 2, scope: !5039, file: !3, line: 374, type: !5042)
!5048 = !DILocation(line: 374, column: 46, scope: !5039)
!5049 = !DILocalVariable(name: "userdata", arg: 3, scope: !5039, file: !3, line: 375, type: !119)
!5050 = !DILocation(line: 375, column: 11, scope: !5039)
!5051 = !DILocalVariable(name: "dev", scope: !5039, file: !3, line: 377, type: !162)
!5052 = !DILocation(line: 377, column: 18, scope: !5039)
!5053 = !DILocalVariable(name: "bus", scope: !5039, file: !3, line: 378, type: !167)
!5054 = !DILocation(line: 378, column: 18, scope: !5039)
!5055 = !DILocalVariable(name: "next", scope: !5039, file: !3, line: 379, type: !127)
!5056 = !DILocation(line: 379, column: 20, scope: !5039)
!5057 = !DILocalVariable(name: "retval", scope: !5039, file: !3, line: 380, type: !190)
!5058 = !DILocation(line: 380, column: 6, scope: !5039)
!5059 = !DILocation(line: 382, column: 8, scope: !5039)
!5060 = !DILocation(line: 382, column: 6, scope: !5039)
!5061 = !DILocation(line: 383, column: 2, scope: !5039)
!5062 = !DILocation(line: 384, column: 9, scope: !5039)
!5063 = !DILocation(line: 384, column: 14, scope: !5039)
!5064 = !DILocation(line: 384, column: 22, scope: !5039)
!5065 = !DILocation(line: 384, column: 7, scope: !5039)
!5066 = !DILocation(line: 385, column: 2, scope: !5039)
!5067 = !DILocation(line: 386, column: 7, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 386, column: 7)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 385, column: 11)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 385, column: 2)
!5071 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 385, column: 2)
!5072 = !DILocation(line: 386, column: 16, scope: !5068)
!5073 = !DILocation(line: 386, column: 21, scope: !5068)
!5074 = !DILocation(line: 386, column: 12, scope: !5068)
!5075 = !DILocation(line: 386, column: 7, scope: !5069)
!5076 = !DILocation(line: 388, column: 8, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 388, column: 8)
!5078 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 386, column: 30)
!5079 = !DILocation(line: 388, column: 15, scope: !5077)
!5080 = !DILocation(line: 388, column: 12, scope: !5077)
!5081 = !DILocation(line: 388, column: 8, scope: !5078)
!5082 = !DILocation(line: 389, column: 5, scope: !5077)
!5083 = !DILocation(line: 390, column: 11, scope: !5078)
!5084 = !DILocation(line: 390, column: 16, scope: !5078)
!5085 = !DILocation(line: 390, column: 22, scope: !5078)
!5086 = !DILocation(line: 390, column: 31, scope: !5078)
!5087 = !DILocation(line: 390, column: 9, scope: !5078)
!5088 = !DILocation(line: 391, column: 10, scope: !5078)
!5089 = !DILocation(line: 391, column: 15, scope: !5078)
!5090 = !DILocation(line: 391, column: 21, scope: !5078)
!5091 = !DILocation(line: 391, column: 8, scope: !5078)
!5092 = !DILocation(line: 392, column: 4, scope: !5078)
!5093 = distinct !{!5093, !5094, !5095}
!5094 = !DILocation(line: 385, column: 2, scope: !5071)
!5095 = !DILocation(line: 405, column: 2, scope: !5071)
!5096 = !DILocalVariable(name: "__mptr", scope: !5097, file: !3, line: 394, type: !119)
!5097 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 394, column: 9)
!5098 = !DILocation(line: 394, column: 9, scope: !5097)
!5099 = !DILocation(line: 394, column: 9, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5097, file: !3, line: 394, column: 9)
!5101 = !DILocation(line: 394, column: 7, scope: !5069)
!5102 = !DILocation(line: 395, column: 7, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 395, column: 7)
!5104 = !DILocation(line: 395, column: 12, scope: !5103)
!5105 = !DILocation(line: 395, column: 7, scope: !5069)
!5106 = !DILocation(line: 397, column: 11, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 395, column: 25)
!5108 = !DILocation(line: 397, column: 16, scope: !5107)
!5109 = !DILocation(line: 397, column: 29, scope: !5107)
!5110 = !DILocation(line: 397, column: 37, scope: !5107)
!5111 = !DILocation(line: 397, column: 9, scope: !5107)
!5112 = !DILocation(line: 398, column: 10, scope: !5107)
!5113 = !DILocation(line: 398, column: 15, scope: !5107)
!5114 = !DILocation(line: 398, column: 8, scope: !5107)
!5115 = !DILocation(line: 399, column: 3, scope: !5107)
!5116 = !DILocation(line: 400, column: 11, scope: !5103)
!5117 = !DILocation(line: 400, column: 16, scope: !5103)
!5118 = !DILocation(line: 400, column: 25, scope: !5103)
!5119 = !DILocation(line: 400, column: 9, scope: !5103)
!5120 = !DILocation(line: 402, column: 12, scope: !5069)
!5121 = !DILocation(line: 402, column: 15, scope: !5069)
!5122 = !DILocation(line: 402, column: 20, scope: !5069)
!5123 = !DILocation(line: 402, column: 10, scope: !5069)
!5124 = !DILocation(line: 403, column: 7, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 403, column: 7)
!5126 = !DILocation(line: 403, column: 7, scope: !5069)
!5127 = !DILocation(line: 404, column: 4, scope: !5125)
!5128 = !DILocation(line: 385, column: 2, scope: !5070)
!5129 = !DILocation(line: 406, column: 2, scope: !5039)
!5130 = !DILocation(line: 407, column: 1, scope: !5039)
!5131 = distinct !DISubprogram(name: "pci_bus_get", scope: !3, file: !3, line: 410, type: !5132, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!167, !167}
!5134 = !DILocalVariable(name: "bus", arg: 1, scope: !5131, file: !3, line: 410, type: !167)
!5135 = !DILocation(line: 410, column: 45, scope: !5131)
!5136 = !DILocation(line: 412, column: 6, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5131, file: !3, line: 412, column: 6)
!5138 = !DILocation(line: 412, column: 6, scope: !5131)
!5139 = !DILocation(line: 413, column: 15, scope: !5137)
!5140 = !DILocation(line: 413, column: 20, scope: !5137)
!5141 = !DILocation(line: 413, column: 3, scope: !5137)
!5142 = !DILocation(line: 414, column: 9, scope: !5131)
!5143 = !DILocation(line: 414, column: 2, scope: !5131)
!5144 = distinct !DISubprogram(name: "pci_bus_put", scope: !3, file: !3, line: 417, type: !193, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5145 = !DILocalVariable(name: "bus", arg: 1, scope: !5144, file: !3, line: 417, type: !167)
!5146 = !DILocation(line: 417, column: 34, scope: !5144)
!5147 = !DILocation(line: 419, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 419, column: 6)
!5149 = !DILocation(line: 419, column: 6, scope: !5144)
!5150 = !DILocation(line: 420, column: 15, scope: !5148)
!5151 = !DILocation(line: 420, column: 20, scope: !5148)
!5152 = !DILocation(line: 420, column: 3, scope: !5148)
!5153 = !DILocation(line: 421, column: 1, scope: !5144)
!5154 = distinct !DISubprogram(name: "get_order", scope: !5155, file: !5155, line: 29, type: !5156, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5155 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!190, !148}
!5158 = !DILocalVariable(name: "x", arg: 1, scope: !5159, file: !5160, line: 366, type: !139)
!5159 = distinct !DISubprogram(name: "fls64", scope: !5160, file: !5160, line: 366, type: !5161, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5160 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!190, !139}
!5163 = !DILocation(line: 366, column: 40, scope: !5159, inlinedAt: !5164)
!5164 = distinct !DILocation(line: 46, column: 9, scope: !5154)
!5165 = !DILocalVariable(name: "bitpos", scope: !5159, file: !5160, line: 368, type: !190)
!5166 = !DILocation(line: 368, column: 6, scope: !5159, inlinedAt: !5164)
!5167 = !DILocalVariable(name: "size", arg: 1, scope: !5154, file: !5155, line: 29, type: !148)
!5168 = !DILocation(line: 29, column: 63, scope: !5154)
!5169 = !DILocation(line: 31, column: 27, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5154, file: !5155, line: 31, column: 6)
!5171 = !DILocation(line: 31, column: 6, scope: !5170)
!5172 = !DILocation(line: 31, column: 6, scope: !5154)
!5173 = !DILocation(line: 32, column: 8, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5175, file: !5155, line: 32, column: 7)
!5175 = distinct !DILexicalBlock(scope: !5170, file: !5155, line: 31, column: 34)
!5176 = !DILocation(line: 32, column: 7, scope: !5175)
!5177 = !DILocation(line: 33, column: 4, scope: !5174)
!5178 = !DILocation(line: 35, column: 7, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !5155, line: 35, column: 7)
!5180 = !DILocation(line: 35, column: 12, scope: !5179)
!5181 = !DILocation(line: 35, column: 7, scope: !5175)
!5182 = !DILocation(line: 36, column: 4, scope: !5179)
!5183 = !DILocation(line: 38, column: 10, scope: !5175)
!5184 = !DILocation(line: 38, column: 28, scope: !5175)
!5185 = !DILocation(line: 38, column: 41, scope: !5175)
!5186 = !DILocation(line: 38, column: 3, scope: !5175)
!5187 = !DILocation(line: 41, column: 6, scope: !5154)
!5188 = !DILocation(line: 42, column: 7, scope: !5154)
!5189 = !DILocation(line: 46, column: 15, scope: !5154)
!5190 = !DILocation(line: 374, column: 2, scope: !5159, inlinedAt: !5164)
!5191 = !DILocation(line: 376, column: 14, scope: !5159, inlinedAt: !5164)
!5192 = !{i32 306984}
!5193 = !DILocation(line: 377, column: 9, scope: !5159, inlinedAt: !5164)
!5194 = !DILocation(line: 377, column: 16, scope: !5159, inlinedAt: !5164)
!5195 = !DILocation(line: 46, column: 2, scope: !5154)
!5196 = !DILocation(line: 48, column: 1, scope: !5154)
!5197 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5198, file: !5198, line: 30, type: !5199, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5198 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!190, !137}
!5201 = !DILocation(line: 366, column: 40, scope: !5159, inlinedAt: !5202)
!5202 = distinct !DILocation(line: 32, column: 9, scope: !5197)
!5203 = !DILocation(line: 368, column: 6, scope: !5159, inlinedAt: !5202)
!5204 = !DILocalVariable(name: "n", arg: 1, scope: !5197, file: !5198, line: 30, type: !137)
!5205 = !DILocation(line: 30, column: 21, scope: !5197)
!5206 = !DILocation(line: 32, column: 15, scope: !5197)
!5207 = !DILocation(line: 374, column: 2, scope: !5159, inlinedAt: !5202)
!5208 = !DILocation(line: 376, column: 14, scope: !5159, inlinedAt: !5202)
!5209 = !DILocation(line: 377, column: 9, scope: !5159, inlinedAt: !5202)
!5210 = !DILocation(line: 377, column: 16, scope: !5159, inlinedAt: !5202)
!5211 = !DILocation(line: 32, column: 18, scope: !5197)
!5212 = !DILocation(line: 32, column: 2, scope: !5197)
!5213 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5214, file: !5214, line: 137, type: !5215, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5214 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5215 = !DISubroutineType(types: !5216)
!5216 = !{!119, !944, !2134, !336, !117}
!5217 = !DILocalVariable(name: "s", arg: 1, scope: !5213, file: !5214, line: 137, type: !944)
!5218 = !DILocation(line: 137, column: 54, scope: !5213)
!5219 = !DILocalVariable(name: "object", arg: 2, scope: !5213, file: !5214, line: 137, type: !2134)
!5220 = !DILocation(line: 137, column: 69, scope: !5213)
!5221 = !DILocalVariable(name: "size", arg: 3, scope: !5213, file: !5214, line: 138, type: !336)
!5222 = !DILocation(line: 138, column: 12, scope: !5213)
!5223 = !DILocalVariable(name: "flags", arg: 4, scope: !5213, file: !5214, line: 138, type: !117)
!5224 = !DILocation(line: 138, column: 24, scope: !5213)
!5225 = !DILocation(line: 140, column: 17, scope: !5213)
!5226 = !DILocation(line: 140, column: 2, scope: !5213)
!5227 = distinct !DISubprogram(name: "__list_add", scope: !4438, file: !4438, line: 63, type: !5228, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{null, !127, !127, !127}
!5230 = !DILocalVariable(name: "new", arg: 1, scope: !5227, file: !4438, line: 63, type: !127)
!5231 = !DILocation(line: 63, column: 49, scope: !5227)
!5232 = !DILocalVariable(name: "prev", arg: 2, scope: !5227, file: !4438, line: 64, type: !127)
!5233 = !DILocation(line: 64, column: 28, scope: !5227)
!5234 = !DILocalVariable(name: "next", arg: 3, scope: !5227, file: !4438, line: 65, type: !127)
!5235 = !DILocation(line: 65, column: 28, scope: !5227)
!5236 = !DILocation(line: 67, column: 24, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5227, file: !4438, line: 67, column: 6)
!5238 = !DILocation(line: 67, column: 29, scope: !5237)
!5239 = !DILocation(line: 67, column: 35, scope: !5237)
!5240 = !DILocation(line: 67, column: 7, scope: !5237)
!5241 = !DILocation(line: 67, column: 6, scope: !5227)
!5242 = !DILocation(line: 68, column: 3, scope: !5237)
!5243 = !DILocation(line: 70, column: 15, scope: !5227)
!5244 = !DILocation(line: 70, column: 2, scope: !5227)
!5245 = !DILocation(line: 70, column: 8, scope: !5227)
!5246 = !DILocation(line: 70, column: 13, scope: !5227)
!5247 = !DILocation(line: 71, column: 14, scope: !5227)
!5248 = !DILocation(line: 71, column: 2, scope: !5227)
!5249 = !DILocation(line: 71, column: 7, scope: !5227)
!5250 = !DILocation(line: 71, column: 12, scope: !5227)
!5251 = !DILocation(line: 72, column: 14, scope: !5227)
!5252 = !DILocation(line: 72, column: 2, scope: !5227)
!5253 = !DILocation(line: 72, column: 7, scope: !5227)
!5254 = !DILocation(line: 72, column: 12, scope: !5227)
!5255 = !DILocation(line: 73, column: 2, scope: !5227)
!5256 = !DILocation(line: 73, column: 2, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5227, file: !4438, line: 73, column: 2)
!5258 = !DILocation(line: 73, column: 2, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5257, file: !4438, line: 73, column: 2)
!5260 = !DILocation(line: 73, column: 2, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5257, file: !4438, line: 73, column: 2)
!5262 = !DILocation(line: 74, column: 1, scope: !5227)
!5263 = distinct !DISubprogram(name: "__list_add_valid", scope: !4438, file: !4438, line: 45, type: !5264, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!496, !127, !127, !127}
!5266 = !DILocalVariable(name: "new", arg: 1, scope: !5263, file: !4438, line: 45, type: !127)
!5267 = !DILocation(line: 45, column: 55, scope: !5263)
!5268 = !DILocalVariable(name: "prev", arg: 2, scope: !5263, file: !4438, line: 46, type: !127)
!5269 = !DILocation(line: 46, column: 23, scope: !5263)
!5270 = !DILocalVariable(name: "next", arg: 3, scope: !5263, file: !4438, line: 47, type: !127)
!5271 = !DILocation(line: 47, column: 23, scope: !5263)
!5272 = !DILocation(line: 49, column: 2, scope: !5263)
!5273 = distinct !DISubprogram(name: "__list_del_entry", scope: !4438, file: !4438, line: 130, type: !4125, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5274 = !DILocalVariable(name: "entry", arg: 1, scope: !5273, file: !4438, line: 130, type: !127)
!5275 = !DILocation(line: 130, column: 55, scope: !5273)
!5276 = !DILocation(line: 132, column: 30, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !4438, line: 132, column: 6)
!5278 = !DILocation(line: 132, column: 7, scope: !5277)
!5279 = !DILocation(line: 132, column: 6, scope: !5273)
!5280 = !DILocation(line: 133, column: 3, scope: !5277)
!5281 = !DILocation(line: 135, column: 13, scope: !5273)
!5282 = !DILocation(line: 135, column: 20, scope: !5273)
!5283 = !DILocation(line: 135, column: 26, scope: !5273)
!5284 = !DILocation(line: 135, column: 33, scope: !5273)
!5285 = !DILocation(line: 135, column: 2, scope: !5273)
!5286 = !DILocation(line: 136, column: 1, scope: !5273)
!5287 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4438, file: !4438, line: 51, type: !5288, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!496, !127}
!5290 = !DILocalVariable(name: "entry", arg: 1, scope: !5287, file: !4438, line: 51, type: !127)
!5291 = !DILocation(line: 51, column: 61, scope: !5287)
!5292 = !DILocation(line: 53, column: 2, scope: !5287)
!5293 = distinct !DISubprogram(name: "__list_del", scope: !4438, file: !4438, line: 110, type: !4439, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5294 = !DILocalVariable(name: "prev", arg: 1, scope: !5293, file: !4438, line: 110, type: !127)
!5295 = !DILocation(line: 110, column: 50, scope: !5293)
!5296 = !DILocalVariable(name: "next", arg: 2, scope: !5293, file: !4438, line: 110, type: !127)
!5297 = !DILocation(line: 110, column: 75, scope: !5293)
!5298 = !DILocation(line: 112, column: 15, scope: !5293)
!5299 = !DILocation(line: 112, column: 2, scope: !5293)
!5300 = !DILocation(line: 112, column: 8, scope: !5293)
!5301 = !DILocation(line: 112, column: 13, scope: !5293)
!5302 = !DILocation(line: 113, column: 2, scope: !5293)
!5303 = !DILocation(line: 113, column: 2, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5293, file: !4438, line: 113, column: 2)
!5305 = !DILocation(line: 113, column: 2, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5304, file: !4438, line: 113, column: 2)
!5307 = !DILocation(line: 113, column: 2, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5304, file: !4438, line: 113, column: 2)
!5309 = !DILocation(line: 114, column: 1, scope: !5293)
!5310 = distinct !DISubprogram(name: "pci_clip_resource_to_region", scope: !3, file: !3, line: 136, type: !5311, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5311 = !DISubroutineType(types: !5312)
!5312 = !{null, !167, !130, !4700}
!5313 = !DILocalVariable(name: "bus", arg: 1, scope: !5310, file: !3, line: 136, type: !167)
!5314 = !DILocation(line: 136, column: 57, scope: !5310)
!5315 = !DILocalVariable(name: "res", arg: 2, scope: !5310, file: !3, line: 137, type: !130)
!5316 = !DILocation(line: 137, column: 23, scope: !5310)
!5317 = !DILocalVariable(name: "region", arg: 3, scope: !5310, file: !3, line: 138, type: !4700)
!5318 = !DILocation(line: 138, column: 29, scope: !5310)
!5319 = !DILocalVariable(name: "r", scope: !5310, file: !3, line: 140, type: !4061)
!5320 = !DILocation(line: 140, column: 24, scope: !5310)
!5321 = !DILocation(line: 142, column: 26, scope: !5310)
!5322 = !DILocation(line: 142, column: 35, scope: !5310)
!5323 = !DILocation(line: 142, column: 2, scope: !5310)
!5324 = !DILocation(line: 143, column: 8, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 143, column: 6)
!5326 = !DILocation(line: 143, column: 16, scope: !5325)
!5327 = !DILocation(line: 143, column: 24, scope: !5325)
!5328 = !DILocation(line: 143, column: 14, scope: !5325)
!5329 = !DILocation(line: 143, column: 6, scope: !5310)
!5330 = !DILocation(line: 144, column: 13, scope: !5325)
!5331 = !DILocation(line: 144, column: 21, scope: !5325)
!5332 = !DILocation(line: 144, column: 5, scope: !5325)
!5333 = !DILocation(line: 144, column: 11, scope: !5325)
!5334 = !DILocation(line: 144, column: 3, scope: !5325)
!5335 = !DILocation(line: 145, column: 8, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 145, column: 6)
!5337 = !DILocation(line: 145, column: 14, scope: !5336)
!5338 = !DILocation(line: 145, column: 22, scope: !5336)
!5339 = !DILocation(line: 145, column: 12, scope: !5336)
!5340 = !DILocation(line: 145, column: 6, scope: !5310)
!5341 = !DILocation(line: 146, column: 11, scope: !5336)
!5342 = !DILocation(line: 146, column: 19, scope: !5336)
!5343 = !DILocation(line: 146, column: 5, scope: !5336)
!5344 = !DILocation(line: 146, column: 9, scope: !5336)
!5345 = !DILocation(line: 146, column: 3, scope: !5336)
!5346 = !DILocation(line: 148, column: 8, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 148, column: 6)
!5348 = !DILocation(line: 148, column: 16, scope: !5347)
!5349 = !DILocation(line: 148, column: 12, scope: !5347)
!5350 = !DILocation(line: 148, column: 6, scope: !5310)
!5351 = !DILocation(line: 149, column: 14, scope: !5347)
!5352 = !DILocation(line: 149, column: 19, scope: !5347)
!5353 = !DILocation(line: 149, column: 25, scope: !5347)
!5354 = !DILocation(line: 149, column: 3, scope: !5347)
!5355 = !DILocation(line: 149, column: 8, scope: !5347)
!5356 = !DILocation(line: 149, column: 12, scope: !5347)
!5357 = !DILocation(line: 151, column: 27, scope: !5347)
!5358 = !DILocation(line: 151, column: 32, scope: !5347)
!5359 = !DILocation(line: 151, column: 3, scope: !5347)
!5360 = !DILocation(line: 152, column: 1, scope: !5310)
!5361 = distinct !DISubprogram(name: "set_bit", scope: !5362, file: !5362, line: 26, type: !5363, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5362 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5363 = !DISubroutineType(types: !5364)
!5364 = !{null, !325, !4937}
!5365 = !DILocalVariable(name: "nr", arg: 1, scope: !5366, file: !5160, line: 52, type: !325)
!5366 = distinct !DISubprogram(name: "arch_set_bit", scope: !5160, file: !5160, line: 52, type: !5363, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5367 = !DILocation(line: 52, column: 19, scope: !5366, inlinedAt: !5368)
!5368 = distinct !DILocation(line: 29, column: 2, scope: !5361)
!5369 = !DILocalVariable(name: "addr", arg: 2, scope: !5366, file: !5160, line: 52, type: !4937)
!5370 = !DILocation(line: 52, column: 47, scope: !5366, inlinedAt: !5368)
!5371 = !DILocalVariable(name: "v", arg: 1, scope: !5372, file: !5373, line: 84, type: !5376)
!5372 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5373, file: !5373, line: 84, type: !5374, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5373 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !5376, !336}
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5378)
!5378 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5379 = !DILocation(line: 84, column: 74, scope: !5372, inlinedAt: !5380)
!5380 = distinct !DILocation(line: 28, column: 2, scope: !5361)
!5381 = !DILocalVariable(name: "size", arg: 2, scope: !5372, file: !5373, line: 84, type: !336)
!5382 = !DILocation(line: 84, column: 84, scope: !5372, inlinedAt: !5380)
!5383 = !DILocalVariable(name: "nr", arg: 1, scope: !5361, file: !5362, line: 26, type: !325)
!5384 = !DILocation(line: 26, column: 33, scope: !5361)
!5385 = !DILocalVariable(name: "addr", arg: 2, scope: !5361, file: !5362, line: 26, type: !4937)
!5386 = !DILocation(line: 26, column: 61, scope: !5361)
!5387 = !DILocation(line: 28, column: 26, scope: !5361)
!5388 = !DILocation(line: 28, column: 33, scope: !5361)
!5389 = !DILocation(line: 28, column: 31, scope: !5361)
!5390 = !DILocation(line: 86, column: 20, scope: !5372, inlinedAt: !5380)
!5391 = !DILocation(line: 86, column: 23, scope: !5372, inlinedAt: !5380)
!5392 = !DILocation(line: 86, column: 2, scope: !5372, inlinedAt: !5380)
!5393 = !DILocation(line: 87, column: 2, scope: !5372, inlinedAt: !5380)
!5394 = !DILocation(line: 29, column: 15, scope: !5361)
!5395 = !DILocation(line: 29, column: 19, scope: !5361)
!5396 = !DILocation(line: 54, column: 27, scope: !5397, inlinedAt: !5368)
!5397 = distinct !DILexicalBlock(scope: !5366, file: !5160, line: 54, column: 6)
!5398 = !DILocation(line: 54, column: 6, scope: !5397, inlinedAt: !5368)
!5399 = !DILocation(line: 54, column: 6, scope: !5366, inlinedAt: !5368)
!5400 = !DILocation(line: 56, column: 6, scope: !5401, inlinedAt: !5368)
!5401 = distinct !DILexicalBlock(scope: !5397, file: !5160, line: 54, column: 32)
!5402 = !DILocation(line: 57, column: 12, scope: !5401, inlinedAt: !5368)
!5403 = !DILocation(line: 55, column: 3, scope: !5401, inlinedAt: !5368)
!5404 = !{i32 -2147145237}
!5405 = !DILocation(line: 59, column: 2, scope: !5401, inlinedAt: !5368)
!5406 = !DILocation(line: 61, column: 8, scope: !5407, inlinedAt: !5368)
!5407 = distinct !DILexicalBlock(scope: !5397, file: !5160, line: 59, column: 9)
!5408 = !DILocation(line: 61, column: 32, scope: !5407, inlinedAt: !5368)
!5409 = !DILocation(line: 60, column: 3, scope: !5407, inlinedAt: !5368)
!5410 = !{i32 -2147145105}
!5411 = !DILocation(line: 30, column: 1, scope: !5361)
!5412 = distinct !DISubprogram(name: "clear_bit", scope: !5362, file: !5362, line: 39, type: !5363, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5413 = !DILocalVariable(name: "nr", arg: 1, scope: !5414, file: !5160, line: 72, type: !325)
!5414 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5160, file: !5160, line: 72, type: !5363, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5415 = !DILocation(line: 72, column: 21, scope: !5414, inlinedAt: !5416)
!5416 = distinct !DILocation(line: 42, column: 2, scope: !5412)
!5417 = !DILocalVariable(name: "addr", arg: 2, scope: !5414, file: !5160, line: 72, type: !4937)
!5418 = !DILocation(line: 72, column: 49, scope: !5414, inlinedAt: !5416)
!5419 = !DILocation(line: 84, column: 74, scope: !5372, inlinedAt: !5420)
!5420 = distinct !DILocation(line: 41, column: 2, scope: !5412)
!5421 = !DILocation(line: 84, column: 84, scope: !5372, inlinedAt: !5420)
!5422 = !DILocalVariable(name: "nr", arg: 1, scope: !5412, file: !5362, line: 39, type: !325)
!5423 = !DILocation(line: 39, column: 35, scope: !5412)
!5424 = !DILocalVariable(name: "addr", arg: 2, scope: !5412, file: !5362, line: 39, type: !4937)
!5425 = !DILocation(line: 39, column: 63, scope: !5412)
!5426 = !DILocation(line: 41, column: 26, scope: !5412)
!5427 = !DILocation(line: 41, column: 33, scope: !5412)
!5428 = !DILocation(line: 41, column: 31, scope: !5412)
!5429 = !DILocation(line: 86, column: 20, scope: !5372, inlinedAt: !5420)
!5430 = !DILocation(line: 86, column: 23, scope: !5372, inlinedAt: !5420)
!5431 = !DILocation(line: 86, column: 2, scope: !5372, inlinedAt: !5420)
!5432 = !DILocation(line: 87, column: 2, scope: !5372, inlinedAt: !5420)
!5433 = !DILocation(line: 42, column: 17, scope: !5412)
!5434 = !DILocation(line: 42, column: 21, scope: !5412)
!5435 = !DILocation(line: 74, column: 27, scope: !5436, inlinedAt: !5416)
!5436 = distinct !DILexicalBlock(scope: !5414, file: !5160, line: 74, column: 6)
!5437 = !DILocation(line: 74, column: 6, scope: !5436, inlinedAt: !5416)
!5438 = !DILocation(line: 74, column: 6, scope: !5414, inlinedAt: !5416)
!5439 = !DILocation(line: 76, column: 6, scope: !5440, inlinedAt: !5416)
!5440 = distinct !DILexicalBlock(scope: !5436, file: !5160, line: 74, column: 32)
!5441 = !DILocation(line: 77, column: 13, scope: !5440, inlinedAt: !5416)
!5442 = !DILocation(line: 77, column: 12, scope: !5440, inlinedAt: !5416)
!5443 = !DILocation(line: 75, column: 3, scope: !5440, inlinedAt: !5416)
!5444 = !{i32 -2147144283}
!5445 = !DILocation(line: 78, column: 2, scope: !5440, inlinedAt: !5416)
!5446 = !DILocation(line: 80, column: 8, scope: !5447, inlinedAt: !5416)
!5447 = distinct !DILexicalBlock(scope: !5436, file: !5160, line: 78, column: 9)
!5448 = !DILocation(line: 80, column: 32, scope: !5447, inlinedAt: !5416)
!5449 = !DILocation(line: 79, column: 3, scope: !5447, inlinedAt: !5416)
!5450 = !{i32 -2147144151}
!5451 = !DILocation(line: 43, column: 1, scope: !5412)
!5452 = distinct !DISubprogram(name: "kasan_check_write", scope: !5453, file: !5453, line: 38, type: !5454, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5453 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!496, !5376, !7}
!5456 = !DILocalVariable(name: "p", arg: 1, scope: !5452, file: !5453, line: 38, type: !5376)
!5457 = !DILocation(line: 38, column: 59, scope: !5452)
!5458 = !DILocalVariable(name: "size", arg: 2, scope: !5452, file: !5453, line: 38, type: !7)
!5459 = !DILocation(line: 38, column: 75, scope: !5452)
!5460 = !DILocation(line: 40, column: 2, scope: !5452)
!5461 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5462, file: !5462, line: 178, type: !5463, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5462 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5463 = !DISubroutineType(types: !5464)
!5464 = !{null, !5376, !336, !190}
!5465 = !DILocalVariable(name: "ptr", arg: 1, scope: !5461, file: !5462, line: 178, type: !5376)
!5466 = !DILocation(line: 178, column: 60, scope: !5461)
!5467 = !DILocalVariable(name: "size", arg: 2, scope: !5461, file: !5462, line: 178, type: !336)
!5468 = !DILocation(line: 178, column: 72, scope: !5461)
!5469 = !DILocalVariable(name: "type", arg: 3, scope: !5461, file: !5462, line: 179, type: !190)
!5470 = !DILocation(line: 179, column: 15, scope: !5461)
!5471 = !DILocation(line: 179, column: 23, scope: !5461)
!5472 = distinct !DISubprogram(name: "test_bit", scope: !5473, file: !5473, line: 132, type: !5474, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5473 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!496, !325, !5476}
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4938)
!5478 = !DILocalVariable(name: "nr", arg: 1, scope: !5479, file: !5160, line: 210, type: !325)
!5479 = distinct !DISubprogram(name: "variable_test_bit", scope: !5160, file: !5160, line: 210, type: !5474, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5480 = !DILocation(line: 210, column: 52, scope: !5479, inlinedAt: !5481)
!5481 = distinct !DILocation(line: 135, column: 9, scope: !5472)
!5482 = !DILocalVariable(name: "addr", arg: 2, scope: !5479, file: !5160, line: 210, type: !5476)
!5483 = !DILocation(line: 210, column: 86, scope: !5479, inlinedAt: !5481)
!5484 = !DILocalVariable(name: "oldbit", scope: !5479, file: !5160, line: 212, type: !496)
!5485 = !DILocation(line: 212, column: 7, scope: !5479, inlinedAt: !5481)
!5486 = !DILocalVariable(name: "nr", arg: 1, scope: !5487, file: !5160, line: 204, type: !325)
!5487 = distinct !DISubprogram(name: "constant_test_bit", scope: !5160, file: !5160, line: 204, type: !5474, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5488 = !DILocation(line: 204, column: 52, scope: !5487, inlinedAt: !5489)
!5489 = distinct !DILocation(line: 135, column: 9, scope: !5472)
!5490 = !DILocalVariable(name: "addr", arg: 2, scope: !5487, file: !5160, line: 204, type: !5476)
!5491 = !DILocation(line: 204, column: 86, scope: !5487, inlinedAt: !5489)
!5492 = !DILocalVariable(name: "v", arg: 1, scope: !5493, file: !5373, line: 69, type: !5376)
!5493 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5373, file: !5373, line: 69, type: !5374, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5494 = !DILocation(line: 69, column: 73, scope: !5493, inlinedAt: !5495)
!5495 = distinct !DILocation(line: 134, column: 2, scope: !5472)
!5496 = !DILocalVariable(name: "size", arg: 2, scope: !5493, file: !5373, line: 69, type: !336)
!5497 = !DILocation(line: 69, column: 83, scope: !5493, inlinedAt: !5495)
!5498 = !DILocalVariable(name: "nr", arg: 1, scope: !5472, file: !5473, line: 132, type: !325)
!5499 = !DILocation(line: 132, column: 34, scope: !5472)
!5500 = !DILocalVariable(name: "addr", arg: 2, scope: !5472, file: !5473, line: 132, type: !5476)
!5501 = !DILocation(line: 132, column: 68, scope: !5472)
!5502 = !DILocation(line: 134, column: 25, scope: !5472)
!5503 = !DILocation(line: 134, column: 32, scope: !5472)
!5504 = !DILocation(line: 134, column: 30, scope: !5472)
!5505 = !DILocation(line: 71, column: 19, scope: !5493, inlinedAt: !5495)
!5506 = !DILocation(line: 71, column: 22, scope: !5493, inlinedAt: !5495)
!5507 = !DILocation(line: 71, column: 2, scope: !5493, inlinedAt: !5495)
!5508 = !DILocation(line: 72, column: 2, scope: !5493, inlinedAt: !5495)
!5509 = !DILocation(line: 135, column: 9, scope: !5472)
!5510 = !DILocation(line: 206, column: 19, scope: !5487, inlinedAt: !5489)
!5511 = !DILocation(line: 206, column: 22, scope: !5487, inlinedAt: !5489)
!5512 = !DILocation(line: 206, column: 15, scope: !5487, inlinedAt: !5489)
!5513 = !DILocation(line: 207, column: 4, scope: !5487, inlinedAt: !5489)
!5514 = !DILocation(line: 207, column: 9, scope: !5487, inlinedAt: !5489)
!5515 = !DILocation(line: 207, column: 12, scope: !5487, inlinedAt: !5489)
!5516 = !DILocation(line: 206, column: 44, scope: !5487, inlinedAt: !5489)
!5517 = !DILocation(line: 207, column: 37, scope: !5487, inlinedAt: !5489)
!5518 = !DILocation(line: 217, column: 33, scope: !5479, inlinedAt: !5481)
!5519 = !DILocation(line: 217, column: 46, scope: !5479, inlinedAt: !5481)
!5520 = !DILocation(line: 214, column: 2, scope: !5479, inlinedAt: !5481)
!5521 = !{i32 -2147135989, i32 -2147135929}
!5522 = !DILocation(line: 219, column: 9, scope: !5479, inlinedAt: !5481)
!5523 = !DILocation(line: 135, column: 2, scope: !5472)
!5524 = distinct !DISubprogram(name: "kasan_check_read", scope: !5453, file: !5453, line: 34, type: !5454, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !263)
!5525 = !DILocalVariable(name: "p", arg: 1, scope: !5524, file: !5453, line: 34, type: !5376)
!5526 = !DILocation(line: 34, column: 58, scope: !5524)
!5527 = !DILocalVariable(name: "size", arg: 2, scope: !5524, file: !5453, line: 34, type: !7)
!5528 = !DILocation(line: 34, column: 74, scope: !5524)
!5529 = !DILocation(line: 36, column: 2, scope: !5524)
