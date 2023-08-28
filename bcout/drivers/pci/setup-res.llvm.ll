; ModuleID = '../bcout/drivers/pci/setup-res.llvm.bc'
source_filename = "drivers/pci/setup-res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
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
%struct.vdso_image = type opaque
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.pci_bus_region = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"can't claim BAR %d %pR: no address assigned\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"can't claim BAR %d %pR: no compatible bridge window\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"can't claim BAR %d %pR: address conflict with %s %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"BAR %d: can't assign %pR (bogus alignment)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"BAR %d: no space for %pR\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"BAR %d: failed to assign %pR\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"BAR %d: assigned %pR\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"BAR %d: can't reassign an unassigned resource %pR\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"BAR %d: %pR (failed to expand by %#llx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"BAR %d: reassigned %pR (expanded by %#llx)\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"BAR %d: releasing %pR\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"can't enable device: BAR %d %pR not assigned\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"can't enable device: BAR %d %pR not claimed\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"BAR %d: error updating (%#08x != %#08x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"BAR %d: error updating (high %#08x != %#08x)\0A\00", align 1
@pci_mem_start = external dso_local global i64, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"BAR %d: trying firmware assignment %pR\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"BAR %d: %pR conflicts with %s %pR\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_update_resource(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !114 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4017, metadata !DIExpression()), !dbg !4018
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4019, metadata !DIExpression()), !dbg !4020
  %0 = load i32, i32* %resno.addr, align 4, !dbg !4021
  %cmp = icmp sle i32 %0, 6, !dbg !4023
  br i1 %cmp, label %if.then, label %if.else, !dbg !4024

if.then:                                          ; preds = %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4025
  %2 = load i32, i32* %resno.addr, align 4, !dbg !4026
  call void @pci_std_update_resource(%struct.pci_dev* %1, i32 %2) #4, !dbg !4027
  br label %if.end4, !dbg !4027

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %resno.addr, align 4, !dbg !4028
  %cmp1 = icmp sge i32 %3, 7, !dbg !4030
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !4031

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* %resno.addr, align 4, !dbg !4032
  %cmp2 = icmp sle i32 %4, 12, !dbg !4033
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !4034

if.then3:                                         ; preds = %land.lhs.true
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4035
  %6 = load i32, i32* %resno.addr, align 4, !dbg !4036
  call void @pci_iov_update_resource(%struct.pci_dev* %5, i32 %6) #4, !dbg !4037
  br label %if.end, !dbg !4037

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !4038
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_std_update_resource(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !4039 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %disable = alloca i8, align 1
  %cmd = alloca i16, align 2
  %new = alloca i32, align 4
  %check = alloca i32, align 4
  %mask = alloca i32, align 4
  %reg = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.declare(metadata %struct.pci_bus_region* %region, metadata !4044, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.declare(metadata i8* %disable, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.declare(metadata i16* %cmd, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.declare(metadata i32* %new, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.declare(metadata i32* %check, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.declare(metadata i32* %mask, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4063, metadata !DIExpression()), !dbg !4064
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4065
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4066
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4065
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4067
  %idx.ext = sext i32 %1 to i64, !dbg !4068
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4068
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4064
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4069
  %is_virtfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 46, !dbg !4071
  %3 = bitcast [5 x i8]* %is_virtfn to i40*, !dbg !4071
  %bf.load = load i40, i40* %3, align 1, !dbg !4071
  %bf.lshr = lshr i40 %bf.load, 22, !dbg !4071
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4071
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4071
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4069
  br i1 %tobool, label %if.then, label %if.end, !dbg !4072

if.then:                                          ; preds = %entry
  br label %if.end89, !dbg !4073

if.end:                                           ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4074
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !4076
  %5 = load i64, i64* %flags, align 8, !dbg !4076
  %tobool1 = icmp ne i64 %5, 0, !dbg !4074
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4077

if.then2:                                         ; preds = %if.end
  br label %if.end89, !dbg !4078

if.end3:                                          ; preds = %if.end
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4079
  %flags4 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !4081
  %7 = load i64, i64* %flags4, align 8, !dbg !4081
  %and = and i64 %7, 536870912, !dbg !4082
  %tobool5 = icmp ne i64 %and, 0, !dbg !4082
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4083

if.then6:                                         ; preds = %if.end3
  br label %if.end89, !dbg !4084

if.end7:                                          ; preds = %if.end3
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4085
  %flags8 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 3, !dbg !4087
  %9 = load i64, i64* %flags8, align 8, !dbg !4087
  %and9 = and i64 %9, 16, !dbg !4088
  %tobool10 = icmp ne i64 %and9, 0, !dbg !4088
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4089

if.then11:                                        ; preds = %if.end7
  br label %if.end89, !dbg !4090

if.end12:                                         ; preds = %if.end7
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4091
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1, !dbg !4092
  %11 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4092
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4093
  call void @pcibios_resource_to_bus(%struct.pci_bus* %11, %struct.pci_bus_region* %region, %struct.resource* %12) #4, !dbg !4094
  %start = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !4095
  %13 = load i64, i64* %start, align 8, !dbg !4095
  %conv = trunc i64 %13 to i32, !dbg !4096
  store i32 %conv, i32* %new, align 4, !dbg !4097
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4098
  %flags13 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 3, !dbg !4100
  %15 = load i64, i64* %flags13, align 8, !dbg !4100
  %and14 = and i64 %15, 256, !dbg !4101
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4101
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !4102

if.then16:                                        ; preds = %if.end12
  store i32 -4, i32* %mask, align 4, !dbg !4103
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4105
  %flags17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 3, !dbg !4106
  %17 = load i64, i64* %flags17, align 8, !dbg !4106
  %and18 = and i64 %17, 3, !dbg !4107
  %18 = load i32, i32* %new, align 4, !dbg !4108
  %conv19 = zext i32 %18 to i64, !dbg !4108
  %or = or i64 %conv19, %and18, !dbg !4108
  %conv20 = trunc i64 %or to i32, !dbg !4108
  store i32 %conv20, i32* %new, align 4, !dbg !4108
  br label %if.end30, !dbg !4109

if.else:                                          ; preds = %if.end12
  %19 = load i32, i32* %resno.addr, align 4, !dbg !4110
  %cmp = icmp eq i32 %19, 6, !dbg !4112
  br i1 %cmp, label %if.then22, label %if.else23, !dbg !4113

if.then22:                                        ; preds = %if.else
  store i32 -2048, i32* %mask, align 4, !dbg !4114
  br label %if.end29, !dbg !4116

if.else23:                                        ; preds = %if.else
  store i32 -16, i32* %mask, align 4, !dbg !4117
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4119
  %flags24 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 3, !dbg !4120
  %21 = load i64, i64* %flags24, align 8, !dbg !4120
  %and25 = and i64 %21, 15, !dbg !4121
  %22 = load i32, i32* %new, align 4, !dbg !4122
  %conv26 = zext i32 %22 to i64, !dbg !4122
  %or27 = or i64 %conv26, %and25, !dbg !4122
  %conv28 = trunc i64 %or27 to i32, !dbg !4122
  store i32 %conv28, i32* %new, align 4, !dbg !4122
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then16
  %23 = load i32, i32* %resno.addr, align 4, !dbg !4123
  %cmp31 = icmp slt i32 %23, 6, !dbg !4125
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !4126

if.then33:                                        ; preds = %if.end30
  %24 = load i32, i32* %resno.addr, align 4, !dbg !4127
  %mul = mul i32 4, %24, !dbg !4129
  %add = add i32 16, %mul, !dbg !4130
  store i32 %add, i32* %reg, align 4, !dbg !4131
  br label %if.end47, !dbg !4132

if.else34:                                        ; preds = %if.end30
  %25 = load i32, i32* %resno.addr, align 4, !dbg !4133
  %cmp35 = icmp eq i32 %25, 6, !dbg !4135
  br i1 %cmp35, label %if.then37, label %if.else45, !dbg !4136

if.then37:                                        ; preds = %if.else34
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4137
  %flags38 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 3, !dbg !4140
  %27 = load i64, i64* %flags38, align 8, !dbg !4140
  %and39 = and i64 %27, 1, !dbg !4141
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4141
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !4142

if.then41:                                        ; preds = %if.then37
  br label %if.end89, !dbg !4143

if.end42:                                         ; preds = %if.then37
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4144
  %rom_base_reg = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 18, !dbg !4145
  %29 = load i8, i8* %rom_base_reg, align 2, !dbg !4145
  %conv43 = zext i8 %29 to i32, !dbg !4144
  store i32 %conv43, i32* %reg, align 4, !dbg !4146
  %30 = load i32, i32* %new, align 4, !dbg !4147
  %or44 = or i32 %30, 1, !dbg !4147
  store i32 %or44, i32* %new, align 4, !dbg !4147
  br label %if.end46, !dbg !4148

if.else45:                                        ; preds = %if.else34
  br label %if.end89, !dbg !4149

if.end46:                                         ; preds = %if.end42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then33
  %31 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4150
  %flags48 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 3, !dbg !4151
  %32 = load i64, i64* %flags48, align 8, !dbg !4151
  %and49 = and i64 %32, 1048576, !dbg !4152
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4152
  br i1 %tobool50, label %land.rhs, label %land.end, !dbg !4153

land.rhs:                                         ; preds = %if.end47
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4154
  %mmio_always_on = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 29, !dbg !4155
  %34 = bitcast i24* %mmio_always_on to i32*, !dbg !4155
  %bf.load51 = load i32, i32* %34, align 2, !dbg !4155
  %bf.lshr52 = lshr i32 %bf.load51, 12, !dbg !4155
  %bf.clear53 = and i32 %bf.lshr52, 1, !dbg !4155
  %tobool54 = icmp ne i32 %bf.clear53, 0, !dbg !4156
  %lnot = xor i1 %tobool54, true, !dbg !4156
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end47
  %35 = phi i1 [ false, %if.end47 ], [ %lnot, %land.rhs ], !dbg !4157
  %frombool = zext i1 %35 to i8, !dbg !4158
  store i8 %frombool, i8* %disable, align 1, !dbg !4158
  %36 = load i8, i8* %disable, align 1, !dbg !4159
  %tobool55 = trunc i8 %36 to i1, !dbg !4159
  br i1 %tobool55, label %if.then56, label %if.end61, !dbg !4161

if.then56:                                        ; preds = %land.end
  %37 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4162
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %37, i32 4, i16* %cmd) #4, !dbg !4164
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4165
  %39 = load i16, i16* %cmd, align 2, !dbg !4166
  %conv57 = zext i16 %39 to i32, !dbg !4166
  %and58 = and i32 %conv57, -3, !dbg !4167
  %conv59 = trunc i32 %and58 to i16, !dbg !4166
  %call60 = call i32 @pci_write_config_word(%struct.pci_dev* %38, i32 4, i16 zeroext %conv59) #4, !dbg !4168
  br label %if.end61, !dbg !4169

if.end61:                                         ; preds = %if.then56, %land.end
  %40 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4170
  %41 = load i32, i32* %reg, align 4, !dbg !4171
  %42 = load i32, i32* %new, align 4, !dbg !4172
  %call62 = call i32 @pci_write_config_dword(%struct.pci_dev* %40, i32 %41, i32 %42) #4, !dbg !4173
  %43 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4174
  %44 = load i32, i32* %reg, align 4, !dbg !4175
  %call63 = call i32 @pci_read_config_dword(%struct.pci_dev* %43, i32 %44, i32* %check) #4, !dbg !4176
  %45 = load i32, i32* %new, align 4, !dbg !4177
  %46 = load i32, i32* %check, align 4, !dbg !4179
  %xor = xor i32 %45, %46, !dbg !4180
  %47 = load i32, i32* %mask, align 4, !dbg !4181
  %and64 = and i32 %xor, %47, !dbg !4182
  %tobool65 = icmp ne i32 %and64, 0, !dbg !4182
  br i1 %tobool65, label %if.then66, label %if.end68, !dbg !4183

if.then66:                                        ; preds = %if.end61
  %48 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4184
  %dev67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 41, !dbg !4184
  %49 = load i32, i32* %resno.addr, align 4, !dbg !4184
  %50 = load i32, i32* %new, align 4, !dbg !4184
  %51 = load i32, i32* %check, align 4, !dbg !4184
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %49, i32 %50, i32 %51) #5, !dbg !4184
  br label %if.end68, !dbg !4186

if.end68:                                         ; preds = %if.then66, %if.end61
  %52 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4187
  %flags69 = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 3, !dbg !4189
  %53 = load i64, i64* %flags69, align 8, !dbg !4189
  %and70 = and i64 %53, 1048576, !dbg !4190
  %tobool71 = icmp ne i64 %and70, 0, !dbg !4190
  br i1 %tobool71, label %if.then72, label %if.end85, !dbg !4191

if.then72:                                        ; preds = %if.end68
  %start73 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %region, i32 0, i32 0, !dbg !4192
  %54 = load i64, i64* %start73, align 8, !dbg !4192
  %shr = lshr i64 %54, 16, !dbg !4194
  %shr74 = lshr i64 %shr, 16, !dbg !4195
  %conv75 = trunc i64 %shr74 to i32, !dbg !4196
  store i32 %conv75, i32* %new, align 4, !dbg !4197
  %55 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4198
  %56 = load i32, i32* %reg, align 4, !dbg !4199
  %add76 = add i32 %56, 4, !dbg !4200
  %57 = load i32, i32* %new, align 4, !dbg !4201
  %call77 = call i32 @pci_write_config_dword(%struct.pci_dev* %55, i32 %add76, i32 %57) #4, !dbg !4202
  %58 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4203
  %59 = load i32, i32* %reg, align 4, !dbg !4204
  %add78 = add i32 %59, 4, !dbg !4205
  %call79 = call i32 @pci_read_config_dword(%struct.pci_dev* %58, i32 %add78, i32* %check) #4, !dbg !4206
  %60 = load i32, i32* %check, align 4, !dbg !4207
  %61 = load i32, i32* %new, align 4, !dbg !4209
  %cmp80 = icmp ne i32 %60, %61, !dbg !4210
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !4211

if.then82:                                        ; preds = %if.then72
  %62 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4212
  %dev83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 41, !dbg !4212
  %63 = load i32, i32* %resno.addr, align 4, !dbg !4212
  %64 = load i32, i32* %new, align 4, !dbg !4212
  %65 = load i32, i32* %check, align 4, !dbg !4212
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %63, i32 %64, i32 %65) #5, !dbg !4212
  br label %if.end84, !dbg !4214

if.end84:                                         ; preds = %if.then82, %if.then72
  br label %if.end85, !dbg !4215

if.end85:                                         ; preds = %if.end84, %if.end68
  %66 = load i8, i8* %disable, align 1, !dbg !4216
  %tobool86 = trunc i8 %66 to i1, !dbg !4216
  br i1 %tobool86, label %if.then87, label %if.end89, !dbg !4218

if.then87:                                        ; preds = %if.end85
  %67 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4219
  %68 = load i16, i16* %cmd, align 2, !dbg !4220
  %call88 = call i32 @pci_write_config_word(%struct.pci_dev* %67, i32 4, i16 zeroext %68) #4, !dbg !4221
  br label %if.end89, !dbg !4221

if.end89:                                         ; preds = %if.then, %if.then2, %if.then6, %if.then11, %if.then41, %if.else45, %if.then87, %if.end85
  ret void, !dbg !4222
}

; Function Attrs: noredzone
declare dso_local void @pci_iov_update_resource(%struct.pci_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_claim_resource(%struct.pci_dev* %dev, i32 %resource) #0 !dbg !4223 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resource.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %root = alloca %struct.resource*, align 8
  %conflict = alloca %struct.resource*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i32 %resource, i32* %resource.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resource.addr, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4228, metadata !DIExpression()), !dbg !4229
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4230
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4231
  %1 = load i32, i32* %resource.addr, align 4, !dbg !4232
  %idxprom = sext i32 %1 to i64, !dbg !4230
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 %idxprom, !dbg !4230
  store %struct.resource* %arrayidx, %struct.resource** %res, align 8, !dbg !4229
  call void @llvm.dbg.declare(metadata %struct.resource** %root, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.declare(metadata %struct.resource** %conflict, metadata !4235, metadata !DIExpression()), !dbg !4236
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4237
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4239
  %3 = load i64, i64* %flags, align 8, !dbg !4239
  %and = and i64 %3, 536870912, !dbg !4240
  %tobool = icmp ne i64 %and, 0, !dbg !4240
  br i1 %tobool, label %if.then, label %if.end, !dbg !4241

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4242
  %dev2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 41, !dbg !4242
  %5 = load i32, i32* %resource.addr, align 4, !dbg !4242
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4242
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.resource* %6) #5, !dbg !4242
  store i32 -22, i32* %retval, align 4, !dbg !4244
  br label %return, !dbg !4244

if.end:                                           ; preds = %entry
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4245
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !4247
  %8 = load i64, i64* %flags3, align 8, !dbg !4247
  %and4 = and i64 %8, 2, !dbg !4248
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4248
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4249

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4250
  br label %return, !dbg !4250

if.end7:                                          ; preds = %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4251
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4252
  %call = call %struct.resource* @pci_find_parent_resource(%struct.pci_dev* %9, %struct.resource* %10) #4, !dbg !4253
  store %struct.resource* %call, %struct.resource** %root, align 8, !dbg !4254
  %11 = load %struct.resource*, %struct.resource** %root, align 8, !dbg !4255
  %tobool8 = icmp ne %struct.resource* %11, null, !dbg !4255
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !4257

if.then9:                                         ; preds = %if.end7
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4258
  %dev10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 41, !dbg !4258
  %13 = load i32, i32* %resource.addr, align 4, !dbg !4258
  %14 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4258
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %13, %struct.resource* %14) #5, !dbg !4258
  %15 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4260
  %flags11 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 3, !dbg !4261
  %16 = load i64, i64* %flags11, align 8, !dbg !4262
  %or = or i64 %16, 536870912, !dbg !4262
  store i64 %or, i64* %flags11, align 8, !dbg !4262
  store i32 -22, i32* %retval, align 4, !dbg !4263
  br label %return, !dbg !4263

if.end12:                                         ; preds = %if.end7
  %17 = load %struct.resource*, %struct.resource** %root, align 8, !dbg !4264
  %18 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4265
  %call13 = call %struct.resource* @request_resource_conflict(%struct.resource* %17, %struct.resource* %18) #4, !dbg !4266
  store %struct.resource* %call13, %struct.resource** %conflict, align 8, !dbg !4267
  %19 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4268
  %tobool14 = icmp ne %struct.resource* %19, null, !dbg !4268
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !4270

if.then15:                                        ; preds = %if.end12
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4271
  %dev16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !4271
  %21 = load i32, i32* %resource.addr, align 4, !dbg !4271
  %22 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4271
  %23 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4271
  %name = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 2, !dbg !4271
  %24 = load i8*, i8** %name, align 8, !dbg !4271
  %25 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4271
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %21, %struct.resource* %22, i8* %24, %struct.resource* %25) #5, !dbg !4271
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4273
  %flags17 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 3, !dbg !4274
  %27 = load i64, i64* %flags17, align 8, !dbg !4275
  %or18 = or i64 %27, 536870912, !dbg !4275
  store i64 %or18, i64* %flags17, align 8, !dbg !4275
  store i32 -16, i32* %retval, align 4, !dbg !4276
  br label %return, !dbg !4276

if.end19:                                         ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !4277
  br label %return, !dbg !4277

return:                                           ; preds = %if.end19, %if.then15, %if.then9, %if.then6, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4278
  ret i32 %28, !dbg !4278
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local %struct.resource* @pci_find_parent_resource(%struct.pci_dev*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local %struct.resource* @request_resource_conflict(%struct.resource*, %struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_disable_bridge_window(%struct.pci_dev* %dev) #0 !dbg !4279 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4280, metadata !DIExpression()), !dbg !4281
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4282
  %call = call i32 @pci_write_config_dword(%struct.pci_dev* %0, i32 32, i32 65520) #4, !dbg !4283
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4284
  %call1 = call i32 @pci_write_config_dword(%struct.pci_dev* %1, i32 44, i32 0) #4, !dbg !4285
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4286
  %call2 = call i32 @pci_write_config_dword(%struct.pci_dev* %2, i32 36, i32 65520) #4, !dbg !4287
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4288
  %call3 = call i32 @pci_write_config_dword(%struct.pci_dev* %3, i32 40, i32 -1) #4, !dbg !4289
  ret void, !dbg !4290
}

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @pcibios_retrieve_fw_addr(%struct.pci_dev* %dev, i32 %idx) #0 !dbg !4291 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4294, metadata !DIExpression()), !dbg !4295
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  ret i64 0, !dbg !4298
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define weak dso_local i64 @pcibios_align_resource(i8* %data, %struct.resource* %res, i64 %size, i64 %align) #0 !dbg !4299 {
entry:
  %data.addr = alloca i8*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4304, metadata !DIExpression()), !dbg !4305
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4306, metadata !DIExpression()), !dbg !4307
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4308, metadata !DIExpression()), !dbg !4309
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4312
  %start = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 0, !dbg !4313
  %1 = load i64, i64* %start, align 8, !dbg !4313
  ret i64 %1, !dbg !4314
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_assign_resource(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !4315 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %align = alloca i64, align 8
  %size = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4316, metadata !DIExpression()), !dbg !4317
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4320, metadata !DIExpression()), !dbg !4321
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4322
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4323
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4322
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4324
  %idx.ext = sext i32 %1 to i64, !dbg !4325
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4325
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4321
  call void @llvm.dbg.declare(metadata i64* %align, metadata !4326, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4330, metadata !DIExpression()), !dbg !4331
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4332
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4334
  %3 = load i64, i64* %flags, align 8, !dbg !4334
  %and = and i64 %3, 16, !dbg !4335
  %tobool = icmp ne i64 %and, 0, !dbg !4335
  br i1 %tobool, label %if.then, label %if.end, !dbg !4336

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4337
  br label %return, !dbg !4337

if.end:                                           ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4338
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !4339
  %5 = load i64, i64* %flags1, align 8, !dbg !4340
  %or = or i64 %5, 536870912, !dbg !4340
  store i64 %or, i64* %flags1, align 8, !dbg !4340
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4341
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4342
  %call = call i64 @pci_resource_alignment(%struct.pci_dev* %6, %struct.resource* %7) #4, !dbg !4343
  store i64 %call, i64* %align, align 8, !dbg !4344
  %8 = load i64, i64* %align, align 8, !dbg !4345
  %tobool2 = icmp ne i64 %8, 0, !dbg !4345
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !4347

if.then3:                                         ; preds = %if.end
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4348
  %dev4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 41, !dbg !4348
  %10 = load i32, i32* %resno.addr, align 4, !dbg !4348
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4348
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %10, %struct.resource* %11) #5, !dbg !4348
  store i32 -22, i32* %retval, align 4, !dbg !4350
  br label %return, !dbg !4350

if.end5:                                          ; preds = %if.end
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4351
  %call6 = call i64 @resource_size(%struct.resource* %12) #4, !dbg !4352
  store i64 %call6, i64* %size, align 8, !dbg !4353
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4354
  %14 = load i32, i32* %resno.addr, align 4, !dbg !4355
  %15 = load i64, i64* %size, align 8, !dbg !4356
  %16 = load i64, i64* %align, align 8, !dbg !4357
  %call7 = call i32 @_pci_assign_resource(%struct.pci_dev* %13, i32 %14, i64 %15, i64 %16) #4, !dbg !4358
  store i32 %call7, i32* %ret, align 4, !dbg !4359
  %17 = load i32, i32* %ret, align 4, !dbg !4360
  %cmp = icmp slt i32 %17, 0, !dbg !4362
  br i1 %cmp, label %if.then8, label %if.end11, !dbg !4363

if.then8:                                         ; preds = %if.end5
  %18 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4364
  %dev9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !4364
  %19 = load i32, i32* %resno.addr, align 4, !dbg !4364
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4364
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %19, %struct.resource* %20) #5, !dbg !4364
  %21 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4366
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4367
  %23 = load i32, i32* %resno.addr, align 4, !dbg !4368
  %24 = load i64, i64* %size, align 8, !dbg !4369
  %call10 = call i32 @pci_revert_fw_address(%struct.resource* %21, %struct.pci_dev* %22, i32 %23, i64 %24) #4, !dbg !4370
  store i32 %call10, i32* %ret, align 4, !dbg !4371
  br label %if.end11, !dbg !4372

if.end11:                                         ; preds = %if.then8, %if.end5
  %25 = load i32, i32* %ret, align 4, !dbg !4373
  %cmp12 = icmp slt i32 %25, 0, !dbg !4375
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !4376

if.then13:                                        ; preds = %if.end11
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4377
  %dev14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 41, !dbg !4377
  %27 = load i32, i32* %resno.addr, align 4, !dbg !4377
  %28 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4377
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %27, %struct.resource* %28) #5, !dbg !4377
  %29 = load i32, i32* %ret, align 4, !dbg !4379
  store i32 %29, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end15:                                         ; preds = %if.end11
  %30 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4381
  %flags16 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 3, !dbg !4382
  %31 = load i64, i64* %flags16, align 8, !dbg !4383
  %and17 = and i64 %31, -536870913, !dbg !4383
  store i64 %and17, i64* %flags16, align 8, !dbg !4383
  %32 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4384
  %flags18 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 3, !dbg !4385
  %33 = load i64, i64* %flags18, align 8, !dbg !4386
  %and19 = and i64 %33, -524289, !dbg !4386
  store i64 %and19, i64* %flags18, align 8, !dbg !4386
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4387
  %dev20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 41, !dbg !4387
  %35 = load i32, i32* %resno.addr, align 4, !dbg !4387
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4387
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %35, %struct.resource* %36) #5, !dbg !4387
  %37 = load i32, i32* %resno.addr, align 4, !dbg !4388
  %cmp21 = icmp slt i32 %37, 13, !dbg !4390
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4391

if.then22:                                        ; preds = %if.end15
  %38 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4392
  %39 = load i32, i32* %resno.addr, align 4, !dbg !4393
  call void @pci_update_resource(%struct.pci_dev* %38, i32 %39) #4, !dbg !4394
  br label %if.end23, !dbg !4394

if.end23:                                         ; preds = %if.then22, %if.end15
  store i32 0, i32* %retval, align 4, !dbg !4395
  br label %return, !dbg !4395

return:                                           ; preds = %if.end23, %if.then13, %if.then3, %if.then
  %40 = load i32, i32* %retval, align 4, !dbg !4396
  ret i32 %40, !dbg !4396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_resource_alignment(%struct.pci_dev* %dev, %struct.resource* %res) #0 !dbg !4397 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %resno = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4402, metadata !DIExpression()), !dbg !4403
  call void @llvm.dbg.declare(metadata i32* %resno, metadata !4404, metadata !DIExpression()), !dbg !4405
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4406
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4407
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 44, !dbg !4408
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4407
  %sub.ptr.lhs.cast = ptrtoint %struct.resource* %0 to i64, !dbg !4409
  %sub.ptr.rhs.cast = ptrtoint %struct.resource* %arraydecay to i64, !dbg !4409
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4409
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !4409
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !4406
  store i32 %conv, i32* %resno, align 4, !dbg !4405
  %2 = load i32, i32* %resno, align 4, !dbg !4410
  %cmp = icmp sge i32 %2, 7, !dbg !4412
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4413

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %resno, align 4, !dbg !4414
  %cmp2 = icmp sle i32 %3, 12, !dbg !4415
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4417
  %5 = load i32, i32* %resno, align 4, !dbg !4418
  %call = call i64 @pci_sriov_resource_alignment(%struct.pci_dev* %4, i32 %5) #4, !dbg !4419
  store i64 %call, i64* %retval, align 8, !dbg !4420
  br label %return, !dbg !4420

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4421
  %class = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 11, !dbg !4423
  %7 = load i32, i32* %class, align 4, !dbg !4423
  %shr = lshr i32 %7, 8, !dbg !4424
  %cmp4 = icmp eq i32 %shr, 1543, !dbg !4425
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !4426

if.then6:                                         ; preds = %if.end
  %8 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4427
  %call7 = call i64 @pci_cardbus_resource_alignment(%struct.resource* %8) #4, !dbg !4428
  store i64 %call7, i64* %retval, align 8, !dbg !4429
  br label %return, !dbg !4429

if.end8:                                          ; preds = %if.end
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4430
  %call9 = call i64 @resource_alignment(%struct.resource* %9) #4, !dbg !4431
  store i64 %call9, i64* %retval, align 8, !dbg !4432
  br label %return, !dbg !4432

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !4433
  ret i64 %10, !dbg !4433
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !4434 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4439
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !4440
  %1 = load i64, i64* %end, align 8, !dbg !4440
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4441
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4442
  %3 = load i64, i64* %start, align 8, !dbg !4442
  %sub = sub i64 %1, %3, !dbg !4443
  %add = add i64 %sub, 1, !dbg !4444
  ret i64 %add, !dbg !4445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_pci_assign_resource(%struct.pci_dev* %dev, i32 %resno, i64 %size, i64 %min_align) #0 !dbg !4446 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %min_align.addr = alloca i64, align 8
  %bus = alloca %struct.pci_bus*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i64 %min_align, i64* %min_align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min_align.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4459, metadata !DIExpression()), !dbg !4460
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4461
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4462
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !4462
  store %struct.pci_bus* %1, %struct.pci_bus** %bus, align 8, !dbg !4463
  br label %while.cond, !dbg !4464

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4465
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4466
  %4 = load i32, i32* %resno.addr, align 4, !dbg !4467
  %5 = load i64, i64* %size.addr, align 8, !dbg !4468
  %6 = load i64, i64* %min_align.addr, align 8, !dbg !4469
  %call = call i32 @__pci_assign_resource(%struct.pci_bus* %2, %struct.pci_dev* %3, i32 %4, i64 %5, i64 %6) #4, !dbg !4470
  store i32 %call, i32* %ret, align 4, !dbg !4471
  %tobool = icmp ne i32 %call, 0, !dbg !4464
  br i1 %tobool, label %while.body, label %while.end, !dbg !4464

while.body:                                       ; preds = %while.cond
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4472
  %parent = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 1, !dbg !4475
  %8 = load %struct.pci_bus*, %struct.pci_bus** %parent, align 8, !dbg !4475
  %tobool2 = icmp ne %struct.pci_bus* %8, null, !dbg !4472
  br i1 %tobool2, label %lor.lhs.false, label %if.then, !dbg !4476

lor.lhs.false:                                    ; preds = %while.body
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4477
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 4, !dbg !4478
  %10 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4478
  %transparent = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 46, !dbg !4479
  %11 = bitcast [5 x i8]* %transparent to i40*, !dbg !4479
  %bf.load = load i40, i40* %11, align 1, !dbg !4479
  %bf.clear = and i40 %bf.load, 1, !dbg !4479
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4479
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !4477
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4480

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !4481

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4482
  %parent4 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 1, !dbg !4483
  %13 = load %struct.pci_bus*, %struct.pci_bus** %parent4, align 8, !dbg !4483
  store %struct.pci_bus* %13, %struct.pci_bus** %bus, align 8, !dbg !4484
  br label %while.cond, !dbg !4464, !llvm.loop !4485

while.end:                                        ; preds = %if.then, %while.cond
  %14 = load i32, i32* %ret, align 4, !dbg !4487
  ret i32 %14, !dbg !4488
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_revert_fw_address(%struct.resource* %res, %struct.pci_dev* %dev, i32 %resno, i64 %size) #0 !dbg !4489 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca %struct.resource*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %root = alloca %struct.resource*, align 8
  %conflict = alloca %struct.resource*, align 8
  %fw_addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !4492, metadata !DIExpression()), !dbg !4493
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata %struct.resource** %root, metadata !4500, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.declare(metadata %struct.resource** %conflict, metadata !4502, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i64* %fw_addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata i64* %start, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.declare(metadata i64* %end, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4510
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4511
  %call = call i64 @pcibios_retrieve_fw_addr(%struct.pci_dev* %0, i32 %1) #4, !dbg !4512
  store i64 %call, i64* %fw_addr, align 8, !dbg !4513
  %2 = load i64, i64* %fw_addr, align 8, !dbg !4514
  %tobool = icmp ne i64 %2, 0, !dbg !4514
  br i1 %tobool, label %if.end, label %if.then, !dbg !4516

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4517
  br label %return, !dbg !4517

if.end:                                           ; preds = %entry
  %3 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4518
  %start1 = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0, !dbg !4519
  %4 = load i64, i64* %start1, align 8, !dbg !4519
  store i64 %4, i64* %start, align 8, !dbg !4520
  %5 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4521
  %end2 = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 1, !dbg !4522
  %6 = load i64, i64* %end2, align 8, !dbg !4522
  store i64 %6, i64* %end, align 8, !dbg !4523
  %7 = load i64, i64* %fw_addr, align 8, !dbg !4524
  %8 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4525
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0, !dbg !4526
  store i64 %7, i64* %start3, align 8, !dbg !4527
  %9 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4528
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0, !dbg !4529
  %10 = load i64, i64* %start4, align 8, !dbg !4529
  %11 = load i64, i64* %size.addr, align 8, !dbg !4530
  %add = add i64 %10, %11, !dbg !4531
  %sub = sub i64 %add, 1, !dbg !4532
  %12 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4533
  %end5 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 1, !dbg !4534
  store i64 %sub, i64* %end5, align 8, !dbg !4535
  %13 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4536
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 3, !dbg !4537
  %14 = load i64, i64* %flags, align 8, !dbg !4538
  %and = and i64 %14, -536870913, !dbg !4538
  store i64 %and, i64* %flags, align 8, !dbg !4538
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4539
  %16 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4540
  %call6 = call %struct.resource* @pci_find_parent_resource(%struct.pci_dev* %15, %struct.resource* %16) #4, !dbg !4541
  store %struct.resource* %call6, %struct.resource** %root, align 8, !dbg !4542
  %17 = load %struct.resource*, %struct.resource** %root, align 8, !dbg !4543
  %tobool7 = icmp ne %struct.resource* %17, null, !dbg !4543
  br i1 %tobool7, label %if.end14, label %if.then8, !dbg !4545

if.then8:                                         ; preds = %if.end
  %18 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4546
  %flags9 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 3, !dbg !4549
  %19 = load i64, i64* %flags9, align 8, !dbg !4549
  %and10 = and i64 %19, 256, !dbg !4550
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4550
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !4551

if.then12:                                        ; preds = %if.then8
  store %struct.resource* @ioport_resource, %struct.resource** %root, align 8, !dbg !4552
  br label %if.end13, !dbg !4553

if.else:                                          ; preds = %if.then8
  store %struct.resource* @iomem_resource, %struct.resource** %root, align 8, !dbg !4554
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  br label %if.end14, !dbg !4555

if.end14:                                         ; preds = %if.end13, %if.end
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4556
  %dev15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !4556
  %21 = load i32, i32* %resno.addr, align 4, !dbg !4556
  %22 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4556
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %21, %struct.resource* %22) #5, !dbg !4556
  %23 = load %struct.resource*, %struct.resource** %root, align 8, !dbg !4557
  %24 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4558
  %call16 = call %struct.resource* @request_resource_conflict(%struct.resource* %23, %struct.resource* %24) #4, !dbg !4559
  store %struct.resource* %call16, %struct.resource** %conflict, align 8, !dbg !4560
  %25 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4561
  %tobool17 = icmp ne %struct.resource* %25, null, !dbg !4561
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !4563

if.then18:                                        ; preds = %if.end14
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4564
  %dev19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 41, !dbg !4564
  %27 = load i32, i32* %resno.addr, align 4, !dbg !4564
  %28 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4564
  %29 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4564
  %name = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 2, !dbg !4564
  %30 = load i8*, i8** %name, align 8, !dbg !4564
  %31 = load %struct.resource*, %struct.resource** %conflict, align 8, !dbg !4564
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %27, %struct.resource* %28, i8* %30, %struct.resource* %31) #5, !dbg !4564
  %32 = load i64, i64* %start, align 8, !dbg !4566
  %33 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4567
  %start20 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0, !dbg !4568
  store i64 %32, i64* %start20, align 8, !dbg !4569
  %34 = load i64, i64* %end, align 8, !dbg !4570
  %35 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4571
  %end21 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 1, !dbg !4572
  store i64 %34, i64* %end21, align 8, !dbg !4573
  %36 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !4574
  %flags22 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 3, !dbg !4575
  %37 = load i64, i64* %flags22, align 8, !dbg !4576
  %or = or i64 %37, 536870912, !dbg !4576
  store i64 %or, i64* %flags22, align 8, !dbg !4576
  store i32 -16, i32* %retval, align 4, !dbg !4577
  br label %return, !dbg !4577

if.end23:                                         ; preds = %if.end14
  store i32 0, i32* %retval, align 4, !dbg !4578
  br label %return, !dbg !4578

return:                                           ; preds = %if.end23, %if.then18, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !4579
  ret i32 %38, !dbg !4579
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_reassign_resource(%struct.pci_dev* %dev, i32 %resno, i64 %addsize, i64 %min_align) #0 !dbg !4580 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %addsize.addr = alloca i64, align 8
  %min_align.addr = alloca i64, align 8
  %res = alloca %struct.resource*, align 8
  %flags = alloca i64, align 8
  %new_size = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4583, metadata !DIExpression()), !dbg !4584
  store i64 %addsize, i64* %addsize.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addsize.addr, metadata !4585, metadata !DIExpression()), !dbg !4586
  store i64 %min_align, i64* %min_align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %min_align.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4591
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4592
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4591
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4593
  %idx.ext = sext i32 %1 to i64, !dbg !4594
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4594
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4590
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata i64* %new_size, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4599, metadata !DIExpression()), !dbg !4600
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4601
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4603
  %3 = load i64, i64* %flags1, align 8, !dbg !4603
  %and = and i64 %3, 16, !dbg !4604
  %tobool = icmp ne i64 %and, 0, !dbg !4604
  br i1 %tobool, label %if.then, label %if.end, !dbg !4605

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4606
  br label %return, !dbg !4606

if.end:                                           ; preds = %entry
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4607
  %flags2 = getelementptr inbounds %struct.resource, %struct.resource* %4, i32 0, i32 3, !dbg !4608
  %5 = load i64, i64* %flags2, align 8, !dbg !4608
  store i64 %5, i64* %flags, align 8, !dbg !4609
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4610
  %flags3 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3, !dbg !4611
  %7 = load i64, i64* %flags3, align 8, !dbg !4612
  %or = or i64 %7, 536870912, !dbg !4612
  store i64 %or, i64* %flags3, align 8, !dbg !4612
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4613
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 5, !dbg !4615
  %9 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4615
  %tobool4 = icmp ne %struct.resource* %9, null, !dbg !4613
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !4616

if.then5:                                         ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4617
  %dev6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 41, !dbg !4617
  %11 = load i32, i32* %resno.addr, align 4, !dbg !4617
  %12 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4617
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %11, %struct.resource* %12) #5, !dbg !4617
  store i32 -22, i32* %retval, align 4, !dbg !4619
  br label %return, !dbg !4619

if.end7:                                          ; preds = %if.end
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4620
  %call = call i64 @resource_size(%struct.resource* %13) #4, !dbg !4621
  %14 = load i64, i64* %addsize.addr, align 8, !dbg !4622
  %add = add i64 %call, %14, !dbg !4623
  store i64 %add, i64* %new_size, align 8, !dbg !4624
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4625
  %16 = load i32, i32* %resno.addr, align 4, !dbg !4626
  %17 = load i64, i64* %new_size, align 8, !dbg !4627
  %18 = load i64, i64* %min_align.addr, align 8, !dbg !4628
  %call8 = call i32 @_pci_assign_resource(%struct.pci_dev* %15, i32 %16, i64 %17, i64 %18) #4, !dbg !4629
  store i32 %call8, i32* %ret, align 4, !dbg !4630
  %19 = load i32, i32* %ret, align 4, !dbg !4631
  %tobool9 = icmp ne i32 %19, 0, !dbg !4631
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !4633

if.then10:                                        ; preds = %if.end7
  %20 = load i64, i64* %flags, align 8, !dbg !4634
  %21 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4636
  %flags11 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 3, !dbg !4637
  store i64 %20, i64* %flags11, align 8, !dbg !4638
  %22 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4639
  %dev12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 41, !dbg !4639
  %23 = load i32, i32* %resno.addr, align 4, !dbg !4639
  %24 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4639
  %25 = load i64, i64* %addsize.addr, align 8, !dbg !4639
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %23, %struct.resource* %24, i64 %25) #5, !dbg !4639
  %26 = load i32, i32* %ret, align 4, !dbg !4640
  store i32 %26, i32* %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

if.end13:                                         ; preds = %if.end7
  %27 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4642
  %flags14 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 3, !dbg !4643
  %28 = load i64, i64* %flags14, align 8, !dbg !4644
  %and15 = and i64 %28, -536870913, !dbg !4644
  store i64 %and15, i64* %flags14, align 8, !dbg !4644
  %29 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4645
  %flags16 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 3, !dbg !4646
  %30 = load i64, i64* %flags16, align 8, !dbg !4647
  %and17 = and i64 %30, -524289, !dbg !4647
  store i64 %and17, i64* %flags16, align 8, !dbg !4647
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4648
  %dev18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 41, !dbg !4648
  %32 = load i32, i32* %resno.addr, align 4, !dbg !4648
  %33 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4648
  %34 = load i64, i64* %addsize.addr, align 8, !dbg !4648
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %32, %struct.resource* %33, i64 %34) #5, !dbg !4648
  %35 = load i32, i32* %resno.addr, align 4, !dbg !4649
  %cmp = icmp slt i32 %35, 13, !dbg !4651
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !4652

if.then19:                                        ; preds = %if.end13
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4653
  %37 = load i32, i32* %resno.addr, align 4, !dbg !4654
  call void @pci_update_resource(%struct.pci_dev* %36, i32 %37) #4, !dbg !4655
  br label %if.end20, !dbg !4655

if.end20:                                         ; preds = %if.then19, %if.end13
  store i32 0, i32* %retval, align 4, !dbg !4656
  br label %return, !dbg !4656

return:                                           ; preds = %if.end20, %if.then10, %if.then5, %if.then
  %38 = load i32, i32* %retval, align 4, !dbg !4657
  ret i32 %38, !dbg !4657
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @pci_release_resource(%struct.pci_dev* %dev, i32 %resno) #0 !dbg !4658 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4663, metadata !DIExpression()), !dbg !4664
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4665
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4666
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4665
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4667
  %idx.ext = sext i32 %1 to i64, !dbg !4668
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4668
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4664
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4669
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4669
  %3 = load i32, i32* %resno.addr, align 4, !dbg !4669
  %4 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4669
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %3, %struct.resource* %4) #5, !dbg !4669
  %5 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4670
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %5, i32 0, i32 5, !dbg !4672
  %6 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4672
  %tobool = icmp ne %struct.resource* %6, null, !dbg !4670
  br i1 %tobool, label %if.end, label %if.then, !dbg !4673

if.then:                                          ; preds = %entry
  br label %return, !dbg !4674

if.end:                                           ; preds = %entry
  %7 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4675
  %call = call i32 @release_resource(%struct.resource* %7) #4, !dbg !4676
  %8 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4677
  %call2 = call i64 @resource_size(%struct.resource* %8) #4, !dbg !4678
  %sub = sub i64 %call2, 1, !dbg !4679
  %9 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4680
  %end = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 1, !dbg !4681
  store i64 %sub, i64* %end, align 8, !dbg !4682
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4683
  %start = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !4684
  store i64 0, i64* %start, align 8, !dbg !4685
  %11 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4686
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 3, !dbg !4687
  %12 = load i64, i64* %flags, align 8, !dbg !4688
  %or = or i64 %12, 536870912, !dbg !4688
  store i64 %or, i64* %flags, align 8, !dbg !4688
  br label %return, !dbg !4689

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4689
}

; Function Attrs: noredzone
declare dso_local i32 @release_resource(%struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_resize_resource(%struct.pci_dev* %dev, i32 %resno, i32 %size) #0 !dbg !4690 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %res = alloca %struct.resource*, align 8
  %old = alloca i32, align 4
  %ret = alloca i32, align 4
  %sizes = alloca i32, align 4
  %cmd = alloca i16, align 2
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4693, metadata !DIExpression()), !dbg !4694
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4695, metadata !DIExpression()), !dbg !4696
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4699, metadata !DIExpression()), !dbg !4700
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4701
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4702
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4701
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4703
  %idx.ext = sext i32 %1 to i64, !dbg !4704
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4704
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4700
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %sizes, metadata !4709, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.declare(metadata i16* %cmd, metadata !4711, metadata !DIExpression()), !dbg !4712
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4713
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4715
  %3 = load i64, i64* %flags, align 8, !dbg !4715
  %and = and i64 %3, 536870912, !dbg !4716
  %tobool = icmp ne i64 %and, 0, !dbg !4716
  br i1 %tobool, label %if.end, label %if.then, !dbg !4717

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4718
  br label %return, !dbg !4718

if.end:                                           ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4719
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %4, i32 4, i16* %cmd) #4, !dbg !4720
  %5 = load i16, i16* %cmd, align 2, !dbg !4721
  %conv = zext i16 %5 to i32, !dbg !4721
  %and1 = and i32 %conv, 2, !dbg !4723
  %tobool2 = icmp ne i32 %and1, 0, !dbg !4723
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4724

if.then3:                                         ; preds = %if.end
  store i32 -16, i32* %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

if.end4:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4726
  %7 = load i32, i32* %resno.addr, align 4, !dbg !4727
  %call5 = call i32 @pci_rebar_get_possible_sizes(%struct.pci_dev* %6, i32 %7) #4, !dbg !4728
  store i32 %call5, i32* %sizes, align 4, !dbg !4729
  %8 = load i32, i32* %sizes, align 4, !dbg !4730
  %tobool6 = icmp ne i32 %8, 0, !dbg !4730
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4732

if.then7:                                         ; preds = %if.end4
  store i32 -524, i32* %retval, align 4, !dbg !4733
  br label %return, !dbg !4733

if.end8:                                          ; preds = %if.end4
  %9 = load i32, i32* %sizes, align 4, !dbg !4734
  %conv9 = zext i32 %9 to i64, !dbg !4734
  %10 = load i32, i32* %size.addr, align 4, !dbg !4736
  %sh_prom = zext i32 %10 to i64, !dbg !4736
  %shl = shl i64 1, %sh_prom, !dbg !4736
  %and10 = and i64 %conv9, %shl, !dbg !4737
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4737
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4738

if.then12:                                        ; preds = %if.end8
  store i32 -22, i32* %retval, align 4, !dbg !4739
  br label %return, !dbg !4739

if.end13:                                         ; preds = %if.end8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4740
  %12 = load i32, i32* %resno.addr, align 4, !dbg !4741
  %call14 = call i32 @pci_rebar_get_current_size(%struct.pci_dev* %11, i32 %12) #4, !dbg !4742
  store i32 %call14, i32* %old, align 4, !dbg !4743
  %13 = load i32, i32* %old, align 4, !dbg !4744
  %cmp = icmp slt i32 %13, 0, !dbg !4746
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !4747

if.then16:                                        ; preds = %if.end13
  %14 = load i32, i32* %old, align 4, !dbg !4748
  store i32 %14, i32* %retval, align 4, !dbg !4749
  br label %return, !dbg !4749

if.end17:                                         ; preds = %if.end13
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4750
  %16 = load i32, i32* %resno.addr, align 4, !dbg !4751
  %17 = load i32, i32* %size.addr, align 4, !dbg !4752
  %call18 = call i32 @pci_rebar_set_size(%struct.pci_dev* %15, i32 %16, i32 %17) #4, !dbg !4753
  store i32 %call18, i32* %ret, align 4, !dbg !4754
  %18 = load i32, i32* %ret, align 4, !dbg !4755
  %tobool19 = icmp ne i32 %18, 0, !dbg !4755
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4757

if.then20:                                        ; preds = %if.end17
  %19 = load i32, i32* %ret, align 4, !dbg !4758
  store i32 %19, i32* %retval, align 4, !dbg !4759
  br label %return, !dbg !4759

if.end21:                                         ; preds = %if.end17
  %20 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4760
  %start = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0, !dbg !4761
  %21 = load i64, i64* %start, align 8, !dbg !4761
  %22 = load i32, i32* %size.addr, align 4, !dbg !4762
  %call22 = call i64 @pci_rebar_size_to_bytes(i32 %22) #4, !dbg !4763
  %add = add i64 %21, %call22, !dbg !4764
  %sub = sub i64 %add, 1, !dbg !4765
  %23 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4766
  %end = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1, !dbg !4767
  store i64 %sub, i64* %end, align 8, !dbg !4768
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4769
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1, !dbg !4771
  %25 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4771
  %self = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 4, !dbg !4772
  %26 = load %struct.pci_dev*, %struct.pci_dev** %self, align 8, !dbg !4772
  %tobool23 = icmp ne %struct.pci_dev* %26, null, !dbg !4769
  br i1 %tobool23, label %if.then24, label %if.end32, !dbg !4773

if.then24:                                        ; preds = %if.end21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4774
  %bus25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1, !dbg !4776
  %28 = load %struct.pci_bus*, %struct.pci_bus** %bus25, align 8, !dbg !4776
  %self26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 4, !dbg !4777
  %29 = load %struct.pci_dev*, %struct.pci_dev** %self26, align 8, !dbg !4777
  %30 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4778
  %flags27 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 3, !dbg !4779
  %31 = load i64, i64* %flags27, align 8, !dbg !4779
  %call28 = call i32 @pci_reassign_bridge_resources(%struct.pci_dev* %29, i64 %31) #4, !dbg !4780
  store i32 %call28, i32* %ret, align 4, !dbg !4781
  %32 = load i32, i32* %ret, align 4, !dbg !4782
  %tobool29 = icmp ne i32 %32, 0, !dbg !4782
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4784

if.then30:                                        ; preds = %if.then24
  br label %error_resize, !dbg !4785

if.end31:                                         ; preds = %if.then24
  br label %if.end32, !dbg !4786

if.end32:                                         ; preds = %if.end31, %if.end21
  store i32 0, i32* %retval, align 4, !dbg !4787
  br label %return, !dbg !4787

error_resize:                                     ; preds = %if.then30
  call void @llvm.dbg.label(metadata !4788), !dbg !4789
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4790
  %34 = load i32, i32* %resno.addr, align 4, !dbg !4791
  %35 = load i32, i32* %old, align 4, !dbg !4792
  %call33 = call i32 @pci_rebar_set_size(%struct.pci_dev* %33, i32 %34, i32 %35) #4, !dbg !4793
  %36 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4794
  %start34 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0, !dbg !4795
  %37 = load i64, i64* %start34, align 8, !dbg !4795
  %38 = load i32, i32* %old, align 4, !dbg !4796
  %call35 = call i64 @pci_rebar_size_to_bytes(i32 %38) #4, !dbg !4797
  %add36 = add i64 %37, %call35, !dbg !4798
  %sub37 = sub i64 %add36, 1, !dbg !4799
  %39 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4800
  %end38 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1, !dbg !4801
  store i64 %sub37, i64* %end38, align 8, !dbg !4802
  %40 = load i32, i32* %ret, align 4, !dbg !4803
  store i32 %40, i32* %retval, align 4, !dbg !4804
  br label %return, !dbg !4804

return:                                           ; preds = %error_resize, %if.end32, %if.then20, %if.then16, %if.then12, %if.then7, %if.then3, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !4805
  ret i32 %41, !dbg !4805
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_rebar_get_possible_sizes(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_rebar_get_current_size(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_rebar_set_size(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pci_rebar_size_to_bytes(i32 %size) #0 !dbg !4806 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4809, metadata !DIExpression()), !dbg !4810
  %0 = load i32, i32* %size.addr, align 4, !dbg !4811
  %add = add i32 %0, 20, !dbg !4812
  %sh_prom = zext i32 %add to i64, !dbg !4813
  %shl = shl i64 1, %sh_prom, !dbg !4813
  ret i64 %shl, !dbg !4814
}

; Function Attrs: noredzone
declare dso_local i32 @pci_reassign_bridge_resources(%struct.pci_dev*, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_enable_resources(%struct.pci_dev* %dev, i32 %mask) #0 !dbg !4815 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %mask.addr = alloca i32, align 4
  %cmd = alloca i16, align 2
  %old_cmd = alloca i16, align 2
  %i = alloca i32, align 4
  %r = alloca %struct.resource*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  store i32 %mask, i32* %mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mask.addr, metadata !4818, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.declare(metadata i16* %cmd, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.declare(metadata i16* %old_cmd, metadata !4822, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.resource** %r, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4828
  %call = call i32 @pci_read_config_word(%struct.pci_dev* %0, i32 4, i16* %cmd) #4, !dbg !4829
  %1 = load i16, i16* %cmd, align 2, !dbg !4830
  store i16 %1, i16* %old_cmd, align 2, !dbg !4831
  store i32 0, i32* %i, align 4, !dbg !4832
  br label %for.cond, !dbg !4834

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4835
  %cmp = icmp slt i32 %2, 17, !dbg !4837
  br i1 %cmp, label %for.body, label %for.end, !dbg !4838

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %mask.addr, align 4, !dbg !4839
  %4 = load i32, i32* %i, align 4, !dbg !4842
  %shl = shl i32 1, %4, !dbg !4843
  %and = and i32 %3, %shl, !dbg !4844
  %tobool = icmp ne i32 %and, 0, !dbg !4844
  br i1 %tobool, label %if.end, label %if.then, !dbg !4845

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4846

if.end:                                           ; preds = %for.body
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4847
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 44, !dbg !4848
  %6 = load i32, i32* %i, align 4, !dbg !4849
  %idxprom = sext i32 %6 to i64, !dbg !4847
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !4847
  store %struct.resource* %arrayidx, %struct.resource** %r, align 8, !dbg !4850
  %7 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4851
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 3, !dbg !4853
  %8 = load i64, i64* %flags, align 8, !dbg !4853
  %and1 = and i64 %8, 768, !dbg !4854
  %tobool2 = icmp ne i64 %and1, 0, !dbg !4854
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4855

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !4856

if.end4:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !dbg !4857
  %cmp5 = icmp eq i32 %9, 6, !dbg !4859
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !4860

land.lhs.true:                                    ; preds = %if.end4
  %10 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4861
  %flags6 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 3, !dbg !4862
  %11 = load i64, i64* %flags6, align 8, !dbg !4862
  %and7 = and i64 %11, 1, !dbg !4863
  %tobool8 = icmp ne i64 %and7, 0, !dbg !4863
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !4864

if.then9:                                         ; preds = %land.lhs.true
  br label %for.inc, !dbg !4865

if.end10:                                         ; preds = %land.lhs.true, %if.end4
  %12 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4866
  %flags11 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 3, !dbg !4868
  %13 = load i64, i64* %flags11, align 8, !dbg !4868
  %and12 = and i64 %13, 536870912, !dbg !4869
  %tobool13 = icmp ne i64 %and12, 0, !dbg !4869
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !4870

if.then14:                                        ; preds = %if.end10
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4871
  %dev15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 41, !dbg !4871
  %15 = load i32, i32* %i, align 4, !dbg !4871
  %16 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4871
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %15, %struct.resource* %16) #5, !dbg !4871
  store i32 -22, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

if.end16:                                         ; preds = %if.end10
  %17 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4874
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 5, !dbg !4876
  %18 = load %struct.resource*, %struct.resource** %parent, align 8, !dbg !4876
  %tobool17 = icmp ne %struct.resource* %18, null, !dbg !4874
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !4877

if.then18:                                        ; preds = %if.end16
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4878
  %dev19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 41, !dbg !4878
  %20 = load i32, i32* %i, align 4, !dbg !4878
  %21 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4878
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %20, %struct.resource* %21) #5, !dbg !4878
  store i32 -22, i32* %retval, align 4, !dbg !4880
  br label %return, !dbg !4880

if.end20:                                         ; preds = %if.end16
  %22 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4881
  %flags21 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 3, !dbg !4883
  %23 = load i64, i64* %flags21, align 8, !dbg !4883
  %and22 = and i64 %23, 256, !dbg !4884
  %tobool23 = icmp ne i64 %and22, 0, !dbg !4884
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !4885

if.then24:                                        ; preds = %if.end20
  %24 = load i16, i16* %cmd, align 2, !dbg !4886
  %conv = zext i16 %24 to i32, !dbg !4886
  %or = or i32 %conv, 1, !dbg !4886
  %conv25 = trunc i32 %or to i16, !dbg !4886
  store i16 %conv25, i16* %cmd, align 2, !dbg !4886
  br label %if.end26, !dbg !4887

if.end26:                                         ; preds = %if.then24, %if.end20
  %25 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !4888
  %flags27 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 3, !dbg !4890
  %26 = load i64, i64* %flags27, align 8, !dbg !4890
  %and28 = and i64 %26, 512, !dbg !4891
  %tobool29 = icmp ne i64 %and28, 0, !dbg !4891
  br i1 %tobool29, label %if.then30, label %if.end34, !dbg !4892

if.then30:                                        ; preds = %if.end26
  %27 = load i16, i16* %cmd, align 2, !dbg !4893
  %conv31 = zext i16 %27 to i32, !dbg !4893
  %or32 = or i32 %conv31, 2, !dbg !4893
  %conv33 = trunc i32 %or32 to i16, !dbg !4893
  store i16 %conv33, i16* %cmd, align 2, !dbg !4893
  br label %if.end34, !dbg !4894

if.end34:                                         ; preds = %if.then30, %if.end26
  br label %for.inc, !dbg !4895

for.inc:                                          ; preds = %if.end34, %if.then9, %if.then3, %if.then
  %28 = load i32, i32* %i, align 4, !dbg !4896
  %inc = add i32 %28, 1, !dbg !4896
  store i32 %inc, i32* %i, align 4, !dbg !4896
  br label %for.cond, !dbg !4897, !llvm.loop !4898

for.end:                                          ; preds = %for.cond
  %29 = load i16, i16* %cmd, align 2, !dbg !4900
  %conv35 = zext i16 %29 to i32, !dbg !4900
  %30 = load i16, i16* %old_cmd, align 2, !dbg !4902
  %conv36 = zext i16 %30 to i32, !dbg !4902
  %cmp37 = icmp ne i32 %conv35, %conv36, !dbg !4903
  br i1 %cmp37, label %if.then39, label %if.end44, !dbg !4904

if.then39:                                        ; preds = %for.end
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4905
  %dev40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 41, !dbg !4905
  %32 = load i16, i16* %old_cmd, align 2, !dbg !4905
  %conv41 = zext i16 %32 to i32, !dbg !4905
  %33 = load i16, i16* %cmd, align 2, !dbg !4905
  %conv42 = zext i16 %33 to i32, !dbg !4905
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %conv41, i32 %conv42) #5, !dbg !4905
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4907
  %35 = load i16, i16* %cmd, align 2, !dbg !4908
  %call43 = call i32 @pci_write_config_word(%struct.pci_dev* %34, i32 4, i16 zeroext %35) #4, !dbg !4909
  br label %if.end44, !dbg !4910

if.end44:                                         ; preds = %if.then39, %for.end
  store i32 0, i32* %retval, align 4, !dbg !4911
  br label %return, !dbg !4911

return:                                           ; preds = %if.end44, %if.then18, %if.then14
  %36 = load i32, i32* %retval, align 4, !dbg !4912
  ret i32 %36, !dbg !4912
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @pcibios_resource_to_bus(%struct.pci_bus*, %struct.pci_bus_region*, %struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local i64 @pci_sriov_resource_alignment(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @pci_cardbus_resource_alignment(%struct.resource*) #2

; Function Attrs: noredzone
declare dso_local i64 @resource_alignment(%struct.resource*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__pci_assign_resource(%struct.pci_bus* %bus, %struct.pci_dev* %dev, i32 %resno, i64 %size, i64 %align) #0 !dbg !4913 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.pci_bus*, align 8
  %dev.addr = alloca %struct.pci_dev*, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %res = alloca %struct.resource*, align 8
  %min = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4916, metadata !DIExpression()), !dbg !4917
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4918, metadata !DIExpression()), !dbg !4919
  store i32 %resno, i32* %resno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %resno.addr, metadata !4920, metadata !DIExpression()), !dbg !4921
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4922, metadata !DIExpression()), !dbg !4923
  store i64 %align, i64* %align.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %align.addr, metadata !4924, metadata !DIExpression()), !dbg !4925
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4926, metadata !DIExpression()), !dbg !4927
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4928
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4929
  %arraydecay = getelementptr inbounds [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4928
  %1 = load i32, i32* %resno.addr, align 4, !dbg !4930
  %idx.ext = sext i32 %1 to i64, !dbg !4931
  %add.ptr = getelementptr %struct.resource, %struct.resource* %arraydecay, i64 %idx.ext, !dbg !4931
  store %struct.resource* %add.ptr, %struct.resource** %res, align 8, !dbg !4927
  call void @llvm.dbg.declare(metadata i64* %min, metadata !4932, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4934, metadata !DIExpression()), !dbg !4935
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4936
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 3, !dbg !4937
  %3 = load i64, i64* %flags, align 8, !dbg !4937
  %and = and i64 %3, 256, !dbg !4938
  %tobool = icmp ne i64 %and, 0, !dbg !4938
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4939

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4939

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* @pci_mem_start, align 8, !dbg !4940
  br label %cond.end, !dbg !4939

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4096, %cond.true ], [ %4, %cond.false ], !dbg !4939
  store i64 %cond, i64* %min, align 8, !dbg !4941
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4942
  %6 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4943
  %7 = load i64, i64* %size.addr, align 8, !dbg !4944
  %8 = load i64, i64* %align.addr, align 8, !dbg !4945
  %9 = load i64, i64* %min, align 8, !dbg !4946
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4947
  %11 = bitcast %struct.pci_dev* %10 to i8*, !dbg !4947
  %call = call i32 @pci_bus_alloc_resource(%struct.pci_bus* %5, %struct.resource* %6, i64 %7, i64 %8, i64 %9, i64 1056768, i64 (i8*, %struct.resource*, i64, i64)* @pcibios_align_resource, i8* %11) #4, !dbg !4948
  store i32 %call, i32* %ret, align 4, !dbg !4949
  %12 = load i32, i32* %ret, align 4, !dbg !4950
  %cmp = icmp eq i32 %12, 0, !dbg !4952
  br i1 %cmp, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end:                                           ; preds = %cond.end
  %13 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4955
  %flags1 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 3, !dbg !4957
  %14 = load i64, i64* %flags1, align 8, !dbg !4957
  %and2 = and i64 %14, 1056768, !dbg !4958
  %cmp3 = icmp eq i64 %and2, 1056768, !dbg !4959
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !4960

if.then4:                                         ; preds = %if.end
  %15 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4961
  %16 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4963
  %17 = load i64, i64* %size.addr, align 8, !dbg !4964
  %18 = load i64, i64* %align.addr, align 8, !dbg !4965
  %19 = load i64, i64* %min, align 8, !dbg !4966
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4967
  %21 = bitcast %struct.pci_dev* %20 to i8*, !dbg !4967
  %call5 = call i32 @pci_bus_alloc_resource(%struct.pci_bus* %15, %struct.resource* %16, i64 %17, i64 %18, i64 %19, i64 8192, i64 (i8*, %struct.resource*, i64, i64)* @pcibios_align_resource, i8* %21) #4, !dbg !4968
  store i32 %call5, i32* %ret, align 4, !dbg !4969
  %22 = load i32, i32* %ret, align 4, !dbg !4970
  %cmp6 = icmp eq i32 %22, 0, !dbg !4972
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !4973

if.then7:                                         ; preds = %if.then4
  store i32 0, i32* %retval, align 4, !dbg !4974
  br label %return, !dbg !4974

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !4975

if.end9:                                          ; preds = %if.end8, %if.end
  %23 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4976
  %flags10 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 3, !dbg !4978
  %24 = load i64, i64* %flags10, align 8, !dbg !4978
  %and11 = and i64 %24, 1056768, !dbg !4979
  %tobool12 = icmp ne i64 %and11, 0, !dbg !4979
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !4980

if.then13:                                        ; preds = %if.end9
  %25 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4981
  %26 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4982
  %27 = load i64, i64* %size.addr, align 8, !dbg !4983
  %28 = load i64, i64* %align.addr, align 8, !dbg !4984
  %29 = load i64, i64* %min, align 8, !dbg !4985
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4986
  %31 = bitcast %struct.pci_dev* %30 to i8*, !dbg !4986
  %call14 = call i32 @pci_bus_alloc_resource(%struct.pci_bus* %25, %struct.resource* %26, i64 %27, i64 %28, i64 %29, i64 0, i64 (i8*, %struct.resource*, i64, i64)* @pcibios_align_resource, i8* %31) #4, !dbg !4987
  store i32 %call14, i32* %ret, align 4, !dbg !4988
  br label %if.end15, !dbg !4989

if.end15:                                         ; preds = %if.then13, %if.end9
  %32 = load i32, i32* %ret, align 4, !dbg !4990
  store i32 %32, i32* %retval, align 4, !dbg !4991
  br label %return, !dbg !4991

return:                                           ; preds = %if.end15, %if.then7, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4992
  ret i32 %33, !dbg !4992
}

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_alloc_resource(%struct.pci_bus*, %struct.resource*, i64, i64, i64, i64, i64 (i8*, %struct.resource*, i64, i64)*, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !103, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/pci/setup-res.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !17, !22, !28, !35, !41, !50, !58, !64, !70, !77, !85, !91}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !12, line: 546, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !18, line: 65, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !23, line: 16, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !29, line: 59, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !5, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !42, line: 296, baseType: !5, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !51, line: 9, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !59, line: 26, baseType: !5, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !65, line: 44, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69}
!67 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !71, line: 343, baseType: !5, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!74 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!75 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !78, line: 524, baseType: !5, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !78, line: 502, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 89, baseType: !5, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102}
!94 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5, isUnsigned: true)
!96 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6, isUnsigned: true)
!97 = !DIEnumerator(name: "PCI_IOV_RESOURCES", value: 7, isUnsigned: true)
!98 = !DIEnumerator(name: "PCI_IOV_RESOURCE_END", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 13, isUnsigned: true)
!100 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 16, isUnsigned: true)
!101 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 17, isUnsigned: true)
!102 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 17, isUnsigned: true)
!103 = !{!104, !105}
!104 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !108, line: 27, baseType: !5)
!108 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{i32 7, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"Code Model", i32 2}
!113 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!114 = distinct !DISubprogram(name: "pci_update_resource", scope: !1, file: !1, line: 121, type: !115, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117, !171}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !92, line: 309, size: 19264, elements: !119)
!119 = !{!120, !127, !3793, !3794, !3795, !3796, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3824, !3889, !3890, !3891, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3965, !3966, !3968, !3969, !3970, !3971, !3973, !3974, !3975, !3978, !4010, !4011, !4012, !4013, !4014, !4015, !4016}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !118, file: !92, line: 310, baseType: !121, size: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !122, line: 178, size: 128, elements: !123)
!122 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !122, line: 179, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !121, file: !122, line: 179, baseType: !125, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !118, file: !92, line: 311, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !92, line: 605, size: 8064, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !161, !162, !163, !190, !193, !194, !198, !200, !201, !202, !203, !207, !209, !211, !3789, !3790, !3791, !3792}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !92, line: 606, baseType: !121, size: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !92, line: 607, baseType: !128, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !129, file: !92, line: 608, baseType: !121, size: 128, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !129, file: !92, line: 609, baseType: !121, size: 128, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !129, file: !92, line: 610, baseType: !117, size: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !129, file: !92, line: 611, baseType: !121, size: 128, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !129, file: !92, line: 613, baseType: !138, size: 256, offset: 640)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !159)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !141, line: 20, size: 512, elements: !142)
!141 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !148, !149, !153, !155, !156, !157, !158}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !140, file: !141, line: 21, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !122, line: 158, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !122, line: 153, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !108, line: 31, baseType: !104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !140, file: !141, line: 22, baseType: !144, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 23, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !141, line: 24, baseType: !154, size: 64, offset: 192)
!154 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !140, file: !141, line: 25, baseType: !154, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !140, file: !141, line: 26, baseType: !139, size: 64, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !140, file: !141, line: 26, baseType: !139, size: 64, offset: 384)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !140, file: !141, line: 26, baseType: !139, size: 64, offset: 448)
!159 = !{!160}
!160 = !DISubrange(count: 4)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !129, file: !92, line: 614, baseType: !121, size: 128, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !129, file: !92, line: 615, baseType: !140, size: 512, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !129, file: !92, line: 617, baseType: !164, size: 64, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !92, line: 731, size: 320, elements: !166)
!166 = !{!167, !172, !176, !181, !186}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !165, file: !92, line: 732, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !128}
!171 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !165, file: !92, line: 733, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !128}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !165, file: !92, line: 734, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !128, !5, !171}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !165, file: !92, line: 735, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!171, !128, !5, !171, !171, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !165, file: !92, line: 736, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!171, !128, !5, !171, !171, !105}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !129, file: !92, line: 618, baseType: !191, size: 64, offset: 1600)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !92, line: 537, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !129, file: !92, line: 619, baseType: !180, size: 64, offset: 1664)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !129, file: !92, line: 620, baseType: !195, size: 64, offset: 1728)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !197, line: 123, flags: DIFlagFwdDecl)
!197 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!198 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !129, file: !92, line: 622, baseType: !199, size: 8, offset: 1792)
!199 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !129, file: !92, line: 623, baseType: !199, size: 8, offset: 1800)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !129, file: !92, line: 624, baseType: !199, size: 8, offset: 1808)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !129, file: !92, line: 625, baseType: !199, size: 8, offset: 1816)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !92, line: 630, baseType: !204, size: 384, offset: 1824)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 48)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !129, file: !92, line: 632, baseType: !208, size: 16, offset: 2208)
!208 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !129, file: !92, line: 633, baseType: !210, size: 16, offset: 2224)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !92, line: 237, baseType: !208)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !129, file: !92, line: 634, baseType: !212, size: 64, offset: 2240)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !71, line: 461, size: 5568, elements: !214)
!214 = !{!215, !3343, !3344, !3347, !3348, !3399, !3490, !3491, !3492, !3493, !3494, !3503, !3608, !3621, !3624, !3625, !3629, !3631, !3632, !3633, !3637, !3643, !3644, !3647, !3651, !3741, !3742, !3743, !3744, !3745, !3777, !3778, !3779, !3782, !3785, !3786, !3787, !3788}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !213, file: !71, line: 462, baseType: !216, size: 512)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !217, line: 64, size: 512, elements: !218)
!217 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !220, !221, !223, !283, !3194, !3333, !3338, !3339, !3340, !3341, !3342}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !217, line: 65, baseType: !150, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !216, file: !217, line: 66, baseType: !121, size: 128, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !216, file: !217, line: 67, baseType: !222, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !216, file: !217, line: 68, baseType: !224, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !217, line: 192, size: 704, elements: !226)
!226 = !{!227, !228, !244, !245}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !225, file: !217, line: 193, baseType: !121, size: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !225, file: !217, line: 194, baseType: !229, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 83, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 71, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 72, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 72, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 73, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 20, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !230, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 25, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 25, elements: !243)
!243 = !{}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !225, file: !217, line: 195, baseType: !216, size: 512, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !225, file: !217, line: 196, baseType: !246, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !217, line: 156, size: 192, elements: !249)
!249 = !{!250, !255, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !248, file: !217, line: 157, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!171, !224, !222}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !217, line: 158, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!150, !224, !222}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !248, file: !217, line: 159, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!171, !224, !222, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !217, line: 148, size: 20736, elements: !267)
!267 = !{!268, !273, !277, !278, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !217, line: 149, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !217, line: 150, baseType: !274, size: 4096, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4096, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !217, line: 151, baseType: !171, size: 32, offset: 4288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !217, line: 152, baseType: !279, size: 16384, offset: 4320)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !217, line: 153, baseType: !171, size: 32, offset: 20704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !216, file: !217, line: 69, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !217, line: 138, size: 448, elements: !286)
!286 = !{!287, !291, !319, !321, !3156, !3184, !3188}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !217, line: 139, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !222}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !217, line: 140, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 230, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 231, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !222, !306, !270}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !122, line: 60, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !305)
!305 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !295, line: 31, baseType: !150, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !307, file: !295, line: 32, baseType: !311, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !122, line: 19, baseType: !208)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 232, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!301, !222, !306, !150, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 55, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !154)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !285, file: !217, line: 141, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !217, line: 142, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !326)
!326 = !{!327, !328, !332, !3153, !3154}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !295, line: 85, baseType: !150, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !325, file: !295, line: 86, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!311, !222, !306, !171}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !325, file: !295, line: 88, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!311, !222, !336, !171}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 168, size: 448, elements: !338)
!338 = !{!339, !340, !341, !342, !3148, !3149}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !295, line: 169, baseType: !307, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !337, file: !295, line: 170, baseType: !316, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !337, file: !295, line: 171, baseType: !180, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !295, line: 172, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!301, !346, !222, !336, !270, !517, !316}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !42, line: 916, size: 1856, align: 32, elements: !348)
!348 = !{!349, !367, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3131, !3132, !3141, !3142, !3143, !3144, !3145, !3146, !3147}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !347, file: !42, line: 920, baseType: !350, size: 128)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !42, line: 917, size: 128, elements: !351)
!351 = !{!352, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !350, file: !42, line: 918, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !354, line: 58, size: 64, elements: !355)
!354 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !354, line: 59, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !350, file: !42, line: 919, baseType: !359, size: 128, align: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !122, line: 216, size: 128, align: 64, elements: !360)
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !122, line: 217, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !359, file: !122, line: 218, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !362}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !347, file: !42, line: 921, baseType: !368, size: 128, offset: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !369, line: 8, size: 128, elements: !370)
!369 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!370 = !{!371, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !368, file: !369, line: 9, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !374, line: 18, flags: DIFlagFwdDecl)
!374 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !368, file: !369, line: 10, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !374, line: 89, size: 1536, elements: !378)
!378 = !{!379, !380, !390, !398, !399, !414, !3081, !3083, !3095, !3096, !3097, !3098, !3099, !3105, !3106, !3107}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !377, file: !374, line: 91, baseType: !5, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !377, file: !374, line: 92, baseType: !381, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !382, line: 277, baseType: !383)
!382 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !382, line: 277, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !383, file: !382, line: 277, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !382, line: 70, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !382, line: 65, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !387, file: !382, line: 66, baseType: !5, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !377, file: !374, line: 93, baseType: !391, size: 128, offset: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !392, line: 38, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !392, line: 39, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !391, file: !392, line: 39, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !377, file: !374, line: 94, baseType: !376, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !377, file: !374, line: 95, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !374, line: 47, size: 128, elements: !401)
!401 = !{!402, !411}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !374, line: 48, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !374, line: 48, size: 64, elements: !404)
!404 = !{!405, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !374, line: 49, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !374, line: 49, size: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !406, file: !374, line: 50, baseType: !105, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !406, file: !374, line: 50, baseType: !105, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !403, file: !374, line: 52, baseType: !146, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !374, line: 54, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !377, file: !374, line: 96, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !42, line: 610, size: 4224, elements: !417)
!417 = !{!418, !419, !420, !428, !435, !436, !584, !2792, !2793, !2794, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !3057, !3065, !3066, !3067, !3077, !3078, !3079, !3080}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !416, file: !42, line: 611, baseType: !311, size: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !416, file: !42, line: 612, baseType: !208, size: 16, offset: 16)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !416, file: !42, line: 613, baseType: !421, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !422, line: 23, baseType: !423)
!422 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 21, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !423, file: !422, line: 22, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !122, line: 32, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !5)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !416, file: !42, line: 614, baseType: !429, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !422, line: 28, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 26, size: 32, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !430, file: !422, line: 27, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !122, line: 33, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !5)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !416, file: !42, line: 615, baseType: !5, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !416, file: !42, line: 622, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !42, line: 1864, size: 1536, align: 512, elements: !440)
!440 = !{!441, !445, !458, !462, !468, !472, !478, !482, !486, !490, !494, !495, !501, !505, !531, !560, !564, !570, !575, !579, !580}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !439, file: !42, line: 1865, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!376, !415, !376, !5}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !439, file: !42, line: 1866, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!150, !376, !415, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !451, line: 10, size: 128, elements: !452)
!451 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453, !457}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !450, file: !451, line: 11, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !180}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !450, file: !451, line: 12, baseType: !180, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !439, file: !42, line: 1867, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!171, !415, !171}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !439, file: !42, line: 1868, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!466, !415, !171}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !42, line: 581, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !439, file: !42, line: 1870, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!171, !376, !270, !171}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !439, file: !42, line: 1872, baseType: !473, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!171, !415, !376, !311, !476}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !122, line: 30, baseType: !477)
!477 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !439, file: !42, line: 1873, baseType: !479, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!171, !376, !415, !376}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !439, file: !42, line: 1874, baseType: !483, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!171, !415, !376}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !439, file: !42, line: 1875, baseType: !487, size: 64, offset: 512)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!171, !415, !376, !150}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !439, file: !42, line: 1876, baseType: !491, size: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!171, !415, !376, !311}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !439, file: !42, line: 1877, baseType: !483, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !439, file: !42, line: 1878, baseType: !496, size: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!171, !415, !376, !311, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !122, line: 16, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !122, line: 13, baseType: !105)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !439, file: !42, line: 1879, baseType: !502, size: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!171, !415, !376, !415, !376, !5}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !439, file: !42, line: 1881, baseType: !506, size: 64, offset: 832)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!171, !376, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !42, line: 219, size: 640, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !520, !528, !529, !530}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !510, file: !42, line: 220, baseType: !5, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !510, file: !42, line: 221, baseType: !311, size: 16, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !510, file: !42, line: 222, baseType: !421, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !510, file: !42, line: 223, baseType: !429, size: 32, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !510, file: !42, line: 224, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !122, line: 46, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !519)
!519 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !510, file: !42, line: 225, baseType: !521, size: 128, offset: 192)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !522, line: 13, size: 128, elements: !523)
!522 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !521, file: !522, line: 14, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !522, line: 8, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !108, line: 30, baseType: !519)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !521, file: !522, line: 15, baseType: !305, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !510, file: !42, line: 226, baseType: !521, size: 128, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !510, file: !42, line: 227, baseType: !521, size: 128, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !510, file: !42, line: 234, baseType: !346, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !439, file: !42, line: 1882, baseType: !532, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!171, !535, !537, !105, !5}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !539, line: 22, size: 1152, elements: !540)
!539 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!540 = !{!541, !542, !543, !544, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !538, file: !539, line: 23, baseType: !105, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !538, file: !539, line: 24, baseType: !311, size: 16, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !538, file: !539, line: 25, baseType: !5, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !538, file: !539, line: 26, baseType: !545, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 104, baseType: !105)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !538, file: !539, line: 27, baseType: !146, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !538, file: !539, line: 28, baseType: !146, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !538, file: !539, line: 37, baseType: !146, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !538, file: !539, line: 38, baseType: !499, size: 32, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !538, file: !539, line: 39, baseType: !499, size: 32, offset: 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !538, file: !539, line: 40, baseType: !421, size: 32, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !538, file: !539, line: 41, baseType: !429, size: 32, offset: 416)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !538, file: !539, line: 42, baseType: !517, size: 64, offset: 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !538, file: !539, line: 43, baseType: !521, size: 128, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !538, file: !539, line: 44, baseType: !521, size: 128, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !538, file: !539, line: 45, baseType: !521, size: 128, offset: 768)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !538, file: !539, line: 46, baseType: !521, size: 128, offset: 896)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !538, file: !539, line: 47, baseType: !146, size: 64, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !538, file: !539, line: 48, baseType: !146, size: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !439, file: !42, line: 1883, baseType: !561, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!301, !376, !270, !316}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !439, file: !42, line: 1884, baseType: !565, size: 64, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!171, !415, !568, !146, !146}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !42, line: 50, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !439, file: !42, line: 1886, baseType: !571, size: 64, offset: 1088)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!171, !415, !574, !171}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !439, file: !42, line: 1887, baseType: !576, size: 64, offset: 1152)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!171, !415, !376, !346, !5, !311}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !439, file: !42, line: 1890, baseType: !491, size: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !439, file: !42, line: 1891, baseType: !581, size: 64, offset: 1280)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!171, !415, !466, !171}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !416, file: !42, line: 623, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !42, line: 1416, size: 9472, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !643, !2399, !2481, !2564, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2580, !2584, !2585, !2588, !2589, !2592, !2593, !2594, !2635, !2662, !2663, !2664, !2665, !2666, !2667, !2670, !2672, !2679, !2680, !2682, !2683, !2684, !2743, !2744, !2759, !2760, !2761, !2762, !2763, !2766, !2767, !2768, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !586, file: !42, line: 1417, baseType: !121, size: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !586, file: !42, line: 1418, baseType: !499, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !586, file: !42, line: 1419, baseType: !199, size: 8, offset: 160)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !586, file: !42, line: 1420, baseType: !154, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !586, file: !42, line: 1421, baseType: !517, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !586, file: !42, line: 1422, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !42, line: 2228, size: 576, elements: !596)
!596 = !{!597, !598, !599, !606, !610, !614, !618, !622, !623, !633, !636, !637, !638, !640, !641, !642}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !595, file: !42, line: 2229, baseType: !150, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !595, file: !42, line: 2230, baseType: !171, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !595, file: !42, line: 2238, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!171, !603}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !605, line: 28, flags: DIFlagFwdDecl)
!605 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !595, file: !42, line: 2239, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !42, line: 70, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !595, file: !42, line: 2240, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!376, !594, !171, !150, !180}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !595, file: !42, line: 2242, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !585}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !595, file: !42, line: 2243, baseType: !619, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !621, line: 76, flags: DIFlagFwdDecl)
!621 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !42, line: 2244, baseType: !594, size: 64, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !595, file: !42, line: 2245, baseType: !624, size: 64, offset: 512)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !122, line: 182, size: 64, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !624, file: !122, line: 183, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !122, line: 186, size: 128, elements: !629)
!629 = !{!630, !631}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !628, file: !122, line: 187, baseType: !627, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !628, file: !122, line: 187, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !595, file: !42, line: 2247, baseType: !634, offset: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !635, line: 187, elements: !243)
!635 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !595, file: !42, line: 2248, baseType: !634, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !595, file: !42, line: 2249, baseType: !634, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !595, file: !42, line: 2250, baseType: !639, offset: 576)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, elements: !271)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !595, file: !42, line: 2252, baseType: !634, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !595, file: !42, line: 2253, baseType: !634, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !595, file: !42, line: 2254, baseType: !634, offset: 576)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !586, file: !42, line: 1423, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !42, line: 1935, size: 1472, elements: !647)
!647 = !{!648, !652, !656, !657, !661, !667, !671, !672, !673, !677, !681, !682, !683, !684, !690, !695, !696, !703, !704, !705, !706, !2383, !2398}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !646, file: !42, line: 1936, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!415, !585}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !646, file: !42, line: 1937, baseType: !653, size: 64, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !415}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !646, file: !42, line: 1938, baseType: !653, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !646, file: !42, line: 1940, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !415, !171}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !646, file: !42, line: 1941, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!171, !415, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !12, line: 40, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !646, file: !42, line: 1942, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!171, !415}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !646, file: !42, line: 1943, baseType: !653, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !646, file: !42, line: 1944, baseType: !615, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !646, file: !42, line: 1945, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!171, !585, !171}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !646, file: !42, line: 1946, baseType: !678, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!171, !585}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !646, file: !42, line: 1947, baseType: !678, size: 64, offset: 640)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !646, file: !42, line: 1948, baseType: !678, size: 64, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !646, file: !42, line: 1949, baseType: !678, size: 64, offset: 768)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !646, file: !42, line: 1950, baseType: !685, size: 64, offset: 832)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!171, !376, !688}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !42, line: 57, flags: DIFlagFwdDecl)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !646, file: !42, line: 1951, baseType: !691, size: 64, offset: 896)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!171, !585, !694, !270}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !646, file: !42, line: 1952, baseType: !615, size: 64, offset: 960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !646, file: !42, line: 1954, baseType: !697, size: 64, offset: 1024)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!171, !700, !376}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !702, line: 539, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !646, file: !42, line: 1955, baseType: !697, size: 64, offset: 1088)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !646, file: !42, line: 1956, baseType: !697, size: 64, offset: 1152)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !646, file: !42, line: 1957, baseType: !697, size: 64, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !646, file: !42, line: 1963, baseType: !707, size: 64, offset: 1280)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!171, !585, !710, !733}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !712, line: 68, size: 512, align: 128, elements: !713)
!712 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!713 = !{!714, !715, !2375, !2382}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !712, line: 69, baseType: !154, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 77, baseType: !716, size: 320, offset: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 77, size: 320, elements: !717)
!717 = !{!718, !906, !911, !939, !947, !953, !2306, !2374}
!718 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 78, baseType: !719, size: 320)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 78, size: 320, elements: !720)
!720 = !{!721, !722, !904, !905}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !719, file: !712, line: 84, baseType: !121, size: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !719, file: !712, line: 86, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !42, line: 451, size: 1216, align: 64, elements: !725)
!725 = !{!726, !727, !735, !736, !741, !756, !772, !773, !774, !775, !897, !898, !901, !902, !903}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !724, file: !42, line: 452, baseType: !415, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !724, file: !42, line: 453, baseType: !728, size: 128, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !729, line: 292, size: 128, elements: !730)
!729 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!730 = !{!731, !732, !734}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !728, file: !729, line: 293, baseType: !229)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !728, file: !729, line: 295, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !122, line: 148, baseType: !5)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !728, file: !729, line: 296, baseType: !180, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !724, file: !42, line: 454, baseType: !733, size: 32, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !724, file: !42, line: 455, baseType: !737, size: 32, offset: 224)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !122, line: 168, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 166, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !738, file: !122, line: 167, baseType: !171, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !724, file: !42, line: 460, baseType: !742, size: 128, offset: 256)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !743, line: 125, size: 128, elements: !744)
!743 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!744 = !{!745, !755}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !742, file: !743, line: 126, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !743, line: 31, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !746, file: !743, line: 32, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !743, line: 24, size: 192, align: 64, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !750, file: !743, line: 25, baseType: !154, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !750, file: !743, line: 26, baseType: !749, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !750, file: !743, line: 27, baseType: !749, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !742, file: !743, line: 127, baseType: !749, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !724, file: !42, line: 461, baseType: !757, size: 256, offset: 384)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !758, line: 35, size: 256, elements: !759)
!758 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !768, !769, !771}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !757, file: !758, line: 36, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !762, line: 13, baseType: !763)
!762 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !122, line: 175, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 173, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !764, file: !122, line: 174, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !106, line: 22, baseType: !526)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !757, file: !758, line: 42, baseType: !761, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !757, file: !758, line: 46, baseType: !770, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 29, baseType: !237)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !757, file: !758, line: 47, baseType: !121, size: 128, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !724, file: !42, line: 462, baseType: !154, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !724, file: !42, line: 463, baseType: !154, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !724, file: !42, line: 464, baseType: !154, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !724, file: !42, line: 465, baseType: !776, size: 64, offset: 832)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !42, line: 367, size: 1408, elements: !779)
!779 = !{!780, !784, !788, !792, !796, !800, !806, !812, !816, !821, !825, !829, !833, !861, !865, !871, !872, !873, !877, !882, !886, !893}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !778, file: !42, line: 368, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!171, !710, !665}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !778, file: !42, line: 369, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!171, !346, !710}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !778, file: !42, line: 372, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!171, !723, !665}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !778, file: !42, line: 375, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!171, !710}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !778, file: !42, line: 381, baseType: !797, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!171, !346, !723, !125, !5}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !778, file: !42, line: 383, baseType: !801, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !42, line: 290, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !778, file: !42, line: 385, baseType: !807, size: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!171, !346, !723, !517, !5, !5, !810, !811}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !778, file: !42, line: 388, baseType: !813, size: 64, offset: 448)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!171, !346, !723, !517, !5, !5, !710, !180}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !778, file: !42, line: 393, baseType: !817, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!820, !723, !820}
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !122, line: 125, baseType: !146)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !778, file: !42, line: 394, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !710, !5, !5}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !778, file: !42, line: 395, baseType: !826, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!171, !710, !733}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !778, file: !42, line: 396, baseType: !830, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !710}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !778, file: !42, line: 397, baseType: !834, size: 64, offset: 768)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!301, !837, !859}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !42, line: 320, size: 384, elements: !839)
!839 = !{!840, !841, !842, !846, !847, !848, !851, !852}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !838, file: !42, line: 321, baseType: !346, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !838, file: !42, line: 326, baseType: !517, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !838, file: !42, line: 327, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !837, !305, !305}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !838, file: !42, line: 328, baseType: !180, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !838, file: !42, line: 329, baseType: !171, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !838, file: !42, line: 330, baseType: !849, size: 16, offset: 288)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !108, line: 24, baseType: !208)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !838, file: !42, line: 331, baseType: !849, size: 16, offset: 304)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !42, line: 332, baseType: !853, size: 64, offset: 320)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !42, line: 332, size: 64, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !853, file: !42, line: 333, baseType: !5, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !853, file: !42, line: 334, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !42, line: 334, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !42, line: 64, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !778, file: !42, line: 402, baseType: !862, size: 64, offset: 832)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!171, !723, !710, !710, !3}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !778, file: !42, line: 404, baseType: !866, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!476, !710, !869}
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !870, line: 305, baseType: !5)
!870 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !778, file: !42, line: 405, baseType: !830, size: 64, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !778, file: !42, line: 406, baseType: !793, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !778, file: !42, line: 407, baseType: !874, size: 64, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!171, !710, !154, !154}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !778, file: !42, line: 409, baseType: !878, size: 64, offset: 1152)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !710, !881, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !778, file: !42, line: 410, baseType: !883, size: 64, offset: 1216)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!171, !723, !710}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !778, file: !42, line: 413, baseType: !887, size: 64, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!171, !890, !346, !892}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !42, line: 61, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !778, file: !42, line: 415, baseType: !894, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{null, !346}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !42, line: 466, baseType: !154, size: 64, offset: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !724, file: !42, line: 467, baseType: !899, size: 32, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !900, line: 8, baseType: !105)
!900 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !724, file: !42, line: 468, baseType: !229, offset: 992)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !724, file: !42, line: 469, baseType: !121, size: 128, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !724, file: !42, line: 470, baseType: !180, size: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !719, file: !712, line: 87, baseType: !154, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !719, file: !712, line: 94, baseType: !154, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 96, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 96, size: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !907, file: !712, line: 101, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !122, line: 143, baseType: !146)
!911 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 103, baseType: !912, size: 320)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 103, size: 320, elements: !913)
!913 = !{!914, !924, !927, !928}
!914 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !712, line: 104, baseType: !915, size: 128)
!915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !712, line: 104, size: 128, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !915, file: !712, line: 105, baseType: !121, size: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !712, line: 106, baseType: !919, size: 128)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !915, file: !712, line: 106, size: 128, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !919, file: !712, line: 107, baseType: !710, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !919, file: !712, line: 109, baseType: !171, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !919, file: !712, line: 110, baseType: !171, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !912, file: !712, line: 117, baseType: !925, size: 64, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !712, line: 117, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !912, file: !712, line: 119, baseType: !180, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !712, line: 120, baseType: !929, size: 64, offset: 256)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !712, line: 120, size: 64, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !929, file: !712, line: 121, baseType: !180, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !929, file: !712, line: 122, baseType: !154, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !929, file: !712, line: 123, baseType: !934, size: 32)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !929, file: !712, line: 123, size: 32, elements: !935)
!935 = !{!936, !937, !938}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !934, file: !712, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !934, file: !712, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !934, file: !712, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 130, baseType: !940, size: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 130, size: 192, elements: !941)
!941 = !{!942, !943, !944, !945, !946}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !940, file: !712, line: 131, baseType: !154, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !940, file: !712, line: 134, baseType: !199, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !940, file: !712, line: 135, baseType: !199, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !940, file: !712, line: 136, baseType: !737, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !940, file: !712, line: 137, baseType: !5, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 139, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 139, size: 256, elements: !949)
!949 = !{!950, !951, !952}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !948, file: !712, line: 140, baseType: !154, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !948, file: !712, line: 141, baseType: !737, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !948, file: !712, line: 143, baseType: !121, size: 128, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 145, baseType: !954, size: 256)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 145, size: 256, elements: !955)
!955 = !{!956, !957, !959, !960, !2305}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !954, file: !712, line: 146, baseType: !154, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !954, file: !712, line: 147, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !702, line: 509, baseType: !710)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !954, file: !712, line: 148, baseType: !154, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !712, line: 149, baseType: !961, size: 64, offset: 192)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !712, line: 149, size: 64, elements: !962)
!962 = !{!963, !2304}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !961, file: !712, line: 150, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !712, line: 388, size: 7296, elements: !966)
!966 = !{!967, !2300}
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !965, file: !712, line: 389, baseType: !968, size: 7296)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !965, file: !712, line: 389, size: 7296, elements: !969)
!969 = !{!970, !1088, !1089, !1090, !1094, !1095, !1096, !1097, !1098, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1139, !1145, !1148, !1178, !1179, !2284, !2285, !2288, !2289, !2290, !2293, !2294, !2295, !2298, !2299}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !968, file: !712, line: 390, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !712, line: 305, size: 1472, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !988, !989, !994, !995, !998, !1082, !1083, !1084, !1085, !1086}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !972, file: !712, line: 308, baseType: !154, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !972, file: !712, line: 309, baseType: !154, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !972, file: !712, line: 313, baseType: !971, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !972, file: !712, line: 313, baseType: !971, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !972, file: !712, line: 315, baseType: !750, size: 192, align: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !972, file: !712, line: 323, baseType: !154, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !972, file: !712, line: 327, baseType: !964, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !972, file: !712, line: 333, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !702, line: 284, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !702, line: 284, size: 64, elements: !984)
!984 = !{!985}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !983, file: !702, line: 284, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !987, line: 19, baseType: !154)
!987 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !972, file: !712, line: 334, baseType: !154, size: 64, offset: 640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !972, file: !712, line: 343, baseType: !990, size: 256, offset: 704)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !712, line: 340, size: 256, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !990, file: !712, line: 341, baseType: !750, size: 192, align: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !990, file: !712, line: 342, baseType: !154, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !972, file: !712, line: 351, baseType: !121, size: 128, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !972, file: !712, line: 353, baseType: !996, size: 64, offset: 1088)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !712, line: 353, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !972, file: !712, line: 356, baseType: !999, size: 64, offset: 1152)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !12, line: 557, size: 832, elements: !1002)
!1002 = !{!1003, !1007, !1008, !1012, !1016, !1056, !1060, !1064, !1068, !1069, !1070, !1074, !1078}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1001, file: !12, line: 558, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !971}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1001, file: !12, line: 559, baseType: !1004, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1001, file: !12, line: 560, baseType: !1009, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!171, !971, !154}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1001, file: !12, line: 561, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!171, !971}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1001, file: !12, line: 562, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !712, line: 682, baseType: !5)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !12, line: 508, size: 768, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029, !1036, !1043, !1049, !1050, !1051, !1053, !1055}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1022, file: !12, line: 509, baseType: !971, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1022, file: !12, line: 510, baseType: !5, size: 32, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1022, file: !12, line: 511, baseType: !733, size: 32, offset: 96)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1022, file: !12, line: 512, baseType: !154, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1022, file: !12, line: 513, baseType: !154, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1022, file: !12, line: 514, baseType: !1030, size: 64, offset: 256)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !702, line: 385, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 385, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1032, file: !702, line: 385, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !987, line: 15, baseType: !154)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1022, file: !12, line: 516, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !702, line: 359, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 359, size: 64, elements: !1040)
!1040 = !{!1041}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1039, file: !702, line: 359, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !987, line: 16, baseType: !154)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1022, file: !12, line: 519, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !987, line: 21, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 21, size: 64, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1045, file: !987, line: 21, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !987, line: 14, baseType: !154)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1022, file: !12, line: 521, baseType: !710, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1022, file: !12, line: 522, baseType: !710, size: 64, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1022, file: !12, line: 528, baseType: !1052, size: 64, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1022, file: !12, line: 532, baseType: !1054, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1022, file: !12, line: 536, baseType: !958, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1001, file: !12, line: 563, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1020, !1021, !11}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1001, file: !12, line: 565, baseType: !1061, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1021, !154, !154}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1001, file: !12, line: 567, baseType: !1065, size: 64, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!154, !971}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1001, file: !12, line: 571, baseType: !1017, size: 64, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1001, file: !12, line: 574, baseType: !1017, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1001, file: !12, line: 579, baseType: !1071, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!171, !971, !154, !180, !171, !171}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1001, file: !12, line: 585, baseType: !1075, size: 64, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!150, !971}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1001, file: !12, line: 615, baseType: !1079, size: 64, offset: 768)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!710, !971, !154}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !972, file: !712, line: 359, baseType: !154, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !972, file: !712, line: 361, baseType: !346, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !972, file: !712, line: 362, baseType: !180, size: 64, offset: 1344)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !972, file: !712, line: 365, baseType: !761, size: 64, offset: 1408)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !972, file: !712, line: 373, baseType: !1087, offset: 1472)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !712, line: 296, elements: !243)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !968, file: !712, line: 391, baseType: !746, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !968, file: !712, line: 392, baseType: !146, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !968, file: !712, line: 394, baseType: !1091, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!154, !346, !154, !154, !154, !154}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !968, file: !712, line: 398, baseType: !154, size: 64, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !968, file: !712, line: 399, baseType: !154, size: 64, offset: 320)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !968, file: !712, line: 405, baseType: !154, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !968, file: !712, line: 406, baseType: !154, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !968, file: !712, line: 407, baseType: !1099, size: 64, offset: 512)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !702, line: 286, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 286, size: 64, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1101, file: !702, line: 286, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !987, line: 18, baseType: !154)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !968, file: !712, line: 416, baseType: !737, size: 32, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !968, file: !712, line: 428, baseType: !737, size: 32, offset: 608)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !968, file: !712, line: 437, baseType: !737, size: 32, offset: 640)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !968, file: !712, line: 447, baseType: !737, size: 32, offset: 672)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !968, file: !712, line: 450, baseType: !761, size: 64, offset: 704)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !968, file: !712, line: 452, baseType: !171, size: 32, offset: 768)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !968, file: !712, line: 454, baseType: !229, offset: 800)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !968, file: !712, line: 457, baseType: !757, size: 256, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !968, file: !712, line: 459, baseType: !121, size: 128, offset: 1088)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !968, file: !712, line: 466, baseType: !154, size: 64, offset: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !968, file: !712, line: 467, baseType: !154, size: 64, offset: 1280)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !968, file: !712, line: 469, baseType: !154, size: 64, offset: 1344)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !968, file: !712, line: 470, baseType: !154, size: 64, offset: 1408)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !968, file: !712, line: 471, baseType: !763, size: 64, offset: 1472)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !968, file: !712, line: 472, baseType: !154, size: 64, offset: 1536)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !968, file: !712, line: 473, baseType: !154, size: 64, offset: 1600)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !968, file: !712, line: 474, baseType: !154, size: 64, offset: 1664)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !968, file: !712, line: 475, baseType: !154, size: 64, offset: 1728)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !968, file: !712, line: 477, baseType: !229, offset: 1792)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !968, file: !712, line: 478, baseType: !154, size: 64, offset: 1792)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !968, file: !712, line: 478, baseType: !154, size: 64, offset: 1856)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !968, file: !712, line: 478, baseType: !154, size: 64, offset: 1920)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !968, file: !712, line: 478, baseType: !154, size: 64, offset: 1984)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !968, file: !712, line: 479, baseType: !154, size: 64, offset: 2048)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !968, file: !712, line: 479, baseType: !154, size: 64, offset: 2112)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !968, file: !712, line: 479, baseType: !154, size: 64, offset: 2176)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !968, file: !712, line: 480, baseType: !154, size: 64, offset: 2240)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !968, file: !712, line: 480, baseType: !154, size: 64, offset: 2304)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !968, file: !712, line: 480, baseType: !154, size: 64, offset: 2368)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !968, file: !712, line: 480, baseType: !154, size: 64, offset: 2432)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !968, file: !712, line: 482, baseType: !1136, size: 2816, offset: 2496)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 2816, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 44)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !968, file: !712, line: 488, baseType: !1140, size: 256, offset: 5312)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1141, line: 60, size: 256, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1140, file: !1141, line: 61, baseType: !1144, size: 256)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 256, elements: !159)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !968, file: !712, line: 490, baseType: !1146, size: 64, offset: 5568)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !712, line: 490, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !968, file: !712, line: 493, baseType: !1149, size: 896, offset: 5632)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1150, line: 53, baseType: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1150, line: 13, size: 896, elements: !1152)
!1152 = !{!1153, !1154, !1155, !1156, !1159, !1160, !1167, !1168, !1172, !1173, !1174}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1151, file: !1150, line: 18, baseType: !146, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1151, file: !1150, line: 28, baseType: !763, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1151, file: !1150, line: 31, baseType: !757, size: 256, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1151, file: !1150, line: 32, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1150, line: 32, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1151, file: !1150, line: 37, baseType: !208, size: 16, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1151, file: !1150, line: 40, baseType: !1161, size: 192, offset: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1162, line: 53, size: 192, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1161, file: !1162, line: 54, baseType: !761, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1161, file: !1162, line: 55, baseType: !229, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1161, file: !1162, line: 59, baseType: !121, size: 128, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1151, file: !1150, line: 41, baseType: !180, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1151, file: !1150, line: 42, baseType: !1169, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1171)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1150, line: 42, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1151, file: !1150, line: 44, baseType: !737, size: 32, offset: 832)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1151, file: !1150, line: 50, baseType: !849, size: 16, offset: 864)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1151, file: !1150, line: 51, baseType: !1175, size: 16, offset: 880)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !106, line: 18, baseType: !1176)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !108, line: 23, baseType: !1177)
!1177 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !712, line: 495, baseType: !154, size: 64, offset: 6528)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !968, file: !712, line: 497, baseType: !1180, size: 64, offset: 6592)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !712, line: 381, size: 384, elements: !1182)
!1182 = !{!1183, !1184, !2283}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1181, file: !712, line: 382, baseType: !737, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1181, file: !712, line: 383, baseType: !1185, size: 128, offset: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !712, line: 376, size: 128, elements: !1186)
!1186 = !{!1187, !2281}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1185, file: !712, line: 377, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1190, line: 640, size: 48640, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1191 = !{!1192, !1198, !1200, !1201, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1218, !1236, !1247, !1332, !1333, !1334, !1345, !1346, !1348, !1349, !1350, !1351, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1429, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1467, !1469, !1470, !1471, !1483, !1484, !1485, !1486, !1487, !1488, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1512, !1517, !1701, !1702, !1703, !1704, !1708, !1711, !1714, !1717, !1720, !1723, !1824, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1870, !1871, !1872, !1873, !1874, !1879, !1880, !1881, !1884, !1885, !1888, !1891, !1894, !1897, !1940, !1943, !1944, !2023, !2024, !2027, !2028, !2031, !2032, !2033, !2037, !2038, !2039, !2052, !2053, !2054, !2064, !2069, !2072, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1189, file: !1190, line: 646, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1194, line: 56, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1193, file: !1194, line: 57, baseType: !154, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1193, file: !1194, line: 58, baseType: !105, size: 32, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1189, file: !1190, line: 649, baseType: !1199, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1189, file: !1190, line: 657, baseType: !180, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1189, file: !1190, line: 658, baseType: !1202, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1203, line: 113, baseType: !1204)
!1203 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1203, line: 111, size: 32, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1204, file: !1203, line: 112, baseType: !737, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1189, file: !1190, line: 660, baseType: !5, size: 32, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1189, file: !1190, line: 661, baseType: !5, size: 32, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1189, file: !1190, line: 684, baseType: !171, size: 32, offset: 352)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1189, file: !1190, line: 686, baseType: !171, size: 32, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1189, file: !1190, line: 687, baseType: !171, size: 32, offset: 416)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1189, file: !1190, line: 688, baseType: !171, size: 32, offset: 448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1189, file: !1190, line: 689, baseType: !5, size: 32, offset: 480)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1189, file: !1190, line: 691, baseType: !1215, size: 64, offset: 512)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1190, line: 691, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1189, file: !1190, line: 692, baseType: !1219, size: 832, offset: 576)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1190, line: 451, size: 832, elements: !1220)
!1220 = !{!1221, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1219, file: !1190, line: 453, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1190, line: 325, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1222, file: !1190, line: 326, baseType: !154, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1222, file: !1190, line: 327, baseType: !105, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1219, file: !1190, line: 454, baseType: !750, size: 192, align: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1219, file: !1190, line: 455, baseType: !121, size: 128, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1219, file: !1190, line: 456, baseType: !5, size: 32, offset: 448)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1219, file: !1190, line: 458, baseType: !146, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1219, file: !1190, line: 459, baseType: !146, size: 64, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1219, file: !1190, line: 460, baseType: !146, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1219, file: !1190, line: 461, baseType: !146, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1219, file: !1190, line: 463, baseType: !146, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1219, file: !1190, line: 465, baseType: !1235, offset: 832)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1190, line: 415, elements: !243)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1189, file: !1190, line: 693, baseType: !1237, size: 384, offset: 1408)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1190, line: 489, size: 384, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1237, file: !1190, line: 490, baseType: !121, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1237, file: !1190, line: 491, baseType: !154, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1237, file: !1190, line: 492, baseType: !154, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1237, file: !1190, line: 493, baseType: !5, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1237, file: !1190, line: 494, baseType: !208, size: 16, offset: 288)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1237, file: !1190, line: 495, baseType: !208, size: 16, offset: 304)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1237, file: !1190, line: 497, baseType: !1246, size: 64, offset: 320)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1189, file: !1190, line: 697, baseType: !1248, size: 1792, offset: 1792)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1190, line: 507, size: 1792, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1329, !1330}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1248, file: !1190, line: 508, baseType: !750, size: 192, align: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1248, file: !1190, line: 515, baseType: !146, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1248, file: !1190, line: 516, baseType: !146, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1248, file: !1190, line: 517, baseType: !146, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1248, file: !1190, line: 518, baseType: !146, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1248, file: !1190, line: 519, baseType: !146, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1248, file: !1190, line: 526, baseType: !767, size: 64, offset: 512)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1248, file: !1190, line: 527, baseType: !146, size: 64, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !1190, line: 528, baseType: !5, size: 32, offset: 640)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1248, file: !1190, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1248, file: !1190, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1248, file: !1190, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1248, file: !1190, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1248, file: !1190, line: 563, baseType: !1264, size: 512, offset: 704)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !18, line: 118, size: 512, elements: !1265)
!1265 = !{!1266, !1274, !1275, !1280, !1323, !1326, !1327, !1328}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1264, file: !18, line: 119, baseType: !1267, size: 256)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1268, line: 9, size: 256, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1267, file: !1268, line: 10, baseType: !750, size: 192, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1267, file: !1268, line: 11, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1273, line: 29, baseType: !767)
!1273 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1264, file: !18, line: 120, baseType: !1272, size: 64, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1264, file: !18, line: 121, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!17, !1279}
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1264, file: !18, line: 122, baseType: !1281, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !18, line: 159, size: 512, align: 512, elements: !1283)
!1283 = !{!1284, !1304, !1305, !1308, !1313, !1314, !1318, !1322}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1282, file: !18, line: 160, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !18, line: 214, size: 4608, align: 512, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !18, line: 215, baseType: !770)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1286, file: !18, line: 216, baseType: !5, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1286, file: !18, line: 217, baseType: !5, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1286, file: !18, line: 218, baseType: !5, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1286, file: !18, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1286, file: !18, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1286, file: !18, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1286, file: !18, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1286, file: !18, line: 233, baseType: !1272, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1286, file: !18, line: 234, baseType: !1279, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1286, file: !18, line: 235, baseType: !1272, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1286, file: !18, line: 236, baseType: !1279, size: 64, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1286, file: !18, line: 237, baseType: !1301, size: 4096, offset: 512)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1282, size: 4096, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 8)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1282, file: !18, line: 161, baseType: !5, size: 32, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1282, file: !18, line: 162, baseType: !1306, size: 32, offset: 96)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !122, line: 27, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !171)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1282, file: !18, line: 163, baseType: !1309, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !382, line: 276, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !382, line: 276, size: 32, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1310, file: !382, line: 276, baseType: !386, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1282, file: !18, line: 164, baseType: !1279, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1282, file: !18, line: 165, baseType: !1315, size: 128, offset: 256)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1268, line: 14, size: 128, elements: !1316)
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1315, file: !1268, line: 15, baseType: !742, size: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1282, file: !18, line: 166, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1272}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1282, file: !18, line: 167, baseType: !1272, size: 64, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1264, file: !18, line: 123, baseType: !1324, size: 8, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !108, line: 21, baseType: !199)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1264, file: !18, line: 124, baseType: !1324, size: 8, offset: 456)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1264, file: !18, line: 125, baseType: !1324, size: 8, offset: 464)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1264, file: !18, line: 126, baseType: !1324, size: 8, offset: 472)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1248, file: !1190, line: 572, baseType: !1264, size: 512, offset: 1216)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1248, file: !1190, line: 580, baseType: !1331, size: 64, offset: 1728)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1189, file: !1190, line: 721, baseType: !5, size: 32, offset: 3584)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1189, file: !1190, line: 722, baseType: !171, size: 32, offset: 3616)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1189, file: !1190, line: 723, baseType: !1335, size: 64, offset: 3648)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1338, line: 17, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1338, line: 17, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1339, file: !1338, line: 17, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 1)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1189, file: !1190, line: 724, baseType: !1337, size: 64, offset: 3712)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1189, file: !1190, line: 749, baseType: !1347, offset: 3776)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1190, line: 290, elements: !243)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1189, file: !1190, line: 751, baseType: !121, size: 128, offset: 3776)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1189, file: !1190, line: 757, baseType: !964, size: 64, offset: 3904)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1189, file: !1190, line: 758, baseType: !964, size: 64, offset: 3968)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1189, file: !1190, line: 761, baseType: !1352, size: 320, offset: 4032)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1141, line: 34, size: 320, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1352, file: !1141, line: 35, baseType: !146, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1352, file: !1141, line: 36, baseType: !1356, size: 256, offset: 64)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 256, elements: !159)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1189, file: !1190, line: 766, baseType: !171, size: 32, offset: 4352)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1189, file: !1190, line: 767, baseType: !171, size: 32, offset: 4384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1189, file: !1190, line: 768, baseType: !171, size: 32, offset: 4416)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1189, file: !1190, line: 770, baseType: !171, size: 32, offset: 4448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1189, file: !1190, line: 772, baseType: !154, size: 64, offset: 4480)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1189, file: !1190, line: 775, baseType: !5, size: 32, offset: 4544)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1189, file: !1190, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1189, file: !1190, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1189, file: !1190, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1189, file: !1190, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1189, file: !1190, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1189, file: !1190, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1189, file: !1190, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1189, file: !1190, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1189, file: !1190, line: 831, baseType: !154, size: 64, offset: 4672)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1189, file: !1190, line: 833, baseType: !1373, size: 384, offset: 4736)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !23, line: 25, size: 384, elements: !1374)
!1374 = !{!1375, !1380}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1373, file: !23, line: 26, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!305, !1379}
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !23, line: 27, baseType: !1381, size: 320, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1373, file: !23, line: 27, size: 320, elements: !1382)
!1382 = !{!1383, !1392, !1419}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1381, file: !23, line: 36, baseType: !1384, size: 320)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !23, line: 29, size: 320, elements: !1385)
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1384, file: !23, line: 30, baseType: !185, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1384, file: !23, line: 31, baseType: !105, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !23, line: 32, baseType: !105, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1384, file: !23, line: 33, baseType: !105, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1384, file: !23, line: 34, baseType: !146, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1384, file: !23, line: 35, baseType: !185, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1381, file: !23, line: 46, baseType: !1393, size: 192)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !23, line: 38, size: 192, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1418}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1393, file: !23, line: 39, baseType: !1306, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1393, file: !23, line: 40, baseType: !22, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1393, file: !23, line: 41, baseType: !1398, size: 64, offset: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1393, file: !23, line: 41, size: 64, elements: !1399)
!1399 = !{!1400, !1408}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1398, file: !23, line: 42, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1403, line: 7, size: 128, elements: !1404)
!1403 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1404 = !{!1405, !1407}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1402, file: !1403, line: 8, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !519)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1402, file: !1403, line: 9, baseType: !519, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1398, file: !23, line: 43, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1411, line: 7, size: 64, elements: !1412)
!1411 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1412 = !{!1413, !1417}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1410, file: !1411, line: 8, baseType: !1414, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1411, line: 5, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !106, line: 20, baseType: !1416)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !108, line: 26, baseType: !171)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1410, file: !1411, line: 9, baseType: !1415, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1393, file: !23, line: 45, baseType: !146, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1381, file: !23, line: 54, baseType: !1420, size: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !23, line: 48, size: 256, elements: !1421)
!1421 = !{!1422, !1425, !1426, !1427, !1428}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1420, file: !23, line: 49, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !23, line: 14, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1420, file: !23, line: 50, baseType: !171, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1420, file: !23, line: 51, baseType: !171, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1420, file: !23, line: 52, baseType: !154, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1420, file: !23, line: 53, baseType: !154, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1189, file: !1190, line: 835, baseType: !1430, size: 32, offset: 5120)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !122, line: 22, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !171)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1189, file: !1190, line: 836, baseType: !1430, size: 32, offset: 5152)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1189, file: !1190, line: 840, baseType: !154, size: 64, offset: 5184)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1189, file: !1190, line: 849, baseType: !1188, size: 64, offset: 5248)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1189, file: !1190, line: 852, baseType: !1188, size: 64, offset: 5312)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1189, file: !1190, line: 857, baseType: !121, size: 128, offset: 5376)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1189, file: !1190, line: 858, baseType: !121, size: 128, offset: 5504)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1189, file: !1190, line: 859, baseType: !1188, size: 64, offset: 5632)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1189, file: !1190, line: 867, baseType: !121, size: 128, offset: 5696)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1189, file: !1190, line: 868, baseType: !121, size: 128, offset: 5824)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1189, file: !1190, line: 871, baseType: !1442, size: 64, offset: 5952)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !51, line: 59, size: 768, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1450, !1451, !1458, !1459}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1443, file: !51, line: 61, baseType: !1202, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1443, file: !51, line: 62, baseType: !5, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !51, line: 63, baseType: !229, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1443, file: !51, line: 65, baseType: !1449, size: 256, offset: 64)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !624, size: 256, elements: !159)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1443, file: !51, line: 66, baseType: !624, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1443, file: !51, line: 68, baseType: !1452, size: 128, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1453, line: 40, baseType: !1454)
!1453 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1453, line: 36, size: 128, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1453, line: 37, baseType: !229)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1454, file: !1453, line: 38, baseType: !121, size: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1443, file: !51, line: 69, baseType: !359, size: 128, align: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1443, file: !51, line: 70, baseType: !1460, size: 128, offset: 640)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1461, size: 128, elements: !1343)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !51, line: 54, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1461, file: !51, line: 55, baseType: !171, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1461, file: !51, line: 56, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !51, line: 56, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1189, file: !1190, line: 872, baseType: !1468, size: 512, offset: 6016)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 512, elements: !159)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1189, file: !1190, line: 873, baseType: !121, size: 128, offset: 6528)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1189, file: !1190, line: 874, baseType: !121, size: 128, offset: 6656)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1189, file: !1190, line: 876, baseType: !1472, size: 64, offset: 6784)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1474, line: 26, size: 192, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1473, file: !1474, line: 27, baseType: !5, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1473, file: !1474, line: 28, baseType: !1478, size: 128, offset: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1479, line: 43, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1478, file: !1479, line: 44, baseType: !770)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1478, file: !1479, line: 45, baseType: !121, size: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1189, file: !1190, line: 879, baseType: !694, size: 64, offset: 6848)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1189, file: !1190, line: 882, baseType: !694, size: 64, offset: 6912)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1189, file: !1190, line: 884, baseType: !146, size: 64, offset: 6976)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1189, file: !1190, line: 885, baseType: !146, size: 64, offset: 7040)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1189, file: !1190, line: 890, baseType: !146, size: 64, offset: 7104)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1189, file: !1190, line: 891, baseType: !1489, size: 128, offset: 7168)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1190, line: 242, size: 128, elements: !1490)
!1490 = !{!1491, !1492, !1493}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1489, file: !1190, line: 244, baseType: !146, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1489, file: !1190, line: 245, baseType: !146, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1489, file: !1190, line: 246, baseType: !770, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1189, file: !1190, line: 900, baseType: !154, size: 64, offset: 7296)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1189, file: !1190, line: 901, baseType: !154, size: 64, offset: 7360)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1189, file: !1190, line: 904, baseType: !146, size: 64, offset: 7424)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1189, file: !1190, line: 907, baseType: !146, size: 64, offset: 7488)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1189, file: !1190, line: 910, baseType: !154, size: 64, offset: 7552)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1189, file: !1190, line: 911, baseType: !154, size: 64, offset: 7616)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1189, file: !1190, line: 914, baseType: !1501, size: 640, offset: 7680)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1502, line: 123, size: 640, elements: !1503)
!1502 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !{!1504, !1510, !1511}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1501, file: !1502, line: 124, baseType: !1505, size: 576)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 576, elements: !271)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1502, line: 108, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1506, file: !1502, line: 109, baseType: !146, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1506, file: !1502, line: 110, baseType: !1315, size: 128, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1501, file: !1502, line: 125, baseType: !5, size: 32, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1501, file: !1502, line: 126, baseType: !5, size: 32, offset: 608)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1189, file: !1190, line: 917, baseType: !1513, size: 192, offset: 8320)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1502, line: 134, size: 192, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1513, file: !1502, line: 135, baseType: !359, size: 128, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1513, file: !1502, line: 136, baseType: !5, size: 32, offset: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1189, file: !1190, line: 923, baseType: !1518, size: 64, offset: 8512)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1521, line: 111, size: 1280, elements: !1522)
!1521 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1522 = !{!1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1542, !1543, !1544, !1545, !1546, !1547, !1654, !1655, !1656, !1657, !1683, !1686, !1696}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1520, file: !1521, line: 112, baseType: !737, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1520, file: !1521, line: 120, baseType: !421, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1520, file: !1521, line: 121, baseType: !429, size: 32, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1520, file: !1521, line: 122, baseType: !421, size: 32, offset: 96)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1520, file: !1521, line: 123, baseType: !429, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1520, file: !1521, line: 124, baseType: !421, size: 32, offset: 160)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1520, file: !1521, line: 125, baseType: !429, size: 32, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1520, file: !1521, line: 126, baseType: !421, size: 32, offset: 224)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1520, file: !1521, line: 127, baseType: !429, size: 32, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1520, file: !1521, line: 128, baseType: !5, size: 32, offset: 288)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1520, file: !1521, line: 129, baseType: !1534, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1535, line: 26, baseType: !1536)
!1535 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1535, line: 24, size: 64, elements: !1537)
!1537 = !{!1538}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1536, file: !1535, line: 25, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !1540)
!1540 = !{!1541}
!1541 = !DISubrange(count: 2)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1520, file: !1521, line: 130, baseType: !1534, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1520, file: !1521, line: 131, baseType: !1534, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1520, file: !1521, line: 132, baseType: !1534, size: 64, offset: 512)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1520, file: !1521, line: 133, baseType: !1534, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1520, file: !1521, line: 135, baseType: !199, size: 8, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1520, file: !1521, line: 137, baseType: !1548, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1550, line: 189, size: 1664, elements: !1551)
!1550 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1551 = !{!1552, !1553, !1556, !1561, !1562, !1565, !1566, !1571, !1572, !1573, !1574, !1576, !1577, !1578, !1579, !1580, !1618, !1639}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1549, file: !1550, line: 190, baseType: !1202, size: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1549, file: !1550, line: 191, baseType: !1554, size: 32, offset: 32)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1550, line: 28, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !122, line: 98, baseType: !1415)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 192, baseType: !1557, size: 192, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 192, size: 192, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1557, file: !1550, line: 193, baseType: !121, size: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1557, file: !1550, line: 194, baseType: !750, size: 192, align: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1549, file: !1550, line: 199, baseType: !757, size: 256, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1549, file: !1550, line: 200, baseType: !1563, size: 64, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1550, line: 200, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1549, file: !1550, line: 201, baseType: !180, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 202, baseType: !1567, size: 64, offset: 640)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 202, size: 64, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1567, file: !1550, line: 203, baseType: !525, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1567, file: !1550, line: 204, baseType: !525, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1549, file: !1550, line: 206, baseType: !525, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1549, file: !1550, line: 207, baseType: !421, size: 32, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1549, file: !1550, line: 208, baseType: !429, size: 32, offset: 800)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1549, file: !1550, line: 209, baseType: !1575, size: 32, offset: 832)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1550, line: 31, baseType: !545)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1549, file: !1550, line: 210, baseType: !208, size: 16, offset: 864)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1549, file: !1550, line: 211, baseType: !208, size: 16, offset: 880)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1549, file: !1550, line: 215, baseType: !1177, size: 16, offset: 896)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1549, file: !1550, line: 222, baseType: !154, size: 64, offset: 960)
!1580 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 239, baseType: !1581, size: 320, offset: 1024)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 239, size: 320, elements: !1582)
!1582 = !{!1583, !1610}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1581, file: !1550, line: 240, baseType: !1584, size: 320)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1550, line: 108, size: 320, elements: !1585)
!1585 = !{!1586, !1587, !1599, !1602, !1609}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1584, file: !1550, line: 110, baseType: !154, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1550, line: 111, baseType: !1588, size: 64, offset: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !1550, line: 111, size: 64, elements: !1589)
!1589 = !{!1590, !1598}
!1590 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1550, line: 112, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1588, file: !1550, line: 112, size: 64, elements: !1592)
!1592 = !{!1593, !1594}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1591, file: !1550, line: 114, baseType: !849, size: 16)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1591, file: !1550, line: 115, baseType: !1595, size: 48, offset: 16)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 48, elements: !1596)
!1596 = !{!1597}
!1597 = !DISubrange(count: 6)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1588, file: !1550, line: 121, baseType: !154, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1584, file: !1550, line: 123, baseType: !1600, size: 64, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1550, line: 96, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1584, file: !1550, line: 124, baseType: !1603, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1550, line: 102, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1604, file: !1550, line: 103, baseType: !359, size: 128, align: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1550, line: 104, baseType: !1202, size: 32, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1604, file: !1550, line: 105, baseType: !476, size: 8, offset: 160)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1584, file: !1550, line: 125, baseType: !150, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1581, file: !1550, line: 241, baseType: !1611, size: 320)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1581, file: !1550, line: 241, size: 320, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1611, file: !1550, line: 242, baseType: !154, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1611, file: !1550, line: 243, baseType: !154, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1611, file: !1550, line: 244, baseType: !1600, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1611, file: !1550, line: 245, baseType: !1603, size: 64, offset: 192)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1611, file: !1550, line: 246, baseType: !270, size: 64, offset: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1550, line: 254, baseType: !1619, size: 256, offset: 1344)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1550, line: 254, size: 256, elements: !1620)
!1620 = !{!1621, !1627}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1619, file: !1550, line: 255, baseType: !1622, size: 256)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1550, line: 128, size: 256, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1622, file: !1550, line: 129, baseType: !180, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1622, file: !1550, line: 130, baseType: !1626, size: 256)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !159)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1550, line: 256, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !1550, line: 256, size: 256, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1628, file: !1550, line: 258, baseType: !121, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1628, file: !1550, line: 259, baseType: !1632, size: 128, offset: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1633, line: 22, size: 128, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1638}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1632, file: !1633, line: 23, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1633, line: 23, flags: DIFlagFwdDecl)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1632, file: !1633, line: 24, baseType: !154, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1549, file: !1550, line: 274, baseType: !1640, size: 64, offset: 1600)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1550, line: 170, size: 192, elements: !1642)
!1642 = !{!1643, !1652, !1653}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1641, file: !1550, line: 171, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1550, line: 165, baseType: !1645)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!171, !1548, !1648, !1650, !1548}
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
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1659, file: !1660, line: 14, baseType: !1202, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1659, file: !1660, line: 15, baseType: !737, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1659, file: !1660, line: 16, baseType: !737, size: 32, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1659, file: !1660, line: 21, baseType: !761, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1659, file: !1660, line: 27, baseType: !154, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1659, file: !1660, line: 28, baseType: !154, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1659, file: !1660, line: 29, baseType: !761, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1659, file: !1660, line: 32, baseType: !628, size: 128, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1659, file: !1660, line: 33, baseType: !421, size: 32, offset: 512)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1659, file: !1660, line: 37, baseType: !761, size: 64, offset: 576)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1659, file: !1660, line: 44, baseType: !1673, size: 256, offset: 640)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1674, line: 15, size: 256, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1674, line: 16, baseType: !770)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1673, file: !1674, line: 18, baseType: !171, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1673, file: !1674, line: 19, baseType: !171, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1673, file: !1674, line: 20, baseType: !171, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1673, file: !1674, line: 21, baseType: !171, size: 32, offset: 96)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1673, file: !1674, line: 22, baseType: !154, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1673, file: !1674, line: 23, baseType: !154, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1520, file: !1521, line: 146, baseType: !1684, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !712, line: 516, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1520, file: !1521, line: 147, baseType: !1687, size: 64, offset: 1088)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1521, line: 25, size: 64, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1688, file: !1521, line: 26, baseType: !737, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1688, file: !1521, line: 27, baseType: !171, size: 32, offset: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1688, file: !1521, line: 28, baseType: !1693, offset: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 0)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1520, file: !1521, line: 149, baseType: !1697, size: 128, offset: 1152)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1520, file: !1521, line: 149, size: 128, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1697, file: !1521, line: 150, baseType: !171, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1697, file: !1521, line: 151, baseType: !359, size: 128, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1189, file: !1190, line: 926, baseType: !1518, size: 64, offset: 8576)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1189, file: !1190, line: 929, baseType: !1518, size: 64, offset: 8640)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1189, file: !1190, line: 933, baseType: !1548, size: 64, offset: 8704)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1189, file: !1190, line: 943, baseType: !1705, size: 128, offset: 8768)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 16)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1189, file: !1190, line: 945, baseType: !1709, size: 64, offset: 8896)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1190, line: 49, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1189, file: !1190, line: 956, baseType: !1712, size: 64, offset: 8960)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1190, line: 45, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1189, file: !1190, line: 959, baseType: !1715, size: 64, offset: 9024)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1190, line: 959, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1189, file: !1190, line: 962, baseType: !1718, size: 64, offset: 9088)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1190, line: 66, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1189, file: !1190, line: 966, baseType: !1721, size: 64, offset: 9152)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1190, line: 50, flags: DIFlagFwdDecl)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1189, file: !1190, line: 969, baseType: !1724, size: 64, offset: 9216)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1726, line: 82, size: 7296, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1763, !1772, !1773, !1775, !1776, !1777, !1780, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1810, !1811, !1818, !1819, !1820, !1821, !1822, !1823}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1725, file: !1726, line: 83, baseType: !1202, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1725, file: !1726, line: 84, baseType: !737, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1725, file: !1726, line: 85, baseType: !171, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1725, file: !1726, line: 86, baseType: !121, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1725, file: !1726, line: 88, baseType: !1452, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1725, file: !1726, line: 91, baseType: !1188, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1725, file: !1726, line: 94, baseType: !1735, size: 192, offset: 448)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1736, line: 30, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1735, file: !1736, line: 31, baseType: !121, size: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1735, file: !1736, line: 32, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1741, line: 25, baseType: !1742)
!1741 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 23, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1742, file: !1741, line: 24, baseType: !1342, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1725, file: !1726, line: 97, baseType: !624, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1725, file: !1726, line: 100, baseType: !171, size: 32, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1725, file: !1726, line: 106, baseType: !171, size: 32, offset: 736)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1725, file: !1726, line: 107, baseType: !1188, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1725, file: !1726, line: 110, baseType: !171, size: 32, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1726, line: 111, baseType: !5, size: 32, offset: 864)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1725, file: !1726, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1725, file: !1726, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1725, file: !1726, line: 128, baseType: !171, size: 32, offset: 928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1725, file: !1726, line: 129, baseType: !121, size: 128, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1725, file: !1726, line: 132, baseType: !1264, size: 512, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1725, file: !1726, line: 133, baseType: !1272, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1725, file: !1726, line: 140, baseType: !1758, size: 256, offset: 1664)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !1540)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1726, line: 38, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1759, file: !1726, line: 39, baseType: !146, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1759, file: !1726, line: 40, baseType: !146, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1725, file: !1726, line: 146, baseType: !1764, size: 192, offset: 1920)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1726, line: 66, size: 192, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1764, file: !1726, line: 67, baseType: !1767, size: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1726, line: 47, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1767, file: !1726, line: 48, baseType: !763, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1767, file: !1726, line: 49, baseType: !763, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1767, file: !1726, line: 50, baseType: !763, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1725, file: !1726, line: 150, baseType: !1501, size: 640, offset: 2112)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1725, file: !1726, line: 153, baseType: !1774, size: 256, offset: 2752)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 256, elements: !159)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1725, file: !1726, line: 159, baseType: !1442, size: 64, offset: 3008)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1725, file: !1726, line: 162, baseType: !171, size: 32, offset: 3072)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1725, file: !1726, line: 164, baseType: !1778, size: 64, offset: 3136)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1726, line: 164, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1725, file: !1726, line: 175, baseType: !1781, size: 32, offset: 3200)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !382, line: 805, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 798, size: 32, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1782, file: !382, line: 803, baseType: !381, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !382, line: 804, baseType: !229, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1725, file: !1726, line: 176, baseType: !146, size: 64, offset: 3264)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1725, file: !1726, line: 176, baseType: !146, size: 64, offset: 3328)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1725, file: !1726, line: 176, baseType: !146, size: 64, offset: 3392)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1725, file: !1726, line: 176, baseType: !146, size: 64, offset: 3456)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1725, file: !1726, line: 177, baseType: !146, size: 64, offset: 3520)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1725, file: !1726, line: 178, baseType: !146, size: 64, offset: 3584)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1725, file: !1726, line: 179, baseType: !1489, size: 128, offset: 3648)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1725, file: !1726, line: 180, baseType: !154, size: 64, offset: 3776)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1725, file: !1726, line: 180, baseType: !154, size: 64, offset: 3840)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1725, file: !1726, line: 180, baseType: !154, size: 64, offset: 3904)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1725, file: !1726, line: 180, baseType: !154, size: 64, offset: 3968)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1725, file: !1726, line: 181, baseType: !154, size: 64, offset: 4032)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1725, file: !1726, line: 181, baseType: !154, size: 64, offset: 4096)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1725, file: !1726, line: 181, baseType: !154, size: 64, offset: 4160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1725, file: !1726, line: 181, baseType: !154, size: 64, offset: 4224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1725, file: !1726, line: 182, baseType: !154, size: 64, offset: 4288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1725, file: !1726, line: 182, baseType: !154, size: 64, offset: 4352)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1725, file: !1726, line: 182, baseType: !154, size: 64, offset: 4416)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1725, file: !1726, line: 182, baseType: !154, size: 64, offset: 4480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1725, file: !1726, line: 183, baseType: !154, size: 64, offset: 4544)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1725, file: !1726, line: 183, baseType: !154, size: 64, offset: 4608)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1725, file: !1726, line: 184, baseType: !1808, offset: 4672)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1809, line: 12, elements: !243)
!1809 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1725, file: !1726, line: 192, baseType: !104, size: 64, offset: 4672)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1725, file: !1726, line: 203, baseType: !1812, size: 2048, offset: 4736)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 2048, elements: !1706)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1814, line: 43, size: 128, elements: !1815)
!1814 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1813, file: !1814, line: 44, baseType: !318, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1813, file: !1814, line: 45, baseType: !318, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1725, file: !1726, line: 220, baseType: !476, size: 8, offset: 6784)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1725, file: !1726, line: 221, baseType: !1177, size: 16, offset: 6800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1725, file: !1726, line: 222, baseType: !1177, size: 16, offset: 6816)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1725, file: !1726, line: 224, baseType: !964, size: 64, offset: 6848)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1725, file: !1726, line: 227, baseType: !1161, size: 192, offset: 6912)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1725, file: !1726, line: 233, baseType: !1161, size: 192, offset: 7104)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1189, file: !1190, line: 970, baseType: !1825, size: 64, offset: 9280)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1726, line: 20, size: 16576, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1826, file: !1726, line: 21, baseType: !229)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1826, file: !1726, line: 22, baseType: !1202, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1826, file: !1726, line: 23, baseType: !1452, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1826, file: !1726, line: 24, baseType: !1832, size: 16384, offset: 192)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 16384, elements: !275)
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
!1844 = !{null, !171}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1836, file: !1736, line: 38, baseType: !154, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1836, file: !1736, line: 44, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1840, line: 22, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1840, line: 21, baseType: !1850)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1836, file: !1736, line: 46, baseType: !1740, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1189, file: !1190, line: 971, baseType: !1740, size: 64, offset: 9344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1189, file: !1190, line: 972, baseType: !1740, size: 64, offset: 9408)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1189, file: !1190, line: 974, baseType: !1740, size: 64, offset: 9472)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1189, file: !1190, line: 975, baseType: !1735, size: 192, offset: 9536)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1189, file: !1190, line: 976, baseType: !154, size: 64, offset: 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1189, file: !1190, line: 977, baseType: !316, size: 64, offset: 9792)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1189, file: !1190, line: 978, baseType: !5, size: 32, offset: 9856)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1189, file: !1190, line: 980, baseType: !362, size: 64, offset: 9920)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1189, file: !1190, line: 989, baseType: !1862, size: 128, offset: 9984)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1863, line: 35, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1862, file: !1863, line: 36, baseType: !171, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1862, file: !1863, line: 37, baseType: !737, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1862, file: !1863, line: 38, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1863, line: 23, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1189, file: !1190, line: 992, baseType: !146, size: 64, offset: 10112)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1189, file: !1190, line: 993, baseType: !146, size: 64, offset: 10176)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1189, file: !1190, line: 996, baseType: !229, offset: 10240)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1189, file: !1190, line: 999, baseType: !770, offset: 10240)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1189, file: !1190, line: 1001, baseType: !1875, size: 64, offset: 10240)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1190, line: 636, size: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1875, file: !1190, line: 637, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1189, file: !1190, line: 1005, baseType: !742, size: 128, offset: 10304)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1189, file: !1190, line: 1007, baseType: !1188, size: 64, offset: 10432)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1189, file: !1190, line: 1009, baseType: !1882, size: 64, offset: 10496)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1190, line: 1009, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1189, file: !1190, line: 1043, baseType: !180, size: 64, offset: 10560)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1189, file: !1190, line: 1046, baseType: !1886, size: 64, offset: 10624)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1190, line: 41, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1189, file: !1190, line: 1050, baseType: !1889, size: 64, offset: 10688)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1190, line: 42, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1189, file: !1190, line: 1054, baseType: !1892, size: 64, offset: 10752)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1190, line: 55, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1189, file: !1190, line: 1056, baseType: !1895, size: 64, offset: 10816)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1190, line: 40, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1189, file: !1190, line: 1058, baseType: !1898, size: 64, offset: 10880)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1900, line: 99, size: 704, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1927, !1928}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1899, file: !1900, line: 100, baseType: !761, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1899, file: !1900, line: 101, baseType: !737, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1899, file: !1900, line: 102, baseType: !737, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1899, file: !1900, line: 105, baseType: !229, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1899, file: !1900, line: 107, baseType: !208, size: 16, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1899, file: !1900, line: 109, baseType: !728, size: 128, offset: 192)
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
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1917, file: !1900, line: 84, baseType: !121, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1917, file: !1900, line: 85, baseType: !925, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1900, line: 87, baseType: !1922, size: 128, offset: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1900, line: 87, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1922, file: !1900, line: 88, baseType: !628, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1922, file: !1900, line: 89, baseType: !359, size: 128, align: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1900, line: 92, baseType: !5, size: 32, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1899, file: !1900, line: 111, baseType: !624, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1899, file: !1900, line: 113, baseType: !1929, size: 256, offset: 448)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1930, line: 102, size: 256, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1929, file: !1930, line: 103, baseType: !761, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1929, file: !1930, line: 104, baseType: !121, size: 128, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1929, file: !1930, line: 105, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1930, line: 21, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1189, file: !1190, line: 1061, baseType: !1941, size: 64, offset: 10944)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1190, line: 43, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1189, file: !1190, line: 1064, baseType: !154, size: 64, offset: 11008)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1189, file: !1190, line: 1065, baseType: !1945, size: 64, offset: 11072)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1736, line: 14, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1736, line: 12, size: 384, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1736, line: 13, baseType: !1950, size: 384)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !1736, line: 13, size: 384, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1950, file: !1736, line: 13, baseType: !171, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1950, file: !1736, line: 13, baseType: !171, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1950, file: !1736, line: 13, baseType: !171, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1950, file: !1736, line: 13, baseType: !1956, size: 256, offset: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1957, line: 32, size: 256, elements: !1958)
!1957 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1964, !1977, !1983, !1992, !2012, !2017}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1956, file: !1957, line: 37, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 34, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1960, file: !1957, line: 35, baseType: !1431, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1960, file: !1957, line: 36, baseType: !427, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1956, file: !1957, line: 45, baseType: !1965, size: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 40, size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970, !1976}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1965, file: !1957, line: 41, baseType: !1968, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !171)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1965, file: !1957, line: 42, baseType: !171, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1965, file: !1957, line: 43, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1957, line: 11, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1957, line: 8, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1972, file: !1957, line: 9, baseType: !171, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1972, file: !1957, line: 10, baseType: !180, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1965, file: !1957, line: 44, baseType: !171, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1956, file: !1957, line: 52, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 48, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1978, file: !1957, line: 49, baseType: !1431, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1978, file: !1957, line: 50, baseType: !427, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1978, file: !1957, line: 51, baseType: !1971, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1956, file: !1957, line: 61, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 55, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1984, file: !1957, line: 56, baseType: !1431, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1984, file: !1957, line: 57, baseType: !427, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1984, file: !1957, line: 58, baseType: !171, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1984, file: !1957, line: 59, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !304)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1984, file: !1957, line: 60, baseType: !1990, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1956, file: !1957, line: 95, baseType: !1993, size: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 64, size: 256, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1993, file: !1957, line: 65, baseType: !180, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1957, line: 77, baseType: !1997, size: 192, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1957, line: 77, size: 192, elements: !1998)
!1998 = !{!1999, !2000, !2007}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1997, file: !1957, line: 82, baseType: !1177, size: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1997, file: !1957, line: 88, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 84, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2001, file: !1957, line: 85, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1302)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2001, file: !1957, line: 86, baseType: !180, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2001, file: !1957, line: 87, baseType: !180, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1997, file: !1957, line: 93, baseType: !2008, size: 96)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 90, size: 96, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2008, file: !1957, line: 91, baseType: !2004, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2008, file: !1957, line: 92, baseType: !107, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1956, file: !1957, line: 101, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 98, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2013, file: !1957, line: 99, baseType: !305, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2013, file: !1957, line: 100, baseType: !171, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1956, file: !1957, line: 108, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 104, size: 128, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2018, file: !1957, line: 105, baseType: !180, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2018, file: !1957, line: 106, baseType: !171, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2018, file: !1957, line: 107, baseType: !5, size: 32, offset: 96)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1189, file: !1190, line: 1067, baseType: !1808, offset: 11136)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1189, file: !1190, line: 1099, baseType: !2025, size: 64, offset: 11136)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1190, line: 56, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1189, file: !1190, line: 1103, baseType: !121, size: 128, offset: 11200)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1189, file: !1190, line: 1104, baseType: !2029, size: 64, offset: 11328)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1190, line: 46, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1189, file: !1190, line: 1105, baseType: !1161, size: 192, offset: 11392)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1189, file: !1190, line: 1106, baseType: !5, size: 32, offset: 11584)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1189, file: !1190, line: 1109, baseType: !2034, size: 128, offset: 11648)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 128, elements: !1540)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1190, line: 51, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1189, file: !1190, line: 1110, baseType: !1161, size: 192, offset: 11776)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1189, file: !1190, line: 1111, baseType: !121, size: 128, offset: 11968)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1189, file: !1190, line: 1173, baseType: !2040, size: 64, offset: 12096)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2042, line: 62, size: 256, align: 256, elements: !2043)
!2042 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !{!2044, !2045, !2046, !2051}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2041, file: !2042, line: 75, baseType: !107, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2041, file: !2042, line: 90, baseType: !107, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2041, file: !2042, line: 124, baseType: !2047, size: 64, offset: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 109, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2047, file: !2042, line: 110, baseType: !147, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2047, file: !2042, line: 112, baseType: !147, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2042, line: 144, baseType: !107, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1189, file: !1190, line: 1174, baseType: !105, size: 32, offset: 12160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1189, file: !1190, line: 1179, baseType: !154, size: 64, offset: 12224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1189, file: !1190, line: 1182, baseType: !2055, size: 128, offset: 12288)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1141, line: 76, size: 128, elements: !2056)
!2056 = !{!2057, !2062, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2055, file: !1141, line: 85, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2059, line: 7, size: 64, elements: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2058, file: !2059, line: 12, baseType: !1339, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2055, file: !1141, line: 88, baseType: !476, size: 8, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2055, file: !1141, line: 95, baseType: !476, size: 8, offset: 72)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !1189, file: !1190, line: 1184, baseType: !2065, size: 128, offset: 12416)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1189, file: !1190, line: 1184, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2065, file: !1190, line: 1185, baseType: !1202, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2065, file: !1190, line: 1186, baseType: !359, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1189, file: !1190, line: 1190, baseType: !2070, size: 64, offset: 12544)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1190, line: 53, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1189, file: !1190, line: 1192, baseType: !2073, size: 128, offset: 12608)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1141, line: 64, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2073, file: !1141, line: 65, baseType: !710, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2073, file: !1141, line: 67, baseType: !107, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2073, file: !1141, line: 68, baseType: !107, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1189, file: !1190, line: 1206, baseType: !171, size: 32, offset: 12736)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1189, file: !1190, line: 1207, baseType: !171, size: 32, offset: 12768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1189, file: !1190, line: 1209, baseType: !154, size: 64, offset: 12800)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1189, file: !1190, line: 1219, baseType: !146, size: 64, offset: 12864)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1189, file: !1190, line: 1220, baseType: !146, size: 64, offset: 12928)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1189, file: !1190, line: 1317, baseType: !171, size: 32, offset: 12992)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1189, file: !1190, line: 1319, baseType: !1188, size: 64, offset: 13056)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1189, file: !1190, line: 1322, baseType: !2086, size: 64, offset: 13120)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2088, line: 56, size: 512, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2087, file: !2088, line: 57, baseType: !2086, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2087, file: !2088, line: 58, baseType: !180, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2087, file: !2088, line: 59, baseType: !154, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2087, file: !2088, line: 60, baseType: !154, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2087, file: !2088, line: 61, baseType: !810, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2087, file: !2088, line: 62, baseType: !5, size: 32, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2087, file: !2088, line: 63, baseType: !145, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2087, file: !2088, line: 64, baseType: !2098, size: 64, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1189, file: !1190, line: 1326, baseType: !1202, size: 32, offset: 13184)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1189, file: !1190, line: 1342, baseType: !180, size: 64, offset: 13248)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1189, file: !1190, line: 1343, baseType: !147, size: 64, offset: 13312)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1189, file: !1190, line: 1344, baseType: !146, size: 64, offset: 13376)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1189, file: !1190, line: 1345, baseType: !147, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1189, file: !1190, line: 1346, baseType: !147, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1189, file: !1190, line: 1347, baseType: !147, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1189, file: !1190, line: 1348, baseType: !359, size: 128, align: 64, offset: 13504)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1189, file: !1190, line: 1358, baseType: !2109, size: 34816, offset: 13824)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2110, line: 485, size: 34816, elements: !2111)
!2110 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2141, !2142, !2143, !2144, !2145, !2146, !2149, !2150, !2151}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2109, file: !2110, line: 487, baseType: !2113, size: 192)
!2113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2114, size: 192, elements: !271)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2115, line: 16, size: 64, elements: !2116)
!2115 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2116 = !{!2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2114, file: !2115, line: 17, baseType: !849, size: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2114, file: !2115, line: 18, baseType: !849, size: 16, offset: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2114, file: !2115, line: 19, baseType: !849, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2114, file: !2115, line: 19, baseType: !849, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2114, file: !2115, line: 19, baseType: !849, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2114, file: !2115, line: 19, baseType: !849, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2114, file: !2115, line: 19, baseType: !849, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2114, file: !2115, line: 20, baseType: !849, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2114, file: !2115, line: 20, baseType: !849, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2114, file: !2115, line: 20, baseType: !849, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2114, file: !2115, line: 20, baseType: !849, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2114, file: !2115, line: 20, baseType: !849, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2114, file: !2115, line: 20, baseType: !849, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2109, file: !2110, line: 491, baseType: !154, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2109, file: !2110, line: 495, baseType: !208, size: 16, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2109, file: !2110, line: 496, baseType: !208, size: 16, offset: 272)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2109, file: !2110, line: 497, baseType: !208, size: 16, offset: 288)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2109, file: !2110, line: 498, baseType: !208, size: 16, offset: 304)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2109, file: !2110, line: 502, baseType: !154, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2109, file: !2110, line: 503, baseType: !154, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2109, file: !2110, line: 514, baseType: !2138, size: 256, offset: 448)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2139, size: 256, elements: !159)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2110, line: 483, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2109, file: !2110, line: 516, baseType: !154, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2109, file: !2110, line: 518, baseType: !154, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2109, file: !2110, line: 520, baseType: !154, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2109, file: !2110, line: 521, baseType: !154, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2109, file: !2110, line: 522, baseType: !154, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2109, file: !2110, line: 528, baseType: !2147, size: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2110, line: 10, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2109, file: !2110, line: 535, baseType: !154, size: 64, offset: 1088)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2109, file: !2110, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2109, file: !2110, line: 540, baseType: !2152, size: 33280, offset: 1536)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2153, line: 317, size: 33280, elements: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2154 = !{!2155, !2156, !2157}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2152, file: !2153, line: 330, baseType: !5, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2152, file: !2153, line: 337, baseType: !154, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2152, file: !2153, line: 348, baseType: !2158, size: 32768, offset: 512)
!2158 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2153, line: 304, size: 32768, elements: !2159)
!2159 = !{!2160, !2175, !2214, !2264, !2277}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2158, file: !2153, line: 305, baseType: !2161, size: 896)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2153, line: 12, size: 896, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2174}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2161, file: !2153, line: 13, baseType: !105, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2161, file: !2153, line: 14, baseType: !105, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2161, file: !2153, line: 15, baseType: !105, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2161, file: !2153, line: 16, baseType: !105, size: 32, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2161, file: !2153, line: 17, baseType: !105, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2161, file: !2153, line: 18, baseType: !105, size: 32, offset: 160)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2161, file: !2153, line: 19, baseType: !105, size: 32, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2161, file: !2153, line: 22, baseType: !2171, size: 640, offset: 224)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 640, elements: !2172)
!2172 = !{!2173}
!2173 = !DISubrange(count: 20)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2161, file: !2153, line: 25, baseType: !105, size: 32, offset: 864)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2158, file: !2153, line: 306, baseType: !2176, size: 4096, align: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2153, line: 34, size: 4096, align: 128, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2197, !2198, !2199, !2203, !2205, !2209}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2176, file: !2153, line: 35, baseType: !849, size: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2176, file: !2153, line: 36, baseType: !849, size: 16, offset: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2176, file: !2153, line: 37, baseType: !849, size: 16, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2176, file: !2153, line: 38, baseType: !849, size: 16, offset: 48)
!2182 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !2153, line: 39, baseType: !2183, size: 128, offset: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2176, file: !2153, line: 39, size: 128, elements: !2184)
!2184 = !{!2185, !2190}
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !2153, line: 40, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2153, line: 40, size: 128, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2186, file: !2153, line: 41, baseType: !146, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2186, file: !2153, line: 42, baseType: !146, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2183, file: !2153, line: 44, baseType: !2191, size: 128)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2153, line: 44, size: 128, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2191, file: !2153, line: 45, baseType: !105, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2191, file: !2153, line: 46, baseType: !105, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2191, file: !2153, line: 47, baseType: !105, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2191, file: !2153, line: 48, baseType: !105, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2176, file: !2153, line: 51, baseType: !105, size: 32, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2176, file: !2153, line: 52, baseType: !105, size: 32, offset: 224)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2176, file: !2153, line: 55, baseType: !2200, size: 1024, offset: 256)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 1024, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2176, file: !2153, line: 58, baseType: !2204, size: 2048, offset: 1280)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 2048, elements: !275)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2176, file: !2153, line: 60, baseType: !2206, size: 384, offset: 3328)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 384, elements: !2207)
!2207 = !{!2208}
!2208 = !DISubrange(count: 12)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !2153, line: 62, baseType: !2210, size: 384, offset: 3712)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2176, file: !2153, line: 62, size: 384, elements: !2211)
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2210, file: !2153, line: 63, baseType: !2206, size: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2210, file: !2153, line: 64, baseType: !2206, size: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2158, file: !2153, line: 307, baseType: !2215, size: 1088)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2153, line: 79, size: 1088, elements: !2216)
!2216 = !{!2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2263}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2215, file: !2153, line: 80, baseType: !105, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2215, file: !2153, line: 81, baseType: !105, size: 32, offset: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2215, file: !2153, line: 82, baseType: !105, size: 32, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2215, file: !2153, line: 83, baseType: !105, size: 32, offset: 96)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2215, file: !2153, line: 84, baseType: !105, size: 32, offset: 128)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2215, file: !2153, line: 85, baseType: !105, size: 32, offset: 160)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2215, file: !2153, line: 86, baseType: !105, size: 32, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2215, file: !2153, line: 88, baseType: !2171, size: 640, offset: 224)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2215, file: !2153, line: 89, baseType: !1324, size: 8, offset: 864)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2215, file: !2153, line: 90, baseType: !1324, size: 8, offset: 872)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2215, file: !2153, line: 91, baseType: !1324, size: 8, offset: 880)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2215, file: !2153, line: 92, baseType: !1324, size: 8, offset: 888)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2215, file: !2153, line: 93, baseType: !1324, size: 8, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2215, file: !2153, line: 94, baseType: !1324, size: 8, offset: 904)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2215, file: !2153, line: 95, baseType: !2232, size: 64, offset: 960)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2234, line: 11, size: 128, elements: !2235)
!2234 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2233, file: !2234, line: 12, baseType: !305, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2233, file: !2234, line: 13, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2240, line: 56, size: 1344, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2239, file: !2240, line: 61, baseType: !154, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2239, file: !2240, line: 62, baseType: !154, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2239, file: !2240, line: 63, baseType: !154, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2239, file: !2240, line: 64, baseType: !154, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2239, file: !2240, line: 65, baseType: !154, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2239, file: !2240, line: 66, baseType: !154, size: 64, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2239, file: !2240, line: 68, baseType: !154, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2239, file: !2240, line: 69, baseType: !154, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2239, file: !2240, line: 70, baseType: !154, size: 64, offset: 512)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2239, file: !2240, line: 71, baseType: !154, size: 64, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2239, file: !2240, line: 72, baseType: !154, size: 64, offset: 640)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2239, file: !2240, line: 73, baseType: !154, size: 64, offset: 704)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2239, file: !2240, line: 74, baseType: !154, size: 64, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2239, file: !2240, line: 75, baseType: !154, size: 64, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2239, file: !2240, line: 76, baseType: !154, size: 64, offset: 896)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2239, file: !2240, line: 81, baseType: !154, size: 64, offset: 960)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2239, file: !2240, line: 83, baseType: !154, size: 64, offset: 1024)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2239, file: !2240, line: 84, baseType: !154, size: 64, offset: 1088)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2239, file: !2240, line: 85, baseType: !154, size: 64, offset: 1152)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2239, file: !2240, line: 86, baseType: !154, size: 64, offset: 1216)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2239, file: !2240, line: 87, baseType: !154, size: 64, offset: 1280)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2215, file: !2153, line: 96, baseType: !105, size: 32, offset: 1024)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2158, file: !2153, line: 308, baseType: !2265, size: 4608, align: 512)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2153, line: 289, size: 4608, align: 512, elements: !2266)
!2266 = !{!2267, !2268, !2275}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2265, file: !2153, line: 290, baseType: !2176, size: 4096, align: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2265, file: !2153, line: 291, baseType: !2269, size: 512, offset: 4096)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2153, line: 268, size: 512, elements: !2270)
!2270 = !{!2271, !2272, !2273}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2269, file: !2153, line: 269, baseType: !146, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2269, file: !2153, line: 270, baseType: !146, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2269, file: !2153, line: 271, baseType: !2274, size: 384, offset: 128)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !1596)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2265, file: !2153, line: 292, baseType: !2276, offset: 4608)
!2276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, elements: !1694)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2158, file: !2153, line: 309, baseType: !2278, size: 32768)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 32768, elements: !2279)
!2279 = !{!2280}
!2280 = !DISubrange(count: 4096)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1185, file: !712, line: 378, baseType: !2282, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1181, file: !712, line: 384, baseType: !1473, size: 192, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !968, file: !712, line: 500, baseType: !229, offset: 6656)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !968, file: !712, line: 501, baseType: !2286, size: 64, offset: 6656)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !712, line: 387, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !968, file: !712, line: 516, baseType: !1684, size: 64, offset: 6720)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !968, file: !712, line: 519, baseType: !346, size: 64, offset: 6784)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !968, file: !712, line: 521, baseType: !2291, size: 64, offset: 6848)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !712, line: 521, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !968, file: !712, line: 545, baseType: !737, size: 32, offset: 6912)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !968, file: !712, line: 548, baseType: !476, size: 8, offset: 6944)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !968, file: !712, line: 550, baseType: !2296, offset: 6952)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2297, line: 142, elements: !243)
!2297 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !968, file: !712, line: 554, baseType: !1929, size: 256, offset: 6976)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !968, file: !712, line: 557, baseType: !105, size: 32, offset: 7232)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !965, file: !712, line: 565, baseType: !2301, offset: 7296)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: -1)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !961, file: !712, line: 151, baseType: !737, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !954, file: !712, line: 156, baseType: !229, offset: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !716, file: !712, line: 159, baseType: !2307, size: 128)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !716, file: !712, line: 159, size: 128, elements: !2308)
!2308 = !{!2309, !2373}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2307, file: !712, line: 161, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !29, line: 110, size: 1152, elements: !2312)
!2312 = !{!2313, !2323, !2344, !2345, !2346, !2347, !2348, !2360, !2361, !2362}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2311, file: !29, line: 111, baseType: !2314, size: 384)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !29, line: 19, size: 384, elements: !2315)
!2315 = !{!2316, !2318, !2319, !2320, !2321, !2322}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2314, file: !29, line: 20, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2314, file: !29, line: 21, baseType: !2317, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2314, file: !29, line: 22, baseType: !2317, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2314, file: !29, line: 23, baseType: !154, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2314, file: !29, line: 24, baseType: !154, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2314, file: !29, line: 25, baseType: !154, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2311, file: !29, line: 112, baseType: !2324, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2326, line: 105, size: 128, elements: !2327)
!2326 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2325, file: !2326, line: 110, baseType: !154, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2325, file: !2326, line: 118, baseType: !2330, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2326, line: 95, size: 448, elements: !2332)
!2332 = !{!2333, !2334, !2339, !2340, !2341, !2342, !2343}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2331, file: !2326, line: 96, baseType: !761, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2331, file: !2326, line: 97, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2326, line: 60, baseType: !2337)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{null, !2324}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2331, file: !2326, line: 98, baseType: !2335, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2331, file: !2326, line: 99, baseType: !476, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2331, file: !2326, line: 100, baseType: !476, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2331, file: !2326, line: 101, baseType: !359, size: 128, align: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2331, file: !2326, line: 102, baseType: !2324, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2311, file: !29, line: 113, baseType: !2325, size: 128, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2311, file: !29, line: 114, baseType: !1473, size: 192, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2311, file: !29, line: 115, baseType: !28, size: 32, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2311, file: !29, line: 116, baseType: !5, size: 32, offset: 800)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2311, file: !29, line: 117, baseType: !2349, size: 64, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !29, line: 67, size: 256, elements: !2352)
!2352 = !{!2353, !2354, !2358, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2351, file: !29, line: 73, baseType: !830, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2351, file: !29, line: 78, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2310}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2351, file: !29, line: 83, baseType: !2355, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2351, file: !29, line: 89, baseType: !1017, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2311, file: !29, line: 118, baseType: !180, size: 64, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2311, file: !29, line: 119, baseType: !171, size: 32, offset: 960)
!2362 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !29, line: 120, baseType: !2363, size: 128, offset: 1024)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !29, line: 120, size: 128, elements: !2364)
!2364 = !{!2365, !2371}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2363, file: !29, line: 121, baseType: !2366, size: 128)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2367, line: 6, size: 128, elements: !2368)
!2367 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2366, file: !2367, line: 7, baseType: !146, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2366, file: !2367, line: 8, baseType: !146, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2363, file: !29, line: 122, baseType: !2372)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, elements: !1694)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2307, file: !712, line: 162, baseType: !180, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !716, file: !712, line: 176, baseType: !359, size: 128, align: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, scope: !711, file: !712, line: 179, baseType: !2376, size: 32, offset: 384)
!2376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !711, file: !712, line: 179, size: 32, elements: !2377)
!2377 = !{!2378, !2379, !2380, !2381}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2376, file: !712, line: 184, baseType: !737, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2376, file: !712, line: 192, baseType: !5, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2376, file: !712, line: 194, baseType: !5, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2376, file: !712, line: 195, baseType: !171, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !711, file: !712, line: 199, baseType: !737, size: 32, offset: 416)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !646, file: !42, line: 1964, baseType: !2384, size: 64, offset: 1344)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!305, !585, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2389, line: 12, size: 256, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2390 = !{!2391, !2392, !2393, !2394, !2395}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2388, file: !2389, line: 13, baseType: !733, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2388, file: !2389, line: 16, baseType: !171, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2388, file: !2389, line: 23, baseType: !154, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2388, file: !2389, line: 30, baseType: !154, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2388, file: !2389, line: 33, baseType: !2396, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !712, line: 27, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !646, file: !42, line: 1966, baseType: !2384, size: 64, offset: 1408)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !586, file: !42, line: 1424, baseType: !2400, size: 64, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 322, size: 704, elements: !2403)
!2403 = !{!2404, !2450, !2454, !2458, !2459, !2460, !2461, !2462, !2467, !2472, !2476}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2402, file: !36, line: 323, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!171, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 294, size: 1600, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2435, !2436, !2437}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2409, file: !36, line: 295, baseType: !628, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2409, file: !36, line: 296, baseType: !121, size: 128, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2409, file: !36, line: 297, baseType: !121, size: 128, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2409, file: !36, line: 298, baseType: !121, size: 128, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2409, file: !36, line: 299, baseType: !1161, size: 192, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2409, file: !36, line: 300, baseType: !229, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2409, file: !36, line: 301, baseType: !737, size: 32, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2409, file: !36, line: 302, baseType: !585, size: 64, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2409, file: !36, line: 303, baseType: !2420, size: 64, offset: 832)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2421)
!2421 = !{!2422, !2434}
!2422 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !36, line: 69, baseType: !2423, size: 32)
!2423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2420, file: !36, line: 69, size: 32, elements: !2424)
!2424 = !{!2425, !2426, !2427}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2423, file: !36, line: 70, baseType: !421, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2423, file: !36, line: 71, baseType: !429, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2423, file: !36, line: 72, baseType: !2428, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2429, line: 24, baseType: !2430)
!2429 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2429, line: 22, size: 32, elements: !2431)
!2431 = !{!2432}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2430, file: !2429, line: 23, baseType: !2433, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2429, line: 20, baseType: !427)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2420, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2409, file: !36, line: 304, baseType: !517, size: 64, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2409, file: !36, line: 305, baseType: !154, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2409, file: !36, line: 306, baseType: !2438, size: 576, offset: 1024)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2439)
!2439 = !{!2440, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2438, file: !36, line: 206, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !519)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2438, file: !36, line: 207, baseType: !2441, size: 64, offset: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2438, file: !36, line: 208, baseType: !2441, size: 64, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2438, file: !36, line: 209, baseType: !2441, size: 64, offset: 192)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2438, file: !36, line: 210, baseType: !2441, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2438, file: !36, line: 211, baseType: !2441, size: 64, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2438, file: !36, line: 212, baseType: !2441, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2438, file: !36, line: 213, baseType: !525, size: 64, offset: 448)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2438, file: !36, line: 214, baseType: !525, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2402, file: !36, line: 324, baseType: !2451, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!2408, !585, !171}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2402, file: !36, line: 325, baseType: !2455, size: 64, offset: 128)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{null, !2408}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2402, file: !36, line: 326, baseType: !2405, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2402, file: !36, line: 327, baseType: !2405, size: 64, offset: 256)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2402, file: !36, line: 328, baseType: !2405, size: 64, offset: 320)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2402, file: !36, line: 329, baseType: !674, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2402, file: !36, line: 332, baseType: !2463, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!2466, !415}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2402, file: !36, line: 333, baseType: !2468, size: 64, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!171, !415, !2471}
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2402, file: !36, line: 335, baseType: !2473, size: 64, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!171, !415, !2466}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2402, file: !36, line: 337, baseType: !2477, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!171, !585, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !586, file: !42, line: 1425, baseType: !2482, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 428, size: 704, elements: !2485)
!2485 = !{!2486, !2490, !2491, !2495, !2496, !2497, !2512, !2535, !2539, !2540, !2563}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2484, file: !36, line: 429, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!171, !585, !171, !171, !535}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2484, file: !36, line: 430, baseType: !674, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2484, file: !36, line: 431, baseType: !2492, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!171, !585, !5}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2484, file: !36, line: 432, baseType: !2492, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2484, file: !36, line: 433, baseType: !674, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2484, file: !36, line: 434, baseType: !2498, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!171, !585, !171, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 415, size: 256, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2502, file: !36, line: 416, baseType: !171, size: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2502, file: !36, line: 417, baseType: !5, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2502, file: !36, line: 418, baseType: !5, size: 32, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2502, file: !36, line: 420, baseType: !5, size: 32, offset: 96)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2502, file: !36, line: 421, baseType: !5, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2502, file: !36, line: 422, baseType: !5, size: 32, offset: 160)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2502, file: !36, line: 423, baseType: !5, size: 32, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2502, file: !36, line: 424, baseType: !5, size: 32, offset: 224)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2484, file: !36, line: 435, baseType: !2513, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!171, !585, !2420, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 343, size: 960, elements: !2518)
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2517, file: !36, line: 344, baseType: !171, size: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2517, file: !36, line: 345, baseType: !146, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2517, file: !36, line: 346, baseType: !146, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2517, file: !36, line: 347, baseType: !146, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2517, file: !36, line: 348, baseType: !146, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2517, file: !36, line: 349, baseType: !146, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2517, file: !36, line: 350, baseType: !146, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2517, file: !36, line: 351, baseType: !767, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2517, file: !36, line: 353, baseType: !767, size: 64, offset: 512)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2517, file: !36, line: 354, baseType: !171, size: 32, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2517, file: !36, line: 355, baseType: !171, size: 32, offset: 608)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2517, file: !36, line: 356, baseType: !146, size: 64, offset: 640)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2517, file: !36, line: 357, baseType: !146, size: 64, offset: 704)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2517, file: !36, line: 358, baseType: !146, size: 64, offset: 768)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2517, file: !36, line: 359, baseType: !767, size: 64, offset: 832)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2517, file: !36, line: 360, baseType: !171, size: 32, offset: 896)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2484, file: !36, line: 436, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!171, !585, !2480, !2516}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2484, file: !36, line: 438, baseType: !2513, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2484, file: !36, line: 439, baseType: !2541, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!171, !585, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 409, size: 1408, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2545, file: !36, line: 410, baseType: !5, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2545, file: !36, line: 411, baseType: !2549, size: 1344, offset: 64)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2550, size: 1344, elements: !271)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 395, size: 448, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2562}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2550, file: !36, line: 396, baseType: !5, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2550, file: !36, line: 397, baseType: !5, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2550, file: !36, line: 399, baseType: !5, size: 32, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2550, file: !36, line: 400, baseType: !5, size: 32, offset: 96)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2550, file: !36, line: 401, baseType: !5, size: 32, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2550, file: !36, line: 402, baseType: !5, size: 32, offset: 160)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2550, file: !36, line: 403, baseType: !5, size: 32, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2550, file: !36, line: 404, baseType: !104, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2550, file: !36, line: 405, baseType: !2561, size: 64, offset: 320)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !122, line: 126, baseType: !146)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2550, file: !36, line: 406, baseType: !2561, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2484, file: !36, line: 440, baseType: !2492, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !586, file: !42, line: 1426, baseType: !2565, size: 64, offset: 576)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2567)
!2567 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !42, line: 49, flags: DIFlagFwdDecl)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !586, file: !42, line: 1427, baseType: !154, size: 64, offset: 640)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !586, file: !42, line: 1428, baseType: !154, size: 64, offset: 704)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !586, file: !42, line: 1429, baseType: !154, size: 64, offset: 768)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !586, file: !42, line: 1430, baseType: !376, size: 64, offset: 832)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !586, file: !42, line: 1431, baseType: !757, size: 256, offset: 896)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !586, file: !42, line: 1432, baseType: !171, size: 32, offset: 1152)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !586, file: !42, line: 1433, baseType: !737, size: 32, offset: 1184)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !586, file: !42, line: 1437, baseType: !2576, size: 64, offset: 1216)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !42, line: 1437, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !586, file: !42, line: 1449, baseType: !2581, size: 64, offset: 1280)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !392, line: 34, size: 64, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2581, file: !392, line: 35, baseType: !395, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !586, file: !42, line: 1450, baseType: !121, size: 128, offset: 1344)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !586, file: !42, line: 1451, baseType: !2586, size: 64, offset: 1472)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !42, line: 699, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !586, file: !42, line: 1452, baseType: !1895, size: 64, offset: 1536)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !586, file: !42, line: 1453, baseType: !2590, size: 64, offset: 1600)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !42, line: 1453, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !586, file: !42, line: 1454, baseType: !628, size: 128, offset: 1664)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !586, file: !42, line: 1455, baseType: !5, size: 32, offset: 1792)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !586, file: !42, line: 1456, baseType: !2595, size: 2432, offset: 1856)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 518, size: 2432, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2601, !2633}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2595, file: !36, line: 519, baseType: !5, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2595, file: !36, line: 520, baseType: !757, size: 256, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2595, file: !36, line: 521, baseType: !2600, size: 192, offset: 320)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 192, elements: !271)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2595, file: !36, line: 522, baseType: !2602, size: 1728, offset: 512)
!2602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2603, size: 1728, elements: !271)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2604)
!2604 = !{!2605, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2603, file: !36, line: 223, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 443, size: 256, elements: !2608)
!2608 = !{!2609, !2610, !2623, !2624}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2607, file: !36, line: 444, baseType: !171, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2607, file: !36, line: 445, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2613)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 310, size: 512, elements: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2613, file: !36, line: 311, baseType: !674, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2613, file: !36, line: 312, baseType: !674, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2613, file: !36, line: 313, baseType: !674, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2613, file: !36, line: 314, baseType: !674, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2613, file: !36, line: 315, baseType: !2405, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2613, file: !36, line: 316, baseType: !2405, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2613, file: !36, line: 317, baseType: !2405, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2613, file: !36, line: 318, baseType: !2477, size: 64, offset: 448)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2607, file: !36, line: 446, baseType: !619, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2607, file: !36, line: 447, baseType: !2606, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2603, file: !36, line: 224, baseType: !171, size: 32, offset: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2603, file: !36, line: 226, baseType: !121, size: 128, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2603, file: !36, line: 227, baseType: !154, size: 64, offset: 256)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2603, file: !36, line: 228, baseType: !5, size: 32, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2603, file: !36, line: 229, baseType: !5, size: 32, offset: 352)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2603, file: !36, line: 230, baseType: !2441, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2603, file: !36, line: 231, baseType: !2441, size: 64, offset: 448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2603, file: !36, line: 232, baseType: !180, size: 64, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2595, file: !36, line: 523, baseType: !2634, size: 192, offset: 2240)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2611, size: 192, elements: !271)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !586, file: !42, line: 1458, baseType: !2636, size: 2112, offset: 4288)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !42, line: 1410, size: 2112, elements: !2637)
!2637 = !{!2638, !2639, !2640}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2636, file: !42, line: 1411, baseType: !171, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2636, file: !42, line: 1412, baseType: !1452, size: 128, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2636, file: !42, line: 1413, baseType: !2641, size: 1920, offset: 192)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 1920, elements: !271)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2643, line: 12, size: 640, elements: !2644)
!2643 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2644 = !{!2645, !2653, !2655, !2660, !2661}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2642, file: !2643, line: 13, baseType: !2646, size: 320)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2647, line: 17, size: 320, elements: !2648)
!2647 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2648 = !{!2649, !2650, !2651, !2652}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2646, file: !2647, line: 18, baseType: !171, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2646, file: !2647, line: 19, baseType: !171, size: 32, offset: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2646, file: !2647, line: 20, baseType: !1452, size: 128, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2646, file: !2647, line: 22, baseType: !359, size: 128, align: 64, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2642, file: !2643, line: 14, baseType: !2654, size: 64, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2642, file: !2643, line: 15, baseType: !2656, size: 64, offset: 384)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2657, line: 16, size: 64, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2658 = !{!2659}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2656, file: !2657, line: 17, baseType: !1188, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2642, file: !2643, line: 16, baseType: !1452, size: 128, offset: 448)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2642, file: !2643, line: 17, baseType: !737, size: 32, offset: 576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !586, file: !42, line: 1465, baseType: !180, size: 64, offset: 6400)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !586, file: !42, line: 1468, baseType: !105, size: 32, offset: 6464)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !586, file: !42, line: 1470, baseType: !525, size: 64, offset: 6528)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !586, file: !42, line: 1471, baseType: !525, size: 64, offset: 6592)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !586, file: !42, line: 1473, baseType: !107, size: 32, offset: 6656)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !586, file: !42, line: 1474, baseType: !2668, size: 64, offset: 6720)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !42, line: 603, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !586, file: !42, line: 1477, baseType: !2671, size: 256, offset: 6784)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !2201)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !586, file: !42, line: 1478, baseType: !2673, size: 128, offset: 7040)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2674, line: 18, baseType: !2675)
!2674 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2674, line: 16, size: 128, elements: !2676)
!2676 = !{!2677}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2675, file: !2674, line: 17, baseType: !2678, size: 128)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 128, elements: !1706)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !586, file: !42, line: 1480, baseType: !5, size: 32, offset: 7168)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !586, file: !42, line: 1481, baseType: !2681, size: 32, offset: 7200)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !122, line: 150, baseType: !5)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !586, file: !42, line: 1487, baseType: !1161, size: 192, offset: 7232)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !586, file: !42, line: 1493, baseType: !150, size: 64, offset: 7424)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !586, file: !42, line: 1495, baseType: !2685, size: 64, offset: 7488)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !374, line: 135, size: 1024, align: 512, elements: !2688)
!2688 = !{!2689, !2693, !2694, !2701, !2707, !2711, !2715, !2719, !2720, !2724, !2728, !2733, !2737}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2687, file: !374, line: 136, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!171, !376, !5}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2687, file: !374, line: 137, baseType: !2690, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2687, file: !374, line: 138, baseType: !2695, size: 64, offset: 128)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!171, !2698, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2687, file: !374, line: 139, baseType: !2702, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!171, !2698, !5, !150, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2687, file: !374, line: 141, baseType: !2708, size: 64, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!171, !2698}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2687, file: !374, line: 142, baseType: !2712, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!171, !376}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2687, file: !374, line: 143, baseType: !2716, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !376}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2687, file: !374, line: 144, baseType: !2716, size: 64, offset: 448)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2687, file: !374, line: 145, baseType: !2721, size: 64, offset: 512)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{null, !376, !415}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2687, file: !374, line: 146, baseType: !2725, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!270, !376, !270, !171}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2687, file: !374, line: 147, baseType: !2729, size: 64, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!372, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2687, file: !374, line: 148, baseType: !2734, size: 64, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!171, !535, !476}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2687, file: !374, line: 149, baseType: !2738, size: 64, offset: 768)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!376, !376, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !586, file: !42, line: 1500, baseType: !171, size: 32, offset: 7552)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !586, file: !42, line: 1502, baseType: !2745, size: 448, offset: 7616)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2389, line: 60, size: 448, elements: !2746)
!2746 = !{!2747, !2752, !2753, !2754, !2755, !2756, !2757}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2745, file: !2389, line: 61, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!154, !2751, !2387}
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2745, file: !2389, line: 63, baseType: !2748, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2745, file: !2389, line: 66, baseType: !305, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2745, file: !2389, line: 67, baseType: !171, size: 32, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !2389, line: 68, baseType: !5, size: 32, offset: 224)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2745, file: !2389, line: 71, baseType: !121, size: 128, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2745, file: !2389, line: 77, baseType: !2758, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !586, file: !42, line: 1505, baseType: !761, size: 64, offset: 8064)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !586, file: !42, line: 1508, baseType: !761, size: 64, offset: 8128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !586, file: !42, line: 1511, baseType: !171, size: 32, offset: 8192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !586, file: !42, line: 1514, baseType: !899, size: 32, offset: 8224)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !586, file: !42, line: 1517, baseType: !2764, size: 64, offset: 8256)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1930, line: 18, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !586, file: !42, line: 1518, baseType: !624, size: 64, offset: 8320)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !586, file: !42, line: 1525, baseType: !1684, size: 64, offset: 8384)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !586, file: !42, line: 1532, baseType: !2769, size: 64, offset: 8448)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2770, line: 52, size: 64, elements: !2771)
!2770 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2769, file: !2770, line: 53, baseType: !2773, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2770, line: 40, size: 256, elements: !2775)
!2775 = !{!2776, !2777, !2782}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2774, file: !2770, line: 42, baseType: !229)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2774, file: !2770, line: 44, baseType: !2778, size: 192)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2770, line: 28, size: 192, elements: !2779)
!2779 = !{!2780, !2781}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2778, file: !2770, line: 29, baseType: !121, size: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2778, file: !2770, line: 31, baseType: !305, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2774, file: !2770, line: 49, baseType: !305, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !586, file: !42, line: 1533, baseType: !2769, size: 64, offset: 8512)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !586, file: !42, line: 1534, baseType: !359, size: 128, align: 64, offset: 8576)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !586, file: !42, line: 1535, baseType: !1929, size: 256, offset: 8704)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !586, file: !42, line: 1537, baseType: !1161, size: 192, offset: 8960)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !586, file: !42, line: 1542, baseType: !171, size: 32, offset: 9152)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !586, file: !42, line: 1545, baseType: !229, offset: 9184)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !586, file: !42, line: 1546, baseType: !121, size: 128, offset: 9216)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !586, file: !42, line: 1548, baseType: !229, offset: 9344)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !586, file: !42, line: 1549, baseType: !121, size: 128, offset: 9344)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !416, file: !42, line: 624, baseType: !723, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !416, file: !42, line: 631, baseType: !154, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !42, line: 639, baseType: !2795, size: 32, offset: 384)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !42, line: 639, size: 32, elements: !2796)
!2796 = !{!2797, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2795, file: !42, line: 640, baseType: !2798, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2795, file: !42, line: 641, baseType: !5, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !416, file: !42, line: 643, baseType: !499, size: 32, offset: 416)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !416, file: !42, line: 644, baseType: !517, size: 64, offset: 448)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !416, file: !42, line: 645, baseType: !521, size: 128, offset: 512)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !416, file: !42, line: 646, baseType: !521, size: 128, offset: 640)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !416, file: !42, line: 647, baseType: !521, size: 128, offset: 768)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !416, file: !42, line: 648, baseType: !229, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !416, file: !42, line: 649, baseType: !208, size: 16, offset: 896)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !416, file: !42, line: 650, baseType: !1324, size: 8, offset: 912)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !416, file: !42, line: 651, baseType: !1324, size: 8, offset: 920)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !416, file: !42, line: 652, baseType: !2561, size: 64, offset: 960)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !416, file: !42, line: 659, baseType: !154, size: 64, offset: 1024)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !416, file: !42, line: 660, baseType: !757, size: 256, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !416, file: !42, line: 662, baseType: !154, size: 64, offset: 1344)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !416, file: !42, line: 663, baseType: !154, size: 64, offset: 1408)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !416, file: !42, line: 665, baseType: !628, size: 128, offset: 1472)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !416, file: !42, line: 666, baseType: !121, size: 128, offset: 1600)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !416, file: !42, line: 675, baseType: !121, size: 128, offset: 1728)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !416, file: !42, line: 676, baseType: !121, size: 128, offset: 1856)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !416, file: !42, line: 677, baseType: !121, size: 128, offset: 1984)
!2819 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !42, line: 678, baseType: !2820, size: 128, offset: 2112)
!2820 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !42, line: 678, size: 128, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2820, file: !42, line: 679, baseType: !624, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2820, file: !42, line: 680, baseType: !359, size: 128, align: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !416, file: !42, line: 682, baseType: !763, size: 64, offset: 2240)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !416, file: !42, line: 683, baseType: !763, size: 64, offset: 2304)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !416, file: !42, line: 684, baseType: !737, size: 32, offset: 2368)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !416, file: !42, line: 685, baseType: !737, size: 32, offset: 2400)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !416, file: !42, line: 686, baseType: !737, size: 32, offset: 2432)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !416, file: !42, line: 688, baseType: !737, size: 32, offset: 2464)
!2830 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !42, line: 690, baseType: !2831, size: 64, offset: 2496)
!2831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !42, line: 690, size: 64, elements: !2832)
!2832 = !{!2833, !3056}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2831, file: !42, line: 691, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2836)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !42, line: 1822, size: 2048, elements: !2837)
!2837 = !{!2838, !2839, !2843, !2848, !2852, !2853, !2854, !2858, !2871, !2872, !2880, !2884, !2885, !2889, !2890, !2894, !2899, !2900, !2904, !2908, !3016, !3020, !3021, !3025, !3026, !3030, !3034, !3039, !3043, !3047, !3051, !3055}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2836, file: !42, line: 1823, baseType: !619, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2836, file: !42, line: 1824, baseType: !2840, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!517, !346, !517, !171}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2836, file: !42, line: 1825, baseType: !2844, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!301, !346, !270, !316, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2836, file: !42, line: 1826, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!301, !346, !150, !316, !2847}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2836, file: !42, line: 1827, baseType: !834, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2836, file: !42, line: 1828, baseType: !834, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2836, file: !42, line: 1829, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!171, !837, !476}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2836, file: !42, line: 1830, baseType: !2859, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!171, !346, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !42, line: 1776, size: 128, elements: !2864)
!2864 = !{!2865, !2870}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2863, file: !42, line: 1777, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !42, line: 1773, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!171, !2862, !150, !171, !517, !146, !5}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2863, file: !42, line: 1778, baseType: !517, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2836, file: !42, line: 1831, baseType: !2859, size: 64, offset: 512)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2836, file: !42, line: 1832, baseType: !2873, size: 64, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2876, !346, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2877, line: 52, baseType: !5)
!2877 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !605, line: 27, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2836, file: !42, line: 1833, baseType: !2881, size: 64, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!305, !346, !5, !154}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2836, file: !42, line: 1834, baseType: !2881, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2836, file: !42, line: 1835, baseType: !2886, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!171, !346, !971}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2836, file: !42, line: 1836, baseType: !154, size: 64, offset: 832)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2836, file: !42, line: 1837, baseType: !2891, size: 64, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!171, !415, !346}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2836, file: !42, line: 1838, baseType: !2895, size: 64, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!171, !346, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !42, line: 1007, baseType: !180)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2836, file: !42, line: 1839, baseType: !2891, size: 64, offset: 1024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2836, file: !42, line: 1840, baseType: !2901, size: 64, offset: 1088)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!171, !346, !517, !517, !171}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2836, file: !42, line: 1841, baseType: !2905, size: 64, offset: 1152)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!171, !171, !346, !171}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2836, file: !42, line: 1842, baseType: !2909, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!171, !346, !171, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !42, line: 1062, size: 1664, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2946, !2947, !2948, !2961, !2992}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2913, file: !42, line: 1063, baseType: !2912, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2913, file: !42, line: 1064, baseType: !121, size: 128, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2913, file: !42, line: 1065, baseType: !628, size: 128, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2913, file: !42, line: 1066, baseType: !121, size: 128, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2913, file: !42, line: 1069, baseType: !121, size: 128, offset: 448)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2913, file: !42, line: 1072, baseType: !2898, size: 64, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2913, file: !42, line: 1073, baseType: !5, size: 32, offset: 640)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2913, file: !42, line: 1074, baseType: !199, size: 8, offset: 672)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2913, file: !42, line: 1075, baseType: !5, size: 32, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2913, file: !42, line: 1076, baseType: !171, size: 32, offset: 736)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2913, file: !42, line: 1077, baseType: !1452, size: 128, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2913, file: !42, line: 1078, baseType: !346, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2913, file: !42, line: 1079, baseType: !517, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2913, file: !42, line: 1080, baseType: !517, size: 64, offset: 1024)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2913, file: !42, line: 1082, baseType: !2930, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !42, line: 1314, size: 320, elements: !2932)
!2932 = !{!2933, !2941, !2942, !2943, !2944, !2945}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2931, file: !42, line: 1315, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2935, line: 20, baseType: !2936)
!2935 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2935, line: 11, elements: !2937)
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2936, file: !2935, line: 12, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !241, line: 33, baseType: !2940)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 31, elements: !243)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2931, file: !42, line: 1316, baseType: !171, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2931, file: !42, line: 1317, baseType: !171, size: 32, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2931, file: !42, line: 1318, baseType: !2930, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2931, file: !42, line: 1319, baseType: !346, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2931, file: !42, line: 1320, baseType: !359, size: 128, align: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2913, file: !42, line: 1084, baseType: !154, size: 64, offset: 1152)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2913, file: !42, line: 1085, baseType: !154, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2913, file: !42, line: 1087, baseType: !2949, size: 64, offset: 1280)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !42, line: 1011, size: 128, elements: !2952)
!2952 = !{!2953, !2957}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2951, file: !42, line: 1012, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2912, !2912}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2951, file: !42, line: 1013, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2912}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2913, file: !42, line: 1088, baseType: !2962, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !42, line: 1016, size: 512, elements: !2965)
!2965 = !{!2966, !2970, !2974, !2975, !2979, !2983, !2987, !2991}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2964, file: !42, line: 1017, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!2898, !2898}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2964, file: !42, line: 1018, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2898}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2964, file: !42, line: 1019, baseType: !2958, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2964, file: !42, line: 1020, baseType: !2976, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!171, !2912, !171}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2964, file: !42, line: 1021, baseType: !2980, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!476, !2912}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2964, file: !42, line: 1022, baseType: !2984, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!171, !2912, !171, !125}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2964, file: !42, line: 1023, baseType: !2988, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2912, !811}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2964, file: !42, line: 1024, baseType: !2980, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2913, file: !42, line: 1097, baseType: !2993, size: 256, offset: 1408)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !42, line: 1089, size: 256, elements: !2994)
!2994 = !{!2995, !3004, !3010}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2993, file: !42, line: 1090, baseType: !2996, size: 256)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2997, line: 10, size: 256, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !{!2999, !3000, !3003}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2996, file: !2997, line: 11, baseType: !105, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2996, file: !2997, line: 12, baseType: !3001, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2997, line: 5, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2996, file: !2997, line: 13, baseType: !121, size: 128, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2993, file: !42, line: 1091, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2997, line: 17, size: 64, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3005, file: !2997, line: 18, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2997, line: 16, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2993, file: !42, line: 1096, baseType: !3011, size: 192)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2993, file: !42, line: 1092, size: 192, elements: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3011, file: !42, line: 1093, baseType: !121, size: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3011, file: !42, line: 1094, baseType: !171, size: 32, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3011, file: !42, line: 1095, baseType: !5, size: 32, offset: 160)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2836, file: !42, line: 1843, baseType: !3017, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!301, !346, !710, !171, !316, !2847, !171}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2836, file: !42, line: 1844, baseType: !1091, size: 64, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2836, file: !42, line: 1845, baseType: !3022, size: 64, offset: 1408)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!171, !171}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2836, file: !42, line: 1846, baseType: !2909, size: 64, offset: 1472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2836, file: !42, line: 1847, baseType: !3027, size: 64, offset: 1536)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!301, !2070, !346, !2847, !316, !5}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2836, file: !42, line: 1848, baseType: !3031, size: 64, offset: 1600)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!301, !346, !2847, !2070, !316, !5}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2836, file: !42, line: 1849, baseType: !3035, size: 64, offset: 1664)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!171, !346, !305, !3038, !811}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2836, file: !42, line: 1850, baseType: !3040, size: 64, offset: 1728)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!305, !346, !171, !517, !517}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2836, file: !42, line: 1852, baseType: !3044, size: 64, offset: 1792)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !700, !346}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2836, file: !42, line: 1856, baseType: !3048, size: 64, offset: 1856)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!301, !346, !517, !346, !517, !316, !5}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2836, file: !42, line: 1858, baseType: !3052, size: 64, offset: 1920)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!517, !346, !517, !346, !517, !517, !5}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2836, file: !42, line: 1861, baseType: !2901, size: 64, offset: 1984)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2831, file: !42, line: 692, baseType: !653, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !416, file: !42, line: 694, baseType: !3058, size: 64, offset: 2560)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !42, line: 1100, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3059, file: !42, line: 1101, baseType: !229)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3059, file: !42, line: 1102, baseType: !121, size: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3059, file: !42, line: 1103, baseType: !121, size: 128, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3059, file: !42, line: 1104, baseType: !121, size: 128, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !416, file: !42, line: 695, baseType: !724, size: 1216, align: 64, offset: 2624)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !416, file: !42, line: 696, baseType: !121, size: 128, offset: 3840)
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !416, file: !42, line: 697, baseType: !3068, size: 64, offset: 3968)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !42, line: 697, size: 64, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3075, !3076}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3068, file: !42, line: 698, baseType: !2070, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3068, file: !42, line: 699, baseType: !2586, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3068, file: !42, line: 700, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !42, line: 700, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3068, file: !42, line: 701, baseType: !270, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3068, file: !42, line: 702, baseType: !5, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !416, file: !42, line: 705, baseType: !107, size: 32, offset: 4032)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !416, file: !42, line: 708, baseType: !107, size: 32, offset: 4064)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !416, file: !42, line: 709, baseType: !2668, size: 64, offset: 4096)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !416, file: !42, line: 720, baseType: !180, size: 64, offset: 4160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !377, file: !374, line: 98, baseType: !3082, size: 256, offset: 448)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !2201)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !377, file: !374, line: 101, baseType: !3084, size: 32, offset: 704)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3085, line: 25, size: 32, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3084, file: !3085, line: 26, baseType: !3088, size: 32)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3084, file: !3085, line: 26, size: 32, elements: !3089)
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3088, file: !3085, line: 30, baseType: !3091, size: 32)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3085, line: 30, size: 32, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3091, file: !3085, line: 31, baseType: !229)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3091, file: !3085, line: 32, baseType: !171, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !377, file: !374, line: 102, baseType: !2685, size: 64, offset: 768)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !377, file: !374, line: 103, baseType: !585, size: 64, offset: 832)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !377, file: !374, line: 104, baseType: !154, size: 64, offset: 896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !377, file: !374, line: 105, baseType: !180, size: 64, offset: 960)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !374, line: 107, baseType: !3100, size: 128, offset: 1024)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !374, line: 107, size: 128, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3100, file: !374, line: 108, baseType: !121, size: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3100, file: !374, line: 109, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !377, file: !374, line: 111, baseType: !121, size: 128, offset: 1152)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !377, file: !374, line: 112, baseType: !121, size: 128, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !377, file: !374, line: 120, baseType: !3108, size: 128, offset: 1408)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !374, line: 116, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3108, file: !374, line: 117, baseType: !628, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3108, file: !374, line: 118, baseType: !391, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3108, file: !374, line: 119, baseType: !359, size: 128, align: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !347, file: !42, line: 922, baseType: !415, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !347, file: !42, line: 923, baseType: !2834, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !347, file: !42, line: 929, baseType: !229, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !347, file: !42, line: 930, baseType: !41, size: 32, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !347, file: !42, line: 931, baseType: !761, size: 64, offset: 448)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !347, file: !42, line: 932, baseType: !5, size: 32, offset: 512)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !347, file: !42, line: 933, baseType: !2681, size: 32, offset: 544)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !347, file: !42, line: 934, baseType: !1161, size: 192, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !347, file: !42, line: 935, baseType: !517, size: 64, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !347, file: !42, line: 936, baseType: !3123, size: 192, offset: 832)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !42, line: 885, size: 192, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3123, file: !42, line: 886, baseType: !2934)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3123, file: !42, line: 887, baseType: !1442, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3123, file: !42, line: 888, baseType: !50, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3123, file: !42, line: 889, baseType: !421, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3123, file: !42, line: 889, baseType: !421, size: 32, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3123, file: !42, line: 890, baseType: !171, size: 32, offset: 160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !347, file: !42, line: 937, baseType: !1518, size: 64, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !347, file: !42, line: 938, baseType: !3133, size: 256, offset: 1088)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !42, line: 896, size: 256, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3133, file: !42, line: 897, baseType: !154, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3133, file: !42, line: 898, baseType: !5, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3133, file: !42, line: 899, baseType: !5, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3133, file: !42, line: 902, baseType: !5, size: 32, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3133, file: !42, line: 903, baseType: !5, size: 32, offset: 160)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3133, file: !42, line: 904, baseType: !517, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !347, file: !42, line: 940, baseType: !146, size: 64, offset: 1344)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !347, file: !42, line: 945, baseType: !180, size: 64, offset: 1408)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !347, file: !42, line: 949, baseType: !121, size: 128, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !347, file: !42, line: 950, baseType: !121, size: 128, offset: 1600)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !347, file: !42, line: 952, baseType: !723, size: 64, offset: 1728)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !347, file: !42, line: 953, baseType: !899, size: 32, offset: 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !347, file: !42, line: 954, baseType: !899, size: 32, offset: 1824)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !295, line: 174, baseType: !343, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !337, file: !295, line: 176, baseType: !3150, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!171, !346, !222, !336, !971}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !325, file: !295, line: 90, baseType: !320, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !325, file: !295, line: 91, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !217, line: 143, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!3160, !222}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !59, line: 39, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3169, !3173, !3179, !3183}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3162, file: !59, line: 40, baseType: !58, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3162, file: !59, line: 41, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!476}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3162, file: !59, line: 42, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!180}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3162, file: !59, line: 43, baseType: !3174, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!2098, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !59, line: 19, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3162, file: !59, line: 44, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!2098}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3162, file: !59, line: 45, baseType: !454, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !217, line: 144, baseType: !3185, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!2098, !222}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !217, line: 145, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !222, !3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !216, file: !217, line: 70, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !605, line: 123, size: 1024, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3326, !3327, !3328, !3329, !3330}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !605, line: 124, baseType: !737, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3196, file: !605, line: 125, baseType: !737, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3196, file: !605, line: 135, baseType: !3195, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3196, file: !605, line: 136, baseType: !150, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3196, file: !605, line: 138, baseType: !750, size: 192, align: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3196, file: !605, line: 140, baseType: !2098, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3196, file: !605, line: 141, baseType: !5, size: 32, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !605, line: 142, baseType: !3206, size: 256, offset: 512)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !605, line: 142, size: 256, elements: !3207)
!3207 = !{!3208, !3254, !3258}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3206, file: !605, line: 143, baseType: !3209, size: 192)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !605, line: 91, size: 192, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3209, file: !605, line: 92, baseType: !154, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3209, file: !605, line: 94, baseType: !746, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3209, file: !605, line: 100, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !605, line: 180, size: 704, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3226, !3227, !3228, !3252, !3253}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3215, file: !605, line: 182, baseType: !3195, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3215, file: !605, line: 183, baseType: !5, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3215, file: !605, line: 186, baseType: !3220, size: 192, offset: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3221, line: 19, size: 192, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3220, file: !3221, line: 20, baseType: !728, size: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3220, file: !3221, line: 21, baseType: !5, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3220, file: !3221, line: 22, baseType: !5, size: 32, offset: 160)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3215, file: !605, line: 187, baseType: !105, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3215, file: !605, line: 188, baseType: !105, size: 32, offset: 352)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3215, file: !605, line: 189, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !605, line: 168, size: 320, elements: !3231)
!3231 = !{!3232, !3236, !3240, !3244, !3248}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3230, file: !605, line: 169, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!171, !700, !3214}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3230, file: !605, line: 171, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!171, !3195, !150, !311}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3230, file: !605, line: 173, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!171, !3195}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3230, file: !605, line: 174, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!171, !3195, !3195, !150}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3230, file: !605, line: 176, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!171, !700, !3195, !3214}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3215, file: !605, line: 192, baseType: !121, size: 128, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3215, file: !605, line: 194, baseType: !1452, size: 128, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3206, file: !605, line: 144, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !605, line: 103, size: 64, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3255, file: !605, line: 104, baseType: !3195, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3206, file: !605, line: 145, baseType: !3259, size: 256)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !605, line: 107, size: 256, elements: !3260)
!3260 = !{!3261, !3321, !3324, !3325}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3259, file: !605, line: 108, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !605, line: 217, size: 768, elements: !3265)
!3265 = !{!3266, !3286, !3290, !3294, !3298, !3302, !3306, !3310, !3311, !3312, !3313, !3317}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !605, line: 222, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!171, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !605, line: 197, size: 1088, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3271, file: !605, line: 199, baseType: !3195, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3271, file: !605, line: 200, baseType: !346, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3271, file: !605, line: 201, baseType: !700, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3271, file: !605, line: 202, baseType: !180, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3271, file: !605, line: 205, baseType: !1161, size: 192, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3271, file: !605, line: 206, baseType: !1161, size: 192, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3271, file: !605, line: 207, baseType: !171, size: 32, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3271, file: !605, line: 208, baseType: !121, size: 128, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3271, file: !605, line: 209, baseType: !270, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3271, file: !605, line: 211, baseType: !316, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3271, file: !605, line: 212, baseType: !476, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3271, file: !605, line: 213, baseType: !476, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3271, file: !605, line: 214, baseType: !999, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3264, file: !605, line: 223, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3270}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3264, file: !605, line: 236, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!171, !700, !180}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3264, file: !605, line: 238, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!180, !700, !2847}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3264, file: !605, line: 239, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!180, !700, !180, !2847}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3264, file: !605, line: 240, baseType: !3303, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !700, !180}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3264, file: !605, line: 242, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!301, !3270, !270, !316, !517}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3264, file: !605, line: 252, baseType: !316, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3264, file: !605, line: 259, baseType: !476, size: 8, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3264, file: !605, line: 260, baseType: !3307, size: 64, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3264, file: !605, line: 263, baseType: !3314, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!2876, !3270, !2878}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3264, file: !605, line: 266, baseType: !3318, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!171, !3270, !971}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !605, line: 109, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !605, line: 31, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !605, line: 110, baseType: !517, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3259, file: !605, line: 111, baseType: !3195, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3196, file: !605, line: 148, baseType: !180, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3196, file: !605, line: 154, baseType: !146, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !605, line: 156, baseType: !208, size: 16, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3196, file: !605, line: 157, baseType: !311, size: 16, offset: 912)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3196, file: !605, line: 158, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !605, line: 32, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !216, file: !217, line: 71, baseType: !3334, size: 32, offset: 448)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3335, line: 19, size: 32, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3334, file: !3335, line: 20, baseType: !1202, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !216, file: !217, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !216, file: !217, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !216, file: !217, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !216, file: !217, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !216, file: !217, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !71, line: 463, baseType: !212, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !213, file: !71, line: 465, baseType: !3345, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !71, line: 36, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !213, file: !71, line: 467, baseType: !150, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !71, line: 468, baseType: !3349, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !71, line: 87, size: 384, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3359, !3364, !3368}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !71, line: 88, baseType: !150, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3351, file: !71, line: 89, baseType: !322, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3351, file: !71, line: 90, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!171, !212, !265}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3351, file: !71, line: 91, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!270, !212, !3363, !3192, !3193}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3351, file: !71, line: 93, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !212}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !71, line: 95, baseType: !3369, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !78, line: 278, size: 1472, elements: !3372)
!3372 = !{!3373, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3371, file: !78, line: 279, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!171, !212}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3371, file: !78, line: 280, baseType: !3365, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3371, file: !78, line: 281, baseType: !3374, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3371, file: !78, line: 282, baseType: !3374, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3371, file: !78, line: 283, baseType: !3374, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3371, file: !78, line: 284, baseType: !3374, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3371, file: !78, line: 285, baseType: !3374, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3371, file: !78, line: 286, baseType: !3374, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3371, file: !78, line: 287, baseType: !3374, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3371, file: !78, line: 288, baseType: !3374, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3371, file: !78, line: 289, baseType: !3374, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3371, file: !78, line: 290, baseType: !3374, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3371, file: !78, line: 291, baseType: !3374, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3371, file: !78, line: 292, baseType: !3374, size: 64, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3371, file: !78, line: 293, baseType: !3374, size: 64, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3371, file: !78, line: 294, baseType: !3374, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3371, file: !78, line: 295, baseType: !3374, size: 64, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3371, file: !78, line: 296, baseType: !3374, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3371, file: !78, line: 297, baseType: !3374, size: 64, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3371, file: !78, line: 298, baseType: !3374, size: 64, offset: 1216)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3371, file: !78, line: 299, baseType: !3374, size: 64, offset: 1280)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3371, file: !78, line: 300, baseType: !3374, size: 64, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3371, file: !78, line: 301, baseType: !3374, size: 64, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !213, file: !71, line: 470, baseType: !3400, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3402, line: 82, size: 1408, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3485, !3488, !3489}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3401, file: !3402, line: 83, baseType: !150, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3401, file: !3402, line: 84, baseType: !150, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3401, file: !3402, line: 85, baseType: !212, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3401, file: !3402, line: 86, baseType: !322, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3401, file: !3402, line: 87, baseType: !322, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3401, file: !3402, line: 88, baseType: !322, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3401, file: !3402, line: 90, baseType: !3411, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!171, !212, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !65, line: 95, size: 1152, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3436, !3449, !3450, !3451, !3452, !3453, !3461, !3462, !3463, !3464, !3465, !3466}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !65, line: 96, baseType: !150, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3415, file: !65, line: 97, baseType: !3400, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3415, file: !65, line: 99, baseType: !619, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3415, file: !65, line: 100, baseType: !150, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3415, file: !65, line: 102, baseType: !476, size: 8, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3415, file: !65, line: 103, baseType: !64, size: 32, offset: 288)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3415, file: !65, line: 105, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3427, line: 262, size: 1600, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !{!3429, !3430, !3431, !3435}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !3427, line: 263, baseType: !2671, size: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3426, file: !3427, line: 264, baseType: !2671, size: 256, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3426, file: !3427, line: 265, baseType: !3432, size: 1024, offset: 512)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !3433)
!3433 = !{!3434}
!3434 = !DISubrange(count: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3426, file: !3427, line: 266, baseType: !2098, size: 64, offset: 1536)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3415, file: !65, line: 106, baseType: !3437, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3427, line: 210, size: 256, elements: !3440)
!3440 = !{!3441, !3445, !3447, !3448}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3439, file: !3427, line: 211, baseType: !3442, size: 72)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, size: 72, elements: !3443)
!3443 = !{!3444}
!3444 = !DISubrange(count: 9)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3439, file: !3427, line: 212, baseType: !3446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3427, line: 14, baseType: !154)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3439, file: !3427, line: 213, baseType: !107, size: 32, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3439, file: !3427, line: 214, baseType: !107, size: 32, offset: 224)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3415, file: !65, line: 108, baseType: !3374, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3415, file: !65, line: 109, baseType: !3365, size: 64, offset: 512)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3415, file: !65, line: 110, baseType: !3374, size: 64, offset: 576)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3415, file: !65, line: 111, baseType: !3365, size: 64, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3415, file: !65, line: 112, baseType: !3454, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!171, !212, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !78, line: 52, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !78, line: 50, size: 32, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3458, file: !78, line: 51, baseType: !171, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3415, file: !65, line: 113, baseType: !3374, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3415, file: !65, line: 114, baseType: !322, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3415, file: !65, line: 115, baseType: !322, size: 64, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3415, file: !65, line: 117, baseType: !3369, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3415, file: !65, line: 118, baseType: !3365, size: 64, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3415, file: !65, line: 120, baseType: !3467, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !65, line: 120, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3401, file: !3402, line: 91, baseType: !3356, size: 64, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3401, file: !3402, line: 92, baseType: !3374, size: 64, offset: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3401, file: !3402, line: 93, baseType: !3365, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3401, file: !3402, line: 94, baseType: !3374, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3401, file: !3402, line: 95, baseType: !3365, size: 64, offset: 704)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3401, file: !3402, line: 97, baseType: !3374, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3401, file: !3402, line: 98, baseType: !3374, size: 64, offset: 832)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3401, file: !3402, line: 100, baseType: !3454, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3401, file: !3402, line: 101, baseType: !3374, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3401, file: !3402, line: 103, baseType: !3374, size: 64, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3401, file: !3402, line: 105, baseType: !3374, size: 64, offset: 1088)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3401, file: !3402, line: 107, baseType: !3369, size: 64, offset: 1152)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3401, file: !3402, line: 109, baseType: !3482, size: 64, offset: 1216)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3402, line: 109, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3401, file: !3402, line: 111, baseType: !3486, size: 64, offset: 1280)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3402, line: 111, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3401, file: !3402, line: 112, baseType: !634, offset: 1344)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3401, file: !3402, line: 114, baseType: !476, size: 8, offset: 1344)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !213, file: !71, line: 471, baseType: !3414, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !213, file: !71, line: 473, baseType: !180, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !213, file: !71, line: 475, baseType: !180, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !213, file: !71, line: 480, baseType: !1161, size: 192, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !213, file: !71, line: 484, baseType: !3495, size: 576, offset: 1216)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !71, line: 361, size: 576, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3495, file: !71, line: 362, baseType: !121, size: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3495, file: !71, line: 363, baseType: !121, size: 128, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3495, file: !71, line: 364, baseType: !121, size: 128, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3495, file: !71, line: 365, baseType: !121, size: 128, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3495, file: !71, line: 366, baseType: !476, size: 8, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3495, file: !71, line: 367, baseType: !70, size: 32, offset: 544)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !213, file: !71, line: 485, baseType: !3504, size: 2304, offset: 1792)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !78, line: 565, size: 2304, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3601, !3605}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3504, file: !78, line: 566, baseType: !3457, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3504, file: !78, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3504, file: !78, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3504, file: !78, line: 569, baseType: !476, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3504, file: !78, line: 570, baseType: !476, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3504, file: !78, line: 571, baseType: !476, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3504, file: !78, line: 572, baseType: !476, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3504, file: !78, line: 573, baseType: !476, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3504, file: !78, line: 574, baseType: !476, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3504, file: !78, line: 575, baseType: !476, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3504, file: !78, line: 576, baseType: !476, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3504, file: !78, line: 577, baseType: !105, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3504, file: !78, line: 578, baseType: !229, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3504, file: !78, line: 580, baseType: !121, size: 128, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3504, file: !78, line: 581, baseType: !1473, size: 192, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3504, file: !78, line: 582, baseType: !3522, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3524, line: 43, size: 1472, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3533, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3523, file: !3524, line: 44, baseType: !150, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3523, file: !3524, line: 45, baseType: !171, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 46, baseType: !121, size: 128, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3523, file: !3524, line: 47, baseType: !229, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3523, file: !3524, line: 48, baseType: !3531, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !78, line: 533, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3523, file: !3524, line: 49, baseType: !3534, size: 320, offset: 320)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3535, line: 11, size: 320, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3536 = !{!3537, !3538, !3539, !3544}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3534, file: !3535, line: 16, baseType: !628, size: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3534, file: !3535, line: 17, baseType: !154, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3534, file: !3535, line: 18, baseType: !3540, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3534, file: !3535, line: 19, baseType: !105, size: 32, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3523, file: !3524, line: 50, baseType: !154, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3523, file: !3524, line: 51, baseType: !1272, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3523, file: !3524, line: 52, baseType: !1272, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3523, file: !3524, line: 53, baseType: !1272, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3523, file: !3524, line: 54, baseType: !1272, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3523, file: !3524, line: 55, baseType: !1272, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3523, file: !3524, line: 56, baseType: !154, size: 64, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3523, file: !3524, line: 57, baseType: !154, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3523, file: !3524, line: 58, baseType: !154, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3523, file: !3524, line: 59, baseType: !154, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3523, file: !3524, line: 60, baseType: !154, size: 64, offset: 1280)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3523, file: !3524, line: 61, baseType: !212, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3523, file: !3524, line: 62, baseType: !476, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3523, file: !3524, line: 63, baseType: !476, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3504, file: !78, line: 583, baseType: !476, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3504, file: !78, line: 584, baseType: !476, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3504, file: !78, line: 585, baseType: !476, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3504, file: !78, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3504, file: !78, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3504, file: !78, line: 592, baseType: !1264, size: 512, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3504, file: !78, line: 593, baseType: !146, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3504, file: !78, line: 594, baseType: !1929, size: 256, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3504, file: !78, line: 595, baseType: !1452, size: 128, offset: 1408)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3504, file: !78, line: 596, baseType: !3531, size: 64, offset: 1536)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3504, file: !78, line: 597, baseType: !737, size: 32, offset: 1600)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3504, file: !78, line: 598, baseType: !737, size: 32, offset: 1632)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3504, file: !78, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3504, file: !78, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3504, file: !78, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3504, file: !78, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3504, file: !78, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3504, file: !78, line: 604, baseType: !476, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3504, file: !78, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3504, file: !78, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3504, file: !78, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3504, file: !78, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3504, file: !78, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3504, file: !78, line: 610, baseType: !5, size: 32, offset: 1696)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3504, file: !78, line: 611, baseType: !77, size: 32, offset: 1728)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3504, file: !78, line: 612, baseType: !85, size: 32, offset: 1760)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3504, file: !78, line: 613, baseType: !171, size: 32, offset: 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3504, file: !78, line: 614, baseType: !171, size: 32, offset: 1824)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3504, file: !78, line: 615, baseType: !146, size: 64, offset: 1856)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3504, file: !78, line: 616, baseType: !146, size: 64, offset: 1920)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3504, file: !78, line: 617, baseType: !146, size: 64, offset: 1984)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3504, file: !78, line: 618, baseType: !146, size: 64, offset: 2048)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3504, file: !78, line: 620, baseType: !3592, size: 64, offset: 2112)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !78, line: 536, size: 256, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3593, file: !78, line: 537, baseType: !229)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3593, file: !78, line: 538, baseType: !5, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3593, file: !78, line: 540, baseType: !121, size: 128, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3593, file: !78, line: 543, baseType: !3599, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !78, line: 534, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3504, file: !78, line: 621, baseType: !3602, size: 64, offset: 2176)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !212, !1415}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3504, file: !78, line: 622, baseType: !3606, size: 64, offset: 2240)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !78, line: 622, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !213, file: !71, line: 486, baseType: !3609, size: 64, offset: 4096)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !78, line: 642, size: 1792, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3618, !3619, !3620}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3610, file: !78, line: 643, baseType: !3371, size: 1472)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3610, file: !78, line: 644, baseType: !3374, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3610, file: !78, line: 645, baseType: !3615, size: 64, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !212, !476}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3610, file: !78, line: 646, baseType: !3374, size: 64, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3610, file: !78, line: 647, baseType: !3365, size: 64, offset: 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3610, file: !78, line: 648, baseType: !3365, size: 64, offset: 1728)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !213, file: !71, line: 493, baseType: !3622, size: 64, offset: 4160)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !71, line: 493, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !213, file: !71, line: 499, baseType: !121, size: 128, offset: 4224)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !213, file: !71, line: 502, baseType: !3626, size: 64, offset: 4352)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3628)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !71, line: 502, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !213, file: !71, line: 504, baseType: !3630, size: 64, offset: 4416)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !213, file: !71, line: 505, baseType: !146, size: 64, offset: 4480)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !213, file: !71, line: 510, baseType: !146, size: 64, offset: 4544)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !213, file: !71, line: 511, baseType: !3634, size: 64, offset: 4608)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !71, line: 511, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !213, file: !71, line: 513, baseType: !3638, size: 64, offset: 4672)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !71, line: 288, size: 128, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3639, file: !71, line: 293, baseType: !5, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3639, file: !71, line: 294, baseType: !154, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !213, file: !71, line: 515, baseType: !121, size: 128, offset: 4736)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !213, file: !71, line: 526, baseType: !3645, offset: 4864)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3646, line: 5, elements: !243)
!3646 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !213, file: !71, line: 528, baseType: !3648, size: 64, offset: 4864)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3650, line: 14, flags: DIFlagFwdDecl)
!3650 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !213, file: !71, line: 529, baseType: !3652, size: 64, offset: 4928)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3654, line: 17, size: 192, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3655 = !{!3656, !3657, !3740}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3653, file: !3654, line: 18, baseType: !3652, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3653, file: !3654, line: 19, baseType: !3658, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3654, line: 110, size: 1152, elements: !3661)
!3661 = !{!3662, !3666, !3670, !3676, !3682, !3686, !3690, !3695, !3699, !3700, !3704, !3708, !3712, !3723, !3724, !3725, !3726, !3736}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3660, file: !3654, line: 111, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!3652, !3652}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3660, file: !3654, line: 112, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{null, !3652}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3660, file: !3654, line: 113, baseType: !3671, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!476, !3674}
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3660, file: !3654, line: 114, baseType: !3677, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!2098, !3674, !3680}
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3660, file: !3654, line: 116, baseType: !3683, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!476, !3674, !150}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3660, file: !3654, line: 118, baseType: !3687, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!171, !3674, !150, !5, !180, !316}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3660, file: !3654, line: 123, baseType: !3691, size: 64, offset: 384)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!171, !3674, !150, !3694, !316}
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3660, file: !3654, line: 126, baseType: !3696, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!150, !3674}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3660, file: !3654, line: 127, baseType: !3696, size: 64, offset: 512)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3660, file: !3654, line: 128, baseType: !3701, size: 64, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!3652, !3674}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3660, file: !3654, line: 130, baseType: !3705, size: 64, offset: 640)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3652, !3674, !3652}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3660, file: !3654, line: 133, baseType: !3709, size: 64, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!3652, !3674, !150}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3660, file: !3654, line: 135, baseType: !3713, size: 64, offset: 768)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!171, !3674, !150, !150, !5, !5, !3716}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3654, line: 43, size: 640, elements: !3718)
!3718 = !{!3719, !3720, !3721}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3717, file: !3654, line: 44, baseType: !3652, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3717, file: !3654, line: 45, baseType: !5, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3717, file: !3654, line: 46, baseType: !3722, size: 512, offset: 128)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 512, elements: !1302)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3660, file: !3654, line: 140, baseType: !3705, size: 64, offset: 832)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3660, file: !3654, line: 143, baseType: !3701, size: 64, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3660, file: !3654, line: 145, baseType: !3663, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3660, file: !3654, line: 146, baseType: !3727, size: 64, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!171, !3674, !3730}
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3654, line: 29, size: 128, elements: !3732)
!3732 = !{!3733, !3734, !3735}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3731, file: !3654, line: 30, baseType: !5, size: 32)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3731, file: !3654, line: 31, baseType: !5, size: 32, offset: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3731, file: !3654, line: 32, baseType: !3674, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3660, file: !3654, line: 148, baseType: !3737, size: 64, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!171, !3674, !212}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3653, file: !3654, line: 20, baseType: !212, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !213, file: !71, line: 534, baseType: !499, size: 32, offset: 4992)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !213, file: !71, line: 535, baseType: !105, size: 32, offset: 5024)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !213, file: !71, line: 537, baseType: !229, offset: 5056)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !213, file: !71, line: 538, baseType: !121, size: 128, offset: 5056)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !213, file: !71, line: 540, baseType: !3746, size: 64, offset: 5184)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3748, line: 54, size: 960, elements: !3749)
!3748 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3749 = !{!3750, !3751, !3752, !3753, !3754, !3755, !3756, !3760, !3764, !3765, !3766, !3767, !3771, !3775, !3776}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3747, file: !3748, line: 55, baseType: !150, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3747, file: !3748, line: 56, baseType: !619, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3747, file: !3748, line: 58, baseType: !322, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3747, file: !3748, line: 59, baseType: !322, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3747, file: !3748, line: 60, baseType: !222, size: 64, offset: 256)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3747, file: !3748, line: 62, baseType: !3356, size: 64, offset: 320)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3747, file: !3748, line: 63, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!270, !212, !3363}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3747, file: !3748, line: 65, baseType: !3761, size: 64, offset: 448)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3746}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3747, file: !3748, line: 66, baseType: !3365, size: 64, offset: 512)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3747, file: !3748, line: 68, baseType: !3374, size: 64, offset: 576)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3747, file: !3748, line: 70, baseType: !3160, size: 64, offset: 640)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3747, file: !3748, line: 71, baseType: !3768, size: 64, offset: 704)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!2098, !212}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3747, file: !3748, line: 73, baseType: !3772, size: 64, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{null, !212, !3192, !3193}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3747, file: !3748, line: 75, baseType: !3369, size: 64, offset: 832)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3747, file: !3748, line: 77, baseType: !3486, size: 64, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !213, file: !71, line: 541, baseType: !322, size: 64, offset: 5248)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !213, file: !71, line: 543, baseType: !3365, size: 64, offset: 5312)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !213, file: !71, line: 544, baseType: !3780, size: 64, offset: 5376)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !71, line: 45, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !213, file: !71, line: 545, baseType: !3783, size: 64, offset: 5440)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !71, line: 47, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !213, file: !71, line: 547, baseType: !476, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !213, file: !71, line: 548, baseType: !476, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !213, file: !71, line: 549, baseType: !476, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !213, file: !71, line: 550, baseType: !476, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !129, file: !92, line: 635, baseType: !213, size: 5568, offset: 2304)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !129, file: !92, line: 636, baseType: !336, size: 64, offset: 7872)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !129, file: !92, line: 637, baseType: !336, size: 64, offset: 7936)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !129, file: !92, line: 638, baseType: !5, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !118, file: !92, line: 312, baseType: !128, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !118, file: !92, line: 314, baseType: !180, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !118, file: !92, line: 315, baseType: !195, size: 64, offset: 320)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !118, file: !92, line: 316, baseType: !3797, size: 64, offset: 384)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !92, line: 69, size: 832, elements: !3799)
!3799 = !{!3800, !3801, !3802, !3805, !3806}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3798, file: !92, line: 70, baseType: !128, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3798, file: !92, line: 71, baseType: !121, size: 128, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3798, file: !92, line: 72, baseType: !3803, size: 64, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !92, line: 72, flags: DIFlagFwdDecl)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3798, file: !92, line: 73, baseType: !199, size: 8, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3798, file: !92, line: 74, baseType: !216, size: 512, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !118, file: !92, line: 318, baseType: !5, size: 32, offset: 448)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !118, file: !92, line: 319, baseType: !208, size: 16, offset: 480)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !118, file: !92, line: 320, baseType: !208, size: 16, offset: 496)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !118, file: !92, line: 321, baseType: !208, size: 16, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !118, file: !92, line: 322, baseType: !208, size: 16, offset: 528)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !118, file: !92, line: 323, baseType: !5, size: 32, offset: 544)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !118, file: !92, line: 324, baseType: !1324, size: 8, offset: 576)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !118, file: !92, line: 325, baseType: !1324, size: 8, offset: 584)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !118, file: !92, line: 330, baseType: !1324, size: 8, offset: 592)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !118, file: !92, line: 331, baseType: !1324, size: 8, offset: 600)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !118, file: !92, line: 332, baseType: !1324, size: 8, offset: 608)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !118, file: !92, line: 333, baseType: !1324, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !118, file: !92, line: 334, baseType: !1324, size: 8, offset: 624)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !118, file: !92, line: 335, baseType: !1324, size: 8, offset: 632)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !118, file: !92, line: 336, baseType: !849, size: 16, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !118, file: !92, line: 337, baseType: !3823, size: 64, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !118, file: !92, line: 339, baseType: !3825, size: 64, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !92, line: 858, size: 2048, elements: !3827)
!3827 = !{!3828, !3829, !3830, !3842, !3846, !3850, !3854, !3858, !3859, !3863, !3882, !3883, !3884}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3826, file: !92, line: 859, baseType: !121, size: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3826, file: !92, line: 860, baseType: !150, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3826, file: !92, line: 861, baseType: !3831, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3833)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3427, line: 38, size: 256, elements: !3834)
!3834 = !{!3835, !3836, !3837, !3838, !3839, !3840, !3841}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3833, file: !3427, line: 39, baseType: !107, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3833, file: !3427, line: 39, baseType: !107, size: 32, offset: 32)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3833, file: !3427, line: 40, baseType: !107, size: 32, offset: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3833, file: !3427, line: 40, baseType: !107, size: 32, offset: 96)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3833, file: !3427, line: 41, baseType: !107, size: 32, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3833, file: !3427, line: 41, baseType: !107, size: 32, offset: 160)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3833, file: !3427, line: 42, baseType: !3446, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3826, file: !92, line: 862, baseType: !3843, size: 64, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!171, !117, !3831}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3826, file: !92, line: 863, baseType: !3847, size: 64, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{null, !117}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3826, file: !92, line: 864, baseType: !3851, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!171, !117, !3457}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3826, file: !92, line: 865, baseType: !3855, size: 64, offset: 448)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!171, !117}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3826, file: !92, line: 866, baseType: !3847, size: 64, offset: 512)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3826, file: !92, line: 867, baseType: !3860, size: 64, offset: 576)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!171, !117, !171}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3826, file: !92, line: 868, baseType: !3864, size: 64, offset: 640)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3866)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !92, line: 795, size: 384, elements: !3867)
!3867 = !{!3868, !3874, !3878, !3879, !3880, !3881}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3866, file: !92, line: 797, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!3872, !117, !3873}
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !92, line: 772, baseType: !5)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !92, line: 180, baseType: !5)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3866, file: !92, line: 801, baseType: !3875, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!3872, !117}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3866, file: !92, line: 804, baseType: !3875, size: 64, offset: 128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3866, file: !92, line: 807, baseType: !3847, size: 64, offset: 192)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3866, file: !92, line: 808, baseType: !3847, size: 64, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3866, file: !92, line: 811, baseType: !3847, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3826, file: !92, line: 869, baseType: !322, size: 64, offset: 704)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3826, file: !92, line: 870, baseType: !3415, size: 1152, offset: 768)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3826, file: !92, line: 871, baseType: !3885, size: 128, offset: 1920)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !92, line: 759, size: 128, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3885, file: !92, line: 760, baseType: !229)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3885, file: !92, line: 761, baseType: !121, size: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !118, file: !92, line: 340, baseType: !146, size: 64, offset: 832)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !118, file: !92, line: 346, baseType: !3639, size: 128, offset: 896)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !118, file: !92, line: 348, baseType: !3892, size: 32, offset: 1024)
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !92, line: 155, baseType: !171)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !118, file: !92, line: 351, baseType: !5, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !118, file: !92, line: 352, baseType: !1324, size: 8, offset: 1064)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !118, file: !92, line: 353, baseType: !5, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !118, file: !92, line: 355, baseType: !5, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !118, file: !92, line: 356, baseType: !5, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !118, file: !92, line: 357, baseType: !5, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !118, file: !92, line: 358, baseType: !5, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !118, file: !92, line: 359, baseType: !5, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !118, file: !92, line: 360, baseType: !5, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !118, file: !92, line: 361, baseType: !5, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !118, file: !92, line: 362, baseType: !5, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !118, file: !92, line: 364, baseType: !5, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !118, file: !92, line: 365, baseType: !5, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !118, file: !92, line: 369, baseType: !5, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !118, file: !92, line: 370, baseType: !5, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !118, file: !92, line: 371, baseType: !5, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !118, file: !92, line: 374, baseType: !5, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !118, file: !92, line: 376, baseType: !5, size: 32, offset: 1120)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !118, file: !92, line: 377, baseType: !5, size: 32, offset: 1152)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !118, file: !92, line: 380, baseType: !3913, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !92, line: 303, flags: DIFlagFwdDecl)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !118, file: !92, line: 381, baseType: !5, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !118, file: !92, line: 383, baseType: !171, size: 32, offset: 1312)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !118, file: !92, line: 385, baseType: !5, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !118, file: !92, line: 387, baseType: !3873, size: 32, offset: 1376)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !118, file: !92, line: 388, baseType: !213, size: 5568, offset: 1408)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !118, file: !92, line: 390, baseType: !171, size: 32, offset: 6976)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !118, file: !92, line: 396, baseType: !5, size: 32, offset: 7008)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !118, file: !92, line: 397, baseType: !3923, size: 8704, offset: 7040)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 8704, elements: !3924)
!3924 = !{!3925}
!3925 = !DISubrange(count: 17)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !118, file: !92, line: 399, baseType: !476, size: 8, offset: 15744)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !118, file: !92, line: 401, baseType: !5, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !118, file: !92, line: 402, baseType: !5, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !118, file: !92, line: 403, baseType: !5, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !118, file: !92, line: 404, baseType: !5, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !118, file: !92, line: 405, baseType: !5, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !118, file: !92, line: 407, baseType: !5, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !118, file: !92, line: 408, baseType: !5, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !118, file: !92, line: 409, baseType: !5, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !118, file: !92, line: 410, baseType: !5, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !118, file: !92, line: 411, baseType: !5, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !118, file: !92, line: 412, baseType: !5, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !118, file: !92, line: 413, baseType: !5, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !118, file: !92, line: 414, baseType: !5, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !118, file: !92, line: 415, baseType: !5, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !118, file: !92, line: 416, baseType: !5, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !118, file: !92, line: 417, baseType: !5, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !118, file: !92, line: 418, baseType: !5, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !118, file: !92, line: 419, baseType: !5, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !118, file: !92, line: 420, baseType: !5, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !118, file: !92, line: 421, baseType: !5, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !118, file: !92, line: 422, baseType: !5, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !118, file: !92, line: 423, baseType: !5, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !118, file: !92, line: 424, baseType: !5, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !118, file: !92, line: 425, baseType: !5, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !118, file: !92, line: 426, baseType: !5, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !118, file: !92, line: 427, baseType: !5, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !118, file: !92, line: 435, baseType: !5, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !118, file: !92, line: 441, baseType: !5, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !118, file: !92, line: 442, baseType: !5, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !118, file: !92, line: 443, baseType: !5, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !118, file: !92, line: 444, baseType: !5, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !118, file: !92, line: 445, baseType: !5, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !118, file: !92, line: 446, baseType: !5, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !118, file: !92, line: 447, baseType: !5, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !118, file: !92, line: 448, baseType: !5, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !118, file: !92, line: 449, baseType: !5, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !118, file: !92, line: 450, baseType: !3964, size: 16, offset: 15792)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !92, line: 206, baseType: !208)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !118, file: !92, line: 451, baseType: !737, size: 32, offset: 15808)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !118, file: !92, line: 453, baseType: !3967, size: 512, offset: 15840)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 512, elements: !1706)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !118, file: !92, line: 454, baseType: !624, size: 64, offset: 16384)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !118, file: !92, line: 455, baseType: !336, size: 64, offset: 16448)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !118, file: !92, line: 456, baseType: !171, size: 32, offset: 16512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !118, file: !92, line: 457, baseType: !3972, size: 1088, offset: 16576)
!3972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 1088, elements: !3924)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !118, file: !92, line: 458, baseType: !3972, size: 1088, offset: 17664)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !118, file: !92, line: 469, baseType: !322, size: 64, offset: 18752)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !118, file: !92, line: 471, baseType: !3976, size: 64, offset: 18816)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !92, line: 304, flags: DIFlagFwdDecl)
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !92, line: 478, baseType: !3979, size: 64, offset: 18880)
!3979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !92, line: 478, size: 64, elements: !3980)
!3980 = !{!3981, !4009}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !3979, file: !92, line: 479, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3984, line: 323, size: 1024, elements: !3985)
!3984 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4008}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3983, file: !3984, line: 324, baseType: !171, size: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !3983, file: !3984, line: 325, baseType: !171, size: 32, offset: 32)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !3983, file: !3984, line: 326, baseType: !105, size: 32, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3983, file: !3984, line: 327, baseType: !849, size: 16, offset: 96)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !3983, file: !3984, line: 328, baseType: !849, size: 16, offset: 112)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !3983, file: !3984, line: 329, baseType: !849, size: 16, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !3983, file: !3984, line: 330, baseType: !849, size: 16, offset: 144)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3983, file: !3984, line: 331, baseType: !849, size: 16, offset: 160)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !3983, file: !3984, line: 332, baseType: !849, size: 16, offset: 176)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !3983, file: !3984, line: 333, baseType: !849, size: 16, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !3983, file: !3984, line: 334, baseType: !105, size: 32, offset: 224)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3983, file: !3984, line: 335, baseType: !1324, size: 8, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !3983, file: !3984, line: 336, baseType: !1324, size: 8, offset: 264)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !3983, file: !3984, line: 337, baseType: !849, size: 16, offset: 272)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3983, file: !3984, line: 338, baseType: !117, size: 64, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3983, file: !3984, line: 339, baseType: !117, size: 64, offset: 384)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3983, file: !3984, line: 340, baseType: !105, size: 32, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3983, file: !3984, line: 341, baseType: !1324, size: 8, offset: 480)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3983, file: !3984, line: 342, baseType: !849, size: 16, offset: 496)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3983, file: !3984, line: 343, baseType: !849, size: 16, offset: 512)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !3983, file: !3984, line: 344, baseType: !4007, size: 384, offset: 576)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 384, elements: !1596)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !3983, file: !3984, line: 345, baseType: !476, size: 8, offset: 960)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !3979, file: !92, line: 480, baseType: !117, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !118, file: !92, line: 482, baseType: !849, size: 16, offset: 18944)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !118, file: !92, line: 483, baseType: !1324, size: 8, offset: 18960)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !118, file: !92, line: 497, baseType: !849, size: 16, offset: 18976)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !118, file: !92, line: 498, baseType: !145, size: 64, offset: 19008)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !118, file: !92, line: 499, baseType: !316, size: 64, offset: 19072)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !118, file: !92, line: 500, baseType: !270, size: 64, offset: 19136)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !118, file: !92, line: 502, baseType: !154, size: 64, offset: 19200)
!4017 = !DILocalVariable(name: "dev", arg: 1, scope: !114, file: !1, line: 121, type: !117)
!4018 = !DILocation(line: 121, column: 42, scope: !114)
!4019 = !DILocalVariable(name: "resno", arg: 2, scope: !114, file: !1, line: 121, type: !171)
!4020 = !DILocation(line: 121, column: 51, scope: !114)
!4021 = !DILocation(line: 123, column: 6, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !114, file: !1, line: 123, column: 6)
!4023 = !DILocation(line: 123, column: 12, scope: !4022)
!4024 = !DILocation(line: 123, column: 6, scope: !114)
!4025 = !DILocation(line: 124, column: 27, scope: !4022)
!4026 = !DILocation(line: 124, column: 32, scope: !4022)
!4027 = !DILocation(line: 124, column: 3, scope: !4022)
!4028 = !DILocation(line: 126, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4022, file: !1, line: 126, column: 11)
!4030 = !DILocation(line: 126, column: 17, scope: !4029)
!4031 = !DILocation(line: 126, column: 38, scope: !4029)
!4032 = !DILocation(line: 126, column: 41, scope: !4029)
!4033 = !DILocation(line: 126, column: 47, scope: !4029)
!4034 = !DILocation(line: 126, column: 11, scope: !4022)
!4035 = !DILocation(line: 127, column: 27, scope: !4029)
!4036 = !DILocation(line: 127, column: 32, scope: !4029)
!4037 = !DILocation(line: 127, column: 3, scope: !4029)
!4038 = !DILocation(line: 129, column: 1, scope: !114)
!4039 = distinct !DISubprogram(name: "pci_std_update_resource", scope: !1, file: !1, line: 25, type: !115, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4040 = !DILocalVariable(name: "dev", arg: 1, scope: !4039, file: !1, line: 25, type: !117)
!4041 = !DILocation(line: 25, column: 53, scope: !4039)
!4042 = !DILocalVariable(name: "resno", arg: 2, scope: !4039, file: !1, line: 25, type: !171)
!4043 = !DILocation(line: 25, column: 62, scope: !4039)
!4044 = !DILocalVariable(name: "region", scope: !4039, file: !1, line: 27, type: !4045)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !92, line: 754, size: 128, elements: !4046)
!4046 = !{!4047, !4049}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4045, file: !92, line: 755, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !92, line: 749, baseType: !146)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4045, file: !92, line: 756, baseType: !4048, size: 64, offset: 64)
!4050 = !DILocation(line: 27, column: 24, scope: !4039)
!4051 = !DILocalVariable(name: "disable", scope: !4039, file: !1, line: 28, type: !476)
!4052 = !DILocation(line: 28, column: 7, scope: !4039)
!4053 = !DILocalVariable(name: "cmd", scope: !4039, file: !1, line: 29, type: !849)
!4054 = !DILocation(line: 29, column: 6, scope: !4039)
!4055 = !DILocalVariable(name: "new", scope: !4039, file: !1, line: 30, type: !105)
!4056 = !DILocation(line: 30, column: 6, scope: !4039)
!4057 = !DILocalVariable(name: "check", scope: !4039, file: !1, line: 30, type: !105)
!4058 = !DILocation(line: 30, column: 11, scope: !4039)
!4059 = !DILocalVariable(name: "mask", scope: !4039, file: !1, line: 30, type: !105)
!4060 = !DILocation(line: 30, column: 18, scope: !4039)
!4061 = !DILocalVariable(name: "reg", scope: !4039, file: !1, line: 31, type: !171)
!4062 = !DILocation(line: 31, column: 6, scope: !4039)
!4063 = !DILocalVariable(name: "res", scope: !4039, file: !1, line: 32, type: !139)
!4064 = !DILocation(line: 32, column: 19, scope: !4039)
!4065 = !DILocation(line: 32, column: 25, scope: !4039)
!4066 = !DILocation(line: 32, column: 30, scope: !4039)
!4067 = !DILocation(line: 32, column: 41, scope: !4039)
!4068 = !DILocation(line: 32, column: 39, scope: !4039)
!4069 = !DILocation(line: 35, column: 6, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 35, column: 6)
!4071 = !DILocation(line: 35, column: 11, scope: !4070)
!4072 = !DILocation(line: 35, column: 6, scope: !4039)
!4073 = !DILocation(line: 36, column: 3, scope: !4070)
!4074 = !DILocation(line: 42, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 42, column: 6)
!4076 = !DILocation(line: 42, column: 12, scope: !4075)
!4077 = !DILocation(line: 42, column: 6, scope: !4039)
!4078 = !DILocation(line: 43, column: 3, scope: !4075)
!4079 = !DILocation(line: 45, column: 6, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 45, column: 6)
!4081 = !DILocation(line: 45, column: 11, scope: !4080)
!4082 = !DILocation(line: 45, column: 17, scope: !4080)
!4083 = !DILocation(line: 45, column: 6, scope: !4039)
!4084 = !DILocation(line: 46, column: 3, scope: !4080)
!4085 = !DILocation(line: 53, column: 6, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 53, column: 6)
!4087 = !DILocation(line: 53, column: 11, scope: !4086)
!4088 = !DILocation(line: 53, column: 17, scope: !4086)
!4089 = !DILocation(line: 53, column: 6, scope: !4039)
!4090 = !DILocation(line: 54, column: 3, scope: !4086)
!4091 = !DILocation(line: 56, column: 26, scope: !4039)
!4092 = !DILocation(line: 56, column: 31, scope: !4039)
!4093 = !DILocation(line: 56, column: 45, scope: !4039)
!4094 = !DILocation(line: 56, column: 2, scope: !4039)
!4095 = !DILocation(line: 57, column: 15, scope: !4039)
!4096 = !DILocation(line: 57, column: 8, scope: !4039)
!4097 = !DILocation(line: 57, column: 6, scope: !4039)
!4098 = !DILocation(line: 59, column: 6, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 59, column: 6)
!4100 = !DILocation(line: 59, column: 11, scope: !4099)
!4101 = !DILocation(line: 59, column: 17, scope: !4099)
!4102 = !DILocation(line: 59, column: 6, scope: !4039)
!4103 = !DILocation(line: 60, column: 8, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 59, column: 34)
!4105 = !DILocation(line: 61, column: 10, scope: !4104)
!4106 = !DILocation(line: 61, column: 15, scope: !4104)
!4107 = !DILocation(line: 61, column: 21, scope: !4104)
!4108 = !DILocation(line: 61, column: 7, scope: !4104)
!4109 = !DILocation(line: 62, column: 2, scope: !4104)
!4110 = !DILocation(line: 62, column: 13, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4099, file: !1, line: 62, column: 13)
!4112 = !DILocation(line: 62, column: 19, scope: !4111)
!4113 = !DILocation(line: 62, column: 13, scope: !4099)
!4114 = !DILocation(line: 63, column: 8, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4111, file: !1, line: 62, column: 40)
!4116 = !DILocation(line: 64, column: 2, scope: !4115)
!4117 = !DILocation(line: 65, column: 8, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4111, file: !1, line: 64, column: 9)
!4119 = !DILocation(line: 66, column: 10, scope: !4118)
!4120 = !DILocation(line: 66, column: 15, scope: !4118)
!4121 = !DILocation(line: 66, column: 21, scope: !4118)
!4122 = !DILocation(line: 66, column: 7, scope: !4118)
!4123 = !DILocation(line: 69, column: 6, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 69, column: 6)
!4125 = !DILocation(line: 69, column: 12, scope: !4124)
!4126 = !DILocation(line: 69, column: 6, scope: !4039)
!4127 = !DILocation(line: 70, column: 34, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !1, line: 69, column: 32)
!4129 = !DILocation(line: 70, column: 32, scope: !4128)
!4130 = !DILocation(line: 70, column: 28, scope: !4128)
!4131 = !DILocation(line: 70, column: 7, scope: !4128)
!4132 = !DILocation(line: 71, column: 2, scope: !4128)
!4133 = !DILocation(line: 71, column: 13, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4124, file: !1, line: 71, column: 13)
!4135 = !DILocation(line: 71, column: 19, scope: !4134)
!4136 = !DILocation(line: 71, column: 13, scope: !4124)
!4137 = !DILocation(line: 79, column: 9, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !1, line: 79, column: 7)
!4139 = distinct !DILexicalBlock(scope: !4134, file: !1, line: 71, column: 40)
!4140 = !DILocation(line: 79, column: 14, scope: !4138)
!4141 = !DILocation(line: 79, column: 20, scope: !4138)
!4142 = !DILocation(line: 79, column: 7, scope: !4139)
!4143 = !DILocation(line: 80, column: 4, scope: !4138)
!4144 = !DILocation(line: 82, column: 9, scope: !4139)
!4145 = !DILocation(line: 82, column: 14, scope: !4139)
!4146 = !DILocation(line: 82, column: 7, scope: !4139)
!4147 = !DILocation(line: 83, column: 7, scope: !4139)
!4148 = !DILocation(line: 84, column: 2, scope: !4139)
!4149 = !DILocation(line: 85, column: 3, scope: !4134)
!4150 = !DILocation(line: 92, column: 13, scope: !4039)
!4151 = !DILocation(line: 92, column: 18, scope: !4039)
!4152 = !DILocation(line: 92, column: 24, scope: !4039)
!4153 = !DILocation(line: 92, column: 45, scope: !4039)
!4154 = !DILocation(line: 92, column: 49, scope: !4039)
!4155 = !DILocation(line: 92, column: 54, scope: !4039)
!4156 = !DILocation(line: 92, column: 48, scope: !4039)
!4157 = !DILocation(line: 0, scope: !4039)
!4158 = !DILocation(line: 92, column: 10, scope: !4039)
!4159 = !DILocation(line: 93, column: 6, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 93, column: 6)
!4161 = !DILocation(line: 93, column: 6, scope: !4039)
!4162 = !DILocation(line: 94, column: 24, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 93, column: 15)
!4164 = !DILocation(line: 94, column: 3, scope: !4163)
!4165 = !DILocation(line: 95, column: 25, scope: !4163)
!4166 = !DILocation(line: 96, column: 11, scope: !4163)
!4167 = !DILocation(line: 96, column: 15, scope: !4163)
!4168 = !DILocation(line: 95, column: 3, scope: !4163)
!4169 = !DILocation(line: 97, column: 2, scope: !4163)
!4170 = !DILocation(line: 99, column: 25, scope: !4039)
!4171 = !DILocation(line: 99, column: 30, scope: !4039)
!4172 = !DILocation(line: 99, column: 35, scope: !4039)
!4173 = !DILocation(line: 99, column: 2, scope: !4039)
!4174 = !DILocation(line: 100, column: 24, scope: !4039)
!4175 = !DILocation(line: 100, column: 29, scope: !4039)
!4176 = !DILocation(line: 100, column: 2, scope: !4039)
!4177 = !DILocation(line: 102, column: 7, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 102, column: 6)
!4179 = !DILocation(line: 102, column: 13, scope: !4178)
!4180 = !DILocation(line: 102, column: 11, scope: !4178)
!4181 = !DILocation(line: 102, column: 22, scope: !4178)
!4182 = !DILocation(line: 102, column: 20, scope: !4178)
!4183 = !DILocation(line: 102, column: 6, scope: !4039)
!4184 = !DILocation(line: 103, column: 3, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4178, file: !1, line: 102, column: 28)
!4186 = !DILocation(line: 105, column: 2, scope: !4185)
!4187 = !DILocation(line: 107, column: 6, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 107, column: 6)
!4189 = !DILocation(line: 107, column: 11, scope: !4188)
!4190 = !DILocation(line: 107, column: 17, scope: !4188)
!4191 = !DILocation(line: 107, column: 6, scope: !4039)
!4192 = !DILocation(line: 108, column: 16, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4188, file: !1, line: 107, column: 38)
!4194 = !DILocation(line: 108, column: 22, scope: !4193)
!4195 = !DILocation(line: 108, column: 28, scope: !4193)
!4196 = !DILocation(line: 108, column: 9, scope: !4193)
!4197 = !DILocation(line: 108, column: 7, scope: !4193)
!4198 = !DILocation(line: 109, column: 26, scope: !4193)
!4199 = !DILocation(line: 109, column: 31, scope: !4193)
!4200 = !DILocation(line: 109, column: 35, scope: !4193)
!4201 = !DILocation(line: 109, column: 40, scope: !4193)
!4202 = !DILocation(line: 109, column: 3, scope: !4193)
!4203 = !DILocation(line: 110, column: 25, scope: !4193)
!4204 = !DILocation(line: 110, column: 30, scope: !4193)
!4205 = !DILocation(line: 110, column: 34, scope: !4193)
!4206 = !DILocation(line: 110, column: 3, scope: !4193)
!4207 = !DILocation(line: 111, column: 7, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4193, file: !1, line: 111, column: 7)
!4209 = !DILocation(line: 111, column: 16, scope: !4208)
!4210 = !DILocation(line: 111, column: 13, scope: !4208)
!4211 = !DILocation(line: 111, column: 7, scope: !4193)
!4212 = !DILocation(line: 112, column: 4, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4208, file: !1, line: 111, column: 21)
!4214 = !DILocation(line: 114, column: 3, scope: !4213)
!4215 = !DILocation(line: 115, column: 2, scope: !4193)
!4216 = !DILocation(line: 117, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4039, file: !1, line: 117, column: 6)
!4218 = !DILocation(line: 117, column: 6, scope: !4039)
!4219 = !DILocation(line: 118, column: 25, scope: !4217)
!4220 = !DILocation(line: 118, column: 43, scope: !4217)
!4221 = !DILocation(line: 118, column: 3, scope: !4217)
!4222 = !DILocation(line: 119, column: 1, scope: !4039)
!4223 = distinct !DISubprogram(name: "pci_claim_resource", scope: !1, file: !1, line: 131, type: !3861, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4224 = !DILocalVariable(name: "dev", arg: 1, scope: !4223, file: !1, line: 131, type: !117)
!4225 = !DILocation(line: 131, column: 40, scope: !4223)
!4226 = !DILocalVariable(name: "resource", arg: 2, scope: !4223, file: !1, line: 131, type: !171)
!4227 = !DILocation(line: 131, column: 49, scope: !4223)
!4228 = !DILocalVariable(name: "res", scope: !4223, file: !1, line: 133, type: !139)
!4229 = !DILocation(line: 133, column: 19, scope: !4223)
!4230 = !DILocation(line: 133, column: 26, scope: !4223)
!4231 = !DILocation(line: 133, column: 31, scope: !4223)
!4232 = !DILocation(line: 133, column: 40, scope: !4223)
!4233 = !DILocalVariable(name: "root", scope: !4223, file: !1, line: 134, type: !139)
!4234 = !DILocation(line: 134, column: 19, scope: !4223)
!4235 = !DILocalVariable(name: "conflict", scope: !4223, file: !1, line: 134, type: !139)
!4236 = !DILocation(line: 134, column: 26, scope: !4223)
!4237 = !DILocation(line: 136, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4223, file: !1, line: 136, column: 6)
!4239 = !DILocation(line: 136, column: 11, scope: !4238)
!4240 = !DILocation(line: 136, column: 17, scope: !4238)
!4241 = !DILocation(line: 136, column: 6, scope: !4223)
!4242 = !DILocation(line: 137, column: 3, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4238, file: !1, line: 136, column: 37)
!4244 = !DILocation(line: 139, column: 3, scope: !4243)
!4245 = !DILocation(line: 147, column: 6, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4223, file: !1, line: 147, column: 6)
!4247 = !DILocation(line: 147, column: 11, scope: !4246)
!4248 = !DILocation(line: 147, column: 17, scope: !4246)
!4249 = !DILocation(line: 147, column: 6, scope: !4223)
!4250 = !DILocation(line: 148, column: 3, scope: !4246)
!4251 = !DILocation(line: 150, column: 34, scope: !4223)
!4252 = !DILocation(line: 150, column: 39, scope: !4223)
!4253 = !DILocation(line: 150, column: 9, scope: !4223)
!4254 = !DILocation(line: 150, column: 7, scope: !4223)
!4255 = !DILocation(line: 151, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4223, file: !1, line: 151, column: 6)
!4257 = !DILocation(line: 151, column: 6, scope: !4223)
!4258 = !DILocation(line: 152, column: 3, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 151, column: 13)
!4260 = !DILocation(line: 154, column: 3, scope: !4259)
!4261 = !DILocation(line: 154, column: 8, scope: !4259)
!4262 = !DILocation(line: 154, column: 14, scope: !4259)
!4263 = !DILocation(line: 155, column: 3, scope: !4259)
!4264 = !DILocation(line: 158, column: 39, scope: !4223)
!4265 = !DILocation(line: 158, column: 45, scope: !4223)
!4266 = !DILocation(line: 158, column: 13, scope: !4223)
!4267 = !DILocation(line: 158, column: 11, scope: !4223)
!4268 = !DILocation(line: 159, column: 6, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4223, file: !1, line: 159, column: 6)
!4270 = !DILocation(line: 159, column: 6, scope: !4223)
!4271 = !DILocation(line: 160, column: 3, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4269, file: !1, line: 159, column: 16)
!4273 = !DILocation(line: 162, column: 3, scope: !4272)
!4274 = !DILocation(line: 162, column: 8, scope: !4272)
!4275 = !DILocation(line: 162, column: 14, scope: !4272)
!4276 = !DILocation(line: 163, column: 3, scope: !4272)
!4277 = !DILocation(line: 166, column: 2, scope: !4223)
!4278 = !DILocation(line: 167, column: 1, scope: !4223)
!4279 = distinct !DISubprogram(name: "pci_disable_bridge_window", scope: !1, file: !1, line: 170, type: !3848, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4280 = !DILocalVariable(name: "dev", arg: 1, scope: !4279, file: !1, line: 170, type: !117)
!4281 = !DILocation(line: 170, column: 48, scope: !4279)
!4282 = !DILocation(line: 173, column: 25, scope: !4279)
!4283 = !DILocation(line: 173, column: 2, scope: !4279)
!4284 = !DILocation(line: 176, column: 25, scope: !4279)
!4285 = !DILocation(line: 176, column: 2, scope: !4279)
!4286 = !DILocation(line: 177, column: 25, scope: !4279)
!4287 = !DILocation(line: 177, column: 2, scope: !4279)
!4288 = !DILocation(line: 178, column: 25, scope: !4279)
!4289 = !DILocation(line: 178, column: 2, scope: !4279)
!4290 = !DILocation(line: 179, column: 1, scope: !4279)
!4291 = distinct !DISubprogram(name: "pcibios_retrieve_fw_addr", scope: !1, file: !1, line: 190, type: !4292, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{!144, !117, !171}
!4294 = !DILocalVariable(name: "dev", arg: 1, scope: !4291, file: !1, line: 190, type: !117)
!4295 = !DILocation(line: 190, column: 65, scope: !4291)
!4296 = !DILocalVariable(name: "idx", arg: 2, scope: !4291, file: !1, line: 190, type: !171)
!4297 = !DILocation(line: 190, column: 74, scope: !4291)
!4298 = !DILocation(line: 192, column: 2, scope: !4291)
!4299 = distinct !DISubprogram(name: "pcibios_align_resource", scope: !1, file: !1, line: 238, type: !4300, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!144, !180, !4302, !144, !144}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!4304 = !DILocalVariable(name: "data", arg: 1, scope: !4299, file: !1, line: 238, type: !180)
!4305 = !DILocation(line: 238, column: 53, scope: !4299)
!4306 = !DILocalVariable(name: "res", arg: 2, scope: !4299, file: !1, line: 239, type: !4302)
!4307 = !DILocation(line: 239, column: 35, scope: !4299)
!4308 = !DILocalVariable(name: "size", arg: 3, scope: !4299, file: !1, line: 240, type: !144)
!4309 = !DILocation(line: 240, column: 28, scope: !4299)
!4310 = !DILocalVariable(name: "align", arg: 4, scope: !4299, file: !1, line: 241, type: !144)
!4311 = !DILocation(line: 241, column: 28, scope: !4299)
!4312 = !DILocation(line: 243, column: 15, scope: !4299)
!4313 = !DILocation(line: 243, column: 20, scope: !4299)
!4314 = !DILocation(line: 243, column: 8, scope: !4299)
!4315 = distinct !DISubprogram(name: "pci_assign_resource", scope: !1, file: !1, line: 310, type: !3861, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4316 = !DILocalVariable(name: "dev", arg: 1, scope: !4315, file: !1, line: 310, type: !117)
!4317 = !DILocation(line: 310, column: 41, scope: !4315)
!4318 = !DILocalVariable(name: "resno", arg: 2, scope: !4315, file: !1, line: 310, type: !171)
!4319 = !DILocation(line: 310, column: 50, scope: !4315)
!4320 = !DILocalVariable(name: "res", scope: !4315, file: !1, line: 312, type: !139)
!4321 = !DILocation(line: 312, column: 19, scope: !4315)
!4322 = !DILocation(line: 312, column: 25, scope: !4315)
!4323 = !DILocation(line: 312, column: 30, scope: !4315)
!4324 = !DILocation(line: 312, column: 41, scope: !4315)
!4325 = !DILocation(line: 312, column: 39, scope: !4315)
!4326 = !DILocalVariable(name: "align", scope: !4315, file: !1, line: 313, type: !144)
!4327 = !DILocation(line: 313, column: 18, scope: !4315)
!4328 = !DILocalVariable(name: "size", scope: !4315, file: !1, line: 313, type: !144)
!4329 = !DILocation(line: 313, column: 25, scope: !4315)
!4330 = !DILocalVariable(name: "ret", scope: !4315, file: !1, line: 314, type: !171)
!4331 = !DILocation(line: 314, column: 6, scope: !4315)
!4332 = !DILocation(line: 316, column: 6, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 316, column: 6)
!4334 = !DILocation(line: 316, column: 11, scope: !4333)
!4335 = !DILocation(line: 316, column: 17, scope: !4333)
!4336 = !DILocation(line: 316, column: 6, scope: !4315)
!4337 = !DILocation(line: 317, column: 3, scope: !4333)
!4338 = !DILocation(line: 319, column: 2, scope: !4315)
!4339 = !DILocation(line: 319, column: 7, scope: !4315)
!4340 = !DILocation(line: 319, column: 13, scope: !4315)
!4341 = !DILocation(line: 320, column: 33, scope: !4315)
!4342 = !DILocation(line: 320, column: 38, scope: !4315)
!4343 = !DILocation(line: 320, column: 10, scope: !4315)
!4344 = !DILocation(line: 320, column: 8, scope: !4315)
!4345 = !DILocation(line: 321, column: 7, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 321, column: 6)
!4347 = !DILocation(line: 321, column: 6, scope: !4315)
!4348 = !DILocation(line: 322, column: 3, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4346, file: !1, line: 321, column: 14)
!4350 = !DILocation(line: 324, column: 3, scope: !4349)
!4351 = !DILocation(line: 327, column: 23, scope: !4315)
!4352 = !DILocation(line: 327, column: 9, scope: !4315)
!4353 = !DILocation(line: 327, column: 7, scope: !4315)
!4354 = !DILocation(line: 328, column: 29, scope: !4315)
!4355 = !DILocation(line: 328, column: 34, scope: !4315)
!4356 = !DILocation(line: 328, column: 41, scope: !4315)
!4357 = !DILocation(line: 328, column: 47, scope: !4315)
!4358 = !DILocation(line: 328, column: 8, scope: !4315)
!4359 = !DILocation(line: 328, column: 6, scope: !4315)
!4360 = !DILocation(line: 335, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 335, column: 6)
!4362 = !DILocation(line: 335, column: 10, scope: !4361)
!4363 = !DILocation(line: 335, column: 6, scope: !4315)
!4364 = !DILocation(line: 336, column: 3, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !1, line: 335, column: 15)
!4366 = !DILocation(line: 337, column: 31, scope: !4365)
!4367 = !DILocation(line: 337, column: 36, scope: !4365)
!4368 = !DILocation(line: 337, column: 41, scope: !4365)
!4369 = !DILocation(line: 337, column: 48, scope: !4365)
!4370 = !DILocation(line: 337, column: 9, scope: !4365)
!4371 = !DILocation(line: 337, column: 7, scope: !4365)
!4372 = !DILocation(line: 338, column: 2, scope: !4365)
!4373 = !DILocation(line: 340, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 340, column: 6)
!4375 = !DILocation(line: 340, column: 10, scope: !4374)
!4376 = !DILocation(line: 340, column: 6, scope: !4315)
!4377 = !DILocation(line: 341, column: 3, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !1, line: 340, column: 15)
!4379 = !DILocation(line: 342, column: 10, scope: !4378)
!4380 = !DILocation(line: 342, column: 3, scope: !4378)
!4381 = !DILocation(line: 345, column: 2, scope: !4315)
!4382 = !DILocation(line: 345, column: 7, scope: !4315)
!4383 = !DILocation(line: 345, column: 13, scope: !4315)
!4384 = !DILocation(line: 346, column: 2, scope: !4315)
!4385 = !DILocation(line: 346, column: 7, scope: !4315)
!4386 = !DILocation(line: 346, column: 13, scope: !4315)
!4387 = !DILocation(line: 347, column: 2, scope: !4315)
!4388 = !DILocation(line: 348, column: 6, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4315, file: !1, line: 348, column: 6)
!4390 = !DILocation(line: 348, column: 12, scope: !4389)
!4391 = !DILocation(line: 348, column: 6, scope: !4315)
!4392 = !DILocation(line: 349, column: 23, scope: !4389)
!4393 = !DILocation(line: 349, column: 28, scope: !4389)
!4394 = !DILocation(line: 349, column: 3, scope: !4389)
!4395 = !DILocation(line: 351, column: 2, scope: !4315)
!4396 = !DILocation(line: 352, column: 1, scope: !4315)
!4397 = distinct !DISubprogram(name: "pci_resource_alignment", scope: !3984, file: !3984, line: 521, type: !4398, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!144, !117, !139}
!4400 = !DILocalVariable(name: "dev", arg: 1, scope: !4397, file: !3984, line: 521, type: !117)
!4401 = !DILocation(line: 521, column: 70, scope: !4397)
!4402 = !DILocalVariable(name: "res", arg: 2, scope: !4397, file: !3984, line: 522, type: !139)
!4403 = !DILocation(line: 522, column: 29, scope: !4397)
!4404 = !DILocalVariable(name: "resno", scope: !4397, file: !3984, line: 525, type: !171)
!4405 = !DILocation(line: 525, column: 6, scope: !4397)
!4406 = !DILocation(line: 525, column: 14, scope: !4397)
!4407 = !DILocation(line: 525, column: 20, scope: !4397)
!4408 = !DILocation(line: 525, column: 25, scope: !4397)
!4409 = !DILocation(line: 525, column: 18, scope: !4397)
!4410 = !DILocation(line: 527, column: 6, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4397, file: !3984, line: 527, column: 6)
!4412 = !DILocation(line: 527, column: 12, scope: !4411)
!4413 = !DILocation(line: 527, column: 33, scope: !4411)
!4414 = !DILocation(line: 527, column: 36, scope: !4411)
!4415 = !DILocation(line: 527, column: 42, scope: !4411)
!4416 = !DILocation(line: 527, column: 6, scope: !4397)
!4417 = !DILocation(line: 528, column: 39, scope: !4411)
!4418 = !DILocation(line: 528, column: 44, scope: !4411)
!4419 = !DILocation(line: 528, column: 10, scope: !4411)
!4420 = !DILocation(line: 528, column: 3, scope: !4411)
!4421 = !DILocation(line: 530, column: 6, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4397, file: !3984, line: 530, column: 6)
!4423 = !DILocation(line: 530, column: 11, scope: !4422)
!4424 = !DILocation(line: 530, column: 17, scope: !4422)
!4425 = !DILocation(line: 530, column: 22, scope: !4422)
!4426 = !DILocation(line: 530, column: 6, scope: !4397)
!4427 = !DILocation(line: 531, column: 41, scope: !4422)
!4428 = !DILocation(line: 531, column: 10, scope: !4422)
!4429 = !DILocation(line: 531, column: 3, scope: !4422)
!4430 = !DILocation(line: 532, column: 28, scope: !4397)
!4431 = !DILocation(line: 532, column: 9, scope: !4397)
!4432 = !DILocation(line: 532, column: 2, scope: !4397)
!4433 = !DILocation(line: 533, column: 1, scope: !4397)
!4434 = distinct !DISubprogram(name: "resource_size", scope: !141, file: !141, line: 210, type: !4435, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!144, !4302}
!4437 = !DILocalVariable(name: "res", arg: 1, scope: !4434, file: !141, line: 210, type: !4302)
!4438 = !DILocation(line: 210, column: 68, scope: !4434)
!4439 = !DILocation(line: 212, column: 9, scope: !4434)
!4440 = !DILocation(line: 212, column: 14, scope: !4434)
!4441 = !DILocation(line: 212, column: 20, scope: !4434)
!4442 = !DILocation(line: 212, column: 25, scope: !4434)
!4443 = !DILocation(line: 212, column: 18, scope: !4434)
!4444 = !DILocation(line: 212, column: 31, scope: !4434)
!4445 = !DILocation(line: 212, column: 2, scope: !4434)
!4446 = distinct !DISubprogram(name: "_pci_assign_resource", scope: !1, file: !1, line: 294, type: !4447, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!171, !117, !171, !144, !144}
!4449 = !DILocalVariable(name: "dev", arg: 1, scope: !4446, file: !1, line: 294, type: !117)
!4450 = !DILocation(line: 294, column: 49, scope: !4446)
!4451 = !DILocalVariable(name: "resno", arg: 2, scope: !4446, file: !1, line: 294, type: !171)
!4452 = !DILocation(line: 294, column: 58, scope: !4446)
!4453 = !DILocalVariable(name: "size", arg: 3, scope: !4446, file: !1, line: 295, type: !144)
!4454 = !DILocation(line: 295, column: 21, scope: !4446)
!4455 = !DILocalVariable(name: "min_align", arg: 4, scope: !4446, file: !1, line: 295, type: !144)
!4456 = !DILocation(line: 295, column: 43, scope: !4446)
!4457 = !DILocalVariable(name: "bus", scope: !4446, file: !1, line: 297, type: !128)
!4458 = !DILocation(line: 297, column: 18, scope: !4446)
!4459 = !DILocalVariable(name: "ret", scope: !4446, file: !1, line: 298, type: !171)
!4460 = !DILocation(line: 298, column: 6, scope: !4446)
!4461 = !DILocation(line: 300, column: 8, scope: !4446)
!4462 = !DILocation(line: 300, column: 13, scope: !4446)
!4463 = !DILocation(line: 300, column: 6, scope: !4446)
!4464 = !DILocation(line: 301, column: 2, scope: !4446)
!4465 = !DILocation(line: 301, column: 38, scope: !4446)
!4466 = !DILocation(line: 301, column: 43, scope: !4446)
!4467 = !DILocation(line: 301, column: 48, scope: !4446)
!4468 = !DILocation(line: 301, column: 55, scope: !4446)
!4469 = !DILocation(line: 301, column: 61, scope: !4446)
!4470 = !DILocation(line: 301, column: 16, scope: !4446)
!4471 = !DILocation(line: 301, column: 14, scope: !4446)
!4472 = !DILocation(line: 302, column: 8, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !1, line: 302, column: 7)
!4474 = distinct !DILexicalBlock(scope: !4446, file: !1, line: 301, column: 74)
!4475 = !DILocation(line: 302, column: 13, scope: !4473)
!4476 = !DILocation(line: 302, column: 20, scope: !4473)
!4477 = !DILocation(line: 302, column: 24, scope: !4473)
!4478 = !DILocation(line: 302, column: 29, scope: !4473)
!4479 = !DILocation(line: 302, column: 35, scope: !4473)
!4480 = !DILocation(line: 302, column: 7, scope: !4474)
!4481 = !DILocation(line: 303, column: 4, scope: !4473)
!4482 = !DILocation(line: 304, column: 9, scope: !4474)
!4483 = !DILocation(line: 304, column: 14, scope: !4474)
!4484 = !DILocation(line: 304, column: 7, scope: !4474)
!4485 = distinct !{!4485, !4464, !4486}
!4486 = !DILocation(line: 305, column: 2, scope: !4446)
!4487 = !DILocation(line: 307, column: 9, scope: !4446)
!4488 = !DILocation(line: 307, column: 2, scope: !4446)
!4489 = distinct !DISubprogram(name: "pci_revert_fw_address", scope: !1, file: !1, line: 195, type: !4490, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!171, !139, !117, !171, !144}
!4492 = !DILocalVariable(name: "res", arg: 1, scope: !4489, file: !1, line: 195, type: !139)
!4493 = !DILocation(line: 195, column: 51, scope: !4489)
!4494 = !DILocalVariable(name: "dev", arg: 2, scope: !4489, file: !1, line: 195, type: !117)
!4495 = !DILocation(line: 195, column: 72, scope: !4489)
!4496 = !DILocalVariable(name: "resno", arg: 3, scope: !4489, file: !1, line: 196, type: !171)
!4497 = !DILocation(line: 196, column: 7, scope: !4489)
!4498 = !DILocalVariable(name: "size", arg: 4, scope: !4489, file: !1, line: 196, type: !144)
!4499 = !DILocation(line: 196, column: 30, scope: !4489)
!4500 = !DILocalVariable(name: "root", scope: !4489, file: !1, line: 198, type: !139)
!4501 = !DILocation(line: 198, column: 19, scope: !4489)
!4502 = !DILocalVariable(name: "conflict", scope: !4489, file: !1, line: 198, type: !139)
!4503 = !DILocation(line: 198, column: 26, scope: !4489)
!4504 = !DILocalVariable(name: "fw_addr", scope: !4489, file: !1, line: 199, type: !144)
!4505 = !DILocation(line: 199, column: 18, scope: !4489)
!4506 = !DILocalVariable(name: "start", scope: !4489, file: !1, line: 199, type: !144)
!4507 = !DILocation(line: 199, column: 27, scope: !4489)
!4508 = !DILocalVariable(name: "end", scope: !4489, file: !1, line: 199, type: !144)
!4509 = !DILocation(line: 199, column: 34, scope: !4489)
!4510 = !DILocation(line: 201, column: 37, scope: !4489)
!4511 = !DILocation(line: 201, column: 42, scope: !4489)
!4512 = !DILocation(line: 201, column: 12, scope: !4489)
!4513 = !DILocation(line: 201, column: 10, scope: !4489)
!4514 = !DILocation(line: 202, column: 7, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4489, file: !1, line: 202, column: 6)
!4516 = !DILocation(line: 202, column: 6, scope: !4489)
!4517 = !DILocation(line: 203, column: 3, scope: !4515)
!4518 = !DILocation(line: 205, column: 10, scope: !4489)
!4519 = !DILocation(line: 205, column: 15, scope: !4489)
!4520 = !DILocation(line: 205, column: 8, scope: !4489)
!4521 = !DILocation(line: 206, column: 8, scope: !4489)
!4522 = !DILocation(line: 206, column: 13, scope: !4489)
!4523 = !DILocation(line: 206, column: 6, scope: !4489)
!4524 = !DILocation(line: 207, column: 15, scope: !4489)
!4525 = !DILocation(line: 207, column: 2, scope: !4489)
!4526 = !DILocation(line: 207, column: 7, scope: !4489)
!4527 = !DILocation(line: 207, column: 13, scope: !4489)
!4528 = !DILocation(line: 208, column: 13, scope: !4489)
!4529 = !DILocation(line: 208, column: 18, scope: !4489)
!4530 = !DILocation(line: 208, column: 26, scope: !4489)
!4531 = !DILocation(line: 208, column: 24, scope: !4489)
!4532 = !DILocation(line: 208, column: 31, scope: !4489)
!4533 = !DILocation(line: 208, column: 2, scope: !4489)
!4534 = !DILocation(line: 208, column: 7, scope: !4489)
!4535 = !DILocation(line: 208, column: 11, scope: !4489)
!4536 = !DILocation(line: 209, column: 2, scope: !4489)
!4537 = !DILocation(line: 209, column: 7, scope: !4489)
!4538 = !DILocation(line: 209, column: 13, scope: !4489)
!4539 = !DILocation(line: 211, column: 34, scope: !4489)
!4540 = !DILocation(line: 211, column: 39, scope: !4489)
!4541 = !DILocation(line: 211, column: 9, scope: !4489)
!4542 = !DILocation(line: 211, column: 7, scope: !4489)
!4543 = !DILocation(line: 212, column: 7, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4489, file: !1, line: 212, column: 6)
!4545 = !DILocation(line: 212, column: 6, scope: !4489)
!4546 = !DILocation(line: 213, column: 7, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !1, line: 213, column: 7)
!4548 = distinct !DILexicalBlock(scope: !4544, file: !1, line: 212, column: 13)
!4549 = !DILocation(line: 213, column: 12, scope: !4547)
!4550 = !DILocation(line: 213, column: 18, scope: !4547)
!4551 = !DILocation(line: 213, column: 7, scope: !4548)
!4552 = !DILocation(line: 214, column: 9, scope: !4547)
!4553 = !DILocation(line: 214, column: 4, scope: !4547)
!4554 = !DILocation(line: 216, column: 9, scope: !4547)
!4555 = !DILocation(line: 217, column: 2, scope: !4548)
!4556 = !DILocation(line: 219, column: 2, scope: !4489)
!4557 = !DILocation(line: 221, column: 39, scope: !4489)
!4558 = !DILocation(line: 221, column: 45, scope: !4489)
!4559 = !DILocation(line: 221, column: 13, scope: !4489)
!4560 = !DILocation(line: 221, column: 11, scope: !4489)
!4561 = !DILocation(line: 222, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4489, file: !1, line: 222, column: 6)
!4563 = !DILocation(line: 222, column: 6, scope: !4489)
!4564 = !DILocation(line: 223, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4562, file: !1, line: 222, column: 16)
!4566 = !DILocation(line: 225, column: 16, scope: !4565)
!4567 = !DILocation(line: 225, column: 3, scope: !4565)
!4568 = !DILocation(line: 225, column: 8, scope: !4565)
!4569 = !DILocation(line: 225, column: 14, scope: !4565)
!4570 = !DILocation(line: 226, column: 14, scope: !4565)
!4571 = !DILocation(line: 226, column: 3, scope: !4565)
!4572 = !DILocation(line: 226, column: 8, scope: !4565)
!4573 = !DILocation(line: 226, column: 12, scope: !4565)
!4574 = !DILocation(line: 227, column: 3, scope: !4565)
!4575 = !DILocation(line: 227, column: 8, scope: !4565)
!4576 = !DILocation(line: 227, column: 14, scope: !4565)
!4577 = !DILocation(line: 228, column: 3, scope: !4565)
!4578 = !DILocation(line: 230, column: 2, scope: !4489)
!4579 = !DILocation(line: 231, column: 1, scope: !4489)
!4580 = distinct !DISubprogram(name: "pci_reassign_resource", scope: !1, file: !1, line: 355, type: !4447, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4581 = !DILocalVariable(name: "dev", arg: 1, scope: !4580, file: !1, line: 355, type: !117)
!4582 = !DILocation(line: 355, column: 43, scope: !4580)
!4583 = !DILocalVariable(name: "resno", arg: 2, scope: !4580, file: !1, line: 355, type: !171)
!4584 = !DILocation(line: 355, column: 52, scope: !4580)
!4585 = !DILocalVariable(name: "addsize", arg: 3, scope: !4580, file: !1, line: 355, type: !144)
!4586 = !DILocation(line: 355, column: 75, scope: !4580)
!4587 = !DILocalVariable(name: "min_align", arg: 4, scope: !4580, file: !1, line: 356, type: !144)
!4588 = !DILocation(line: 356, column: 20, scope: !4580)
!4589 = !DILocalVariable(name: "res", scope: !4580, file: !1, line: 358, type: !139)
!4590 = !DILocation(line: 358, column: 19, scope: !4580)
!4591 = !DILocation(line: 358, column: 25, scope: !4580)
!4592 = !DILocation(line: 358, column: 30, scope: !4580)
!4593 = !DILocation(line: 358, column: 41, scope: !4580)
!4594 = !DILocation(line: 358, column: 39, scope: !4580)
!4595 = !DILocalVariable(name: "flags", scope: !4580, file: !1, line: 359, type: !154)
!4596 = !DILocation(line: 359, column: 16, scope: !4580)
!4597 = !DILocalVariable(name: "new_size", scope: !4580, file: !1, line: 360, type: !144)
!4598 = !DILocation(line: 360, column: 18, scope: !4580)
!4599 = !DILocalVariable(name: "ret", scope: !4580, file: !1, line: 361, type: !171)
!4600 = !DILocation(line: 361, column: 6, scope: !4580)
!4601 = !DILocation(line: 363, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 363, column: 6)
!4603 = !DILocation(line: 363, column: 11, scope: !4602)
!4604 = !DILocation(line: 363, column: 17, scope: !4602)
!4605 = !DILocation(line: 363, column: 6, scope: !4580)
!4606 = !DILocation(line: 364, column: 3, scope: !4602)
!4607 = !DILocation(line: 366, column: 10, scope: !4580)
!4608 = !DILocation(line: 366, column: 15, scope: !4580)
!4609 = !DILocation(line: 366, column: 8, scope: !4580)
!4610 = !DILocation(line: 367, column: 2, scope: !4580)
!4611 = !DILocation(line: 367, column: 7, scope: !4580)
!4612 = !DILocation(line: 367, column: 13, scope: !4580)
!4613 = !DILocation(line: 368, column: 7, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 368, column: 6)
!4615 = !DILocation(line: 368, column: 12, scope: !4614)
!4616 = !DILocation(line: 368, column: 6, scope: !4580)
!4617 = !DILocation(line: 369, column: 3, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4614, file: !1, line: 368, column: 20)
!4619 = !DILocation(line: 371, column: 3, scope: !4618)
!4620 = !DILocation(line: 375, column: 27, scope: !4580)
!4621 = !DILocation(line: 375, column: 13, scope: !4580)
!4622 = !DILocation(line: 375, column: 34, scope: !4580)
!4623 = !DILocation(line: 375, column: 32, scope: !4580)
!4624 = !DILocation(line: 375, column: 11, scope: !4580)
!4625 = !DILocation(line: 376, column: 29, scope: !4580)
!4626 = !DILocation(line: 376, column: 34, scope: !4580)
!4627 = !DILocation(line: 376, column: 41, scope: !4580)
!4628 = !DILocation(line: 376, column: 51, scope: !4580)
!4629 = !DILocation(line: 376, column: 8, scope: !4580)
!4630 = !DILocation(line: 376, column: 6, scope: !4580)
!4631 = !DILocation(line: 377, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 377, column: 6)
!4633 = !DILocation(line: 377, column: 6, scope: !4580)
!4634 = !DILocation(line: 378, column: 16, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 377, column: 11)
!4636 = !DILocation(line: 378, column: 3, scope: !4635)
!4637 = !DILocation(line: 378, column: 8, scope: !4635)
!4638 = !DILocation(line: 378, column: 14, scope: !4635)
!4639 = !DILocation(line: 379, column: 3, scope: !4635)
!4640 = !DILocation(line: 381, column: 10, scope: !4635)
!4641 = !DILocation(line: 381, column: 3, scope: !4635)
!4642 = !DILocation(line: 384, column: 2, scope: !4580)
!4643 = !DILocation(line: 384, column: 7, scope: !4580)
!4644 = !DILocation(line: 384, column: 13, scope: !4580)
!4645 = !DILocation(line: 385, column: 2, scope: !4580)
!4646 = !DILocation(line: 385, column: 7, scope: !4580)
!4647 = !DILocation(line: 385, column: 13, scope: !4580)
!4648 = !DILocation(line: 386, column: 2, scope: !4580)
!4649 = !DILocation(line: 388, column: 6, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4580, file: !1, line: 388, column: 6)
!4651 = !DILocation(line: 388, column: 12, scope: !4650)
!4652 = !DILocation(line: 388, column: 6, scope: !4580)
!4653 = !DILocation(line: 389, column: 23, scope: !4650)
!4654 = !DILocation(line: 389, column: 28, scope: !4650)
!4655 = !DILocation(line: 389, column: 3, scope: !4650)
!4656 = !DILocation(line: 391, column: 2, scope: !4580)
!4657 = !DILocation(line: 392, column: 1, scope: !4580)
!4658 = distinct !DISubprogram(name: "pci_release_resource", scope: !1, file: !1, line: 394, type: !115, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4659 = !DILocalVariable(name: "dev", arg: 1, scope: !4658, file: !1, line: 394, type: !117)
!4660 = !DILocation(line: 394, column: 43, scope: !4658)
!4661 = !DILocalVariable(name: "resno", arg: 2, scope: !4658, file: !1, line: 394, type: !171)
!4662 = !DILocation(line: 394, column: 52, scope: !4658)
!4663 = !DILocalVariable(name: "res", scope: !4658, file: !1, line: 396, type: !139)
!4664 = !DILocation(line: 396, column: 19, scope: !4658)
!4665 = !DILocation(line: 396, column: 25, scope: !4658)
!4666 = !DILocation(line: 396, column: 30, scope: !4658)
!4667 = !DILocation(line: 396, column: 41, scope: !4658)
!4668 = !DILocation(line: 396, column: 39, scope: !4658)
!4669 = !DILocation(line: 398, column: 2, scope: !4658)
!4670 = !DILocation(line: 400, column: 7, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4658, file: !1, line: 400, column: 6)
!4672 = !DILocation(line: 400, column: 12, scope: !4671)
!4673 = !DILocation(line: 400, column: 6, scope: !4658)
!4674 = !DILocation(line: 401, column: 3, scope: !4671)
!4675 = !DILocation(line: 403, column: 19, scope: !4658)
!4676 = !DILocation(line: 403, column: 2, scope: !4658)
!4677 = !DILocation(line: 404, column: 27, scope: !4658)
!4678 = !DILocation(line: 404, column: 13, scope: !4658)
!4679 = !DILocation(line: 404, column: 32, scope: !4658)
!4680 = !DILocation(line: 404, column: 2, scope: !4658)
!4681 = !DILocation(line: 404, column: 7, scope: !4658)
!4682 = !DILocation(line: 404, column: 11, scope: !4658)
!4683 = !DILocation(line: 405, column: 2, scope: !4658)
!4684 = !DILocation(line: 405, column: 7, scope: !4658)
!4685 = !DILocation(line: 405, column: 13, scope: !4658)
!4686 = !DILocation(line: 406, column: 2, scope: !4658)
!4687 = !DILocation(line: 406, column: 7, scope: !4658)
!4688 = !DILocation(line: 406, column: 13, scope: !4658)
!4689 = !DILocation(line: 407, column: 1, scope: !4658)
!4690 = distinct !DISubprogram(name: "pci_resize_resource", scope: !1, file: !1, line: 410, type: !4691, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!171, !117, !171, !171}
!4693 = !DILocalVariable(name: "dev", arg: 1, scope: !4690, file: !1, line: 410, type: !117)
!4694 = !DILocation(line: 410, column: 41, scope: !4690)
!4695 = !DILocalVariable(name: "resno", arg: 2, scope: !4690, file: !1, line: 410, type: !171)
!4696 = !DILocation(line: 410, column: 50, scope: !4690)
!4697 = !DILocalVariable(name: "size", arg: 3, scope: !4690, file: !1, line: 410, type: !171)
!4698 = !DILocation(line: 410, column: 61, scope: !4690)
!4699 = !DILocalVariable(name: "res", scope: !4690, file: !1, line: 412, type: !139)
!4700 = !DILocation(line: 412, column: 19, scope: !4690)
!4701 = !DILocation(line: 412, column: 25, scope: !4690)
!4702 = !DILocation(line: 412, column: 30, scope: !4690)
!4703 = !DILocation(line: 412, column: 41, scope: !4690)
!4704 = !DILocation(line: 412, column: 39, scope: !4690)
!4705 = !DILocalVariable(name: "old", scope: !4690, file: !1, line: 413, type: !171)
!4706 = !DILocation(line: 413, column: 6, scope: !4690)
!4707 = !DILocalVariable(name: "ret", scope: !4690, file: !1, line: 413, type: !171)
!4708 = !DILocation(line: 413, column: 11, scope: !4690)
!4709 = !DILocalVariable(name: "sizes", scope: !4690, file: !1, line: 414, type: !105)
!4710 = !DILocation(line: 414, column: 6, scope: !4690)
!4711 = !DILocalVariable(name: "cmd", scope: !4690, file: !1, line: 415, type: !849)
!4712 = !DILocation(line: 415, column: 6, scope: !4690)
!4713 = !DILocation(line: 418, column: 8, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 418, column: 6)
!4715 = !DILocation(line: 418, column: 13, scope: !4714)
!4716 = !DILocation(line: 418, column: 19, scope: !4714)
!4717 = !DILocation(line: 418, column: 6, scope: !4690)
!4718 = !DILocation(line: 419, column: 3, scope: !4714)
!4719 = !DILocation(line: 421, column: 23, scope: !4690)
!4720 = !DILocation(line: 421, column: 2, scope: !4690)
!4721 = !DILocation(line: 422, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 422, column: 6)
!4723 = !DILocation(line: 422, column: 10, scope: !4722)
!4724 = !DILocation(line: 422, column: 6, scope: !4690)
!4725 = !DILocation(line: 423, column: 3, scope: !4722)
!4726 = !DILocation(line: 425, column: 39, scope: !4690)
!4727 = !DILocation(line: 425, column: 44, scope: !4690)
!4728 = !DILocation(line: 425, column: 10, scope: !4690)
!4729 = !DILocation(line: 425, column: 8, scope: !4690)
!4730 = !DILocation(line: 426, column: 7, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 426, column: 6)
!4732 = !DILocation(line: 426, column: 6, scope: !4690)
!4733 = !DILocation(line: 427, column: 3, scope: !4731)
!4734 = !DILocation(line: 429, column: 8, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 429, column: 6)
!4736 = !DILocation(line: 429, column: 16, scope: !4735)
!4737 = !DILocation(line: 429, column: 14, scope: !4735)
!4738 = !DILocation(line: 429, column: 6, scope: !4690)
!4739 = !DILocation(line: 430, column: 3, scope: !4735)
!4740 = !DILocation(line: 432, column: 35, scope: !4690)
!4741 = !DILocation(line: 432, column: 40, scope: !4690)
!4742 = !DILocation(line: 432, column: 8, scope: !4690)
!4743 = !DILocation(line: 432, column: 6, scope: !4690)
!4744 = !DILocation(line: 433, column: 6, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 433, column: 6)
!4746 = !DILocation(line: 433, column: 10, scope: !4745)
!4747 = !DILocation(line: 433, column: 6, scope: !4690)
!4748 = !DILocation(line: 434, column: 10, scope: !4745)
!4749 = !DILocation(line: 434, column: 3, scope: !4745)
!4750 = !DILocation(line: 436, column: 27, scope: !4690)
!4751 = !DILocation(line: 436, column: 32, scope: !4690)
!4752 = !DILocation(line: 436, column: 39, scope: !4690)
!4753 = !DILocation(line: 436, column: 8, scope: !4690)
!4754 = !DILocation(line: 436, column: 6, scope: !4690)
!4755 = !DILocation(line: 437, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 437, column: 6)
!4757 = !DILocation(line: 437, column: 6, scope: !4690)
!4758 = !DILocation(line: 438, column: 10, scope: !4756)
!4759 = !DILocation(line: 438, column: 3, scope: !4756)
!4760 = !DILocation(line: 440, column: 13, scope: !4690)
!4761 = !DILocation(line: 440, column: 18, scope: !4690)
!4762 = !DILocation(line: 440, column: 50, scope: !4690)
!4763 = !DILocation(line: 440, column: 26, scope: !4690)
!4764 = !DILocation(line: 440, column: 24, scope: !4690)
!4765 = !DILocation(line: 440, column: 56, scope: !4690)
!4766 = !DILocation(line: 440, column: 2, scope: !4690)
!4767 = !DILocation(line: 440, column: 7, scope: !4690)
!4768 = !DILocation(line: 440, column: 11, scope: !4690)
!4769 = !DILocation(line: 443, column: 6, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4690, file: !1, line: 443, column: 6)
!4771 = !DILocation(line: 443, column: 11, scope: !4770)
!4772 = !DILocation(line: 443, column: 16, scope: !4770)
!4773 = !DILocation(line: 443, column: 6, scope: !4690)
!4774 = !DILocation(line: 444, column: 39, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 443, column: 22)
!4776 = !DILocation(line: 444, column: 44, scope: !4775)
!4777 = !DILocation(line: 444, column: 49, scope: !4775)
!4778 = !DILocation(line: 444, column: 55, scope: !4775)
!4779 = !DILocation(line: 444, column: 60, scope: !4775)
!4780 = !DILocation(line: 444, column: 9, scope: !4775)
!4781 = !DILocation(line: 444, column: 7, scope: !4775)
!4782 = !DILocation(line: 445, column: 7, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4775, file: !1, line: 445, column: 7)
!4784 = !DILocation(line: 445, column: 7, scope: !4775)
!4785 = !DILocation(line: 446, column: 4, scope: !4783)
!4786 = !DILocation(line: 447, column: 2, scope: !4775)
!4787 = !DILocation(line: 448, column: 2, scope: !4690)
!4788 = !DILabel(scope: !4690, name: "error_resize", file: !1, line: 450)
!4789 = !DILocation(line: 450, column: 1, scope: !4690)
!4790 = !DILocation(line: 451, column: 21, scope: !4690)
!4791 = !DILocation(line: 451, column: 26, scope: !4690)
!4792 = !DILocation(line: 451, column: 33, scope: !4690)
!4793 = !DILocation(line: 451, column: 2, scope: !4690)
!4794 = !DILocation(line: 452, column: 13, scope: !4690)
!4795 = !DILocation(line: 452, column: 18, scope: !4690)
!4796 = !DILocation(line: 452, column: 50, scope: !4690)
!4797 = !DILocation(line: 452, column: 26, scope: !4690)
!4798 = !DILocation(line: 452, column: 24, scope: !4690)
!4799 = !DILocation(line: 452, column: 55, scope: !4690)
!4800 = !DILocation(line: 452, column: 2, scope: !4690)
!4801 = !DILocation(line: 452, column: 7, scope: !4690)
!4802 = !DILocation(line: 452, column: 11, scope: !4690)
!4803 = !DILocation(line: 453, column: 9, scope: !4690)
!4804 = !DILocation(line: 453, column: 2, scope: !4690)
!4805 = !DILocation(line: 454, column: 1, scope: !4690)
!4806 = distinct !DISubprogram(name: "pci_rebar_size_to_bytes", scope: !3984, file: !3984, line: 614, type: !4807, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!146, !171}
!4809 = !DILocalVariable(name: "size", arg: 1, scope: !4806, file: !3984, line: 614, type: !171)
!4810 = !DILocation(line: 614, column: 47, scope: !4806)
!4811 = !DILocation(line: 616, column: 18, scope: !4806)
!4812 = !DILocation(line: 616, column: 23, scope: !4806)
!4813 = !DILocation(line: 616, column: 14, scope: !4806)
!4814 = !DILocation(line: 616, column: 2, scope: !4806)
!4815 = distinct !DISubprogram(name: "pci_enable_resources", scope: !1, file: !1, line: 457, type: !3861, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4816 = !DILocalVariable(name: "dev", arg: 1, scope: !4815, file: !1, line: 457, type: !117)
!4817 = !DILocation(line: 457, column: 42, scope: !4815)
!4818 = !DILocalVariable(name: "mask", arg: 2, scope: !4815, file: !1, line: 457, type: !171)
!4819 = !DILocation(line: 457, column: 51, scope: !4815)
!4820 = !DILocalVariable(name: "cmd", scope: !4815, file: !1, line: 459, type: !849)
!4821 = !DILocation(line: 459, column: 6, scope: !4815)
!4822 = !DILocalVariable(name: "old_cmd", scope: !4815, file: !1, line: 459, type: !849)
!4823 = !DILocation(line: 459, column: 11, scope: !4815)
!4824 = !DILocalVariable(name: "i", scope: !4815, file: !1, line: 460, type: !171)
!4825 = !DILocation(line: 460, column: 6, scope: !4815)
!4826 = !DILocalVariable(name: "r", scope: !4815, file: !1, line: 461, type: !139)
!4827 = !DILocation(line: 461, column: 19, scope: !4815)
!4828 = !DILocation(line: 463, column: 23, scope: !4815)
!4829 = !DILocation(line: 463, column: 2, scope: !4815)
!4830 = !DILocation(line: 464, column: 12, scope: !4815)
!4831 = !DILocation(line: 464, column: 10, scope: !4815)
!4832 = !DILocation(line: 466, column: 9, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4815, file: !1, line: 466, column: 2)
!4834 = !DILocation(line: 466, column: 7, scope: !4833)
!4835 = !DILocation(line: 466, column: 14, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4833, file: !1, line: 466, column: 2)
!4837 = !DILocation(line: 466, column: 16, scope: !4836)
!4838 = !DILocation(line: 466, column: 2, scope: !4833)
!4839 = !DILocation(line: 467, column: 9, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 467, column: 7)
!4841 = distinct !DILexicalBlock(scope: !4836, file: !1, line: 466, column: 42)
!4842 = !DILocation(line: 467, column: 22, scope: !4840)
!4843 = !DILocation(line: 467, column: 19, scope: !4840)
!4844 = !DILocation(line: 467, column: 14, scope: !4840)
!4845 = !DILocation(line: 467, column: 7, scope: !4841)
!4846 = !DILocation(line: 468, column: 4, scope: !4840)
!4847 = !DILocation(line: 470, column: 8, scope: !4841)
!4848 = !DILocation(line: 470, column: 13, scope: !4841)
!4849 = !DILocation(line: 470, column: 22, scope: !4841)
!4850 = !DILocation(line: 470, column: 5, scope: !4841)
!4851 = !DILocation(line: 472, column: 9, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 472, column: 7)
!4853 = !DILocation(line: 472, column: 12, scope: !4852)
!4854 = !DILocation(line: 472, column: 18, scope: !4852)
!4855 = !DILocation(line: 472, column: 7, scope: !4841)
!4856 = !DILocation(line: 473, column: 4, scope: !4852)
!4857 = !DILocation(line: 474, column: 8, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 474, column: 7)
!4859 = !DILocation(line: 474, column: 10, scope: !4858)
!4860 = !DILocation(line: 474, column: 31, scope: !4858)
!4861 = !DILocation(line: 475, column: 8, scope: !4858)
!4862 = !DILocation(line: 475, column: 11, scope: !4858)
!4863 = !DILocation(line: 475, column: 17, scope: !4858)
!4864 = !DILocation(line: 474, column: 7, scope: !4841)
!4865 = !DILocation(line: 476, column: 4, scope: !4858)
!4866 = !DILocation(line: 478, column: 7, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 478, column: 7)
!4868 = !DILocation(line: 478, column: 10, scope: !4867)
!4869 = !DILocation(line: 478, column: 16, scope: !4867)
!4870 = !DILocation(line: 478, column: 7, scope: !4841)
!4871 = !DILocation(line: 479, column: 4, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4867, file: !1, line: 478, column: 36)
!4873 = !DILocation(line: 481, column: 4, scope: !4872)
!4874 = !DILocation(line: 484, column: 8, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 484, column: 7)
!4876 = !DILocation(line: 484, column: 11, scope: !4875)
!4877 = !DILocation(line: 484, column: 7, scope: !4841)
!4878 = !DILocation(line: 485, column: 4, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4875, file: !1, line: 484, column: 19)
!4880 = !DILocation(line: 487, column: 4, scope: !4879)
!4881 = !DILocation(line: 490, column: 7, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 490, column: 7)
!4883 = !DILocation(line: 490, column: 10, scope: !4882)
!4884 = !DILocation(line: 490, column: 16, scope: !4882)
!4885 = !DILocation(line: 490, column: 7, scope: !4841)
!4886 = !DILocation(line: 491, column: 8, scope: !4882)
!4887 = !DILocation(line: 491, column: 4, scope: !4882)
!4888 = !DILocation(line: 492, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 492, column: 7)
!4890 = !DILocation(line: 492, column: 10, scope: !4889)
!4891 = !DILocation(line: 492, column: 16, scope: !4889)
!4892 = !DILocation(line: 492, column: 7, scope: !4841)
!4893 = !DILocation(line: 493, column: 8, scope: !4889)
!4894 = !DILocation(line: 493, column: 4, scope: !4889)
!4895 = !DILocation(line: 494, column: 2, scope: !4841)
!4896 = !DILocation(line: 466, column: 38, scope: !4836)
!4897 = !DILocation(line: 466, column: 2, scope: !4836)
!4898 = distinct !{!4898, !4838, !4899}
!4899 = !DILocation(line: 494, column: 2, scope: !4833)
!4900 = !DILocation(line: 496, column: 6, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4815, file: !1, line: 496, column: 6)
!4902 = !DILocation(line: 496, column: 13, scope: !4901)
!4903 = !DILocation(line: 496, column: 10, scope: !4901)
!4904 = !DILocation(line: 496, column: 6, scope: !4815)
!4905 = !DILocation(line: 497, column: 3, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4901, file: !1, line: 496, column: 22)
!4907 = !DILocation(line: 498, column: 25, scope: !4906)
!4908 = !DILocation(line: 498, column: 43, scope: !4906)
!4909 = !DILocation(line: 498, column: 3, scope: !4906)
!4910 = !DILocation(line: 499, column: 2, scope: !4906)
!4911 = !DILocation(line: 500, column: 2, scope: !4815)
!4912 = !DILocation(line: 501, column: 1, scope: !4815)
!4913 = distinct !DISubprogram(name: "__pci_assign_resource", scope: !1, file: !1, line: 246, type: !4914, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !243)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!171, !128, !117, !171, !144, !144}
!4916 = !DILocalVariable(name: "bus", arg: 1, scope: !4913, file: !1, line: 246, type: !128)
!4917 = !DILocation(line: 246, column: 50, scope: !4913)
!4918 = !DILocalVariable(name: "dev", arg: 2, scope: !4913, file: !1, line: 246, type: !117)
!4919 = !DILocation(line: 246, column: 71, scope: !4913)
!4920 = !DILocalVariable(name: "resno", arg: 3, scope: !4913, file: !1, line: 247, type: !171)
!4921 = !DILocation(line: 247, column: 7, scope: !4913)
!4922 = !DILocalVariable(name: "size", arg: 4, scope: !4913, file: !1, line: 247, type: !144)
!4923 = !DILocation(line: 247, column: 30, scope: !4913)
!4924 = !DILocalVariable(name: "align", arg: 5, scope: !4913, file: !1, line: 247, type: !144)
!4925 = !DILocation(line: 247, column: 52, scope: !4913)
!4926 = !DILocalVariable(name: "res", scope: !4913, file: !1, line: 249, type: !139)
!4927 = !DILocation(line: 249, column: 19, scope: !4913)
!4928 = !DILocation(line: 249, column: 25, scope: !4913)
!4929 = !DILocation(line: 249, column: 30, scope: !4913)
!4930 = !DILocation(line: 249, column: 41, scope: !4913)
!4931 = !DILocation(line: 249, column: 39, scope: !4913)
!4932 = !DILocalVariable(name: "min", scope: !4913, file: !1, line: 250, type: !144)
!4933 = !DILocation(line: 250, column: 18, scope: !4913)
!4934 = !DILocalVariable(name: "ret", scope: !4913, file: !1, line: 251, type: !171)
!4935 = !DILocation(line: 251, column: 6, scope: !4913)
!4936 = !DILocation(line: 253, column: 9, scope: !4913)
!4937 = !DILocation(line: 253, column: 14, scope: !4913)
!4938 = !DILocation(line: 253, column: 20, scope: !4913)
!4939 = !DILocation(line: 253, column: 8, scope: !4913)
!4940 = !DILocation(line: 253, column: 56, scope: !4913)
!4941 = !DILocation(line: 253, column: 6, scope: !4913)
!4942 = !DILocation(line: 262, column: 31, scope: !4913)
!4943 = !DILocation(line: 262, column: 36, scope: !4913)
!4944 = !DILocation(line: 262, column: 41, scope: !4913)
!4945 = !DILocation(line: 262, column: 47, scope: !4913)
!4946 = !DILocation(line: 262, column: 54, scope: !4913)
!4947 = !DILocation(line: 264, column: 34, scope: !4913)
!4948 = !DILocation(line: 262, column: 8, scope: !4913)
!4949 = !DILocation(line: 262, column: 6, scope: !4913)
!4950 = !DILocation(line: 265, column: 6, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4913, file: !1, line: 265, column: 6)
!4952 = !DILocation(line: 265, column: 10, scope: !4951)
!4953 = !DILocation(line: 265, column: 6, scope: !4913)
!4954 = !DILocation(line: 266, column: 3, scope: !4951)
!4955 = !DILocation(line: 272, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4913, file: !1, line: 272, column: 6)
!4957 = !DILocation(line: 272, column: 12, scope: !4956)
!4958 = !DILocation(line: 272, column: 18, scope: !4956)
!4959 = !DILocation(line: 272, column: 63, scope: !4956)
!4960 = !DILocation(line: 272, column: 6, scope: !4913)
!4961 = !DILocation(line: 274, column: 32, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4956, file: !1, line: 273, column: 50)
!4963 = !DILocation(line: 274, column: 37, scope: !4962)
!4964 = !DILocation(line: 274, column: 42, scope: !4962)
!4965 = !DILocation(line: 274, column: 48, scope: !4962)
!4966 = !DILocation(line: 274, column: 55, scope: !4962)
!4967 = !DILocation(line: 276, column: 35, scope: !4962)
!4968 = !DILocation(line: 274, column: 9, scope: !4962)
!4969 = !DILocation(line: 274, column: 7, scope: !4962)
!4970 = !DILocation(line: 277, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4962, file: !1, line: 277, column: 7)
!4972 = !DILocation(line: 277, column: 11, scope: !4971)
!4973 = !DILocation(line: 277, column: 7, scope: !4962)
!4974 = !DILocation(line: 278, column: 4, scope: !4971)
!4975 = !DILocation(line: 279, column: 2, scope: !4962)
!4976 = !DILocation(line: 287, column: 6, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4913, file: !1, line: 287, column: 6)
!4978 = !DILocation(line: 287, column: 11, scope: !4977)
!4979 = !DILocation(line: 287, column: 17, scope: !4977)
!4980 = !DILocation(line: 287, column: 6, scope: !4913)
!4981 = !DILocation(line: 288, column: 32, scope: !4977)
!4982 = !DILocation(line: 288, column: 37, scope: !4977)
!4983 = !DILocation(line: 288, column: 42, scope: !4977)
!4984 = !DILocation(line: 288, column: 48, scope: !4977)
!4985 = !DILocation(line: 288, column: 55, scope: !4977)
!4986 = !DILocation(line: 289, column: 35, scope: !4977)
!4987 = !DILocation(line: 288, column: 9, scope: !4977)
!4988 = !DILocation(line: 288, column: 7, scope: !4977)
!4989 = !DILocation(line: 288, column: 3, scope: !4977)
!4990 = !DILocation(line: 291, column: 9, scope: !4913)
!4991 = !DILocation(line: 291, column: 2, scope: !4913)
!4992 = !DILocation(line: 292, column: 1, scope: !4913)
