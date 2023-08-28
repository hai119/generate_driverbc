; ModuleID = '../bcout/drivers/hwmon/sis5595.llvm.bc'
source_filename = "drivers/hwmon/sis5595.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_sm_sis5595_init6:\09\09\09"
module asm ".long\09sm_sis5595_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.60 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.58 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.58 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
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
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
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
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.sis5595_data = type { i16, i8*, %struct.device*, %struct.mutex, %struct.mutex, i8, i64, i8, i8, [5 x i8], [5 x i8], [5 x i8], [2 x i8], [2 x i8], i8, i8, i8, [2 x i8], i16 }

@__param_str_force_addr = internal constant [19 x i8] c"sis5595.force_addr\00", align 16, !dbg !0
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@force_addr = internal global i16 0, align 2, !dbg !3932
@__param_force_addr = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_force_addr, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @force_addr to i8*) } }, section "__param", align 8, !dbg !3848
@__UNIQUE_ID_force_addrtype238 = internal constant [35 x i8] c"sis5595.parmtype=force_addr:ushort\00", section ".modinfo", align 1, !dbg !3900
@__UNIQUE_ID_force_addr239 = internal constant [67 x i8] c"sis5595.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1, !dbg !3905
@sis5595_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @sis5595_pci_ids, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sis5595_pci_probe, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !4241
@s_bridge = internal global %struct.pci_dev* null, align 8, !dbg !3975
@pdev = internal global %struct.platform_device* null, align 8, !dbg !3934
@sis5595_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @sis5595_probe, i32 (%struct.platform_device*)* @sis5595_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* null, %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !4251
@__UNIQUE_ID_author263 = internal constant [53 x i8] c"sis5595.author=Aurelien Jarno <aurelien@aurel32.net>\00", section ".modinfo", align 1, !dbg !3910
@__UNIQUE_ID_description264 = internal constant [43 x i8] c"sis5595.description=SiS 5595 Sensor device\00", section ".modinfo", align 1, !dbg !3915
@__UNIQUE_ID_file265 = internal constant [35 x i8] c"sis5595.file=drivers/hwmon/sis5595\00", section ".modinfo", align 1, !dbg !3920
@__UNIQUE_ID_license266 = internal constant [20 x i8] c"sis5595.license=GPL\00", section ".modinfo", align 1, !dbg !3922
@__UNIQUE_ID___addressable_sm_sis5595_init267 = internal global i8* bitcast (i32 ()* @sm_sis5595_init to i8*), section ".discard.addressable", align 8, !dbg !3925
@__exitcall_sm_sis5595_exit = internal global void ()* @sm_sis5595_exit, section ".exitcall.exit", align 8, !dbg !3927
@.str = private unnamed_addr constant [8 x i8] c"sis5595\00", align 1
@sis5595_pci_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 8, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4243
@blacklist = internal global [10 x i32] [i32 1344, i32 1360, i32 1584, i32 1605, i32 1840, i32 1845, i32 21777, i32 21911, i32 21912, i32 0], align 16, !dbg !4246
@.str.1 = private unnamed_addr constant [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Forcing ISA address 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to read ISA address\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to force ISA address\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to read enable register\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to enable HWM device\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013sis5595: Device allocation failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"\013sis5595: Device resource addition failed (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"\013sis5595: Device addition failed (%d)\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@sis5595_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4272
@.str.11 = private unnamed_addr constant [12 x i8] c"&data->lock\00", align 1
@sis5595_probe.__key.12 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4275
@.str.13 = private unnamed_addr constant [19 x i8] c"&data->update_lock\00", align 1
@sis5595_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([27 x %struct.attribute*], [27 x %struct.attribute*]* @sis5595_attributes, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4277
@sis5595_group_in4 = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @sis5595_attributes_in4, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4336
@sis5595_group_temp1 = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([5 x %struct.attribute*], [5 x %struct.attribute*]* @sis5595_attributes_temp1, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !4351
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@sis5595_attributes = internal global [27 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in0_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in3_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan1_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_div, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_fan2_alarm, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_alarms, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_name, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4279
@sensor_dev_attr_in0_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4284
@sensor_dev_attr_in0_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 0 }, align 8, !dbg !4286
@sensor_dev_attr_in0_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 0 }, align 8, !dbg !4288
@sensor_dev_attr_in0_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4290
@sensor_dev_attr_in1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4292
@sensor_dev_attr_in1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 1 }, align 8, !dbg !4294
@sensor_dev_attr_in1_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 1 }, align 8, !dbg !4296
@sensor_dev_attr_in1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4298
@sensor_dev_attr_in2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4300
@sensor_dev_attr_in2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 2 }, align 8, !dbg !4302
@sensor_dev_attr_in2_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 2 }, align 8, !dbg !4304
@sensor_dev_attr_in2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 2 }, align 8, !dbg !4306
@sensor_dev_attr_in3_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4308
@sensor_dev_attr_in3_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 3 }, align 8, !dbg !4310
@sensor_dev_attr_in3_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 3 }, align 8, !dbg !4312
@sensor_dev_attr_in3_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 3 }, align 8, !dbg !4314
@sensor_dev_attr_fan1_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 0 }, align 8, !dbg !4316
@sensor_dev_attr_fan1_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 0 }, align 8, !dbg !4318
@sensor_dev_attr_fan1_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 0 }, align 8, !dbg !4320
@sensor_dev_attr_fan1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 6 }, align 8, !dbg !4322
@sensor_dev_attr_fan2_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 1 }, align 8, !dbg !4324
@sensor_dev_attr_fan2_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store }, i32 1 }, align 8, !dbg !4326
@sensor_dev_attr_fan2_div = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @fan_div_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store }, i32 1 }, align 8, !dbg !4328
@sensor_dev_attr_fan2_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 7 }, align 8, !dbg !4330
@dev_attr_alarms = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarms_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4332
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @name_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4334
@.str.14 = private unnamed_addr constant [10 x i8] c"in0_input\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"in0_min\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"in0_max\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"in0_alarm\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"in1_input\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"in1_min\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"in1_max\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"in1_alarm\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"in2_input\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"in2_min\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"in2_max\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"in2_alarm\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"in3_input\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"in3_min\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"in3_max\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"in3_alarm\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"fan1_input\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"fan1_min\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"fan1_div\00", align 1
@.str.35 = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"fan1_alarm\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"fan2_input\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"fan2_min\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"fan2_div\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"fan2_alarm\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"alarms\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@sis5595_attributes_in4 = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_input, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_min, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_max, i32 0, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_in4_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4338
@sensor_dev_attr_in4_input = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 4 }, align 8, !dbg !4343
@sensor_dev_attr_in4_min = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_min_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store }, i32 4 }, align 8, !dbg !4345
@sensor_dev_attr_in4_max = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @in_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store }, i32 4 }, align 8, !dbg !4347
@sensor_dev_attr_in4_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 15 }, align 8, !dbg !4349
@.str.44 = private unnamed_addr constant [10 x i8] c"in4_input\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"in4_min\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"in4_max\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"in4_alarm\00", align 1
@sis5595_attributes_temp1 = internal global [5 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_input, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_max, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_temp1_max_hyst, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.sensor_device_attribute, %struct.sensor_device_attribute* @sensor_dev_attr_temp1_alarm, i32 0, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !4353
@dev_attr_temp1_input = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_input_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !4355
@dev_attr_temp1_max = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_max_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp1_max_store }, align 8, !dbg !4357
@dev_attr_temp1_max_hyst = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp1_max_hyst_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp1_max_hyst_store }, align 8, !dbg !4359
@sensor_dev_attr_temp1_alarm = internal global %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, i32 15 }, align 8, !dbg !4361
@.str.48 = private unnamed_addr constant [12 x i8] c"temp1_input\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"temp1_max\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"temp1_max_hyst\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"temp1_alarm\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force_addr to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_force_addrtype238, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__UNIQUE_ID_force_addr239, i32 0, i32 0), i8* bitcast (void ()* @sm_sis5595_exit to i8*), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__UNIQUE_ID_author263, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_description264, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file265, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license266, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_sm_sis5595_init267 to i8*), i8* bitcast (void ()** @__exitcall_sm_sis5595_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @sm_sis5595_exit() #0 section ".exit.text" !dbg !4371 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @sis5595_pci_driver) #5, !dbg !4372
  %0 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4373
  %cmp = icmp ne %struct.pci_dev* %0, null, !dbg !4375
  br i1 %cmp, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %entry
  %1 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4377
  call void @platform_device_unregister(%struct.platform_device* %1) #5, !dbg !4379
  call void @platform_driver_unregister(%struct.platform_driver* @sis5595_driver) #5, !dbg !4380
  %2 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4381
  call void @pci_dev_put(%struct.pci_dev* %2) #5, !dbg !4382
  store %struct.pci_dev* null, %struct.pci_dev** @s_bridge, align 8, !dbg !4383
  br label %if.end, !dbg !4384

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4385
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local void @platform_device_unregister(%struct.platform_device*) #1

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sm_sis5595_init() #0 section ".init.text" !dbg !4386 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @sis5595_pci_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #5, !dbg !4389
  ret i32 %call, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sis5595_pci_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %id) #2 !dbg !4391 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %address = alloca i16, align 2
  %enable = alloca i8, align 1
  %i = alloca i32*, align 8
  %d = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.declare(metadata i16* %address, metadata !4396, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.declare(metadata i8* %enable, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i32** %i, metadata !4400, metadata !DIExpression()), !dbg !4401
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @blacklist, i64 0, i64 0), i32** %i, align 8, !dbg !4402
  br label %for.cond, !dbg !4404

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32*, i32** %i, align 8, !dbg !4405
  %1 = load i32, i32* %0, align 4, !dbg !4407
  %cmp = icmp ne i32 %1, 0, !dbg !4408
  br i1 %cmp, label %for.body, label %for.end, !dbg !4409

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %d, metadata !4410, metadata !DIExpression()), !dbg !4412
  %2 = load i32*, i32** %i, align 8, !dbg !4413
  %3 = load i32, i32* %2, align 4, !dbg !4414
  %call = call %struct.pci_dev* @pci_get_device(i32 4153, i32 %3, %struct.pci_dev* null) #5, !dbg !4415
  store %struct.pci_dev* %call, %struct.pci_dev** %d, align 8, !dbg !4416
  %4 = load %struct.pci_dev*, %struct.pci_dev** %d, align 8, !dbg !4417
  %tobool = icmp ne %struct.pci_dev* %4, null, !dbg !4417
  br i1 %tobool, label %if.then, label %if.end, !dbg !4419

if.then:                                          ; preds = %for.body
  %5 = load %struct.pci_dev*, %struct.pci_dev** %d, align 8, !dbg !4420
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 41, !dbg !4420
  %6 = load i32*, i32** %i, align 8, !dbg !4420
  %7 = load i32, i32* %6, align 4, !dbg !4420
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %7) #6, !dbg !4420
  %8 = load %struct.pci_dev*, %struct.pci_dev** %d, align 8, !dbg !4422
  call void @pci_dev_put(%struct.pci_dev* %8) #5, !dbg !4423
  store i32 -19, i32* %retval, align 4, !dbg !4424
  br label %return, !dbg !4424

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4425

for.inc:                                          ; preds = %if.end
  %9 = load i32*, i32** %i, align 8, !dbg !4426
  %incdec.ptr = getelementptr i32, i32* %9, i32 1, !dbg !4426
  store i32* %incdec.ptr, i32** %i, align 8, !dbg !4426
  br label %for.cond, !dbg !4427, !llvm.loop !4428

for.end:                                          ; preds = %for.cond
  %10 = load i16, i16* @force_addr, align 2, !dbg !4430
  %conv = zext i16 %10 to i32, !dbg !4430
  %and = and i32 %conv, -8, !dbg !4430
  %conv2 = trunc i32 %and to i16, !dbg !4430
  store i16 %conv2, i16* @force_addr, align 2, !dbg !4430
  %11 = load i16, i16* @force_addr, align 2, !dbg !4431
  %tobool3 = icmp ne i16 %11, 0, !dbg !4431
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !4433

if.then4:                                         ; preds = %for.end
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4434
  %dev5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 41, !dbg !4434
  %13 = load i16, i16* @force_addr, align 2, !dbg !4434
  %conv6 = zext i16 %13 to i32, !dbg !4434
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %conv6) #6, !dbg !4434
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4436
  %15 = load i16, i16* @force_addr, align 2, !dbg !4437
  %call7 = call i32 @pci_write_config_word(%struct.pci_dev* %14, i32 104, i16 zeroext %15) #5, !dbg !4438
  br label %if.end8, !dbg !4439

if.end8:                                          ; preds = %if.then4, %for.end
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4440
  %call9 = call i32 @pci_read_config_word(%struct.pci_dev* %16, i32 104, i16* %address) #5, !dbg !4442
  %cmp10 = icmp ne i32 0, %call9, !dbg !4443
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !4444

if.then12:                                        ; preds = %if.end8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4445
  %dev13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 41, !dbg !4445
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !4445
  store i32 -19, i32* %retval, align 4, !dbg !4447
  br label %return, !dbg !4447

if.end14:                                         ; preds = %if.end8
  %18 = load i16, i16* %address, align 2, !dbg !4448
  %conv15 = zext i16 %18 to i32, !dbg !4448
  %and16 = and i32 %conv15, -8, !dbg !4448
  %conv17 = trunc i32 %and16 to i16, !dbg !4448
  store i16 %conv17, i16* %address, align 2, !dbg !4448
  %19 = load i16, i16* %address, align 2, !dbg !4449
  %tobool18 = icmp ne i16 %19, 0, !dbg !4449
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !4451

if.then19:                                        ; preds = %if.end14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4452
  %dev20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 41, !dbg !4452
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev20, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4452
  store i32 -19, i32* %retval, align 4, !dbg !4454
  br label %return, !dbg !4454

if.end21:                                         ; preds = %if.end14
  %21 = load i16, i16* @force_addr, align 2, !dbg !4455
  %conv22 = zext i16 %21 to i32, !dbg !4455
  %tobool23 = icmp ne i32 %conv22, 0, !dbg !4455
  br i1 %tobool23, label %land.lhs.true, label %if.end30, !dbg !4457

land.lhs.true:                                    ; preds = %if.end21
  %22 = load i16, i16* %address, align 2, !dbg !4458
  %conv24 = zext i16 %22 to i32, !dbg !4458
  %23 = load i16, i16* @force_addr, align 2, !dbg !4459
  %conv25 = zext i16 %23 to i32, !dbg !4459
  %cmp26 = icmp ne i32 %conv24, %conv25, !dbg !4460
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !4461

if.then28:                                        ; preds = %land.lhs.true
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4462
  %dev29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 41, !dbg !4462
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4462
  store i32 -19, i32* %retval, align 4, !dbg !4464
  br label %return, !dbg !4464

if.end30:                                         ; preds = %land.lhs.true, %if.end21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4465
  %call31 = call i32 @pci_read_config_byte(%struct.pci_dev* %25, i32 123, i8* %enable) #5, !dbg !4467
  %cmp32 = icmp ne i32 0, %call31, !dbg !4468
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !4469

if.then34:                                        ; preds = %if.end30
  %26 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4470
  %dev35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 41, !dbg !4470
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !4470
  store i32 -19, i32* %retval, align 4, !dbg !4472
  br label %return, !dbg !4472

if.end36:                                         ; preds = %if.end30
  %27 = load i8, i8* %enable, align 1, !dbg !4473
  %conv37 = zext i8 %27 to i32, !dbg !4473
  %and38 = and i32 %conv37, 128, !dbg !4475
  %tobool39 = icmp ne i32 %and38, 0, !dbg !4475
  br i1 %tobool39, label %if.end56, label %if.then40, !dbg !4476

if.then40:                                        ; preds = %if.end36
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4477
  %29 = load i8, i8* %enable, align 1, !dbg !4480
  %conv41 = zext i8 %29 to i32, !dbg !4480
  %or = or i32 %conv41, 128, !dbg !4481
  %conv42 = trunc i32 %or to i8, !dbg !4480
  %call43 = call i32 @pci_write_config_byte(%struct.pci_dev* %28, i32 123, i8 zeroext %conv42) #5, !dbg !4482
  %cmp44 = icmp ne i32 0, %call43, !dbg !4483
  br i1 %cmp44, label %if.then53, label %lor.lhs.false, !dbg !4484

lor.lhs.false:                                    ; preds = %if.then40
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4485
  %call46 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 123, i8* %enable) #5, !dbg !4486
  %cmp47 = icmp ne i32 0, %call46, !dbg !4487
  br i1 %cmp47, label %if.then53, label %lor.lhs.false49, !dbg !4488

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %31 = load i8, i8* %enable, align 1, !dbg !4489
  %conv50 = zext i8 %31 to i32, !dbg !4489
  %and51 = and i32 %conv50, 128, !dbg !4490
  %tobool52 = icmp ne i32 %and51, 0, !dbg !4490
  br i1 %tobool52, label %if.end55, label %if.then53, !dbg !4491

if.then53:                                        ; preds = %lor.lhs.false49, %lor.lhs.false, %if.then40
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4492
  %dev54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 41, !dbg !4492
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !4492
  store i32 -19, i32* %retval, align 4, !dbg !4494
  br label %return, !dbg !4494

if.end55:                                         ; preds = %lor.lhs.false49
  br label %if.end56, !dbg !4495

if.end56:                                         ; preds = %if.end55, %if.end36
  %call57 = call i32 @__platform_driver_register(%struct.platform_driver* @sis5595_driver, %struct.module* null) #5, !dbg !4496
  %tobool58 = icmp ne i32 %call57, 0, !dbg !4496
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4498

if.then59:                                        ; preds = %if.end56
  br label %exit, !dbg !4499

if.end60:                                         ; preds = %if.end56
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4501
  %call61 = call %struct.pci_dev* @pci_dev_get(%struct.pci_dev* %33) #5, !dbg !4502
  store %struct.pci_dev* %call61, %struct.pci_dev** @s_bridge, align 8, !dbg !4503
  %34 = load i16, i16* %address, align 2, !dbg !4504
  %call62 = call i32 @sis5595_device_add(i16 zeroext %34) #5, !dbg !4506
  %tobool63 = icmp ne i32 %call62, 0, !dbg !4506
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !4507

if.then64:                                        ; preds = %if.end60
  br label %exit_unregister, !dbg !4508

if.end65:                                         ; preds = %if.end60
  store i32 -19, i32* %retval, align 4, !dbg !4509
  br label %return, !dbg !4509

exit_unregister:                                  ; preds = %if.then64
  call void @llvm.dbg.label(metadata !4510), !dbg !4511
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4512
  call void @pci_dev_put(%struct.pci_dev* %35) #5, !dbg !4513
  call void @platform_driver_unregister(%struct.platform_driver* @sis5595_driver) #5, !dbg !4514
  br label %exit, !dbg !4514

exit:                                             ; preds = %exit_unregister, %if.then59
  call void @llvm.dbg.label(metadata !4515), !dbg !4516
  store i32 -19, i32* %retval, align 4, !dbg !4517
  br label %return, !dbg !4517

return:                                           ; preds = %exit, %if.end65, %if.then53, %if.then34, %if.then28, %if.then19, %if.then12, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4518
  ret i32 %36, !dbg !4518
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_dev_get(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sis5595_device_add(i16 zeroext %address) #2 !dbg !4519 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i16, align 2
  %res = alloca %struct.resource, align 8
  %err = alloca i32, align 4
  store i16 %address, i16* %address.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %address.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.declare(metadata %struct.resource* %res, metadata !4524, metadata !DIExpression()), !dbg !4525
  %start = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 0, !dbg !4526
  %0 = load i16, i16* %address.addr, align 2, !dbg !4527
  %conv = zext i16 %0 to i64, !dbg !4527
  store i64 %conv, i64* %start, align 8, !dbg !4526
  %end = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 1, !dbg !4526
  %1 = load i16, i16* %address.addr, align 2, !dbg !4528
  %conv1 = zext i16 %1 to i32, !dbg !4528
  %add = add i32 %conv1, 8, !dbg !4529
  %sub = sub i32 %add, 1, !dbg !4530
  %conv2 = sext i32 %sub to i64, !dbg !4528
  store i64 %conv2, i64* %end, align 8, !dbg !4526
  %name = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 2, !dbg !4526
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4526
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 3, !dbg !4526
  store i64 256, i64* %flags, align 8, !dbg !4526
  %desc = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 4, !dbg !4526
  store i64 0, i64* %desc, align 8, !dbg !4526
  %parent = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 5, !dbg !4526
  store %struct.resource* null, %struct.resource** %parent, align 8, !dbg !4526
  %sibling = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 6, !dbg !4526
  store %struct.resource* null, %struct.resource** %sibling, align 8, !dbg !4526
  %child = getelementptr inbounds %struct.resource, %struct.resource* %res, i32 0, i32 7, !dbg !4526
  store %struct.resource* null, %struct.resource** %child, align 8, !dbg !4526
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4531, metadata !DIExpression()), !dbg !4532
  %call = call i32 @acpi_check_resource_conflict(%struct.resource* %res) #5, !dbg !4533
  store i32 %call, i32* %err, align 4, !dbg !4534
  %2 = load i32, i32* %err, align 4, !dbg !4535
  %tobool = icmp ne i32 %2, 0, !dbg !4535
  br i1 %tobool, label %if.then, label %if.end, !dbg !4537

if.then:                                          ; preds = %entry
  br label %exit, !dbg !4538

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %address.addr, align 2, !dbg !4539
  %conv3 = zext i16 %3 to i32, !dbg !4539
  %call4 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %conv3) #5, !dbg !4540
  store %struct.platform_device* %call4, %struct.platform_device** @pdev, align 8, !dbg !4541
  %4 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4542
  %tobool5 = icmp ne %struct.platform_device* %4, null, !dbg !4542
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !4544

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %err, align 4, !dbg !4545
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4547
  br label %exit, !dbg !4548

if.end8:                                          ; preds = %if.end
  %5 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4549
  %call9 = call i32 @platform_device_add_resources(%struct.platform_device* %5, %struct.resource* %res, i32 1) #5, !dbg !4550
  store i32 %call9, i32* %err, align 4, !dbg !4551
  %6 = load i32, i32* %err, align 4, !dbg !4552
  %tobool10 = icmp ne i32 %6, 0, !dbg !4552
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4554

if.then11:                                        ; preds = %if.end8
  %7 = load i32, i32* %err, align 4, !dbg !4555
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %7) #6, !dbg !4555
  br label %exit_device_put, !dbg !4557

if.end13:                                         ; preds = %if.end8
  %8 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4558
  %call14 = call i32 @platform_device_add(%struct.platform_device* %8) #5, !dbg !4559
  store i32 %call14, i32* %err, align 4, !dbg !4560
  %9 = load i32, i32* %err, align 4, !dbg !4561
  %tobool15 = icmp ne i32 %9, 0, !dbg !4561
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4563

if.then16:                                        ; preds = %if.end13
  %10 = load i32, i32* %err, align 4, !dbg !4564
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %10) #6, !dbg !4564
  br label %exit_device_put, !dbg !4566

if.end18:                                         ; preds = %if.end13
  store i32 0, i32* %retval, align 4, !dbg !4567
  br label %return, !dbg !4567

exit_device_put:                                  ; preds = %if.then16, %if.then11
  call void @llvm.dbg.label(metadata !4568), !dbg !4569
  %11 = load %struct.platform_device*, %struct.platform_device** @pdev, align 8, !dbg !4570
  call void @platform_device_put(%struct.platform_device* %11) #5, !dbg !4571
  br label %exit, !dbg !4571

exit:                                             ; preds = %exit_device_put, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4572), !dbg !4573
  %12 = load i32, i32* %err, align 4, !dbg !4574
  store i32 %12, i32* %retval, align 4, !dbg !4575
  br label %return, !dbg !4575

return:                                           ; preds = %exit, %if.end18
  %13 = load i32, i32* %retval, align 4, !dbg !4576
  ret i32 %13, !dbg !4576
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_check_resource_conflict(%struct.resource*) #1

; Function Attrs: noredzone
declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

; Function Attrs: noredzone
declare dso_local void @platform_device_put(%struct.platform_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sis5595_probe(%struct.platform_device* %pdev) #2 !dbg !4274 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %data = alloca %struct.sis5595_data*, align 8
  %res = alloca %struct.resource*, align 8
  %val = alloca i8, align 1
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i32 0, i32* %err, align 4, !dbg !4580
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !4583, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.declare(metadata %struct.resource** %res, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4611, metadata !DIExpression()), !dbg !4612
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4613
  %call = call %struct.resource* @platform_get_resource(%struct.platform_device* %0, i32 256, i32 0) #5, !dbg !4614
  store %struct.resource* %call, %struct.resource** %res, align 8, !dbg !4615
  %1 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4616
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %1, i32 0, i32 3, !dbg !4616
  %2 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4616
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !4616
  %3 = load i64, i64* %start, align 8, !dbg !4616
  %4 = load i8*, i8** getelementptr inbounds (%struct.platform_driver, %struct.platform_driver* @sis5595_driver, i32 0, i32 5, i32 0), align 8, !dbg !4616
  %call1 = call %struct.resource* @__devm_request_region(%struct.device* %dev, %struct.resource* @ioport_resource, i64 %3, i64 8, i8* %4) #5, !dbg !4616
  %tobool = icmp ne %struct.resource* %call1, null, !dbg !4616
  br i1 %tobool, label %if.end, label %if.then, !dbg !4618

if.then:                                          ; preds = %entry
  store i32 -16, i32* %retval, align 4, !dbg !4619
  br label %return, !dbg !4619

if.end:                                           ; preds = %entry
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4620
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !4621
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 120, i32 3264) #5, !dbg !4622
  %6 = bitcast i8* %call3 to %struct.sis5595_data*, !dbg !4622
  store %struct.sis5595_data* %6, %struct.sis5595_data** %data, align 8, !dbg !4623
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4624
  %tobool4 = icmp ne %struct.sis5595_data* %7, null, !dbg !4624
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4626

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4627
  br label %return, !dbg !4627

if.end6:                                          ; preds = %if.end
  br label %do.body, !dbg !4628

do.body:                                          ; preds = %if.end6
  %8 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4629
  %lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %8, i32 0, i32 3, !dbg !4629
  call void @__mutex_init(%struct.mutex* %lock, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @sis5595_probe.__key) #5, !dbg !4629
  br label %do.end, !dbg !4629

do.end:                                           ; preds = %do.body
  br label %do.body7, !dbg !4631

do.body7:                                         ; preds = %do.end
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4632
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 4, !dbg !4632
  call void @__mutex_init(%struct.mutex* %update_lock, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %struct.lock_class_key* @sis5595_probe.__key.12) #5, !dbg !4632
  br label %do.end8, !dbg !4632

do.end8:                                          ; preds = %do.body7
  %10 = load %struct.resource*, %struct.resource** %res, align 8, !dbg !4634
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !4635
  %11 = load i64, i64* %start9, align 8, !dbg !4635
  %conv = trunc i64 %11 to i16, !dbg !4634
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4636
  %addr = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 0, !dbg !4637
  store i16 %conv, i16* %addr, align 8, !dbg !4638
  %13 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4639
  %name = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %13, i32 0, i32 1, !dbg !4640
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %name, align 8, !dbg !4641
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4642
  %15 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4643
  %16 = bitcast %struct.sis5595_data* %15 to i8*, !dbg !4643
  call void @platform_set_drvdata(%struct.platform_device* %14, i8* %16) #5, !dbg !4644
  %17 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4645
  %revision = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 12, !dbg !4646
  %18 = load i8, i8* %revision, align 8, !dbg !4646
  %19 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4647
  %revision10 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %19, i32 0, i32 8, !dbg !4648
  store i8 %18, i8* %revision10, align 1, !dbg !4649
  %20 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4650
  %maxins = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %20, i32 0, i32 7, !dbg !4651
  store i8 3, i8* %maxins, align 8, !dbg !4652
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4653
  %revision11 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 8, !dbg !4655
  %22 = load i8, i8* %revision11, align 1, !dbg !4655
  %conv12 = zext i8 %22 to i32, !dbg !4653
  %cmp = icmp sge i32 %conv12, 176, !dbg !4656
  br i1 %cmp, label %if.then14, label %if.end21, !dbg !4657

if.then14:                                        ; preds = %do.end8
  %23 = load %struct.pci_dev*, %struct.pci_dev** @s_bridge, align 8, !dbg !4658
  %call15 = call i32 @pci_read_config_byte(%struct.pci_dev* %23, i32 122, i8* %val) #5, !dbg !4660
  %24 = load i8, i8* %val, align 1, !dbg !4661
  %conv16 = sext i8 %24 to i32, !dbg !4661
  %and = and i32 %conv16, 128, !dbg !4663
  %tobool17 = icmp ne i32 %and, 0, !dbg !4663
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !4664

if.then18:                                        ; preds = %if.then14
  %25 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4665
  %maxins19 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %25, i32 0, i32 7, !dbg !4666
  store i8 4, i8* %maxins19, align 8, !dbg !4667
  br label %if.end20, !dbg !4665

if.end20:                                         ; preds = %if.then18, %if.then14
  br label %if.end21, !dbg !4668

if.end21:                                         ; preds = %if.end20, %do.end8
  %26 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4669
  call void @sis5595_init_device(%struct.sis5595_data* %26) #5, !dbg !4670
  store i32 0, i32* %i, align 4, !dbg !4671
  br label %for.cond, !dbg !4673

for.cond:                                         ; preds = %for.inc, %if.end21
  %27 = load i32, i32* %i, align 4, !dbg !4674
  %cmp22 = icmp slt i32 %27, 2, !dbg !4676
  br i1 %cmp22, label %for.body, label %for.end, !dbg !4677

for.body:                                         ; preds = %for.cond
  %28 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4678
  %29 = load i32, i32* %i, align 4, !dbg !4680
  %add = add i32 59, %29, !dbg !4680
  %conv24 = trunc i32 %add to i8, !dbg !4680
  %call25 = call i32 @sis5595_read_value(%struct.sis5595_data* %28, i8 zeroext %conv24) #5, !dbg !4681
  %conv26 = trunc i32 %call25 to i8, !dbg !4681
  %30 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4682
  %fan_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %30, i32 0, i32 13, !dbg !4683
  %31 = load i32, i32* %i, align 4, !dbg !4684
  %idxprom = sext i32 %31 to i64, !dbg !4682
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !4682
  store i8 %conv26, i8* %arrayidx, align 1, !dbg !4685
  br label %for.inc, !dbg !4686

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !dbg !4687
  %inc = add i32 %32, 1, !dbg !4687
  store i32 %inc, i32* %i, align 4, !dbg !4687
  br label %for.cond, !dbg !4688, !llvm.loop !4689

for.end:                                          ; preds = %for.cond
  %33 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4691
  %dev27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 3, !dbg !4692
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev27, i32 0, i32 0, !dbg !4693
  %call28 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* @sis5595_group) #5, !dbg !4694
  store i32 %call28, i32* %err, align 4, !dbg !4695
  %34 = load i32, i32* %err, align 4, !dbg !4696
  %tobool29 = icmp ne i32 %34, 0, !dbg !4696
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4698

if.then30:                                        ; preds = %for.end
  %35 = load i32, i32* %err, align 4, !dbg !4699
  store i32 %35, i32* %retval, align 4, !dbg !4700
  br label %return, !dbg !4700

if.end31:                                         ; preds = %for.end
  %36 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4701
  %maxins32 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %36, i32 0, i32 7, !dbg !4703
  %37 = load i8, i8* %maxins32, align 8, !dbg !4703
  %conv33 = sext i8 %37 to i32, !dbg !4701
  %cmp34 = icmp eq i32 %conv33, 4, !dbg !4704
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !4705

if.then36:                                        ; preds = %if.end31
  %38 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4706
  %dev37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 3, !dbg !4708
  %kobj38 = getelementptr inbounds %struct.device, %struct.device* %dev37, i32 0, i32 0, !dbg !4709
  %call39 = call i32 @sysfs_create_group(%struct.kobject* %kobj38, %struct.attribute_group* @sis5595_group_in4) #5, !dbg !4710
  store i32 %call39, i32* %err, align 4, !dbg !4711
  %39 = load i32, i32* %err, align 4, !dbg !4712
  %tobool40 = icmp ne i32 %39, 0, !dbg !4712
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4714

if.then41:                                        ; preds = %if.then36
  br label %exit_remove_files, !dbg !4715

if.end42:                                         ; preds = %if.then36
  br label %if.end49, !dbg !4716

if.else:                                          ; preds = %if.end31
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4717
  %dev43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 3, !dbg !4719
  %kobj44 = getelementptr inbounds %struct.device, %struct.device* %dev43, i32 0, i32 0, !dbg !4720
  %call45 = call i32 @sysfs_create_group(%struct.kobject* %kobj44, %struct.attribute_group* @sis5595_group_temp1) #5, !dbg !4721
  store i32 %call45, i32* %err, align 4, !dbg !4722
  %41 = load i32, i32* %err, align 4, !dbg !4723
  %tobool46 = icmp ne i32 %41, 0, !dbg !4723
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !4725

if.then47:                                        ; preds = %if.else
  br label %exit_remove_files, !dbg !4726

if.end48:                                         ; preds = %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end42
  %42 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4727
  %dev50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 3, !dbg !4728
  %call51 = call %struct.device* @hwmon_device_register(%struct.device* %dev50) #5, !dbg !4729
  %43 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4730
  %hwmon_dev = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %43, i32 0, i32 2, !dbg !4731
  store %struct.device* %call51, %struct.device** %hwmon_dev, align 8, !dbg !4732
  %44 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4733
  %hwmon_dev52 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %44, i32 0, i32 2, !dbg !4735
  %45 = load %struct.device*, %struct.device** %hwmon_dev52, align 8, !dbg !4735
  %46 = bitcast %struct.device* %45 to i8*, !dbg !4733
  %call53 = call zeroext i1 @IS_ERR(i8* %46) #5, !dbg !4736
  br i1 %call53, label %if.then54, label %if.end58, !dbg !4737

if.then54:                                        ; preds = %if.end49
  %47 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4738
  %hwmon_dev55 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %47, i32 0, i32 2, !dbg !4740
  %48 = load %struct.device*, %struct.device** %hwmon_dev55, align 8, !dbg !4740
  %49 = bitcast %struct.device* %48 to i8*, !dbg !4738
  %call56 = call i64 @PTR_ERR(i8* %49) #5, !dbg !4741
  %conv57 = trunc i64 %call56 to i32, !dbg !4741
  store i32 %conv57, i32* %err, align 4, !dbg !4742
  br label %exit_remove_files, !dbg !4743

if.end58:                                         ; preds = %if.end49
  store i32 0, i32* %retval, align 4, !dbg !4744
  br label %return, !dbg !4744

exit_remove_files:                                ; preds = %if.then54, %if.then47, %if.then41
  call void @llvm.dbg.label(metadata !4745), !dbg !4746
  %50 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4747
  %dev59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 3, !dbg !4748
  %kobj60 = getelementptr inbounds %struct.device, %struct.device* %dev59, i32 0, i32 0, !dbg !4749
  call void @sysfs_remove_group(%struct.kobject* %kobj60, %struct.attribute_group* @sis5595_group) #5, !dbg !4750
  %51 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4751
  %dev61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 3, !dbg !4752
  %kobj62 = getelementptr inbounds %struct.device, %struct.device* %dev61, i32 0, i32 0, !dbg !4753
  call void @sysfs_remove_group(%struct.kobject* %kobj62, %struct.attribute_group* @sis5595_group_in4) #5, !dbg !4754
  %52 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4755
  %dev63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 3, !dbg !4756
  %kobj64 = getelementptr inbounds %struct.device, %struct.device* %dev63, i32 0, i32 0, !dbg !4757
  call void @sysfs_remove_group(%struct.kobject* %kobj64, %struct.attribute_group* @sis5595_group_temp1) #5, !dbg !4758
  %53 = load i32, i32* %err, align 4, !dbg !4759
  store i32 %53, i32* %retval, align 4, !dbg !4760
  br label %return, !dbg !4760

return:                                           ; preds = %exit_remove_files, %if.end58, %if.then30, %if.then5, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !4761
  ret i32 %54, !dbg !4761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sis5595_remove(%struct.platform_device* %pdev) #2 !dbg !4762 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4767
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #5, !dbg !4768
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !4768
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !4766
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4769
  %hwmon_dev = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 2, !dbg !4770
  %3 = load %struct.device*, %struct.device** %hwmon_dev, align 8, !dbg !4770
  call void @hwmon_device_unregister(%struct.device* %3) #5, !dbg !4771
  %4 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4772
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 3, !dbg !4773
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !4774
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* @sis5595_group) #5, !dbg !4775
  %5 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4776
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 3, !dbg !4777
  %kobj2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 0, !dbg !4778
  call void @sysfs_remove_group(%struct.kobject* %kobj2, %struct.attribute_group* @sis5595_group_in4) #5, !dbg !4779
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4780
  %dev3 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 3, !dbg !4781
  %kobj4 = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 0, !dbg !4782
  call void @sysfs_remove_group(%struct.kobject* %kobj4, %struct.attribute_group* @sis5595_group_temp1) #5, !dbg !4783
  ret i32 0, !dbg !4784
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @__devm_request_region(%struct.device*, %struct.resource*, i64, i64, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4785 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4788, metadata !DIExpression()), !dbg !4789
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4790, metadata !DIExpression()), !dbg !4791
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4792, metadata !DIExpression()), !dbg !4793
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4794
  %1 = load i64, i64* %size.addr, align 8, !dbg !4795
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4796
  %or = or i32 %2, 256, !dbg !4797
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #5, !dbg !4798
  ret i8* %call, !dbg !4799
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !4800 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !4807
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !4808
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4809
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !4810
  ret void, !dbg !4811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sis5595_init_device(%struct.sis5595_data* %data) #2 !dbg !4812 {
entry:
  %data.addr = alloca %struct.sis5595_data*, align 8
  %config = alloca i8, align 1
  store %struct.sis5595_data* %data, %struct.sis5595_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.declare(metadata i8* %config, metadata !4817, metadata !DIExpression()), !dbg !4818
  %0 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4819
  %call = call i32 @sis5595_read_value(%struct.sis5595_data* %0, i8 zeroext 64) #5, !dbg !4820
  %conv = trunc i32 %call to i8, !dbg !4820
  store i8 %conv, i8* %config, align 1, !dbg !4818
  %1 = load i8, i8* %config, align 1, !dbg !4821
  %conv1 = zext i8 %1 to i32, !dbg !4821
  %and = and i32 %conv1, 1, !dbg !4823
  %tobool = icmp ne i32 %and, 0, !dbg !4823
  br i1 %tobool, label %if.end, label %if.then, !dbg !4824

if.then:                                          ; preds = %entry
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4825
  %3 = load i8, i8* %config, align 1, !dbg !4826
  %conv2 = zext i8 %3 to i32, !dbg !4826
  %and3 = and i32 %conv2, 247, !dbg !4827
  %or = or i32 %and3, 1, !dbg !4828
  %conv4 = trunc i32 %or to i8, !dbg !4829
  call void @sis5595_write_value(%struct.sis5595_data* %2, i8 zeroext 64, i8 zeroext %conv4) #5, !dbg !4830
  br label %if.end, !dbg !4830

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @sis5595_read_value(%struct.sis5595_data* %data, i8 zeroext %reg) #2 !dbg !4832 {
entry:
  %data.addr = alloca %struct.sis5595_data*, align 8
  %reg.addr = alloca i8, align 1
  %res = alloca i32, align 4
  store %struct.sis5595_data* %data, %struct.sis5595_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  call void @llvm.dbg.declare(metadata i32* %res, metadata !4839, metadata !DIExpression()), !dbg !4840
  %0 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4841
  %lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %0, i32 0, i32 3, !dbg !4842
  call void @mutex_lock(%struct.mutex* %lock) #5, !dbg !4843
  %1 = load i8, i8* %reg.addr, align 1, !dbg !4844
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4845
  %addr = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 0, !dbg !4846
  %3 = load i16, i16* %addr, align 8, !dbg !4846
  %conv = zext i16 %3 to i32, !dbg !4845
  %add = add i32 %conv, 5, !dbg !4847
  call void @outb_p(i8 zeroext %1, i32 %add) #5, !dbg !4848
  %4 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4849
  %addr1 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %4, i32 0, i32 0, !dbg !4850
  %5 = load i16, i16* %addr1, align 8, !dbg !4850
  %conv2 = zext i16 %5 to i32, !dbg !4849
  %add3 = add i32 %conv2, 6, !dbg !4851
  %call = call zeroext i8 @inb_p(i32 %add3) #5, !dbg !4852
  %conv4 = zext i8 %call to i32, !dbg !4852
  store i32 %conv4, i32* %res, align 4, !dbg !4853
  %6 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4854
  %lock5 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %6, i32 0, i32 3, !dbg !4855
  call void @mutex_unlock(%struct.mutex* %lock5) #5, !dbg !4856
  %7 = load i32, i32* %res, align 4, !dbg !4857
  ret i32 %7, !dbg !4858
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @hwmon_device_register(%struct.device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !4859 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4865
  %1 = ptrtoint i8* %0 to i64, !dbg !4865
  %2 = inttoptr i64 %1 to i8*, !dbg !4865
  %3 = ptrtoint i8* %2 to i64, !dbg !4865
  %cmp = icmp uge i64 %3, -4095, !dbg !4865
  %lnot = xor i1 %cmp, true, !dbg !4865
  %lnot1 = xor i1 %lnot, true, !dbg !4865
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4865
  %conv = sext i32 %lnot.ext to i64, !dbg !4865
  %tobool = icmp ne i64 %conv, 0, !dbg !4865
  ret i1 %tobool, !dbg !4866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !4867 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4872
  %1 = ptrtoint i8* %0 to i64, !dbg !4873
  ret i64 %1, !dbg !4874
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !4875 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4882
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4883
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !4884
  store i8* %0, i8** %driver_data, align 8, !dbg !4885
  ret void, !dbg !4886
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sis5595_write_value(%struct.sis5595_data* %data, i8 zeroext %reg, i8 zeroext %value) #2 !dbg !4887 {
entry:
  %data.addr = alloca %struct.sis5595_data*, align 8
  %reg.addr = alloca i8, align 1
  %value.addr = alloca i8, align 1
  store %struct.sis5595_data* %data, %struct.sis5595_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4892, metadata !DIExpression()), !dbg !4893
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4896
  %lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %0, i32 0, i32 3, !dbg !4897
  call void @mutex_lock(%struct.mutex* %lock) #5, !dbg !4898
  %1 = load i8, i8* %reg.addr, align 1, !dbg !4899
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4900
  %addr = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 0, !dbg !4901
  %3 = load i16, i16* %addr, align 8, !dbg !4901
  %conv = zext i16 %3 to i32, !dbg !4900
  %add = add i32 %conv, 5, !dbg !4902
  call void @outb_p(i8 zeroext %1, i32 %add) #5, !dbg !4903
  %4 = load i8, i8* %value.addr, align 1, !dbg !4904
  %5 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4905
  %addr1 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %5, i32 0, i32 0, !dbg !4906
  %6 = load i16, i16* %addr1, align 8, !dbg !4906
  %conv2 = zext i16 %6 to i32, !dbg !4905
  %add3 = add i32 %conv2, 6, !dbg !4907
  call void @outb_p(i8 zeroext %4, i32 %add3) #5, !dbg !4908
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %data.addr, align 8, !dbg !4909
  %lock4 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %7, i32 0, i32 3, !dbg !4910
  call void @mutex_unlock(%struct.mutex* %lock4) #5, !dbg !4911
  ret void, !dbg !4912
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #2 !dbg !4913 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4919, metadata !DIExpression()), !dbg !4918
  %0 = load i8, i8* %value.addr, align 1, !dbg !4918
  %1 = load i32, i32* %port.addr, align 4, !dbg !4918
  call void @outb(i8 zeroext %0, i32 %1) #5, !dbg !4918
  call void @slow_down_io() #5, !dbg !4918
  ret void, !dbg !4918
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #2 !dbg !4920 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4923, metadata !DIExpression()), !dbg !4922
  %0 = load i8, i8* %value.addr, align 1, !dbg !4922
  %1 = load i32, i32* %port.addr, align 4, !dbg !4922
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #7, !dbg !4922, !srcloc !4924
  ret void, !dbg !4922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #2 !dbg !4925 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !4927
  call void %0() #5, !dbg !4928
  ret void, !dbg !4929
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #2 !dbg !4930 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4935, metadata !DIExpression()), !dbg !4934
  %0 = load i32, i32* %port.addr, align 4, !dbg !4934
  %call = call zeroext i8 @inb(i32 %0) #5, !dbg !4934
  store i8 %call, i8* %value, align 1, !dbg !4934
  call void @slow_down_io() #5, !dbg !4934
  %1 = load i8, i8* %value, align 1, !dbg !4934
  ret i8 %1, !dbg !4934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #2 !dbg !4936 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4939, metadata !DIExpression()), !dbg !4938
  %0 = load i32, i32* %port.addr, align 4, !dbg !4938
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #7, !dbg !4938, !srcloc !4940
  store i8 %1, i8* %value, align 1, !dbg !4938
  %2 = load i8, i8* %value, align 1, !dbg !4938
  ret i8 %2, !dbg !4938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !4941 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4942, metadata !DIExpression()), !dbg !4943
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !4944, metadata !DIExpression()), !dbg !4945
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4950
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !4951
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !4949
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !4952, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4954, metadata !DIExpression()), !dbg !4956
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !4956
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !4956
  store i8* %2, i8** %__mptr, align 8, !dbg !4956
  br label %do.body, !dbg !4956

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4957

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4956
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4956
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !4956
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4957
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !4956
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !4953
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !4959, metadata !DIExpression()), !dbg !4960
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !4961
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !4962
  %7 = load i32, i32* %index, align 8, !dbg !4962
  store i32 %7, i32* %nr, align 4, !dbg !4960
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !4963
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4964
  %in = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 9, !dbg !4964
  %10 = load i32, i32* %nr, align 4, !dbg !4964
  %idxprom = sext i32 %10 to i64, !dbg !4964
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in, i64 0, i64 %idxprom, !dbg !4964
  %11 = load i8, i8* %arrayidx, align 1, !dbg !4964
  %conv = zext i8 %11 to i32, !dbg !4964
  %mul = mul i32 %conv, 16, !dbg !4964
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %mul) #5, !dbg !4965
  %conv2 = sext i32 %call1 to i64, !dbg !4965
  ret i64 %conv2, !dbg !4966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sis5595_data* @sis5595_update_device(%struct.device* %dev) #2 !dbg !4967 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %i = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4974
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !4975
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !4975
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4976, metadata !DIExpression()), !dbg !4977
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4978
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 4, !dbg !4979
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !4980
  %3 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4981
  %last_updated = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %3, i32 0, i32 6, !dbg !4981
  %4 = load i64, i64* %last_updated, align 8, !dbg !4981
  %add = add i64 %4, 250, !dbg !4981
  %add1 = add i64 %add, 125, !dbg !4981
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !4981
  %sub = sub i64 %add1, %5, !dbg !4981
  %cmp = icmp slt i64 %sub, 0, !dbg !4981
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4983

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4984
  %valid = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %6, i32 0, i32 5, !dbg !4985
  %7 = load i8, i8* %valid, align 8, !dbg !4985
  %tobool = icmp ne i8 %7, 0, !dbg !4984
  br i1 %tobool, label %if.end79, label %if.then, !dbg !4986

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %i, align 4, !dbg !4987
  br label %for.cond, !dbg !4990

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !4991
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4993
  %maxins = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 7, !dbg !4994
  %10 = load i8, i8* %maxins, align 8, !dbg !4994
  %conv = sext i8 %10 to i32, !dbg !4993
  %cmp2 = icmp sle i32 %8, %conv, !dbg !4995
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4996

for.body:                                         ; preds = %for.cond
  %11 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !4997
  %12 = load i32, i32* %i, align 4, !dbg !4999
  %add4 = add i32 32, %12, !dbg !4999
  %conv5 = trunc i32 %add4 to i8, !dbg !4999
  %call6 = call i32 @sis5595_read_value(%struct.sis5595_data* %11, i8 zeroext %conv5) #5, !dbg !5000
  %conv7 = trunc i32 %call6 to i8, !dbg !5000
  %13 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5001
  %in = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %13, i32 0, i32 9, !dbg !5002
  %14 = load i32, i32* %i, align 4, !dbg !5003
  %idxprom = sext i32 %14 to i64, !dbg !5001
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in, i64 0, i64 %idxprom, !dbg !5001
  store i8 %conv7, i8* %arrayidx, align 1, !dbg !5004
  %15 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5005
  %16 = load i32, i32* %i, align 4, !dbg !5006
  %mul = mul i32 %16, 2, !dbg !5006
  %add8 = add i32 44, %mul, !dbg !5006
  %conv9 = trunc i32 %add8 to i8, !dbg !5006
  %call10 = call i32 @sis5595_read_value(%struct.sis5595_data* %15, i8 zeroext %conv9) #5, !dbg !5007
  %conv11 = trunc i32 %call10 to i8, !dbg !5007
  %17 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5008
  %in_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %17, i32 0, i32 11, !dbg !5009
  %18 = load i32, i32* %i, align 4, !dbg !5010
  %idxprom12 = sext i32 %18 to i64, !dbg !5008
  %arrayidx13 = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom12, !dbg !5008
  store i8 %conv11, i8* %arrayidx13, align 1, !dbg !5011
  %19 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5012
  %20 = load i32, i32* %i, align 4, !dbg !5013
  %mul14 = mul i32 %20, 2, !dbg !5013
  %add15 = add i32 43, %mul14, !dbg !5013
  %conv16 = trunc i32 %add15 to i8, !dbg !5013
  %call17 = call i32 @sis5595_read_value(%struct.sis5595_data* %19, i8 zeroext %conv16) #5, !dbg !5014
  %conv18 = trunc i32 %call17 to i8, !dbg !5014
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5015
  %in_max = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 10, !dbg !5016
  %22 = load i32, i32* %i, align 4, !dbg !5017
  %idxprom19 = sext i32 %22 to i64, !dbg !5015
  %arrayidx20 = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom19, !dbg !5015
  store i8 %conv18, i8* %arrayidx20, align 1, !dbg !5018
  br label %for.inc, !dbg !5019

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !5020
  %inc = add i32 %23, 1, !dbg !5020
  store i32 %inc, i32* %i, align 4, !dbg !5020
  br label %for.cond, !dbg !5021, !llvm.loop !5022

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5024
  br label %for.cond21, !dbg !5026

for.cond21:                                       ; preds = %for.inc37, %for.end
  %24 = load i32, i32* %i, align 4, !dbg !5027
  %cmp22 = icmp slt i32 %24, 2, !dbg !5029
  br i1 %cmp22, label %for.body24, label %for.end39, !dbg !5030

for.body24:                                       ; preds = %for.cond21
  %25 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5031
  %26 = load i32, i32* %i, align 4, !dbg !5033
  %add25 = add i32 40, %26, !dbg !5033
  %conv26 = trunc i32 %add25 to i8, !dbg !5033
  %call27 = call i32 @sis5595_read_value(%struct.sis5595_data* %25, i8 zeroext %conv26) #5, !dbg !5034
  %conv28 = trunc i32 %call27 to i8, !dbg !5034
  %27 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5035
  %fan = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %27, i32 0, i32 12, !dbg !5036
  %28 = load i32, i32* %i, align 4, !dbg !5037
  %idxprom29 = sext i32 %28 to i64, !dbg !5035
  %arrayidx30 = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom29, !dbg !5035
  store i8 %conv28, i8* %arrayidx30, align 1, !dbg !5038
  %29 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5039
  %30 = load i32, i32* %i, align 4, !dbg !5040
  %add31 = add i32 59, %30, !dbg !5040
  %conv32 = trunc i32 %add31 to i8, !dbg !5040
  %call33 = call i32 @sis5595_read_value(%struct.sis5595_data* %29, i8 zeroext %conv32) #5, !dbg !5041
  %conv34 = trunc i32 %call33 to i8, !dbg !5041
  %31 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5042
  %fan_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %31, i32 0, i32 13, !dbg !5043
  %32 = load i32, i32* %i, align 4, !dbg !5044
  %idxprom35 = sext i32 %32 to i64, !dbg !5042
  %arrayidx36 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom35, !dbg !5042
  store i8 %conv34, i8* %arrayidx36, align 1, !dbg !5045
  br label %for.inc37, !dbg !5046

for.inc37:                                        ; preds = %for.body24
  %33 = load i32, i32* %i, align 4, !dbg !5047
  %inc38 = add i32 %33, 1, !dbg !5047
  store i32 %inc38, i32* %i, align 4, !dbg !5047
  br label %for.cond21, !dbg !5048, !llvm.loop !5049

for.end39:                                        ; preds = %for.cond21
  %34 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5051
  %maxins40 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %34, i32 0, i32 7, !dbg !5053
  %35 = load i8, i8* %maxins40, align 8, !dbg !5053
  %conv41 = sext i8 %35 to i32, !dbg !5051
  %cmp42 = icmp eq i32 %conv41, 3, !dbg !5054
  br i1 %cmp42, label %if.then44, label %if.end, !dbg !5055

if.then44:                                        ; preds = %for.end39
  %36 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5056
  %37 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5058
  %revision = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %37, i32 0, i32 8, !dbg !5058
  %38 = load i8, i8* %revision, align 1, !dbg !5058
  %conv45 = zext i8 %38 to i32, !dbg !5058
  %cmp46 = icmp sge i32 %conv45, 176, !dbg !5058
  %39 = zext i1 %cmp46 to i64, !dbg !5058
  %cond = select i1 %cmp46, i32 36, i32 39, !dbg !5058
  %conv48 = trunc i32 %cond to i8, !dbg !5058
  %call49 = call i32 @sis5595_read_value(%struct.sis5595_data* %36, i8 zeroext %conv48) #5, !dbg !5059
  %conv50 = trunc i32 %call49 to i8, !dbg !5059
  %40 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5060
  %temp = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %40, i32 0, i32 14, !dbg !5061
  store i8 %conv50, i8* %temp, align 1, !dbg !5062
  %41 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5063
  %42 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5064
  %revision51 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %42, i32 0, i32 8, !dbg !5064
  %43 = load i8, i8* %revision51, align 1, !dbg !5064
  %conv52 = zext i8 %43 to i32, !dbg !5064
  %cmp53 = icmp sge i32 %conv52, 176, !dbg !5064
  %44 = zext i1 %cmp53 to i64, !dbg !5064
  %cond55 = select i1 %cmp53, i32 51, i32 57, !dbg !5064
  %conv56 = trunc i32 %cond55 to i8, !dbg !5064
  %call57 = call i32 @sis5595_read_value(%struct.sis5595_data* %41, i8 zeroext %conv56) #5, !dbg !5065
  %conv58 = trunc i32 %call57 to i8, !dbg !5065
  %45 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5066
  %temp_over = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %45, i32 0, i32 15, !dbg !5067
  store i8 %conv58, i8* %temp_over, align 2, !dbg !5068
  %46 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5069
  %47 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5070
  %revision59 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %47, i32 0, i32 8, !dbg !5070
  %48 = load i8, i8* %revision59, align 1, !dbg !5070
  %conv60 = zext i8 %48 to i32, !dbg !5070
  %cmp61 = icmp sge i32 %conv60, 176, !dbg !5070
  %49 = zext i1 %cmp61 to i64, !dbg !5070
  %cond63 = select i1 %cmp61, i32 52, i32 58, !dbg !5070
  %conv64 = trunc i32 %cond63 to i8, !dbg !5070
  %call65 = call i32 @sis5595_read_value(%struct.sis5595_data* %46, i8 zeroext %conv64) #5, !dbg !5071
  %conv66 = trunc i32 %call65 to i8, !dbg !5071
  %50 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5072
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %50, i32 0, i32 16, !dbg !5073
  store i8 %conv66, i8* %temp_hyst, align 1, !dbg !5074
  br label %if.end, !dbg !5075

if.end:                                           ; preds = %if.then44, %for.end39
  %51 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5076
  %call67 = call i32 @sis5595_read_value(%struct.sis5595_data* %51, i8 zeroext 71) #5, !dbg !5077
  store i32 %call67, i32* %i, align 4, !dbg !5078
  %52 = load i32, i32* %i, align 4, !dbg !5079
  %shr = ashr i32 %52, 4, !dbg !5080
  %and = and i32 %shr, 3, !dbg !5081
  %conv68 = trunc i32 %and to i8, !dbg !5082
  %53 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5083
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %53, i32 0, i32 17, !dbg !5084
  %arrayidx69 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 0, !dbg !5083
  store i8 %conv68, i8* %arrayidx69, align 8, !dbg !5085
  %54 = load i32, i32* %i, align 4, !dbg !5086
  %shr70 = ashr i32 %54, 6, !dbg !5087
  %conv71 = trunc i32 %shr70 to i8, !dbg !5086
  %55 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5088
  %fan_div72 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %55, i32 0, i32 17, !dbg !5089
  %arrayidx73 = getelementptr [2 x i8], [2 x i8]* %fan_div72, i64 0, i64 1, !dbg !5088
  store i8 %conv71, i8* %arrayidx73, align 1, !dbg !5090
  %56 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5091
  %call74 = call i32 @sis5595_read_value(%struct.sis5595_data* %56, i8 zeroext 65) #5, !dbg !5092
  %57 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5093
  %call75 = call i32 @sis5595_read_value(%struct.sis5595_data* %57, i8 zeroext 66) #5, !dbg !5094
  %shl = shl i32 %call75, 8, !dbg !5095
  %or = or i32 %call74, %shl, !dbg !5096
  %conv76 = trunc i32 %or to i16, !dbg !5092
  %58 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5097
  %alarms = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %58, i32 0, i32 18, !dbg !5098
  store i16 %conv76, i16* %alarms, align 2, !dbg !5099
  %59 = load volatile i64, i64* @jiffies, align 8, !dbg !5100
  %60 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5101
  %last_updated77 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %60, i32 0, i32 6, !dbg !5102
  store i64 %59, i64* %last_updated77, align 8, !dbg !5103
  %61 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5104
  %valid78 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %61, i32 0, i32 5, !dbg !5105
  store i8 1, i8* %valid78, align 8, !dbg !5106
  br label %if.end79, !dbg !5107

if.end79:                                         ; preds = %if.end, %lor.lhs.false
  %62 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5108
  %update_lock80 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %62, i32 0, i32 4, !dbg !5109
  call void @mutex_unlock(%struct.mutex* %update_lock80) #5, !dbg !5110
  %63 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5111
  ret %struct.sis5595_data* %63, !dbg !5112
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5113 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5118
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5119
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5119
  ret i8* %1, !dbg !5120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5121 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5128, metadata !DIExpression()), !dbg !5129
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5130
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5131
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5129
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5132, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5134, metadata !DIExpression()), !dbg !5136
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5136
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5136
  store i8* %2, i8** %__mptr, align 8, !dbg !5136
  br label %do.body, !dbg !5136

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5137

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5136
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5136
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5136
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5137
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5136
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5133
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5139, metadata !DIExpression()), !dbg !5140
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5141
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5142
  %7 = load i32, i32* %index, align 8, !dbg !5142
  store i32 %7, i32* %nr, align 4, !dbg !5140
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5143
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5144
  %in_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 11, !dbg !5144
  %10 = load i32, i32* %nr, align 4, !dbg !5144
  %idxprom = sext i32 %10 to i64, !dbg !5144
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !5144
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5144
  %conv = zext i8 %11 to i32, !dbg !5144
  %mul = mul i32 %conv, 16, !dbg !5144
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %mul) #5, !dbg !5145
  %conv2 = sext i32 %call1 to i64, !dbg !5145
  ret i64 %conv2, !dbg !5146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_min_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5147 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5158
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5159
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5159
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5157
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5162, metadata !DIExpression()), !dbg !5164
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5164
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5164
  store i8* %3, i8** %__mptr, align 8, !dbg !5164
  br label %do.body, !dbg !5164

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5165

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5164
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5164
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5164
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5165
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5164
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5161
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5169
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5170
  %8 = load i32, i32* %index, align 8, !dbg !5170
  store i32 %8, i32* %nr, align 4, !dbg !5168
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5173, metadata !DIExpression()), !dbg !5174
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5175
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5176
  store i32 %call1, i32* %err, align 4, !dbg !5177
  %10 = load i32, i32* %err, align 4, !dbg !5178
  %tobool = icmp ne i32 %10, 0, !dbg !5178
  br i1 %tobool, label %if.then, label %if.end, !dbg !5180

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5181
  %conv = sext i32 %11 to i64, !dbg !5181
  store i64 %conv, i64* %retval, align 8, !dbg !5182
  br label %return, !dbg !5182

if.end:                                           ; preds = %do.end
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5183
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 4, !dbg !5184
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5185
  %13 = load i64, i64* %val, align 8, !dbg !5186
  %call2 = call zeroext i8 @IN_TO_REG(i64 %13) #5, !dbg !5187
  %14 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5188
  %in_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %14, i32 0, i32 11, !dbg !5189
  %15 = load i32, i32* %nr, align 4, !dbg !5190
  %idxprom = sext i32 %15 to i64, !dbg !5188
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_min, i64 0, i64 %idxprom, !dbg !5188
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5191
  %16 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5192
  %17 = load i32, i32* %nr, align 4, !dbg !5193
  %mul = mul i32 %17, 2, !dbg !5193
  %add = add i32 44, %mul, !dbg !5193
  %conv3 = trunc i32 %add to i8, !dbg !5193
  %18 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5194
  %in_min4 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %18, i32 0, i32 11, !dbg !5195
  %19 = load i32, i32* %nr, align 4, !dbg !5196
  %idxprom5 = sext i32 %19 to i64, !dbg !5194
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %in_min4, i64 0, i64 %idxprom5, !dbg !5194
  %20 = load i8, i8* %arrayidx6, align 1, !dbg !5194
  call void @sis5595_write_value(%struct.sis5595_data* %16, i8 zeroext %conv3, i8 zeroext %20) #5, !dbg !5197
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5198
  %update_lock7 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 4, !dbg !5199
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5200
  %22 = load i64, i64* %count.addr, align 8, !dbg !5201
  store i64 %22, i64* %retval, align 8, !dbg !5202
  br label %return, !dbg !5202

return:                                           ; preds = %if.end, %if.then
  %23 = load i64, i64* %retval, align 8, !dbg !5203
  ret i64 %23, !dbg !5203
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #2 !dbg !5204 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5214
  %1 = load i32, i32* %base.addr, align 4, !dbg !5216
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5217
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #5, !dbg !5218
  ret i32 %call, !dbg !5219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @IN_TO_REG(i64 %val) #2 !dbg !5220 {
entry:
  %val.addr = alloca i64, align 8
  %nval = alloca i64, align 8
  %__UNIQUE_ID___x242 = alloca i64, align 8
  %__UNIQUE_ID___x240 = alloca i64, align 8
  %__UNIQUE_ID___y241 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y243 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata i64* %nval, metadata !5225, metadata !DIExpression()), !dbg !5226
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x242, metadata !5227, metadata !DIExpression()), !dbg !5229
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x240, metadata !5230, metadata !DIExpression()), !dbg !5232
  %0 = load i64, i64* %val.addr, align 8, !dbg !5232
  store i64 %0, i64* %__UNIQUE_ID___x240, align 8, !dbg !5232
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y241, metadata !5233, metadata !DIExpression()), !dbg !5232
  store i64 0, i64* %__UNIQUE_ID___y241, align 8, !dbg !5232
  %1 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5232
  %2 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5232
  %cmp = icmp ugt i64 %1, %2, !dbg !5232
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5232

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %__UNIQUE_ID___x240, align 8, !dbg !5232
  br label %cond.end, !dbg !5232

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %__UNIQUE_ID___y241, align 8, !dbg !5232
  br label %cond.end, !dbg !5232

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !5232
  store i64 %cond, i64* %tmp, align 8, !dbg !5232
  %5 = load i64, i64* %tmp, align 8, !dbg !5232
  store i64 %5, i64* %__UNIQUE_ID___x242, align 8, !dbg !5229
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y243, metadata !5234, metadata !DIExpression()), !dbg !5229
  store i64 4080, i64* %__UNIQUE_ID___y243, align 8, !dbg !5229
  %6 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5229
  %7 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5229
  %cmp2 = icmp ult i64 %6, %7, !dbg !5229
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !5229

cond.true3:                                       ; preds = %cond.end
  %8 = load i64, i64* %__UNIQUE_ID___x242, align 8, !dbg !5229
  br label %cond.end5, !dbg !5229

cond.false4:                                      ; preds = %cond.end
  %9 = load i64, i64* %__UNIQUE_ID___y243, align 8, !dbg !5229
  br label %cond.end5, !dbg !5229

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i64 [ %8, %cond.true3 ], [ %9, %cond.false4 ], !dbg !5229
  store i64 %cond6, i64* %tmp1, align 8, !dbg !5229
  %10 = load i64, i64* %tmp1, align 8, !dbg !5229
  store i64 %10, i64* %nval, align 8, !dbg !5226
  %11 = load i64, i64* %nval, align 8, !dbg !5235
  %add = add i64 %11, 8, !dbg !5236
  %div = udiv i64 %add, 16, !dbg !5237
  %conv = trunc i64 %div to i8, !dbg !5238
  ret i8 %conv, !dbg !5239
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5240 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5249
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5250
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5248
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5251, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5253, metadata !DIExpression()), !dbg !5255
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5255
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5255
  store i8* %2, i8** %__mptr, align 8, !dbg !5255
  br label %do.body, !dbg !5255

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5256

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5255
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5255
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5255
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5256
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5255
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5252
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5258, metadata !DIExpression()), !dbg !5259
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5260
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5261
  %7 = load i32, i32* %index, align 8, !dbg !5261
  store i32 %7, i32* %nr, align 4, !dbg !5259
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5262
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5263
  %in_max = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 10, !dbg !5263
  %10 = load i32, i32* %nr, align 4, !dbg !5263
  %idxprom = sext i32 %10 to i64, !dbg !5263
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !5263
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5263
  %conv = zext i8 %11 to i32, !dbg !5263
  %mul = mul i32 %conv, 16, !dbg !5263
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %mul) #5, !dbg !5264
  %conv2 = sext i32 %call1 to i64, !dbg !5264
  ret i64 %conv2, !dbg !5265
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @in_max_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5266 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5269, metadata !DIExpression()), !dbg !5270
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5277
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5278
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5278
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5276
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5281, metadata !DIExpression()), !dbg !5283
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5283
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5283
  store i8* %3, i8** %__mptr, align 8, !dbg !5283
  br label %do.body, !dbg !5283

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5284

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5283
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5283
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5283
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5284
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5283
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5280
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5288
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5289
  %8 = load i32, i32* %index, align 8, !dbg !5289
  store i32 %8, i32* %nr, align 4, !dbg !5287
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5290, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5292, metadata !DIExpression()), !dbg !5293
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5294
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5295
  store i32 %call1, i32* %err, align 4, !dbg !5296
  %10 = load i32, i32* %err, align 4, !dbg !5297
  %tobool = icmp ne i32 %10, 0, !dbg !5297
  br i1 %tobool, label %if.then, label %if.end, !dbg !5299

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5300
  %conv = sext i32 %11 to i64, !dbg !5300
  store i64 %conv, i64* %retval, align 8, !dbg !5301
  br label %return, !dbg !5301

if.end:                                           ; preds = %do.end
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5302
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 4, !dbg !5303
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5304
  %13 = load i64, i64* %val, align 8, !dbg !5305
  %call2 = call zeroext i8 @IN_TO_REG(i64 %13) #5, !dbg !5306
  %14 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5307
  %in_max = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %14, i32 0, i32 10, !dbg !5308
  %15 = load i32, i32* %nr, align 4, !dbg !5309
  %idxprom = sext i32 %15 to i64, !dbg !5307
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %in_max, i64 0, i64 %idxprom, !dbg !5307
  store i8 %call2, i8* %arrayidx, align 1, !dbg !5310
  %16 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5311
  %17 = load i32, i32* %nr, align 4, !dbg !5312
  %mul = mul i32 %17, 2, !dbg !5312
  %add = add i32 43, %mul, !dbg !5312
  %conv3 = trunc i32 %add to i8, !dbg !5312
  %18 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5313
  %in_max4 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %18, i32 0, i32 10, !dbg !5314
  %19 = load i32, i32* %nr, align 4, !dbg !5315
  %idxprom5 = sext i32 %19 to i64, !dbg !5313
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %in_max4, i64 0, i64 %idxprom5, !dbg !5313
  %20 = load i8, i8* %arrayidx6, align 1, !dbg !5313
  call void @sis5595_write_value(%struct.sis5595_data* %16, i8 zeroext %conv3, i8 zeroext %20) #5, !dbg !5316
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5317
  %update_lock7 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 4, !dbg !5318
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5319
  %22 = load i64, i64* %count.addr, align 8, !dbg !5320
  store i64 %22, i64* %retval, align 8, !dbg !5321
  br label %return, !dbg !5321

return:                                           ; preds = %if.end, %if.then
  %23 = load i64, i64* %retval, align 8, !dbg !5322
  ret i64 %23, !dbg !5322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarm_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5323 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %nr = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5326, metadata !DIExpression()), !dbg !5327
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5330, metadata !DIExpression()), !dbg !5331
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5332
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5333
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5331
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5334, metadata !DIExpression()), !dbg !5335
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5336, metadata !DIExpression()), !dbg !5338
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5338
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5338
  store i8* %2, i8** %__mptr, align 8, !dbg !5338
  br label %do.body, !dbg !5338

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5339

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5338
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5338
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5338
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5339
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5338
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %5, i32 0, i32 1, !dbg !5341
  %6 = load i32, i32* %index, align 8, !dbg !5341
  store i32 %6, i32* %nr, align 4, !dbg !5335
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !5342
  %8 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5343
  %alarms = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %8, i32 0, i32 18, !dbg !5344
  %9 = load i16, i16* %alarms, align 2, !dbg !5344
  %conv = zext i16 %9 to i32, !dbg !5343
  %10 = load i32, i32* %nr, align 4, !dbg !5345
  %shr = ashr i32 %conv, %10, !dbg !5346
  %and = and i32 %shr, 1, !dbg !5347
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %and) #5, !dbg !5348
  %conv2 = sext i32 %call1 to i64, !dbg !5348
  ret i64 %conv2, !dbg !5349
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5350 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5359
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5360
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5358
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5361, metadata !DIExpression()), !dbg !5362
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5363, metadata !DIExpression()), !dbg !5365
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5365
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5365
  store i8* %2, i8** %__mptr, align 8, !dbg !5365
  br label %do.body, !dbg !5365

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5366

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5365
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5365
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5365
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5366
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5365
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5362
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5368, metadata !DIExpression()), !dbg !5369
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5370
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5371
  %7 = load i32, i32* %index, align 8, !dbg !5371
  store i32 %7, i32* %nr, align 4, !dbg !5369
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5372
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5373
  %fan = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 12, !dbg !5374
  %10 = load i32, i32* %nr, align 4, !dbg !5375
  %idxprom = sext i32 %10 to i64, !dbg !5373
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan, i64 0, i64 %idxprom, !dbg !5373
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5373
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5376
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 17, !dbg !5376
  %13 = load i32, i32* %nr, align 4, !dbg !5376
  %idxprom1 = sext i32 %13 to i64, !dbg !5376
  %arrayidx2 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom1, !dbg !5376
  %14 = load i8, i8* %arrayidx2, align 1, !dbg !5376
  %conv = zext i8 %14 to i32, !dbg !5376
  %shl = shl i32 1, %conv, !dbg !5376
  %call3 = call i32 @FAN_FROM_REG(i8 zeroext %11, i32 %shl) #5, !dbg !5377
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %call3) #5, !dbg !5378
  %conv5 = sext i32 %call4 to i64, !dbg !5378
  ret i64 %conv5, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @FAN_FROM_REG(i8 zeroext %val, i32 %div) #2 !dbg !5380 {
entry:
  %val.addr = alloca i8, align 1
  %div.addr = alloca i32, align 4
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load i8, i8* %val.addr, align 1, !dbg !5387
  %conv = zext i8 %0 to i32, !dbg !5387
  %cmp = icmp eq i32 %conv, 0, !dbg !5388
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5387

cond.true:                                        ; preds = %entry
  br label %cond.end9, !dbg !5387

cond.false:                                       ; preds = %entry
  %1 = load i8, i8* %val.addr, align 1, !dbg !5389
  %conv2 = zext i8 %1 to i32, !dbg !5389
  %cmp3 = icmp eq i32 %conv2, 255, !dbg !5390
  br i1 %cmp3, label %cond.true5, label %cond.false6, !dbg !5389

cond.true5:                                       ; preds = %cond.false
  br label %cond.end, !dbg !5389

cond.false6:                                      ; preds = %cond.false
  %2 = load i8, i8* %val.addr, align 1, !dbg !5391
  %conv7 = zext i8 %2 to i32, !dbg !5391
  %3 = load i32, i32* %div.addr, align 4, !dbg !5392
  %mul = mul i32 %conv7, %3, !dbg !5393
  %div8 = sdiv i32 1350000, %mul, !dbg !5394
  br label %cond.end, !dbg !5389

cond.end:                                         ; preds = %cond.false6, %cond.true5
  %cond = phi i32 [ 0, %cond.true5 ], [ %div8, %cond.false6 ], !dbg !5389
  br label %cond.end9, !dbg !5387

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ -1, %cond.true ], [ %cond, %cond.end ], !dbg !5387
  ret i32 %cond10, !dbg !5395
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5396 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5399, metadata !DIExpression()), !dbg !5400
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5401, metadata !DIExpression()), !dbg !5402
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5403, metadata !DIExpression()), !dbg !5404
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5405
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5406
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5404
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5407, metadata !DIExpression()), !dbg !5408
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5409, metadata !DIExpression()), !dbg !5411
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5411
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5411
  store i8* %2, i8** %__mptr, align 8, !dbg !5411
  br label %do.body, !dbg !5411

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5412

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5411
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5411
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5411
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5412
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5411
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5408
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5414, metadata !DIExpression()), !dbg !5415
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5416
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5417
  %7 = load i32, i32* %index, align 8, !dbg !5417
  store i32 %7, i32* %nr, align 4, !dbg !5415
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5418
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5419
  %fan_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 13, !dbg !5420
  %10 = load i32, i32* %nr, align 4, !dbg !5421
  %idxprom = sext i32 %10 to i64, !dbg !5419
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !5419
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5419
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5422
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 17, !dbg !5422
  %13 = load i32, i32* %nr, align 4, !dbg !5422
  %idxprom1 = sext i32 %13 to i64, !dbg !5422
  %arrayidx2 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom1, !dbg !5422
  %14 = load i8, i8* %arrayidx2, align 1, !dbg !5422
  %conv = zext i8 %14 to i32, !dbg !5422
  %shl = shl i32 1, %conv, !dbg !5422
  %call3 = call i32 @FAN_FROM_REG(i8 zeroext %11, i32 %shl) #5, !dbg !5423
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %call3) #5, !dbg !5424
  %conv5 = sext i32 %call4 to i64, !dbg !5424
  ret i64 %conv5, !dbg !5425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_min_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5426 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5431, metadata !DIExpression()), !dbg !5432
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5435, metadata !DIExpression()), !dbg !5436
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5437
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5438
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5438
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5436
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5441, metadata !DIExpression()), !dbg !5443
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5443
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5443
  store i8* %3, i8** %__mptr, align 8, !dbg !5443
  br label %do.body, !dbg !5443

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5444

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5443
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5443
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5443
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5444
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5443
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5448
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5449
  %8 = load i32, i32* %index, align 8, !dbg !5449
  store i32 %8, i32* %nr, align 4, !dbg !5447
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5452, metadata !DIExpression()), !dbg !5453
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5454
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5455
  store i32 %call1, i32* %err, align 4, !dbg !5456
  %10 = load i32, i32* %err, align 4, !dbg !5457
  %tobool = icmp ne i32 %10, 0, !dbg !5457
  br i1 %tobool, label %if.then, label %if.end, !dbg !5459

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5460
  %conv = sext i32 %11 to i64, !dbg !5460
  store i64 %conv, i64* %retval, align 8, !dbg !5461
  br label %return, !dbg !5461

if.end:                                           ; preds = %do.end
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5462
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 4, !dbg !5463
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5464
  %13 = load i64, i64* %val, align 8, !dbg !5465
  %14 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5466
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %14, i32 0, i32 17, !dbg !5466
  %15 = load i32, i32* %nr, align 4, !dbg !5466
  %idxprom = sext i32 %15 to i64, !dbg !5466
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5466
  %16 = load i8, i8* %arrayidx, align 1, !dbg !5466
  %conv2 = zext i8 %16 to i32, !dbg !5466
  %shl = shl i32 1, %conv2, !dbg !5466
  %call3 = call zeroext i8 @FAN_TO_REG(i64 %13, i32 %shl) #5, !dbg !5467
  %17 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5468
  %fan_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %17, i32 0, i32 13, !dbg !5469
  %18 = load i32, i32* %nr, align 4, !dbg !5470
  %idxprom4 = sext i32 %18 to i64, !dbg !5468
  %arrayidx5 = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom4, !dbg !5468
  store i8 %call3, i8* %arrayidx5, align 1, !dbg !5471
  %19 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5472
  %20 = load i32, i32* %nr, align 4, !dbg !5473
  %add = add i32 59, %20, !dbg !5473
  %conv6 = trunc i32 %add to i8, !dbg !5473
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5474
  %fan_min7 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 13, !dbg !5475
  %22 = load i32, i32* %nr, align 4, !dbg !5476
  %idxprom8 = sext i32 %22 to i64, !dbg !5474
  %arrayidx9 = getelementptr [2 x i8], [2 x i8]* %fan_min7, i64 0, i64 %idxprom8, !dbg !5474
  %23 = load i8, i8* %arrayidx9, align 1, !dbg !5474
  call void @sis5595_write_value(%struct.sis5595_data* %19, i8 zeroext %conv6, i8 zeroext %23) #5, !dbg !5477
  %24 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5478
  %update_lock10 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %24, i32 0, i32 4, !dbg !5479
  call void @mutex_unlock(%struct.mutex* %update_lock10) #5, !dbg !5480
  %25 = load i64, i64* %count.addr, align 8, !dbg !5481
  store i64 %25, i64* %retval, align 8, !dbg !5482
  br label %return, !dbg !5482

return:                                           ; preds = %if.end, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !5483
  ret i64 %26, !dbg !5483
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @FAN_TO_REG(i64 %rpm, i32 %div) #2 !dbg !5484 {
entry:
  %retval = alloca i8, align 1
  %rpm.addr = alloca i64, align 8
  %div.addr = alloca i32, align 4
  %__UNIQUE_ID___x246 = alloca i64, align 8
  %__UNIQUE_ID___x244 = alloca i64, align 8
  %__UNIQUE_ID___y245 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y247 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  store i64 %rpm, i64* %rpm.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rpm.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !5489, metadata !DIExpression()), !dbg !5490
  %0 = load i64, i64* %rpm.addr, align 8, !dbg !5491
  %cmp = icmp sle i64 %0, 0, !dbg !5493
  br i1 %cmp, label %if.then, label %if.end, !dbg !5494

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1, !dbg !5495
  br label %return, !dbg !5495

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %rpm.addr, align 8, !dbg !5496
  %cmp1 = icmp sgt i64 %1, 1350000, !dbg !5498
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5499

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !5500
  br label %return, !dbg !5500

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x246, metadata !5501, metadata !DIExpression()), !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x244, metadata !5504, metadata !DIExpression()), !dbg !5506
  %2 = load i64, i64* %rpm.addr, align 8, !dbg !5506
  %3 = load i32, i32* %div.addr, align 4, !dbg !5506
  %conv = sext i32 %3 to i64, !dbg !5506
  %mul = mul i64 %2, %conv, !dbg !5506
  %div4 = sdiv i64 %mul, 2, !dbg !5506
  %add = add i64 1350000, %div4, !dbg !5506
  %4 = load i64, i64* %rpm.addr, align 8, !dbg !5506
  %5 = load i32, i32* %div.addr, align 4, !dbg !5506
  %conv5 = sext i32 %5 to i64, !dbg !5506
  %mul6 = mul i64 %4, %conv5, !dbg !5506
  %div7 = sdiv i64 %add, %mul6, !dbg !5506
  store i64 %div7, i64* %__UNIQUE_ID___x244, align 8, !dbg !5506
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y245, metadata !5507, metadata !DIExpression()), !dbg !5506
  store i64 1, i64* %__UNIQUE_ID___y245, align 8, !dbg !5506
  %6 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5506
  %7 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5506
  %cmp8 = icmp sgt i64 %6, %7, !dbg !5506
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5506

cond.true:                                        ; preds = %if.end3
  %8 = load i64, i64* %__UNIQUE_ID___x244, align 8, !dbg !5506
  br label %cond.end, !dbg !5506

cond.false:                                       ; preds = %if.end3
  %9 = load i64, i64* %__UNIQUE_ID___y245, align 8, !dbg !5506
  br label %cond.end, !dbg !5506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %9, %cond.false ], !dbg !5506
  store i64 %cond, i64* %tmp, align 8, !dbg !5506
  %10 = load i64, i64* %tmp, align 8, !dbg !5506
  store i64 %10, i64* %__UNIQUE_ID___x246, align 8, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y247, metadata !5508, metadata !DIExpression()), !dbg !5503
  store i64 254, i64* %__UNIQUE_ID___y247, align 8, !dbg !5503
  %11 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5503
  %12 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5503
  %cmp11 = icmp slt i64 %11, %12, !dbg !5503
  br i1 %cmp11, label %cond.true13, label %cond.false14, !dbg !5503

cond.true13:                                      ; preds = %cond.end
  %13 = load i64, i64* %__UNIQUE_ID___x246, align 8, !dbg !5503
  br label %cond.end15, !dbg !5503

cond.false14:                                     ; preds = %cond.end
  %14 = load i64, i64* %__UNIQUE_ID___y247, align 8, !dbg !5503
  br label %cond.end15, !dbg !5503

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i64 [ %13, %cond.true13 ], [ %14, %cond.false14 ], !dbg !5503
  store i64 %cond16, i64* %tmp10, align 8, !dbg !5503
  %15 = load i64, i64* %tmp10, align 8, !dbg !5503
  %conv17 = trunc i64 %15 to i8, !dbg !5509
  store i8 %conv17, i8* %retval, align 1, !dbg !5510
  br label %return, !dbg !5510

return:                                           ; preds = %cond.end15, %if.then2, %if.then
  %16 = load i8, i8* %retval, align 1, !dbg !5511
  ret i8 %16, !dbg !5511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_show(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf) #2 !dbg !5512 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5513, metadata !DIExpression()), !dbg !5514
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5517, metadata !DIExpression()), !dbg !5518
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5519, metadata !DIExpression()), !dbg !5520
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5521
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5522
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5520
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5523, metadata !DIExpression()), !dbg !5524
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5525, metadata !DIExpression()), !dbg !5527
  %1 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5527
  %2 = bitcast %struct.device_attribute* %1 to i8*, !dbg !5527
  store i8* %2, i8** %__mptr, align 8, !dbg !5527
  br label %do.body, !dbg !5527

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5528

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5527
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5527
  %4 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5527
  store %struct.sensor_device_attribute* %4, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5528
  %5 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5527
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %attr, align 8, !dbg !5524
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5530, metadata !DIExpression()), !dbg !5531
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5532
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %6, i32 0, i32 1, !dbg !5533
  %7 = load i32, i32* %index, align 8, !dbg !5533
  store i32 %7, i32* %nr, align 4, !dbg !5531
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5534
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5535
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 17, !dbg !5535
  %10 = load i32, i32* %nr, align 4, !dbg !5535
  %idxprom = sext i32 %10 to i64, !dbg !5535
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom, !dbg !5535
  %11 = load i8, i8* %arrayidx, align 1, !dbg !5535
  %conv = zext i8 %11 to i32, !dbg !5535
  %shl = shl i32 1, %conv, !dbg !5535
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %shl) #5, !dbg !5536
  %conv2 = sext i32 %call1 to i64, !dbg !5536
  ret i64 %conv2, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @fan_div_store(%struct.device* %dev, %struct.device_attribute* %da, i8* %buf, i64 %count) #2 !dbg !5538 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %da.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %attr = alloca %struct.sensor_device_attribute*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sensor_device_attribute*, align 8
  %nr = alloca i32, align 4
  %min = alloca i64, align 8
  %reg = alloca i32, align 4
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store %struct.device_attribute* %da, %struct.device_attribute** %da.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %da.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5549
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5550
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5550
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5548
  call void @llvm.dbg.declare(metadata %struct.sensor_device_attribute** %attr, metadata !5551, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5553, metadata !DIExpression()), !dbg !5555
  %2 = load %struct.device_attribute*, %struct.device_attribute** %da.addr, align 8, !dbg !5555
  %3 = bitcast %struct.device_attribute* %2 to i8*, !dbg !5555
  store i8* %3, i8** %__mptr, align 8, !dbg !5555
  br label %do.body, !dbg !5555

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5556

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5555
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5555
  %5 = bitcast i8* %add.ptr to %struct.sensor_device_attribute*, !dbg !5555
  store %struct.sensor_device_attribute* %5, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5556
  %6 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %tmp, align 8, !dbg !5555
  store %struct.sensor_device_attribute* %6, %struct.sensor_device_attribute** %attr, align 8, !dbg !5552
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !5558, metadata !DIExpression()), !dbg !5559
  %7 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %attr, align 8, !dbg !5560
  %index = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %7, i32 0, i32 1, !dbg !5561
  %8 = load i32, i32* %index, align 8, !dbg !5561
  store i32 %8, i32* %nr, align 4, !dbg !5559
  call void @llvm.dbg.declare(metadata i64* %min, metadata !5562, metadata !DIExpression()), !dbg !5563
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !5564, metadata !DIExpression()), !dbg !5565
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5566, metadata !DIExpression()), !dbg !5567
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5568, metadata !DIExpression()), !dbg !5569
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !5570
  %call1 = call i32 @kstrtoul(i8* %9, i32 10, i64* %val) #5, !dbg !5571
  store i32 %call1, i32* %err, align 4, !dbg !5572
  %10 = load i32, i32* %err, align 4, !dbg !5573
  %tobool = icmp ne i32 %10, 0, !dbg !5573
  br i1 %tobool, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %do.end
  %11 = load i32, i32* %err, align 4, !dbg !5576
  %conv = sext i32 %11 to i64, !dbg !5576
  store i64 %conv, i64* %retval, align 8, !dbg !5577
  br label %return, !dbg !5577

if.end:                                           ; preds = %do.end
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5578
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 4, !dbg !5579
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5580
  %13 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5581
  %fan_min = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %13, i32 0, i32 13, !dbg !5582
  %14 = load i32, i32* %nr, align 4, !dbg !5583
  %idxprom = sext i32 %14 to i64, !dbg !5581
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %fan_min, i64 0, i64 %idxprom, !dbg !5581
  %15 = load i8, i8* %arrayidx, align 1, !dbg !5581
  %16 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5584
  %fan_div = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %16, i32 0, i32 17, !dbg !5584
  %17 = load i32, i32* %nr, align 4, !dbg !5584
  %idxprom2 = sext i32 %17 to i64, !dbg !5584
  %arrayidx3 = getelementptr [2 x i8], [2 x i8]* %fan_div, i64 0, i64 %idxprom2, !dbg !5584
  %18 = load i8, i8* %arrayidx3, align 1, !dbg !5584
  %conv4 = zext i8 %18 to i32, !dbg !5584
  %shl = shl i32 1, %conv4, !dbg !5584
  %call5 = call i32 @FAN_FROM_REG(i8 zeroext %15, i32 %shl) #5, !dbg !5585
  %conv6 = sext i32 %call5 to i64, !dbg !5585
  store i64 %conv6, i64* %min, align 8, !dbg !5586
  %19 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5587
  %call7 = call i32 @sis5595_read_value(%struct.sis5595_data* %19, i8 zeroext 71) #5, !dbg !5588
  store i32 %call7, i32* %reg, align 4, !dbg !5589
  %20 = load i64, i64* %val, align 8, !dbg !5590
  switch i64 %20, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb11
    i64 4, label %sw.bb15
    i64 8, label %sw.bb19
  ], !dbg !5591

sw.bb:                                            ; preds = %if.end
  %21 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5592
  %fan_div8 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %21, i32 0, i32 17, !dbg !5594
  %22 = load i32, i32* %nr, align 4, !dbg !5595
  %idxprom9 = sext i32 %22 to i64, !dbg !5592
  %arrayidx10 = getelementptr [2 x i8], [2 x i8]* %fan_div8, i64 0, i64 %idxprom9, !dbg !5592
  store i8 0, i8* %arrayidx10, align 1, !dbg !5596
  br label %sw.epilog, !dbg !5597

sw.bb11:                                          ; preds = %if.end
  %23 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5598
  %fan_div12 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %23, i32 0, i32 17, !dbg !5599
  %24 = load i32, i32* %nr, align 4, !dbg !5600
  %idxprom13 = sext i32 %24 to i64, !dbg !5598
  %arrayidx14 = getelementptr [2 x i8], [2 x i8]* %fan_div12, i64 0, i64 %idxprom13, !dbg !5598
  store i8 1, i8* %arrayidx14, align 1, !dbg !5601
  br label %sw.epilog, !dbg !5602

sw.bb15:                                          ; preds = %if.end
  %25 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5603
  %fan_div16 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %25, i32 0, i32 17, !dbg !5604
  %26 = load i32, i32* %nr, align 4, !dbg !5605
  %idxprom17 = sext i32 %26 to i64, !dbg !5603
  %arrayidx18 = getelementptr [2 x i8], [2 x i8]* %fan_div16, i64 0, i64 %idxprom17, !dbg !5603
  store i8 2, i8* %arrayidx18, align 1, !dbg !5606
  br label %sw.epilog, !dbg !5607

sw.bb19:                                          ; preds = %if.end
  %27 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5608
  %fan_div20 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %27, i32 0, i32 17, !dbg !5609
  %28 = load i32, i32* %nr, align 4, !dbg !5610
  %idxprom21 = sext i32 %28 to i64, !dbg !5608
  %arrayidx22 = getelementptr [2 x i8], [2 x i8]* %fan_div20, i64 0, i64 %idxprom21, !dbg !5608
  store i8 3, i8* %arrayidx22, align 1, !dbg !5611
  br label %sw.epilog, !dbg !5612

sw.default:                                       ; preds = %if.end
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5613
  %30 = load i64, i64* %val, align 8, !dbg !5613
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.35, i64 0, i64 0), i64 %30) #6, !dbg !5613
  %31 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5614
  %update_lock23 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %31, i32 0, i32 4, !dbg !5615
  call void @mutex_unlock(%struct.mutex* %update_lock23) #5, !dbg !5616
  store i64 -22, i64* %retval, align 8, !dbg !5617
  br label %return, !dbg !5617

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb
  %32 = load i32, i32* %nr, align 4, !dbg !5618
  switch i32 %32, label %sw.epilog38 [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb30
  ], !dbg !5619

sw.bb24:                                          ; preds = %sw.epilog
  %33 = load i32, i32* %reg, align 4, !dbg !5620
  %and = and i32 %33, 207, !dbg !5622
  %34 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5623
  %fan_div25 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %34, i32 0, i32 17, !dbg !5624
  %35 = load i32, i32* %nr, align 4, !dbg !5625
  %idxprom26 = sext i32 %35 to i64, !dbg !5623
  %arrayidx27 = getelementptr [2 x i8], [2 x i8]* %fan_div25, i64 0, i64 %idxprom26, !dbg !5623
  %36 = load i8, i8* %arrayidx27, align 1, !dbg !5623
  %conv28 = zext i8 %36 to i32, !dbg !5623
  %shl29 = shl i32 %conv28, 4, !dbg !5626
  %or = or i32 %and, %shl29, !dbg !5627
  store i32 %or, i32* %reg, align 4, !dbg !5628
  br label %sw.epilog38, !dbg !5629

sw.bb30:                                          ; preds = %sw.epilog
  %37 = load i32, i32* %reg, align 4, !dbg !5630
  %and31 = and i32 %37, 63, !dbg !5631
  %38 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5632
  %fan_div32 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %38, i32 0, i32 17, !dbg !5633
  %39 = load i32, i32* %nr, align 4, !dbg !5634
  %idxprom33 = sext i32 %39 to i64, !dbg !5632
  %arrayidx34 = getelementptr [2 x i8], [2 x i8]* %fan_div32, i64 0, i64 %idxprom33, !dbg !5632
  %40 = load i8, i8* %arrayidx34, align 1, !dbg !5632
  %conv35 = zext i8 %40 to i32, !dbg !5632
  %shl36 = shl i32 %conv35, 6, !dbg !5635
  %or37 = or i32 %and31, %shl36, !dbg !5636
  store i32 %or37, i32* %reg, align 4, !dbg !5637
  br label %sw.epilog38, !dbg !5638

sw.epilog38:                                      ; preds = %sw.epilog, %sw.bb30, %sw.bb24
  %41 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5639
  %42 = load i32, i32* %reg, align 4, !dbg !5640
  %conv39 = trunc i32 %42 to i8, !dbg !5640
  call void @sis5595_write_value(%struct.sis5595_data* %41, i8 zeroext 71, i8 zeroext %conv39) #5, !dbg !5641
  %43 = load i64, i64* %min, align 8, !dbg !5642
  %44 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5643
  %fan_div40 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %44, i32 0, i32 17, !dbg !5643
  %45 = load i32, i32* %nr, align 4, !dbg !5643
  %idxprom41 = sext i32 %45 to i64, !dbg !5643
  %arrayidx42 = getelementptr [2 x i8], [2 x i8]* %fan_div40, i64 0, i64 %idxprom41, !dbg !5643
  %46 = load i8, i8* %arrayidx42, align 1, !dbg !5643
  %conv43 = zext i8 %46 to i32, !dbg !5643
  %shl44 = shl i32 1, %conv43, !dbg !5643
  %call45 = call zeroext i8 @FAN_TO_REG(i64 %43, i32 %shl44) #5, !dbg !5644
  %47 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5645
  %fan_min46 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %47, i32 0, i32 13, !dbg !5646
  %48 = load i32, i32* %nr, align 4, !dbg !5647
  %idxprom47 = sext i32 %48 to i64, !dbg !5645
  %arrayidx48 = getelementptr [2 x i8], [2 x i8]* %fan_min46, i64 0, i64 %idxprom47, !dbg !5645
  store i8 %call45, i8* %arrayidx48, align 1, !dbg !5648
  %49 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5649
  %50 = load i32, i32* %nr, align 4, !dbg !5650
  %add = add i32 59, %50, !dbg !5650
  %conv49 = trunc i32 %add to i8, !dbg !5650
  %51 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5651
  %fan_min50 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %51, i32 0, i32 13, !dbg !5652
  %52 = load i32, i32* %nr, align 4, !dbg !5653
  %idxprom51 = sext i32 %52 to i64, !dbg !5651
  %arrayidx52 = getelementptr [2 x i8], [2 x i8]* %fan_min50, i64 0, i64 %idxprom51, !dbg !5651
  %53 = load i8, i8* %arrayidx52, align 1, !dbg !5651
  call void @sis5595_write_value(%struct.sis5595_data* %49, i8 zeroext %conv49, i8 zeroext %53) #5, !dbg !5654
  %54 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5655
  %update_lock53 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %54, i32 0, i32 4, !dbg !5656
  call void @mutex_unlock(%struct.mutex* %update_lock53) #5, !dbg !5657
  %55 = load i64, i64* %count.addr, align 8, !dbg !5658
  store i64 %55, i64* %retval, align 8, !dbg !5659
  br label %return, !dbg !5659

return:                                           ; preds = %sw.epilog38, %sw.default, %if.then
  %56 = load i64, i64* %retval, align 8, !dbg !5660
  ret i64 %56, !dbg !5660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @alarms_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5661 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5668, metadata !DIExpression()), !dbg !5669
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5670
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5671
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5669
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5672
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5673
  %alarms = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 18, !dbg !5674
  %3 = load i16, i16* %alarms, align 2, !dbg !5674
  %conv = zext i16 %3 to i32, !dbg !5673
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %conv) #5, !dbg !5675
  %conv2 = sext i32 %call1 to i64, !dbg !5675
  ret i64 %conv2, !dbg !5676
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @name_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5677 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5680, metadata !DIExpression()), !dbg !5681
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5682, metadata !DIExpression()), !dbg !5683
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5684, metadata !DIExpression()), !dbg !5685
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5686
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5687
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5687
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5685
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5688
  %3 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5689
  %name = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %3, i32 0, i32 1, !dbg !5690
  %4 = load i8*, i8** %name, align 8, !dbg !5690
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i8* %4) #5, !dbg !5691
  %conv = sext i32 %call1 to i64, !dbg !5691
  ret i64 %conv, !dbg !5692
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_input_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5693 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5700, metadata !DIExpression()), !dbg !5701
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5702
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5703
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5701
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5704
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5705
  %temp = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 14, !dbg !5706
  %3 = load i8, i8* %temp, align 1, !dbg !5706
  %call1 = call i32 @TEMP_FROM_REG(i8 signext %3) #5, !dbg !5707
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %call1) #5, !dbg !5708
  %conv = sext i32 %call2 to i64, !dbg !5708
  ret i64 %conv, !dbg !5709
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @TEMP_FROM_REG(i8 signext %val) #2 !dbg !5710 {
entry:
  %val.addr = alloca i8, align 1
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !5713, metadata !DIExpression()), !dbg !5714
  %0 = load i8, i8* %val.addr, align 1, !dbg !5715
  %conv = sext i8 %0 to i32, !dbg !5715
  %mul = mul i32 %conv, 830, !dbg !5716
  %add = add i32 %mul, 52120, !dbg !5717
  ret i32 %add, !dbg !5718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5719 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5722, metadata !DIExpression()), !dbg !5723
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5724, metadata !DIExpression()), !dbg !5725
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5726, metadata !DIExpression()), !dbg !5727
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5728
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5729
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5727
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5730
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5731
  %temp_over = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 15, !dbg !5732
  %3 = load i8, i8* %temp_over, align 2, !dbg !5732
  %call1 = call i32 @TEMP_FROM_REG(i8 signext %3) #5, !dbg !5733
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %call1) #5, !dbg !5734
  %conv = sext i32 %call2 to i64, !dbg !5734
  ret i64 %conv, !dbg !5735
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5736 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5741, metadata !DIExpression()), !dbg !5742
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5743, metadata !DIExpression()), !dbg !5744
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5745, metadata !DIExpression()), !dbg !5746
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5747
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5748
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5748
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5746
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5749, metadata !DIExpression()), !dbg !5750
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5751, metadata !DIExpression()), !dbg !5752
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5753
  %call1 = call i32 @kstrtol(i8* %2, i32 10, i64* %val) #5, !dbg !5754
  store i32 %call1, i32* %err, align 4, !dbg !5755
  %3 = load i32, i32* %err, align 4, !dbg !5756
  %tobool = icmp ne i32 %3, 0, !dbg !5756
  br i1 %tobool, label %if.then, label %if.end, !dbg !5758

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !5759
  %conv = sext i32 %4 to i64, !dbg !5759
  store i64 %conv, i64* %retval, align 8, !dbg !5760
  br label %return, !dbg !5760

if.end:                                           ; preds = %entry
  %5 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5761
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %5, i32 0, i32 4, !dbg !5762
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5763
  %6 = load i64, i64* %val, align 8, !dbg !5764
  %call2 = call signext i8 @TEMP_TO_REG(i64 %6) #5, !dbg !5765
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5766
  %temp_over = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %7, i32 0, i32 15, !dbg !5767
  store i8 %call2, i8* %temp_over, align 2, !dbg !5768
  %8 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5769
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5770
  %revision = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 8, !dbg !5770
  %10 = load i8, i8* %revision, align 1, !dbg !5770
  %conv3 = zext i8 %10 to i32, !dbg !5770
  %cmp = icmp sge i32 %conv3, 176, !dbg !5770
  %11 = zext i1 %cmp to i64, !dbg !5770
  %cond = select i1 %cmp, i32 51, i32 57, !dbg !5770
  %conv5 = trunc i32 %cond to i8, !dbg !5770
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5771
  %temp_over6 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 15, !dbg !5772
  %13 = load i8, i8* %temp_over6, align 2, !dbg !5772
  call void @sis5595_write_value(%struct.sis5595_data* %8, i8 zeroext %conv5, i8 zeroext %13) #5, !dbg !5773
  %14 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5774
  %update_lock7 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %14, i32 0, i32 4, !dbg !5775
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5776
  %15 = load i64, i64* %count.addr, align 8, !dbg !5777
  store i64 %15, i64* %retval, align 8, !dbg !5778
  br label %return, !dbg !5778

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5779
  ret i64 %16, !dbg !5779
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtol(i8* %s, i32 %base, i64* %res) #2 !dbg !5780 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !5784, metadata !DIExpression()), !dbg !5785
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !5786, metadata !DIExpression()), !dbg !5787
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !5788, metadata !DIExpression()), !dbg !5789
  %0 = load i8*, i8** %s.addr, align 8, !dbg !5790
  %1 = load i32, i32* %base.addr, align 4, !dbg !5792
  %2 = load i64*, i64** %res.addr, align 8, !dbg !5793
  %call = call i32 @kstrtoll(i8* %0, i32 %1, i64* %2) #5, !dbg !5794
  ret i32 %call, !dbg !5795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i8 @TEMP_TO_REG(i64 %val) #2 !dbg !5796 {
entry:
  %val.addr = alloca i64, align 8
  %nval = alloca i32, align 4
  %__UNIQUE_ID___x250 = alloca i64, align 8
  %__UNIQUE_ID___x248 = alloca i64, align 8
  %__UNIQUE_ID___y249 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___y251 = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !5799, metadata !DIExpression()), !dbg !5800
  call void @llvm.dbg.declare(metadata i32* %nval, metadata !5801, metadata !DIExpression()), !dbg !5802
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x250, metadata !5803, metadata !DIExpression()), !dbg !5805
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x248, metadata !5806, metadata !DIExpression()), !dbg !5808
  %0 = load i64, i64* %val.addr, align 8, !dbg !5808
  store i64 %0, i64* %__UNIQUE_ID___x248, align 8, !dbg !5808
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y249, metadata !5809, metadata !DIExpression()), !dbg !5808
  store i64 -54120, i64* %__UNIQUE_ID___y249, align 8, !dbg !5808
  %1 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5808
  %2 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5808
  %cmp = icmp sgt i64 %1, %2, !dbg !5808
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5808

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %__UNIQUE_ID___x248, align 8, !dbg !5808
  br label %cond.end, !dbg !5808

cond.false:                                       ; preds = %entry
  %4 = load i64, i64* %__UNIQUE_ID___y249, align 8, !dbg !5808
  br label %cond.end, !dbg !5808

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !5808
  store i64 %cond, i64* %tmp, align 8, !dbg !5808
  %5 = load i64, i64* %tmp, align 8, !dbg !5808
  store i64 %5, i64* %__UNIQUE_ID___x250, align 8, !dbg !5805
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y251, metadata !5810, metadata !DIExpression()), !dbg !5805
  store i64 157530, i64* %__UNIQUE_ID___y251, align 8, !dbg !5805
  %6 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5805
  %7 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5805
  %cmp2 = icmp slt i64 %6, %7, !dbg !5805
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !5805

cond.true3:                                       ; preds = %cond.end
  %8 = load i64, i64* %__UNIQUE_ID___x250, align 8, !dbg !5805
  br label %cond.end5, !dbg !5805

cond.false4:                                      ; preds = %cond.end
  %9 = load i64, i64* %__UNIQUE_ID___y251, align 8, !dbg !5805
  br label %cond.end5, !dbg !5805

cond.end5:                                        ; preds = %cond.false4, %cond.true3
  %cond6 = phi i64 [ %8, %cond.true3 ], [ %9, %cond.false4 ], !dbg !5805
  store i64 %cond6, i64* %tmp1, align 8, !dbg !5805
  %10 = load i64, i64* %tmp1, align 8, !dbg !5805
  %conv = trunc i64 %10 to i32, !dbg !5811
  store i32 %conv, i32* %nval, align 4, !dbg !5802
  %11 = load i32, i32* %nval, align 4, !dbg !5812
  %cmp7 = icmp slt i32 %11, 0, !dbg !5813
  br i1 %cmp7, label %cond.true9, label %cond.false11, !dbg !5812

cond.true9:                                       ; preds = %cond.end5
  %12 = load i32, i32* %nval, align 4, !dbg !5814
  %sub = sub i32 %12, 5212, !dbg !5815
  %sub10 = sub i32 %sub, 415, !dbg !5816
  %div = sdiv i32 %sub10, 830, !dbg !5817
  br label %cond.end14, !dbg !5812

cond.false11:                                     ; preds = %cond.end5
  %13 = load i32, i32* %nval, align 4, !dbg !5818
  %sub12 = sub i32 %13, 5212, !dbg !5819
  %add = add i32 %sub12, 415, !dbg !5820
  %div13 = sdiv i32 %add, 830, !dbg !5821
  br label %cond.end14, !dbg !5812

cond.end14:                                       ; preds = %cond.false11, %cond.true9
  %cond15 = phi i32 [ %div, %cond.true9 ], [ %div13, %cond.false11 ], !dbg !5812
  %conv16 = trunc i32 %cond15 to i8, !dbg !5812
  ret i8 %conv16, !dbg !5822
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_hyst_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5823 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %data = alloca %struct.sis5595_data*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5826, metadata !DIExpression()), !dbg !5827
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5830, metadata !DIExpression()), !dbg !5831
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5832
  %call = call %struct.sis5595_data* @sis5595_update_device(%struct.device* %0) #5, !dbg !5833
  store %struct.sis5595_data* %call, %struct.sis5595_data** %data, align 8, !dbg !5831
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5834
  %2 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5835
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %2, i32 0, i32 16, !dbg !5836
  %3 = load i8, i8* %temp_hyst, align 1, !dbg !5836
  %call1 = call i32 @TEMP_FROM_REG(i8 signext %3) #5, !dbg !5837
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 %call1) #5, !dbg !5838
  %conv = sext i32 %call2 to i64, !dbg !5838
  ret i64 %conv, !dbg !5839
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @temp1_max_hyst_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #2 !dbg !5840 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %data = alloca %struct.sis5595_data*, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5841, metadata !DIExpression()), !dbg !5842
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5843, metadata !DIExpression()), !dbg !5844
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata %struct.sis5595_data** %data, metadata !5849, metadata !DIExpression()), !dbg !5850
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5851
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #5, !dbg !5852
  %1 = bitcast i8* %call to %struct.sis5595_data*, !dbg !5852
  store %struct.sis5595_data* %1, %struct.sis5595_data** %data, align 8, !dbg !5850
  call void @llvm.dbg.declare(metadata i64* %val, metadata !5853, metadata !DIExpression()), !dbg !5854
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5855, metadata !DIExpression()), !dbg !5856
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5857
  %call1 = call i32 @kstrtol(i8* %2, i32 10, i64* %val) #5, !dbg !5858
  store i32 %call1, i32* %err, align 4, !dbg !5859
  %3 = load i32, i32* %err, align 4, !dbg !5860
  %tobool = icmp ne i32 %3, 0, !dbg !5860
  br i1 %tobool, label %if.then, label %if.end, !dbg !5862

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %err, align 4, !dbg !5863
  %conv = sext i32 %4 to i64, !dbg !5863
  store i64 %conv, i64* %retval, align 8, !dbg !5864
  br label %return, !dbg !5864

if.end:                                           ; preds = %entry
  %5 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5865
  %update_lock = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %5, i32 0, i32 4, !dbg !5866
  call void @mutex_lock(%struct.mutex* %update_lock) #5, !dbg !5867
  %6 = load i64, i64* %val, align 8, !dbg !5868
  %call2 = call signext i8 @TEMP_TO_REG(i64 %6) #5, !dbg !5869
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5870
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %7, i32 0, i32 16, !dbg !5871
  store i8 %call2, i8* %temp_hyst, align 1, !dbg !5872
  %8 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5873
  %9 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5874
  %revision = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %9, i32 0, i32 8, !dbg !5874
  %10 = load i8, i8* %revision, align 1, !dbg !5874
  %conv3 = zext i8 %10 to i32, !dbg !5874
  %cmp = icmp sge i32 %conv3, 176, !dbg !5874
  %11 = zext i1 %cmp to i64, !dbg !5874
  %cond = select i1 %cmp, i32 52, i32 58, !dbg !5874
  %conv5 = trunc i32 %cond to i8, !dbg !5874
  %12 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5875
  %temp_hyst6 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %12, i32 0, i32 16, !dbg !5876
  %13 = load i8, i8* %temp_hyst6, align 1, !dbg !5876
  call void @sis5595_write_value(%struct.sis5595_data* %8, i8 zeroext %conv5, i8 zeroext %13) #5, !dbg !5877
  %14 = load %struct.sis5595_data*, %struct.sis5595_data** %data, align 8, !dbg !5878
  %update_lock7 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %14, i32 0, i32 4, !dbg !5879
  call void @mutex_unlock(%struct.mutex* %update_lock7) #5, !dbg !5880
  %15 = load i64, i64* %count.addr, align 8, !dbg !5881
  store i64 %15, i64* %retval, align 8, !dbg !5882
  br label %return, !dbg !5882

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, i64* %retval, align 8, !dbg !5883
  ret i64 %16, !dbg !5883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !5884 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !5889, metadata !DIExpression()), !dbg !5890
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !5891
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !5892
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !5893
  ret i8* %call, !dbg !5894
}

; Function Attrs: noredzone
declare dso_local void @hwmon_device_unregister(%struct.device*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4366, !4367, !4368, !4369}
!llvm.ident = !{!4370}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force_addr", scope: !2, file: !3, line: 62, type: !4363, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !3847, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/sis5595.c", directory: "/home/lizy2001/genbc/linux")
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
!107 = !{!108, !109, !112, !114, !140, !3845, !243, !3846}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !111, line: 76, flags: DIFlagFwdDecl)
!111 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !113, line: 148, baseType: !7)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sensor_device_attribute", file: !116, line: 12, size: 320, elements: !117)
!116 = !DIFile(filename: "./include/linux/hwmon-sysfs.h", directory: "/home/lizy2001/genbc/linux")
!117 = !{!118, !3844}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !115, file: !116, line: 13, baseType: !119, size: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !73, line: 99, size: 256, elements: !120)
!120 = !{!121, !132, !3840}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !119, file: !73, line: 100, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !123, line: 30, size: 128, elements: !124)
!123 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!124 = !{!125, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !122, file: !123, line: 31, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !122, file: !123, line: 32, baseType: !130, size: 16, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 19, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !119, file: !73, line: 101, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!136, !141, !3839, !205}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 60, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !138, line: 73, baseType: !139)
!138 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !138, line: 15, baseType: !140)
!140 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !143)
!143 = !{!144, !3293, !3294, !3297, !3298, !3349, !3440, !3441, !3442, !3443, !3444, !3453, !3558, !3571, !3766, !3767, !3771, !3773, !3774, !3775, !3779, !3785, !3786, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3827, !3828, !3829, !3832, !3835, !3836, !3837, !3838}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !142, file: !73, line: 462, baseType: !145, size: 512)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !146, line: 64, size: 512, elements: !147)
!146 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !149, !155, !157, !218, !3144, !3283, !3288, !3289, !3290, !3291, !3292}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !146, line: 65, baseType: !126, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !145, file: !146, line: 66, baseType: !150, size: 128, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 178, size: 128, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !113, line: 179, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !113, line: 179, baseType: !153, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !145, file: !146, line: 67, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !145, file: !146, line: 68, baseType: !158, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !146, line: 192, size: 704, elements: !160)
!160 = !{!161, !162, !178, !179}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !159, file: !146, line: 193, baseType: !150, size: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !159, file: !146, line: 194, baseType: !163, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !164, line: 83, baseType: !165)
!164 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !164, line: 71, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !164, line: 72, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !164, line: 72, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !168, file: !164, line: 73, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !164, line: 20, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !171, file: !164, line: 21, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !175, line: 25, baseType: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 25, elements: !177)
!177 = !{}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !159, file: !146, line: 195, baseType: !145, size: 512, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !159, file: !146, line: 196, baseType: !180, size: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !146, line: 156, size: 192, elements: !183)
!183 = !{!184, !190, !195}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !182, file: !146, line: 157, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!189, !158, !156}
!189 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !146, line: 158, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!126, !158, !156}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !182, file: !146, line: 159, baseType: !196, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!189, !158, !156, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !146, line: 148, size: 20736, elements: !202)
!202 = !{!203, !208, !212, !213, !217}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !201, file: !146, line: 149, baseType: !204, size: 192)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!206 = !{!207}
!207 = !DISubrange(count: 3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !201, file: !146, line: 150, baseType: !209, size: 4096, offset: 192)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 4096, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !201, file: !146, line: 151, baseType: !189, size: 32, offset: 4288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !201, file: !146, line: 152, baseType: !214, size: 16384, offset: 4320)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 16384, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !201, file: !146, line: 153, baseType: !189, size: 32, offset: 20704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !145, file: !146, line: 69, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !146, line: 138, size: 448, elements: !221)
!221 = !{!222, !226, !244, !246, !3106, !3134, !3138}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !220, file: !146, line: 139, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !156}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !220, file: !146, line: 140, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !123, line: 230, size: 128, elements: !230)
!230 = !{!231, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !229, file: !123, line: 231, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!136, !156, !235, !205}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !229, file: !123, line: 232, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!136, !156, !235, !126, !240}
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 55, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !138, line: 72, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !138, line: 16, baseType: !243)
!243 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !220, file: !146, line: 141, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !220, file: !146, line: 142, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !123, line: 84, size: 320, elements: !251)
!251 = !{!252, !253, !257, !3103, !3104}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !123, line: 85, baseType: !126, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !250, file: !123, line: 86, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!130, !156, !235, !189}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !250, file: !123, line: 88, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!130, !156, !261, !189}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !123, line: 168, size: 448, elements: !263)
!263 = !{!264, !265, !266, !267, !3098, !3099}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !262, file: !123, line: 169, baseType: !122, size: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !262, file: !123, line: 170, baseType: !240, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !262, file: !123, line: 171, baseType: !108, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !262, file: !123, line: 172, baseType: !268, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!136, !271, !156, !261, !205, !450, !240}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !273)
!273 = !{!274, !292, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3081, !3082, !3091, !3092, !3093, !3094, !3095, !3096, !3097}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !272, file: !44, line: 920, baseType: !275, size: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !272, file: !44, line: 917, size: 128, elements: !276)
!276 = !{!277, !283}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !275, file: !44, line: 918, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !279, line: 58, size: 64, elements: !280)
!279 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !279, line: 59, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !275, file: !44, line: 919, baseType: !284, size: 128, align: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 216, size: 128, align: 64, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !113, line: 217, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !284, file: !113, line: 218, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !287}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !272, file: !44, line: 921, baseType: !293, size: 128, offset: 128)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !294, line: 8, size: 128, elements: !295)
!294 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!295 = !{!296, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !293, file: !294, line: 9, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !299, line: 18, flags: DIFlagFwdDecl)
!299 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !293, file: !294, line: 10, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !299, line: 89, size: 1536, elements: !303)
!303 = !{!304, !305, !315, !323, !324, !347, !3031, !3033, !3045, !3046, !3047, !3048, !3049, !3055, !3056, !3057}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !302, file: !299, line: 91, baseType: !7, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !302, file: !299, line: 92, baseType: !306, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !307, line: 277, baseType: !308)
!307 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !307, line: 277, size: 32, elements: !309)
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !308, file: !307, line: 277, baseType: !311, size: 32)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !307, line: 70, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !307, line: 65, size: 32, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !312, file: !307, line: 66, baseType: !7, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !302, file: !299, line: 93, baseType: !316, size: 128, offset: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !317, line: 38, size: 128, elements: !318)
!317 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!318 = !{!319, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !317, line: 39, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !316, file: !317, line: 39, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !302, file: !299, line: 94, baseType: !301, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !302, file: !299, line: 95, baseType: !325, size: 128, offset: 256)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !299, line: 47, size: 128, elements: !326)
!326 = !{!327, !343}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !299, line: 48, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !299, line: 48, size: 64, elements: !329)
!329 = !{!330, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !299, line: 49, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !299, line: 49, size: 64, elements: !332)
!332 = !{!333, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !331, file: !299, line: 50, baseType: !334, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !335, line: 21, baseType: !336)
!335 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !337, line: 27, baseType: !7)
!337 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !331, file: !299, line: 50, baseType: !334, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !328, file: !299, line: 52, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !335, line: 23, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !337, line: 31, baseType: !342)
!342 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !299, line: 54, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!346 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !302, file: !299, line: 96, baseType: !348, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !350)
!350 = !{!351, !352, !353, !361, !368, !369, !517, !2742, !2743, !2744, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !3007, !3015, !3016, !3017, !3027, !3028, !3029, !3030}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !349, file: !44, line: 611, baseType: !130, size: 16)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !349, file: !44, line: 612, baseType: !131, size: 16, offset: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !349, file: !44, line: 613, baseType: !354, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !355, line: 23, baseType: !356)
!355 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 21, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !356, file: !355, line: 22, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 32, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !138, line: 49, baseType: !7)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !349, file: !44, line: 614, baseType: !362, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !355, line: 28, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 26, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !355, line: 27, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 33, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !138, line: 50, baseType: !7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !349, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !349, file: !44, line: 622, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !373)
!373 = !{!374, !378, !391, !395, !401, !405, !411, !415, !419, !423, !427, !428, !434, !438, !464, !493, !497, !503, !508, !512, !513}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !372, file: !44, line: 1865, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!301, !348, !301, !7}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !372, file: !44, line: 1866, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!126, !301, !348, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !384, line: 10, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !383, file: !384, line: 11, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !108}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !383, file: !384, line: 12, baseType: !108, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !372, file: !44, line: 1867, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!189, !348, !189}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !372, file: !44, line: 1868, baseType: !396, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !348, !189}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !372, file: !44, line: 1870, baseType: !402, size: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!189, !301, !205, !189}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !372, file: !44, line: 1872, baseType: !406, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!189, !348, !301, !130, !409}
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 30, baseType: !410)
!410 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !372, file: !44, line: 1873, baseType: !412, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!189, !301, !348, !301}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !372, file: !44, line: 1874, baseType: !416, size: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!189, !348, !301}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !44, line: 1875, baseType: !420, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!189, !348, !301, !126}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !372, file: !44, line: 1876, baseType: !424, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!189, !348, !301, !130}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !372, file: !44, line: 1877, baseType: !416, size: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !372, file: !44, line: 1878, baseType: !429, size: 64, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!189, !348, !301, !130, !432}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 16, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 13, baseType: !334)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !372, file: !44, line: 1879, baseType: !435, size: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!189, !348, !301, !348, !301, !7}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !372, file: !44, line: 1881, baseType: !439, size: 64, offset: 832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!189, !301, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !453, !461, !462, !463}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !443, file: !44, line: 220, baseType: !7, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !443, file: !44, line: 221, baseType: !130, size: 16, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !443, file: !44, line: 222, baseType: !354, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !443, file: !44, line: 223, baseType: !362, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !443, file: !44, line: 224, baseType: !450, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 46, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !138, line: 88, baseType: !452)
!452 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !443, file: !44, line: 225, baseType: !454, size: 128, offset: 192)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !455, line: 13, size: 128, elements: !456)
!455 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!456 = !{!457, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !454, file: !455, line: 14, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !455, line: 8, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !337, line: 30, baseType: !452)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !454, file: !455, line: 15, baseType: !140, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !443, file: !44, line: 226, baseType: !454, size: 128, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !443, file: !44, line: 227, baseType: !454, size: 128, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !443, file: !44, line: 234, baseType: !271, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !372, file: !44, line: 1882, baseType: !465, size: 64, offset: 896)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!189, !468, !470, !334, !7}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !472, line: 22, size: 1152, elements: !473)
!472 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475, !476, !477, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !471, file: !472, line: 23, baseType: !334, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !471, file: !472, line: 24, baseType: !130, size: 16, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !471, file: !472, line: 25, baseType: !7, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !471, file: !472, line: 26, baseType: !478, size: 32, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !113, line: 104, baseType: !334)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !471, file: !472, line: 27, baseType: !340, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !471, file: !472, line: 28, baseType: !340, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !471, file: !472, line: 37, baseType: !340, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !471, file: !472, line: 38, baseType: !432, size: 32, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !471, file: !472, line: 39, baseType: !432, size: 32, offset: 352)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !471, file: !472, line: 40, baseType: !354, size: 32, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !471, file: !472, line: 41, baseType: !362, size: 32, offset: 416)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !471, file: !472, line: 42, baseType: !450, size: 64, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !471, file: !472, line: 43, baseType: !454, size: 128, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !471, file: !472, line: 44, baseType: !454, size: 128, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !471, file: !472, line: 45, baseType: !454, size: 128, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !471, file: !472, line: 46, baseType: !454, size: 128, offset: 896)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !471, file: !472, line: 47, baseType: !340, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !471, file: !472, line: 48, baseType: !340, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !372, file: !44, line: 1883, baseType: !494, size: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!136, !301, !205, !240}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !372, file: !44, line: 1884, baseType: !498, size: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!189, !348, !501, !340, !340}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !372, file: !44, line: 1886, baseType: !504, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!189, !348, !507, !189}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !372, file: !44, line: 1887, baseType: !509, size: 64, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!189, !348, !301, !271, !7, !130}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !372, file: !44, line: 1890, baseType: !424, size: 64, offset: 1216)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !372, file: !44, line: 1891, baseType: !514, size: 64, offset: 1280)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!189, !348, !399, !189}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !349, file: !44, line: 623, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !573, !2349, !2431, !2514, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2530, !2534, !2535, !2538, !2539, !2542, !2543, !2544, !2585, !2612, !2613, !2614, !2615, !2616, !2617, !2620, !2622, !2629, !2630, !2632, !2633, !2634, !2693, !2694, !2709, !2710, !2711, !2712, !2713, !2716, !2717, !2718, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !519, file: !44, line: 1417, baseType: !150, size: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !519, file: !44, line: 1418, baseType: !432, size: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !519, file: !44, line: 1419, baseType: !346, size: 8, offset: 160)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !519, file: !44, line: 1420, baseType: !243, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !519, file: !44, line: 1421, baseType: !450, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !519, file: !44, line: 1422, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !529)
!529 = !{!530, !531, !532, !539, !543, !547, !551, !552, !553, !563, !566, !567, !568, !570, !571, !572}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !528, file: !44, line: 2229, baseType: !126, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !528, file: !44, line: 2230, baseType: !189, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !528, file: !44, line: 2238, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!189, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !538, line: 28, flags: DIFlagFwdDecl)
!538 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !528, file: !44, line: 2239, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !528, file: !44, line: 2240, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!301, !527, !189, !126, !108}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !528, file: !44, line: 2242, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !518}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !44, line: 2243, baseType: !109, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !44, line: 2244, baseType: !527, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !528, file: !44, line: 2245, baseType: !554, size: 64, offset: 512)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !113, line: 182, size: 64, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !554, file: !113, line: 183, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 186, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !113, line: 187, baseType: !557, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !558, file: !113, line: 187, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !528, file: !44, line: 2247, baseType: !564, offset: 576)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !565, line: 187, elements: !177)
!565 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !528, file: !44, line: 2248, baseType: !564, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !528, file: !44, line: 2249, baseType: !564, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !528, file: !44, line: 2250, baseType: !569, offset: 576)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, elements: !206)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !528, file: !44, line: 2252, baseType: !564, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !528, file: !44, line: 2253, baseType: !564, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !528, file: !44, line: 2254, baseType: !564, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !519, file: !44, line: 1423, baseType: !574, size: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !577)
!577 = !{!578, !582, !586, !587, !591, !597, !601, !602, !603, !607, !611, !612, !613, !614, !620, !625, !626, !633, !634, !635, !636, !2333, !2348}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !576, file: !44, line: 1936, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!348, !518}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !576, file: !44, line: 1937, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !348}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !576, file: !44, line: 1938, baseType: !583, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !576, file: !44, line: 1940, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !348, !189}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !576, file: !44, line: 1941, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!189, !348, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !576, file: !44, line: 1942, baseType: !598, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!189, !348}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !576, file: !44, line: 1943, baseType: !583, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !576, file: !44, line: 1944, baseType: !548, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !576, file: !44, line: 1945, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!189, !518, !189}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !576, file: !44, line: 1946, baseType: !608, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!189, !518}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !576, file: !44, line: 1947, baseType: !608, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !576, file: !44, line: 1948, baseType: !608, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !576, file: !44, line: 1949, baseType: !608, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !576, file: !44, line: 1950, baseType: !615, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!189, !301, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !576, file: !44, line: 1951, baseType: !621, size: 64, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!189, !518, !624, !205}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !576, file: !44, line: 1952, baseType: !548, size: 64, offset: 960)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !576, file: !44, line: 1954, baseType: !627, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!189, !630, !301}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !632, line: 539, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !576, file: !44, line: 1955, baseType: !627, size: 64, offset: 1088)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !576, file: !44, line: 1956, baseType: !627, size: 64, offset: 1152)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !576, file: !44, line: 1957, baseType: !627, size: 64, offset: 1216)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !576, file: !44, line: 1963, baseType: !637, size: 64, offset: 1280)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!189, !518, !640, !112}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !642, line: 68, size: 512, align: 128, elements: !643)
!642 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!643 = !{!644, !645, !2325, !2332}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !642, line: 69, baseType: !243, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !642, line: 77, baseType: !646, size: 320, offset: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 77, size: 320, elements: !647)
!647 = !{!648, !835, !840, !868, !876, !882, !2256, !2324}
!648 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 78, baseType: !649, size: 320)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 78, size: 320, elements: !650)
!650 = !{!651, !652, !833, !834}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !649, file: !642, line: 84, baseType: !150, size: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !649, file: !642, line: 86, baseType: !653, size: 64, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !655)
!655 = !{!656, !657, !664, !665, !670, !685, !701, !702, !703, !704, !826, !827, !830, !831, !832}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !654, file: !44, line: 452, baseType: !348, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !654, file: !44, line: 453, baseType: !658, size: 128, offset: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !659, line: 292, size: 128, elements: !660)
!659 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!660 = !{!661, !662, !663}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !658, file: !659, line: 293, baseType: !163)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !658, file: !659, line: 295, baseType: !112, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !658, file: !659, line: 296, baseType: !108, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !654, file: !44, line: 454, baseType: !112, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !654, file: !44, line: 455, baseType: !666, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 168, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 166, size: 32, elements: !668)
!668 = !{!669}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !667, file: !113, line: 167, baseType: !189, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !654, file: !44, line: 460, baseType: !671, size: 128, offset: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !672, line: 125, size: 128, elements: !673)
!672 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!673 = !{!674, !684}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !671, file: !672, line: 126, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !672, line: 31, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !675, file: !672, line: 32, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !672, line: 24, size: 192, align: 64, elements: !680)
!680 = !{!681, !682, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !679, file: !672, line: 25, baseType: !243, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !679, file: !672, line: 26, baseType: !678, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !679, file: !672, line: 27, baseType: !678, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !671, file: !672, line: 127, baseType: !678, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !654, file: !44, line: 461, baseType: !686, size: 256, offset: 384)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !687, line: 35, size: 256, elements: !688)
!687 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !697, !698, !700}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !686, file: !687, line: 36, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !691, line: 13, baseType: !692)
!691 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 175, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 173, size: 64, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !693, file: !113, line: 174, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !335, line: 22, baseType: !459)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !686, file: !687, line: 42, baseType: !690, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !686, file: !687, line: 46, baseType: !699, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !164, line: 29, baseType: !171)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !686, file: !687, line: 47, baseType: !150, size: 128, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !654, file: !44, line: 462, baseType: !243, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !654, file: !44, line: 463, baseType: !243, size: 64, offset: 704)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !654, file: !44, line: 464, baseType: !243, size: 64, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !654, file: !44, line: 465, baseType: !705, size: 64, offset: 832)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !708)
!708 = !{!709, !713, !717, !721, !725, !729, !735, !741, !745, !750, !754, !758, !762, !790, !794, !800, !801, !802, !806, !811, !815, !822}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !707, file: !44, line: 368, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!189, !640, !595}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !707, file: !44, line: 369, baseType: !714, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!189, !271, !640}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !707, file: !44, line: 372, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!189, !653, !595}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !707, file: !44, line: 375, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!189, !640}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !707, file: !44, line: 381, baseType: !726, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!189, !271, !653, !153, !7}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !707, file: !44, line: 383, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !707, file: !44, line: 385, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!189, !271, !653, !450, !7, !7, !739, !740}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !707, file: !44, line: 388, baseType: !742, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!189, !271, !653, !450, !7, !7, !640, !108}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !707, file: !44, line: 393, baseType: !746, size: 64, offset: 512)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!749, !653, !749}
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !113, line: 125, baseType: !340)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !707, file: !44, line: 394, baseType: !751, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !640, !7, !7}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !707, file: !44, line: 395, baseType: !755, size: 64, offset: 640)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!189, !640, !112}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !707, file: !44, line: 396, baseType: !759, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !640}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !707, file: !44, line: 397, baseType: !763, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!136, !766, !788}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !768)
!768 = !{!769, !770, !771, !775, !776, !777, !780, !781}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !767, file: !44, line: 321, baseType: !271, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !767, file: !44, line: 326, baseType: !450, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !767, file: !44, line: 327, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !766, !140, !140}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !767, file: !44, line: 328, baseType: !108, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !767, file: !44, line: 329, baseType: !189, size: 32, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !767, file: !44, line: 330, baseType: !778, size: 16, offset: 288)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !335, line: 19, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !337, line: 24, baseType: !131)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !767, file: !44, line: 331, baseType: !778, size: 16, offset: 304)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !44, line: 332, baseType: !782, size: 64, offset: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !767, file: !44, line: 332, size: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !782, file: !44, line: 333, baseType: !7, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !782, file: !44, line: 334, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !707, file: !44, line: 402, baseType: !791, size: 64, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!189, !653, !640, !640, !5}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !707, file: !44, line: 404, baseType: !795, size: 64, offset: 896)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!409, !640, !798}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !799, line: 305, baseType: !7)
!799 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!800 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !707, file: !44, line: 405, baseType: !759, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !707, file: !44, line: 406, baseType: !722, size: 64, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !707, file: !44, line: 407, baseType: !803, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!189, !640, !243, !243}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !707, file: !44, line: 409, baseType: !807, size: 64, offset: 1152)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !640, !810, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !707, file: !44, line: 410, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!189, !653, !640}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !707, file: !44, line: 413, baseType: !816, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!189, !819, !271, !821}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !707, file: !44, line: 415, baseType: !823, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{null, !271}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !44, line: 466, baseType: !243, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !654, file: !44, line: 467, baseType: !828, size: 32, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !829, line: 8, baseType: !334)
!829 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!830 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !654, file: !44, line: 468, baseType: !163, offset: 992)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !654, file: !44, line: 469, baseType: !150, size: 128, offset: 1024)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !654, file: !44, line: 470, baseType: !108, size: 64, offset: 1152)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !649, file: !642, line: 87, baseType: !243, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !649, file: !642, line: 94, baseType: !243, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 96, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 96, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !836, file: !642, line: 101, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !113, line: 143, baseType: !340)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 103, baseType: !841, size: 320)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 103, size: 320, elements: !842)
!842 = !{!843, !853, !856, !857}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !642, line: 104, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !642, line: 104, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !844, file: !642, line: 105, baseType: !150, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !642, line: 106, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !844, file: !642, line: 106, size: 128, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !642, line: 107, baseType: !640, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !848, file: !642, line: 109, baseType: !189, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !848, file: !642, line: 110, baseType: !189, size: 32, offset: 96)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !841, file: !642, line: 117, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !642, line: 117, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !841, file: !642, line: 119, baseType: !108, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !642, line: 120, baseType: !858, size: 64, offset: 256)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !642, line: 120, size: 64, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !858, file: !642, line: 121, baseType: !108, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !858, file: !642, line: 122, baseType: !243, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !642, line: 123, baseType: !863, size: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !642, line: 123, size: 32, elements: !864)
!864 = !{!865, !866, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !863, file: !642, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !863, file: !642, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !863, file: !642, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 130, baseType: !869, size: 192)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 130, size: 192, elements: !870)
!870 = !{!871, !872, !873, !874, !875}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !869, file: !642, line: 131, baseType: !243, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !869, file: !642, line: 134, baseType: !346, size: 8, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !869, file: !642, line: 135, baseType: !346, size: 8, offset: 72)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !869, file: !642, line: 136, baseType: !666, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !869, file: !642, line: 137, baseType: !7, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 139, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 139, size: 256, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !877, file: !642, line: 140, baseType: !243, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !877, file: !642, line: 141, baseType: !666, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !877, file: !642, line: 143, baseType: !150, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 145, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 145, size: 256, elements: !884)
!884 = !{!885, !886, !888, !889, !2255}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !883, file: !642, line: 146, baseType: !243, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !883, file: !642, line: 147, baseType: !887, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !632, line: 509, baseType: !640)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !883, file: !642, line: 148, baseType: !243, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !642, line: 149, baseType: !890, size: 64, offset: 192)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !642, line: 149, size: 64, elements: !891)
!891 = !{!892, !2254}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !890, file: !642, line: 150, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !642, line: 388, size: 7296, elements: !895)
!895 = !{!896, !2250}
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !642, line: 389, baseType: !897, size: 7296)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !642, line: 389, size: 7296, elements: !898)
!898 = !{!899, !1017, !1018, !1019, !1023, !1024, !1025, !1026, !1027, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1068, !1076, !1079, !1125, !1126, !2234, !2235, !2238, !2239, !2240, !2243, !2244, !2245, !2248, !2249}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !897, file: !642, line: 390, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !642, line: 305, size: 1472, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !917, !918, !923, !924, !927, !1011, !1012, !1013, !1014, !1015}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !901, file: !642, line: 308, baseType: !243, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !901, file: !642, line: 309, baseType: !243, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !901, file: !642, line: 313, baseType: !900, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !901, file: !642, line: 313, baseType: !900, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !901, file: !642, line: 315, baseType: !679, size: 192, align: 64, offset: 256)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !901, file: !642, line: 323, baseType: !243, size: 64, offset: 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !901, file: !642, line: 327, baseType: !893, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !901, file: !642, line: 333, baseType: !911, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !632, line: 284, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !632, line: 284, size: 64, elements: !913)
!913 = !{!914}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !912, file: !632, line: 284, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !916, line: 19, baseType: !243)
!916 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !901, file: !642, line: 334, baseType: !243, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !901, file: !642, line: 343, baseType: !919, size: 256, offset: 704)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !642, line: 340, size: 256, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !919, file: !642, line: 341, baseType: !679, size: 192, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !919, file: !642, line: 342, baseType: !243, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !901, file: !642, line: 351, baseType: !150, size: 128, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !901, file: !642, line: 353, baseType: !925, size: 64, offset: 1088)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !642, line: 353, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !901, file: !642, line: 356, baseType: !928, size: 64, offset: 1152)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !931)
!931 = !{!932, !936, !937, !941, !945, !985, !989, !993, !997, !998, !999, !1003, !1007}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !930, file: !14, line: 558, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !900}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !930, file: !14, line: 559, baseType: !933, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !930, file: !14, line: 560, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!189, !900, !243}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !930, file: !14, line: 561, baseType: !942, size: 64, offset: 192)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!189, !900}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !930, file: !14, line: 562, baseType: !946, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !642, line: 682, baseType: !7)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !965, !972, !978, !979, !980, !982, !984}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !951, file: !14, line: 509, baseType: !900, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !951, file: !14, line: 511, baseType: !112, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !951, file: !14, line: 512, baseType: !243, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !951, file: !14, line: 513, baseType: !243, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !951, file: !14, line: 514, baseType: !959, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !632, line: 385, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 385, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !961, file: !632, line: 385, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !916, line: 15, baseType: !243)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !951, file: !14, line: 516, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !632, line: 359, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 359, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !968, file: !632, line: 359, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !916, line: 16, baseType: !243)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !951, file: !14, line: 519, baseType: !973, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !916, line: 21, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !916, line: 21, size: 64, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !974, file: !916, line: 21, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !916, line: 14, baseType: !243)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !951, file: !14, line: 521, baseType: !640, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !951, file: !14, line: 522, baseType: !640, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !951, file: !14, line: 528, baseType: !981, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !951, file: !14, line: 532, baseType: !983, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !951, file: !14, line: 536, baseType: !887, size: 64, offset: 704)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !930, file: !14, line: 563, baseType: !986, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!949, !950, !13}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !930, file: !14, line: 565, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !950, !243, !243}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !930, file: !14, line: 567, baseType: !994, size: 64, offset: 448)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!243, !900}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !930, file: !14, line: 571, baseType: !946, size: 64, offset: 512)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !930, file: !14, line: 574, baseType: !946, size: 64, offset: 576)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !930, file: !14, line: 579, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!189, !900, !243, !108, !189, !189}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !930, file: !14, line: 585, baseType: !1004, size: 64, offset: 704)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!126, !900}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !930, file: !14, line: 615, baseType: !1008, size: 64, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!640, !900, !243}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !901, file: !642, line: 359, baseType: !243, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !901, file: !642, line: 361, baseType: !271, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !901, file: !642, line: 362, baseType: !108, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !901, file: !642, line: 365, baseType: !690, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !901, file: !642, line: 373, baseType: !1016, offset: 1472)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !642, line: 296, elements: !177)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !897, file: !642, line: 391, baseType: !675, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !897, file: !642, line: 392, baseType: !340, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !897, file: !642, line: 394, baseType: !1020, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!243, !271, !243, !243, !243, !243}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !897, file: !642, line: 398, baseType: !243, size: 64, offset: 256)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !897, file: !642, line: 399, baseType: !243, size: 64, offset: 320)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !897, file: !642, line: 405, baseType: !243, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !897, file: !642, line: 406, baseType: !243, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !897, file: !642, line: 407, baseType: !1028, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !632, line: 286, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !632, line: 286, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1030, file: !632, line: 286, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !916, line: 18, baseType: !243)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !897, file: !642, line: 416, baseType: !666, size: 32, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !897, file: !642, line: 428, baseType: !666, size: 32, offset: 608)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !897, file: !642, line: 437, baseType: !666, size: 32, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !897, file: !642, line: 447, baseType: !666, size: 32, offset: 672)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !897, file: !642, line: 450, baseType: !690, size: 64, offset: 704)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !897, file: !642, line: 452, baseType: !189, size: 32, offset: 768)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !897, file: !642, line: 454, baseType: !163, offset: 800)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !897, file: !642, line: 457, baseType: !686, size: 256, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !897, file: !642, line: 459, baseType: !150, size: 128, offset: 1088)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !897, file: !642, line: 466, baseType: !243, size: 64, offset: 1216)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !897, file: !642, line: 467, baseType: !243, size: 64, offset: 1280)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !897, file: !642, line: 469, baseType: !243, size: 64, offset: 1344)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !897, file: !642, line: 470, baseType: !243, size: 64, offset: 1408)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !897, file: !642, line: 471, baseType: !692, size: 64, offset: 1472)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !897, file: !642, line: 472, baseType: !243, size: 64, offset: 1536)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !897, file: !642, line: 473, baseType: !243, size: 64, offset: 1600)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !897, file: !642, line: 474, baseType: !243, size: 64, offset: 1664)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !897, file: !642, line: 475, baseType: !243, size: 64, offset: 1728)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !897, file: !642, line: 477, baseType: !163, offset: 1792)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !897, file: !642, line: 478, baseType: !243, size: 64, offset: 1792)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !897, file: !642, line: 478, baseType: !243, size: 64, offset: 1856)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !897, file: !642, line: 478, baseType: !243, size: 64, offset: 1920)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !897, file: !642, line: 478, baseType: !243, size: 64, offset: 1984)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !897, file: !642, line: 479, baseType: !243, size: 64, offset: 2048)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !897, file: !642, line: 479, baseType: !243, size: 64, offset: 2112)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !897, file: !642, line: 479, baseType: !243, size: 64, offset: 2176)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !897, file: !642, line: 480, baseType: !243, size: 64, offset: 2240)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !897, file: !642, line: 480, baseType: !243, size: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !897, file: !642, line: 480, baseType: !243, size: 64, offset: 2368)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !897, file: !642, line: 480, baseType: !243, size: 64, offset: 2432)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !897, file: !642, line: 482, baseType: !1065, size: 2816, offset: 2496)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 2816, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 44)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !897, file: !642, line: 488, baseType: !1069, size: 256, offset: 5312)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1070, line: 60, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !{!1072}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1069, file: !1070, line: 61, baseType: !1073, size: 256)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 256, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 4)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !897, file: !642, line: 490, baseType: !1077, size: 64, offset: 5568)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !642, line: 490, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !897, file: !642, line: 493, baseType: !1080, size: 896, offset: 5632)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1081, line: 53, baseType: !1082)
!1081 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1081, line: 13, size: 896, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1090, !1091, !1098, !1099, !1119, !1120, !1121}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1082, file: !1081, line: 18, baseType: !340, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1082, file: !1081, line: 28, baseType: !692, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1082, file: !1081, line: 31, baseType: !686, size: 256, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1082, file: !1081, line: 32, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1081, line: 32, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1082, file: !1081, line: 37, baseType: !131, size: 16, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1082, file: !1081, line: 40, baseType: !1092, size: 192, offset: 512)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1093, line: 53, size: 192, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1092, file: !1093, line: 54, baseType: !690, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1092, file: !1093, line: 55, baseType: !163, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1092, file: !1093, line: 59, baseType: !150, size: 128, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1082, file: !1081, line: 41, baseType: !108, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1082, file: !1081, line: 42, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1103, line: 13, size: 896, elements: !1104)
!1103 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1102, file: !1103, line: 14, baseType: !108, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1102, file: !1103, line: 15, baseType: !243, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1102, file: !1103, line: 17, baseType: !243, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1102, file: !1103, line: 17, baseType: !243, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1102, file: !1103, line: 19, baseType: !140, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1102, file: !1103, line: 21, baseType: !140, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1102, file: !1103, line: 22, baseType: !140, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1102, file: !1103, line: 23, baseType: !140, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1102, file: !1103, line: 24, baseType: !140, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1102, file: !1103, line: 25, baseType: !140, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1102, file: !1103, line: 26, baseType: !140, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1102, file: !1103, line: 27, baseType: !140, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1102, file: !1103, line: 28, baseType: !140, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1102, file: !1103, line: 29, baseType: !140, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1082, file: !1081, line: 44, baseType: !666, size: 32, offset: 832)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1082, file: !1081, line: 50, baseType: !778, size: 16, offset: 864)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1082, file: !1081, line: 51, baseType: !1122, size: 16, offset: 880)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !335, line: 18, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !337, line: 23, baseType: !1124)
!1124 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !897, file: !642, line: 495, baseType: !243, size: 64, offset: 6528)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !897, file: !642, line: 497, baseType: !1127, size: 64, offset: 6592)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !642, line: 381, size: 384, elements: !1129)
!1129 = !{!1130, !1131, !2233}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1128, file: !642, line: 382, baseType: !666, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1128, file: !642, line: 383, baseType: !1132, size: 128, offset: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !642, line: 376, size: 128, elements: !1133)
!1133 = !{!1134, !2231}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1132, file: !642, line: 377, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1137, line: 640, size: 48640, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139, !1145, !1147, !1148, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1165, !1183, !1194, !1279, !1280, !1281, !1292, !1293, !1295, !1296, !1297, !1298, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1377, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1415, !1417, !1418, !1419, !1431, !1432, !1433, !1434, !1435, !1436, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1460, !1465, !1649, !1650, !1651, !1652, !1656, !1659, !1662, !1665, !1668, !1672, !1773, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1819, !1820, !1821, !1822, !1823, !1828, !1829, !1830, !1833, !1834, !1837, !1840, !1843, !1846, !1889, !1892, !1893, !1972, !1973, !1976, !1977, !1980, !1981, !1982, !1986, !1987, !1988, !2001, !2002, !2003, !2013, !2018, !2021, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1136, file: !1137, line: 646, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1141, line: 56, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 57, baseType: !243, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1140, file: !1141, line: 58, baseType: !334, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1136, file: !1137, line: 649, baseType: !1146, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !140)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1136, file: !1137, line: 657, baseType: !108, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1136, file: !1137, line: 658, baseType: !1149, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1150, line: 113, baseType: !1151)
!1150 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1150, line: 111, size: 32, elements: !1152)
!1152 = !{!1153}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1151, file: !1150, line: 112, baseType: !666, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1136, file: !1137, line: 660, baseType: !7, size: 32, offset: 288)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1136, file: !1137, line: 661, baseType: !7, size: 32, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1136, file: !1137, line: 684, baseType: !189, size: 32, offset: 352)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1136, file: !1137, line: 686, baseType: !189, size: 32, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1136, file: !1137, line: 687, baseType: !189, size: 32, offset: 416)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1136, file: !1137, line: 688, baseType: !189, size: 32, offset: 448)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1136, file: !1137, line: 689, baseType: !7, size: 32, offset: 480)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1136, file: !1137, line: 691, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1137, line: 691, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1136, file: !1137, line: 692, baseType: !1166, size: 832, offset: 576)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1137, line: 451, size: 832, elements: !1167)
!1167 = !{!1168, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1166, file: !1137, line: 453, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1137, line: 325, size: 128, elements: !1170)
!1170 = !{!1171, !1172}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1169, file: !1137, line: 326, baseType: !243, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1169, file: !1137, line: 327, baseType: !334, size: 32, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1166, file: !1137, line: 454, baseType: !679, size: 192, align: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1166, file: !1137, line: 455, baseType: !150, size: 128, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1166, file: !1137, line: 456, baseType: !7, size: 32, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1166, file: !1137, line: 458, baseType: !340, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1166, file: !1137, line: 459, baseType: !340, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1166, file: !1137, line: 460, baseType: !340, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1166, file: !1137, line: 461, baseType: !340, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1166, file: !1137, line: 463, baseType: !340, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1166, file: !1137, line: 465, baseType: !1182, offset: 832)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1137, line: 415, elements: !177)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1136, file: !1137, line: 693, baseType: !1184, size: 384, offset: 1408)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1137, line: 489, size: 384, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1184, file: !1137, line: 490, baseType: !150, size: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1184, file: !1137, line: 491, baseType: !243, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1184, file: !1137, line: 492, baseType: !243, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1184, file: !1137, line: 493, baseType: !7, size: 32, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1184, file: !1137, line: 494, baseType: !131, size: 16, offset: 288)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1184, file: !1137, line: 495, baseType: !131, size: 16, offset: 304)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1184, file: !1137, line: 497, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1136, file: !1137, line: 697, baseType: !1195, size: 1792, offset: 1792)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1137, line: 507, size: 1792, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1276, !1277}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1195, file: !1137, line: 508, baseType: !679, size: 192, align: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1195, file: !1137, line: 515, baseType: !340, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1195, file: !1137, line: 516, baseType: !340, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1195, file: !1137, line: 517, baseType: !340, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1195, file: !1137, line: 518, baseType: !340, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1195, file: !1137, line: 519, baseType: !340, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1195, file: !1137, line: 526, baseType: !696, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1195, file: !1137, line: 527, baseType: !340, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !1137, line: 528, baseType: !7, size: 32, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1195, file: !1137, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1195, file: !1137, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1195, file: !1137, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1195, file: !1137, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1195, file: !1137, line: 563, baseType: !1211, size: 512, offset: 704)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1212)
!1212 = !{!1213, !1221, !1222, !1227, !1270, !1273, !1274, !1275}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1211, file: !20, line: 119, baseType: !1214, size: 256)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1215, line: 9, size: 256, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1214, file: !1215, line: 10, baseType: !679, size: 192, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1214, file: !1215, line: 11, baseType: !1219, size: 64, offset: 192)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1220, line: 29, baseType: !696)
!1220 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1211, file: !20, line: 120, baseType: !1219, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1211, file: !20, line: 121, baseType: !1223, size: 64, offset: 320)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!19, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1211, file: !20, line: 122, baseType: !1228, size: 64, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1230)
!1230 = !{!1231, !1251, !1252, !1255, !1260, !1261, !1265, !1269}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1229, file: !20, line: 160, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !20, line: 215, baseType: !699)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1233, file: !20, line: 216, baseType: !7, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1233, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1233, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1233, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1233, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1233, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1233, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1233, file: !20, line: 233, baseType: !1219, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1233, file: !20, line: 234, baseType: !1226, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1233, file: !20, line: 235, baseType: !1219, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1233, file: !20, line: 236, baseType: !1226, size: 64, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1233, file: !20, line: 237, baseType: !1248, size: 4096, offset: 512)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1229, size: 4096, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 8)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1229, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1229, file: !20, line: 162, baseType: !1253, size: 32, offset: 96)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 27, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !138, line: 96, baseType: !189)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1229, file: !20, line: 163, baseType: !1256, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !307, line: 276, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !307, line: 276, size: 32, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1257, file: !307, line: 276, baseType: !311, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1229, file: !20, line: 164, baseType: !1226, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1229, file: !20, line: 165, baseType: !1262, size: 128, offset: 256)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1215, line: 14, size: 128, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1262, file: !1215, line: 15, baseType: !671, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1229, file: !20, line: 166, baseType: !1266, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!1219}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1229, file: !20, line: 167, baseType: !1219, size: 64, offset: 448)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1211, file: !20, line: 123, baseType: !1271, size: 8, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !335, line: 17, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !337, line: 21, baseType: !346)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1211, file: !20, line: 124, baseType: !1271, size: 8, offset: 456)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1211, file: !20, line: 125, baseType: !1271, size: 8, offset: 464)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1211, file: !20, line: 126, baseType: !1271, size: 8, offset: 472)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1195, file: !1137, line: 572, baseType: !1211, size: 512, offset: 1216)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1195, file: !1137, line: 580, baseType: !1278, size: 64, offset: 1728)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1136, file: !1137, line: 721, baseType: !7, size: 32, offset: 3584)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1136, file: !1137, line: 722, baseType: !189, size: 32, offset: 3616)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1136, file: !1137, line: 723, baseType: !1282, size: 64, offset: 3648)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1285, line: 17, baseType: !1286)
!1285 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1285, line: 17, size: 64, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1286, file: !1285, line: 17, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 64, elements: !1290)
!1290 = !{!1291}
!1291 = !DISubrange(count: 1)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1136, file: !1137, line: 724, baseType: !1284, size: 64, offset: 3712)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1136, file: !1137, line: 749, baseType: !1294, offset: 3776)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1137, line: 290, elements: !177)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1136, file: !1137, line: 751, baseType: !150, size: 128, offset: 3776)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1136, file: !1137, line: 757, baseType: !893, size: 64, offset: 3904)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1136, file: !1137, line: 758, baseType: !893, size: 64, offset: 3968)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1136, file: !1137, line: 761, baseType: !1299, size: 320, offset: 4032)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1070, line: 34, size: 320, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1299, file: !1070, line: 35, baseType: !340, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1299, file: !1070, line: 36, baseType: !1303, size: 256, offset: 64)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 256, elements: !1074)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1136, file: !1137, line: 766, baseType: !189, size: 32, offset: 4352)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1136, file: !1137, line: 767, baseType: !189, size: 32, offset: 4384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1136, file: !1137, line: 768, baseType: !189, size: 32, offset: 4416)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1136, file: !1137, line: 770, baseType: !189, size: 32, offset: 4448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1136, file: !1137, line: 772, baseType: !243, size: 64, offset: 4480)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1136, file: !1137, line: 775, baseType: !7, size: 32, offset: 4544)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1136, file: !1137, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1136, file: !1137, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1136, file: !1137, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1136, file: !1137, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1136, file: !1137, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1136, file: !1137, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1136, file: !1137, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1136, file: !1137, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1136, file: !1137, line: 831, baseType: !243, size: 64, offset: 4672)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1136, file: !1137, line: 833, baseType: !1320, size: 384, offset: 4736)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1321)
!1321 = !{!1322, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1320, file: !25, line: 26, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!140, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, scope: !1320, file: !25, line: 27, baseType: !1328, size: 320, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1320, file: !25, line: 27, size: 320, elements: !1329)
!1329 = !{!1330, !1340, !1367}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1328, file: !25, line: 36, baseType: !1331, size: 320)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 29, size: 320, elements: !1332)
!1332 = !{!1333, !1335, !1336, !1337, !1338, !1339}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1331, file: !25, line: 30, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1331, file: !25, line: 31, baseType: !334, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1331, file: !25, line: 32, baseType: !334, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1331, file: !25, line: 33, baseType: !334, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1331, file: !25, line: 34, baseType: !340, size: 64, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1331, file: !25, line: 35, baseType: !1334, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1328, file: !25, line: 46, baseType: !1341, size: 192)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 38, size: 192, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1366}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1341, file: !25, line: 39, baseType: !1253, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1341, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !25, line: 41, baseType: !1346, size: 64, offset: 64)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !25, line: 41, size: 64, elements: !1347)
!1347 = !{!1348, !1356}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1346, file: !25, line: 42, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1351, line: 7, size: 128, elements: !1352)
!1351 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !{!1353, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1350, file: !1351, line: 8, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !138, line: 93, baseType: !452)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1350, file: !1351, line: 9, baseType: !452, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1346, file: !25, line: 43, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1359, line: 7, size: 64, elements: !1360)
!1359 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1365}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1358, file: !1359, line: 8, baseType: !1362, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1359, line: 5, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !335, line: 20, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !337, line: 26, baseType: !189)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1358, file: !1359, line: 9, baseType: !1363, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1341, file: !25, line: 45, baseType: !340, size: 64, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1328, file: !25, line: 54, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1328, file: !25, line: 48, size: 256, elements: !1369)
!1369 = !{!1370, !1373, !1374, !1375, !1376}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1368, file: !25, line: 49, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1368, file: !25, line: 50, baseType: !189, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1368, file: !25, line: 51, baseType: !189, size: 32, offset: 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1368, file: !25, line: 52, baseType: !243, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1368, file: !25, line: 53, baseType: !243, size: 64, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1136, file: !1137, line: 835, baseType: !1378, size: 32, offset: 5120)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !113, line: 22, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !138, line: 28, baseType: !189)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1136, file: !1137, line: 836, baseType: !1378, size: 32, offset: 5152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1136, file: !1137, line: 840, baseType: !243, size: 64, offset: 5184)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1136, file: !1137, line: 849, baseType: !1135, size: 64, offset: 5248)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1136, file: !1137, line: 852, baseType: !1135, size: 64, offset: 5312)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1136, file: !1137, line: 857, baseType: !150, size: 128, offset: 5376)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1136, file: !1137, line: 858, baseType: !150, size: 128, offset: 5504)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1136, file: !1137, line: 859, baseType: !1135, size: 64, offset: 5632)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1136, file: !1137, line: 867, baseType: !150, size: 128, offset: 5696)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1136, file: !1137, line: 868, baseType: !150, size: 128, offset: 5824)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1136, file: !1137, line: 871, baseType: !1390, size: 64, offset: 5952)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1398, !1399, !1406, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1391, file: !53, line: 61, baseType: !1149, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1391, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !53, line: 63, baseType: !163, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1391, file: !53, line: 65, baseType: !1397, size: 256, offset: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 256, elements: !1074)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1391, file: !53, line: 66, baseType: !554, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1391, file: !53, line: 68, baseType: !1400, size: 128, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1401, line: 40, baseType: !1402)
!1401 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1401, line: 36, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1402, file: !1401, line: 37, baseType: !163)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1402, file: !1401, line: 38, baseType: !150, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1391, file: !53, line: 69, baseType: !284, size: 128, align: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1391, file: !53, line: 70, baseType: !1408, size: 128, offset: 640)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1409, size: 128, elements: !1290)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1409, file: !53, line: 55, baseType: !189, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1409, file: !53, line: 56, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1136, file: !1137, line: 872, baseType: !1416, size: 512, offset: 6016)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 512, elements: !1074)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1136, file: !1137, line: 873, baseType: !150, size: 128, offset: 6528)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1136, file: !1137, line: 874, baseType: !150, size: 128, offset: 6656)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1136, file: !1137, line: 876, baseType: !1420, size: 64, offset: 6784)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1422, line: 26, size: 192, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1421, file: !1422, line: 27, baseType: !7, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1421, file: !1422, line: 28, baseType: !1426, size: 128, offset: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1427, line: 43, size: 128, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !1427, line: 44, baseType: !699)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1426, file: !1427, line: 45, baseType: !150, size: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1136, file: !1137, line: 879, baseType: !624, size: 64, offset: 6848)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1136, file: !1137, line: 882, baseType: !624, size: 64, offset: 6912)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1136, file: !1137, line: 884, baseType: !340, size: 64, offset: 6976)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1136, file: !1137, line: 885, baseType: !340, size: 64, offset: 7040)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1136, file: !1137, line: 890, baseType: !340, size: 64, offset: 7104)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1136, file: !1137, line: 891, baseType: !1437, size: 128, offset: 7168)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1137, line: 242, size: 128, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1437, file: !1137, line: 244, baseType: !340, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1437, file: !1137, line: 245, baseType: !340, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1437, file: !1137, line: 246, baseType: !699, offset: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1136, file: !1137, line: 900, baseType: !243, size: 64, offset: 7296)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1136, file: !1137, line: 901, baseType: !243, size: 64, offset: 7360)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1136, file: !1137, line: 904, baseType: !340, size: 64, offset: 7424)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1136, file: !1137, line: 907, baseType: !340, size: 64, offset: 7488)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1136, file: !1137, line: 910, baseType: !243, size: 64, offset: 7552)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1136, file: !1137, line: 911, baseType: !243, size: 64, offset: 7616)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1136, file: !1137, line: 914, baseType: !1449, size: 640, offset: 7680)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1450, line: 123, size: 640, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1458, !1459}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1449, file: !1450, line: 124, baseType: !1453, size: 576)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 576, elements: !206)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1450, line: 108, size: 192, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1454, file: !1450, line: 109, baseType: !340, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1454, file: !1450, line: 110, baseType: !1262, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1449, file: !1450, line: 125, baseType: !7, size: 32, offset: 576)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1449, file: !1450, line: 126, baseType: !7, size: 32, offset: 608)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1136, file: !1137, line: 917, baseType: !1461, size: 192, offset: 8320)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1450, line: 134, size: 192, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1461, file: !1450, line: 135, baseType: !284, size: 128, align: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1461, file: !1450, line: 136, baseType: !7, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1136, file: !1137, line: 923, baseType: !1466, size: 64, offset: 8512)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1469, line: 111, size: 1280, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1490, !1491, !1492, !1493, !1494, !1495, !1602, !1603, !1604, !1605, !1631, !1634, !1644}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1468, file: !1469, line: 112, baseType: !666, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1468, file: !1469, line: 120, baseType: !354, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1468, file: !1469, line: 121, baseType: !362, size: 32, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1468, file: !1469, line: 122, baseType: !354, size: 32, offset: 96)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1468, file: !1469, line: 123, baseType: !362, size: 32, offset: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1468, file: !1469, line: 124, baseType: !354, size: 32, offset: 160)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1468, file: !1469, line: 125, baseType: !362, size: 32, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1468, file: !1469, line: 126, baseType: !354, size: 32, offset: 224)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1468, file: !1469, line: 127, baseType: !362, size: 32, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1468, file: !1469, line: 128, baseType: !7, size: 32, offset: 288)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1468, file: !1469, line: 129, baseType: !1482, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1483, line: 26, baseType: !1484)
!1483 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1483, line: 24, size: 64, elements: !1485)
!1485 = !{!1486}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1484, file: !1483, line: 25, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 64, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 2)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1468, file: !1469, line: 130, baseType: !1482, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1468, file: !1469, line: 131, baseType: !1482, size: 64, offset: 448)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1468, file: !1469, line: 132, baseType: !1482, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1468, file: !1469, line: 133, baseType: !1482, size: 64, offset: 576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1468, file: !1469, line: 135, baseType: !346, size: 8, offset: 640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1468, file: !1469, line: 137, baseType: !1496, size: 64, offset: 704)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1498, line: 189, size: 1664, elements: !1499)
!1498 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1499 = !{!1500, !1501, !1504, !1509, !1510, !1513, !1514, !1519, !1520, !1521, !1522, !1524, !1525, !1526, !1527, !1528, !1566, !1587}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1497, file: !1498, line: 190, baseType: !1149, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1497, file: !1498, line: 191, baseType: !1502, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1498, line: 28, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !113, line: 98, baseType: !1363)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 192, baseType: !1505, size: 192, offset: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 192, size: 192, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1505, file: !1498, line: 193, baseType: !150, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1505, file: !1498, line: 194, baseType: !679, size: 192, align: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1497, file: !1498, line: 199, baseType: !686, size: 256, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1497, file: !1498, line: 200, baseType: !1511, size: 64, offset: 512)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1498, line: 200, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1497, file: !1498, line: 201, baseType: !108, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 202, baseType: !1515, size: 64, offset: 640)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 202, size: 64, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1515, file: !1498, line: 203, baseType: !458, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1515, file: !1498, line: 204, baseType: !458, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1497, file: !1498, line: 206, baseType: !458, size: 64, offset: 704)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1497, file: !1498, line: 207, baseType: !354, size: 32, offset: 768)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1497, file: !1498, line: 208, baseType: !362, size: 32, offset: 800)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1497, file: !1498, line: 209, baseType: !1523, size: 32, offset: 832)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1498, line: 31, baseType: !478)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1497, file: !1498, line: 210, baseType: !131, size: 16, offset: 864)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1497, file: !1498, line: 211, baseType: !131, size: 16, offset: 880)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1497, file: !1498, line: 215, baseType: !1124, size: 16, offset: 896)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1497, file: !1498, line: 222, baseType: !243, size: 64, offset: 960)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 239, baseType: !1529, size: 320, offset: 1024)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 239, size: 320, elements: !1530)
!1530 = !{!1531, !1558}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1529, file: !1498, line: 240, baseType: !1532, size: 320)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1498, line: 108, size: 320, elements: !1533)
!1533 = !{!1534, !1535, !1547, !1550, !1557}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1532, file: !1498, line: 110, baseType: !243, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, scope: !1532, file: !1498, line: 111, baseType: !1536, size: 64, offset: 64)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1532, file: !1498, line: 111, size: 64, elements: !1537)
!1537 = !{!1538, !1546}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1536, file: !1498, line: 112, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1536, file: !1498, line: 112, size: 64, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1539, file: !1498, line: 114, baseType: !778, size: 16)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1539, file: !1498, line: 115, baseType: !1543, size: 48, offset: 16)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 48, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 6)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1536, file: !1498, line: 121, baseType: !243, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1532, file: !1498, line: 123, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1498, line: 96, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1532, file: !1498, line: 124, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1498, line: 102, size: 192, elements: !1553)
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1552, file: !1498, line: 103, baseType: !284, size: 128, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1552, file: !1498, line: 104, baseType: !1149, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1552, file: !1498, line: 105, baseType: !409, size: 8, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1532, file: !1498, line: 125, baseType: !126, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !1498, line: 241, baseType: !1559, size: 320)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !1498, line: 241, size: 320, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1559, file: !1498, line: 242, baseType: !243, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1559, file: !1498, line: 243, baseType: !243, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !1498, line: 244, baseType: !1548, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1559, file: !1498, line: 245, baseType: !1551, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1559, file: !1498, line: 246, baseType: !205, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1498, line: 254, baseType: !1567, size: 256, offset: 1344)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1497, file: !1498, line: 254, size: 256, elements: !1568)
!1568 = !{!1569, !1575}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1567, file: !1498, line: 255, baseType: !1570, size: 256)
!1570 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1498, line: 128, size: 256, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1570, file: !1498, line: 129, baseType: !108, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1498, line: 130, baseType: !1574, size: 256)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1074)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !1498, line: 256, baseType: !1576, size: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !1498, line: 256, size: 256, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1576, file: !1498, line: 258, baseType: !150, size: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1576, file: !1498, line: 259, baseType: !1580, size: 128, offset: 128)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1581, line: 22, size: 128, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !{!1583, !1586}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1580, file: !1581, line: 23, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1581, line: 23, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1580, file: !1581, line: 24, baseType: !243, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1497, file: !1498, line: 274, baseType: !1588, size: 64, offset: 1600)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1498, line: 170, size: 192, elements: !1590)
!1590 = !{!1591, !1600, !1601}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1589, file: !1498, line: 171, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1498, line: 165, baseType: !1593)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!189, !1496, !1596, !1598, !1496}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1589, file: !1498, line: 172, baseType: !1496, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1589, file: !1498, line: 173, baseType: !1548, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1468, file: !1469, line: 138, baseType: !1496, size: 64, offset: 768)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1468, file: !1469, line: 139, baseType: !1496, size: 64, offset: 832)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1468, file: !1469, line: 140, baseType: !1496, size: 64, offset: 896)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1468, file: !1469, line: 145, baseType: !1606, size: 64, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1608, line: 13, size: 896, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1607, file: !1608, line: 14, baseType: !1149, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1607, file: !1608, line: 15, baseType: !666, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1607, file: !1608, line: 16, baseType: !666, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1607, file: !1608, line: 21, baseType: !690, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1607, file: !1608, line: 27, baseType: !243, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1607, file: !1608, line: 28, baseType: !243, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1607, file: !1608, line: 29, baseType: !690, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1607, file: !1608, line: 32, baseType: !558, size: 128, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1607, file: !1608, line: 33, baseType: !354, size: 32, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1607, file: !1608, line: 37, baseType: !690, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1607, file: !1608, line: 44, baseType: !1621, size: 256, offset: 640)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1622, line: 15, size: 256, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1621, file: !1622, line: 16, baseType: !699)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1621, file: !1622, line: 18, baseType: !189, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1621, file: !1622, line: 19, baseType: !189, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1621, file: !1622, line: 20, baseType: !189, size: 32, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1621, file: !1622, line: 21, baseType: !189, size: 32, offset: 96)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1621, file: !1622, line: 22, baseType: !243, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 23, baseType: !243, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1468, file: !1469, line: 146, baseType: !1632, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !355, line: 18, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1468, file: !1469, line: 147, baseType: !1635, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1469, line: 25, size: 64, elements: !1637)
!1637 = !{!1638, !1639, !1640}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1636, file: !1469, line: 26, baseType: !666, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1636, file: !1469, line: 27, baseType: !189, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1636, file: !1469, line: 28, baseType: !1641, offset: 64)
!1641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, elements: !1642)
!1642 = !{!1643}
!1643 = !DISubrange(count: 0)
!1644 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1469, line: 149, baseType: !1645, size: 128, offset: 1152)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1469, line: 149, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1645, file: !1469, line: 150, baseType: !189, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1645, file: !1469, line: 151, baseType: !284, size: 128, align: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1136, file: !1137, line: 926, baseType: !1466, size: 64, offset: 8576)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1136, file: !1137, line: 929, baseType: !1466, size: 64, offset: 8640)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1136, file: !1137, line: 933, baseType: !1496, size: 64, offset: 8704)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1136, file: !1137, line: 943, baseType: !1653, size: 128, offset: 8768)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !1654)
!1654 = !{!1655}
!1655 = !DISubrange(count: 16)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1136, file: !1137, line: 945, baseType: !1657, size: 64, offset: 8896)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1137, line: 49, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1136, file: !1137, line: 956, baseType: !1660, size: 64, offset: 8960)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1137, line: 45, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1136, file: !1137, line: 959, baseType: !1663, size: 64, offset: 9024)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1137, line: 959, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1136, file: !1137, line: 962, baseType: !1666, size: 64, offset: 9088)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1137, line: 66, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1136, file: !1137, line: 966, baseType: !1669, size: 64, offset: 9152)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1671, line: 35, flags: DIFlagFwdDecl)
!1671 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1136, file: !1137, line: 969, baseType: !1673, size: 64, offset: 9216)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1675, line: 82, size: 7296, elements: !1676)
!1675 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1712, !1721, !1722, !1724, !1725, !1726, !1729, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1759, !1760, !1767, !1768, !1769, !1770, !1771, !1772}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1674, file: !1675, line: 83, baseType: !1149, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1674, file: !1675, line: 84, baseType: !666, size: 32, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1674, file: !1675, line: 85, baseType: !189, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1674, file: !1675, line: 86, baseType: !150, size: 128, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1674, file: !1675, line: 88, baseType: !1400, size: 128, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1674, file: !1675, line: 91, baseType: !1135, size: 64, offset: 384)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1674, file: !1675, line: 94, baseType: !1684, size: 192, offset: 448)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1685, line: 30, size: 192, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1684, file: !1685, line: 31, baseType: !150, size: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1684, file: !1685, line: 32, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1690, line: 25, baseType: !1691)
!1690 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 23, size: 64, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1691, file: !1690, line: 24, baseType: !1289, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1674, file: !1675, line: 97, baseType: !554, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1674, file: !1675, line: 100, baseType: !189, size: 32, offset: 704)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1674, file: !1675, line: 106, baseType: !189, size: 32, offset: 736)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1674, file: !1675, line: 107, baseType: !1135, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1674, file: !1675, line: 110, baseType: !189, size: 32, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1674, file: !1675, line: 111, baseType: !7, size: 32, offset: 864)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1674, file: !1675, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1674, file: !1675, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1674, file: !1675, line: 128, baseType: !189, size: 32, offset: 928)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1674, file: !1675, line: 129, baseType: !150, size: 128, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1674, file: !1675, line: 132, baseType: !1211, size: 512, offset: 1088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1674, file: !1675, line: 133, baseType: !1219, size: 64, offset: 1600)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1674, file: !1675, line: 140, baseType: !1707, size: 256, offset: 1664)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1708, size: 256, elements: !1488)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1675, line: 38, size: 128, elements: !1709)
!1709 = !{!1710, !1711}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1708, file: !1675, line: 39, baseType: !340, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1708, file: !1675, line: 40, baseType: !340, size: 64, offset: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1674, file: !1675, line: 146, baseType: !1713, size: 192, offset: 1920)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1675, line: 66, size: 192, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1713, file: !1675, line: 67, baseType: !1716, size: 192)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1675, line: 47, size: 192, elements: !1717)
!1717 = !{!1718, !1719, !1720}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1716, file: !1675, line: 48, baseType: !692, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1716, file: !1675, line: 49, baseType: !692, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1716, file: !1675, line: 50, baseType: !692, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1674, file: !1675, line: 150, baseType: !1449, size: 640, offset: 2112)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1674, file: !1675, line: 153, baseType: !1723, size: 256, offset: 2752)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 256, elements: !1074)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1674, file: !1675, line: 159, baseType: !1390, size: 64, offset: 3008)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1674, file: !1675, line: 162, baseType: !189, size: 32, offset: 3072)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1674, file: !1675, line: 164, baseType: !1727, size: 64, offset: 3136)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1675, line: 164, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1674, file: !1675, line: 175, baseType: !1730, size: 32, offset: 3200)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !307, line: 805, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 798, size: 32, elements: !1732)
!1732 = !{!1733, !1734}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1731, file: !307, line: 803, baseType: !306, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1731, file: !307, line: 804, baseType: !163, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3264)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3328)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3392)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1674, file: !1675, line: 176, baseType: !340, size: 64, offset: 3456)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1674, file: !1675, line: 177, baseType: !340, size: 64, offset: 3520)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1674, file: !1675, line: 178, baseType: !340, size: 64, offset: 3584)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1674, file: !1675, line: 179, baseType: !1437, size: 128, offset: 3648)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1674, file: !1675, line: 180, baseType: !243, size: 64, offset: 3776)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1674, file: !1675, line: 180, baseType: !243, size: 64, offset: 3840)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1674, file: !1675, line: 180, baseType: !243, size: 64, offset: 3904)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1674, file: !1675, line: 180, baseType: !243, size: 64, offset: 3968)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1674, file: !1675, line: 181, baseType: !243, size: 64, offset: 4032)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1674, file: !1675, line: 181, baseType: !243, size: 64, offset: 4096)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1674, file: !1675, line: 181, baseType: !243, size: 64, offset: 4160)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1674, file: !1675, line: 181, baseType: !243, size: 64, offset: 4224)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1674, file: !1675, line: 182, baseType: !243, size: 64, offset: 4288)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1674, file: !1675, line: 182, baseType: !243, size: 64, offset: 4352)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1674, file: !1675, line: 182, baseType: !243, size: 64, offset: 4416)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1674, file: !1675, line: 182, baseType: !243, size: 64, offset: 4480)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1674, file: !1675, line: 183, baseType: !243, size: 64, offset: 4544)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1674, file: !1675, line: 183, baseType: !243, size: 64, offset: 4608)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1674, file: !1675, line: 184, baseType: !1757, offset: 4672)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1758, line: 12, elements: !177)
!1758 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1674, file: !1675, line: 192, baseType: !342, size: 64, offset: 4672)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1674, file: !1675, line: 203, baseType: !1761, size: 2048, offset: 4736)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1762, size: 2048, elements: !1654)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1763, line: 43, size: 128, elements: !1764)
!1763 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1762, file: !1763, line: 44, baseType: !242, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1762, file: !1763, line: 45, baseType: !242, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1674, file: !1675, line: 220, baseType: !409, size: 8, offset: 6784)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1674, file: !1675, line: 221, baseType: !1124, size: 16, offset: 6800)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1674, file: !1675, line: 222, baseType: !1124, size: 16, offset: 6816)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1674, file: !1675, line: 224, baseType: !893, size: 64, offset: 6848)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1674, file: !1675, line: 227, baseType: !1092, size: 192, offset: 6912)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1674, file: !1675, line: 233, baseType: !1092, size: 192, offset: 7104)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1136, file: !1137, line: 970, baseType: !1774, size: 64, offset: 9280)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1675, line: 20, size: 16576, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1775, file: !1675, line: 21, baseType: !163)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1775, file: !1675, line: 22, baseType: !1149, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1775, file: !1675, line: 23, baseType: !1400, size: 128, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1775, file: !1675, line: 24, baseType: !1781, size: 16384, offset: 192)
!1781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 16384, elements: !210)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1685, line: 49, size: 256, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1782, file: !1685, line: 50, baseType: !1785, size: 256)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1685, line: 35, size: 256, elements: !1786)
!1786 = !{!1787, !1794, !1795, !1801}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1785, file: !1685, line: 37, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1789, line: 19, baseType: !1790)
!1789 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1789, line: 18, baseType: !1792)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !189}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1785, file: !1685, line: 38, baseType: !243, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1785, file: !1685, line: 44, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1789, line: 22, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1789, line: 21, baseType: !1799)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1785, file: !1685, line: 46, baseType: !1689, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1136, file: !1137, line: 971, baseType: !1689, size: 64, offset: 9344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1136, file: !1137, line: 972, baseType: !1689, size: 64, offset: 9408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1136, file: !1137, line: 974, baseType: !1689, size: 64, offset: 9472)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1136, file: !1137, line: 975, baseType: !1684, size: 192, offset: 9536)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1136, file: !1137, line: 976, baseType: !243, size: 64, offset: 9728)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1136, file: !1137, line: 977, baseType: !240, size: 64, offset: 9792)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1136, file: !1137, line: 978, baseType: !7, size: 32, offset: 9856)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1136, file: !1137, line: 980, baseType: !287, size: 64, offset: 9920)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1136, file: !1137, line: 989, baseType: !1811, size: 128, offset: 9984)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1812, line: 35, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1811, file: !1812, line: 36, baseType: !189, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1811, file: !1812, line: 37, baseType: !666, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1811, file: !1812, line: 38, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1812, line: 23, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1136, file: !1137, line: 992, baseType: !340, size: 64, offset: 10112)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1136, file: !1137, line: 993, baseType: !340, size: 64, offset: 10176)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1136, file: !1137, line: 996, baseType: !163, offset: 10240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1136, file: !1137, line: 999, baseType: !699, offset: 10240)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1136, file: !1137, line: 1001, baseType: !1824, size: 64, offset: 10240)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1137, line: 636, size: 64, elements: !1825)
!1825 = !{!1826}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1824, file: !1137, line: 637, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1136, file: !1137, line: 1005, baseType: !671, size: 128, offset: 10304)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1136, file: !1137, line: 1007, baseType: !1135, size: 64, offset: 10432)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1136, file: !1137, line: 1009, baseType: !1831, size: 64, offset: 10496)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1137, line: 1009, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1136, file: !1137, line: 1043, baseType: !108, size: 64, offset: 10560)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1136, file: !1137, line: 1046, baseType: !1835, size: 64, offset: 10624)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1137, line: 41, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1136, file: !1137, line: 1050, baseType: !1838, size: 64, offset: 10688)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1137, line: 42, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1136, file: !1137, line: 1054, baseType: !1841, size: 64, offset: 10752)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1137, line: 55, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1136, file: !1137, line: 1056, baseType: !1844, size: 64, offset: 10816)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1137, line: 40, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1136, file: !1137, line: 1058, baseType: !1847, size: 64, offset: 10880)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1849, line: 99, size: 704, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857, !1876, !1877}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1848, file: !1849, line: 100, baseType: !690, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1848, file: !1849, line: 101, baseType: !666, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1848, file: !1849, line: 102, baseType: !666, size: 32, offset: 96)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1848, file: !1849, line: 105, baseType: !163, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1848, file: !1849, line: 107, baseType: !131, size: 16, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1848, file: !1849, line: 109, baseType: !658, size: 128, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1848, file: !1849, line: 110, baseType: !1858, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1849, line: 73, size: 448, elements: !1860)
!1860 = !{!1861, !1864, !1865, !1870, !1875}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1859, file: !1849, line: 74, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1849, line: 74, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1859, file: !1849, line: 75, baseType: !1847, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1849, line: 83, baseType: !1866, size: 128, offset: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1849, line: 83, size: 128, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1866, file: !1849, line: 84, baseType: !150, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1866, file: !1849, line: 85, baseType: !854, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1859, file: !1849, line: 87, baseType: !1871, size: 128, offset: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1859, file: !1849, line: 87, size: 128, elements: !1872)
!1872 = !{!1873, !1874}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1871, file: !1849, line: 88, baseType: !558, size: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1871, file: !1849, line: 89, baseType: !284, size: 128, align: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1859, file: !1849, line: 92, baseType: !7, size: 32, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1848, file: !1849, line: 111, baseType: !554, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1848, file: !1849, line: 113, baseType: !1878, size: 256, offset: 448)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1879, line: 102, size: 256, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1882, !1883}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1878, file: !1879, line: 103, baseType: !690, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1878, file: !1879, line: 104, baseType: !150, size: 128, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1878, file: !1879, line: 105, baseType: !1884, size: 64, offset: 192)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1879, line: 21, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1136, file: !1137, line: 1061, baseType: !1890, size: 64, offset: 10944)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1137, line: 43, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1136, file: !1137, line: 1064, baseType: !243, size: 64, offset: 11008)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1136, file: !1137, line: 1065, baseType: !1894, size: 64, offset: 11072)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1685, line: 14, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1685, line: 12, size: 384, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1896, file: !1685, line: 13, baseType: !1899, size: 384)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !1685, line: 13, size: 384, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1899, file: !1685, line: 13, baseType: !189, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1899, file: !1685, line: 13, baseType: !189, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1899, file: !1685, line: 13, baseType: !189, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1899, file: !1685, line: 13, baseType: !1905, size: 256, offset: 128)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1906, line: 32, size: 256, elements: !1907)
!1906 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1913, !1926, !1932, !1941, !1961, !1966}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1905, file: !1906, line: 37, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 34, size: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1909, file: !1906, line: 35, baseType: !1379, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1909, file: !1906, line: 36, baseType: !360, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1905, file: !1906, line: 45, baseType: !1914, size: 192)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 40, size: 192, elements: !1915)
!1915 = !{!1916, !1918, !1919, !1925}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1914, file: !1906, line: 41, baseType: !1917, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !138, line: 95, baseType: !189)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1914, file: !1906, line: 42, baseType: !189, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1914, file: !1906, line: 43, baseType: !1920, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1906, line: 11, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1906, line: 8, size: 64, elements: !1922)
!1922 = !{!1923, !1924}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1921, file: !1906, line: 9, baseType: !189, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1921, file: !1906, line: 10, baseType: !108, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1914, file: !1906, line: 44, baseType: !189, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1905, file: !1906, line: 52, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 48, size: 128, elements: !1928)
!1928 = !{!1929, !1930, !1931}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1927, file: !1906, line: 49, baseType: !1379, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1927, file: !1906, line: 50, baseType: !360, size: 32, offset: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1927, file: !1906, line: 51, baseType: !1920, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1905, file: !1906, line: 61, baseType: !1933, size: 256)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 55, size: 256, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1940}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1933, file: !1906, line: 56, baseType: !1379, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1933, file: !1906, line: 57, baseType: !360, size: 32, offset: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1933, file: !1906, line: 58, baseType: !189, size: 32, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1933, file: !1906, line: 59, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !138, line: 94, baseType: !139)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1933, file: !1906, line: 60, baseType: !1939, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1905, file: !1906, line: 95, baseType: !1942, size: 256)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 64, size: 256, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1942, file: !1906, line: 65, baseType: !108, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !1906, line: 77, baseType: !1946, size: 192, offset: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !1906, line: 77, size: 192, elements: !1947)
!1947 = !{!1948, !1949, !1956}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1946, file: !1906, line: 82, baseType: !1124, size: 16)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1946, file: !1906, line: 88, baseType: !1950, size: 192)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1906, line: 84, size: 192, elements: !1951)
!1951 = !{!1952, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1950, file: !1906, line: 85, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !1249)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1950, file: !1906, line: 86, baseType: !108, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1950, file: !1906, line: 87, baseType: !108, size: 64, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1946, file: !1906, line: 93, baseType: !1957, size: 96)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1946, file: !1906, line: 90, size: 96, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1957, file: !1906, line: 91, baseType: !1953, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1957, file: !1906, line: 92, baseType: !336, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1905, file: !1906, line: 101, baseType: !1962, size: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 98, size: 128, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1962, file: !1906, line: 99, baseType: !140, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1962, file: !1906, line: 100, baseType: !189, size: 32, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1905, file: !1906, line: 108, baseType: !1967, size: 128)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1906, line: 104, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1967, file: !1906, line: 105, baseType: !108, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1967, file: !1906, line: 106, baseType: !189, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1967, file: !1906, line: 107, baseType: !7, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1136, file: !1137, line: 1067, baseType: !1757, offset: 11136)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1136, file: !1137, line: 1099, baseType: !1974, size: 64, offset: 11136)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1137, line: 56, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1136, file: !1137, line: 1103, baseType: !150, size: 128, offset: 11200)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1136, file: !1137, line: 1104, baseType: !1978, size: 64, offset: 11328)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1137, line: 46, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1136, file: !1137, line: 1105, baseType: !1092, size: 192, offset: 11392)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1136, file: !1137, line: 1106, baseType: !7, size: 32, offset: 11584)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1136, file: !1137, line: 1109, baseType: !1983, size: 128, offset: 11648)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 128, elements: !1488)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1137, line: 51, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1136, file: !1137, line: 1110, baseType: !1092, size: 192, offset: 11776)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1136, file: !1137, line: 1111, baseType: !150, size: 128, offset: 11968)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1136, file: !1137, line: 1173, baseType: !1989, size: 64, offset: 12096)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1991, line: 62, size: 256, align: 256, elements: !1992)
!1991 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1992 = !{!1993, !1994, !1995, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1990, file: !1991, line: 75, baseType: !336, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1990, file: !1991, line: 90, baseType: !336, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1990, file: !1991, line: 124, baseType: !1996, size: 64, offset: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1990, file: !1991, line: 109, size: 64, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1996, file: !1991, line: 110, baseType: !341, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1996, file: !1991, line: 112, baseType: !341, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1990, file: !1991, line: 144, baseType: !336, size: 32, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1136, file: !1137, line: 1174, baseType: !334, size: 32, offset: 12160)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1136, file: !1137, line: 1179, baseType: !243, size: 64, offset: 12224)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1136, file: !1137, line: 1182, baseType: !2004, size: 128, offset: 12288)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1070, line: 76, size: 128, elements: !2005)
!2005 = !{!2006, !2011, !2012}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2004, file: !1070, line: 85, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2008, line: 7, size: 64, elements: !2009)
!2008 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2007, file: !2008, line: 12, baseType: !1286, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2004, file: !1070, line: 88, baseType: !409, size: 8, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2004, file: !1070, line: 95, baseType: !409, size: 8, offset: 72)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !1136, file: !1137, line: 1184, baseType: !2014, size: 128, offset: 12416)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1136, file: !1137, line: 1184, size: 128, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2014, file: !1137, line: 1185, baseType: !1149, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2014, file: !1137, line: 1186, baseType: !284, size: 128, align: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1136, file: !1137, line: 1190, baseType: !2019, size: 64, offset: 12544)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1137, line: 53, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1136, file: !1137, line: 1192, baseType: !2022, size: 128, offset: 12608)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1070, line: 64, size: 128, elements: !2023)
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2022, file: !1070, line: 65, baseType: !640, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2022, file: !1070, line: 67, baseType: !336, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2022, file: !1070, line: 68, baseType: !336, size: 32, offset: 96)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1136, file: !1137, line: 1206, baseType: !189, size: 32, offset: 12736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1136, file: !1137, line: 1207, baseType: !189, size: 32, offset: 12768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1136, file: !1137, line: 1209, baseType: !243, size: 64, offset: 12800)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1136, file: !1137, line: 1219, baseType: !340, size: 64, offset: 12864)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1136, file: !1137, line: 1220, baseType: !340, size: 64, offset: 12928)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1136, file: !1137, line: 1317, baseType: !189, size: 32, offset: 12992)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1136, file: !1137, line: 1319, baseType: !1135, size: 64, offset: 13056)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1136, file: !1137, line: 1322, baseType: !2035, size: 64, offset: 13120)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2037, line: 56, size: 512, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2036, file: !2037, line: 57, baseType: !2035, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2036, file: !2037, line: 58, baseType: !108, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2036, file: !2037, line: 59, baseType: !243, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2036, file: !2037, line: 60, baseType: !243, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2036, file: !2037, line: 61, baseType: !739, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2036, file: !2037, line: 62, baseType: !7, size: 32, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2036, file: !2037, line: 63, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !113, line: 153, baseType: !340)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2036, file: !2037, line: 64, baseType: !2048, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1136, file: !1137, line: 1326, baseType: !1149, size: 32, offset: 13184)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1136, file: !1137, line: 1342, baseType: !108, size: 64, offset: 13248)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1136, file: !1137, line: 1343, baseType: !341, size: 64, offset: 13312)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1136, file: !1137, line: 1344, baseType: !340, size: 64, offset: 13376)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1136, file: !1137, line: 1345, baseType: !341, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1136, file: !1137, line: 1346, baseType: !341, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1136, file: !1137, line: 1347, baseType: !341, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1136, file: !1137, line: 1348, baseType: !284, size: 128, align: 64, offset: 13504)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1136, file: !1137, line: 1358, baseType: !2059, size: 34816, offset: 13824)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2060, line: 485, size: 34816, elements: !2061)
!2060 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2061 = !{!2062, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2091, !2092, !2093, !2094, !2095, !2096, !2099, !2100, !2101}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2059, file: !2060, line: 487, baseType: !2063, size: 192)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 192, elements: !206)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2065, line: 16, size: 64, elements: !2066)
!2065 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2064, file: !2065, line: 17, baseType: !778, size: 16)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2064, file: !2065, line: 18, baseType: !778, size: 16, offset: 16)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2064, file: !2065, line: 19, baseType: !778, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2064, file: !2065, line: 19, baseType: !778, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2064, file: !2065, line: 19, baseType: !778, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2064, file: !2065, line: 19, baseType: !778, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2064, file: !2065, line: 19, baseType: !778, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2064, file: !2065, line: 20, baseType: !778, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2064, file: !2065, line: 20, baseType: !778, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2064, file: !2065, line: 20, baseType: !778, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2064, file: !2065, line: 20, baseType: !778, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2064, file: !2065, line: 20, baseType: !778, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2064, file: !2065, line: 20, baseType: !778, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2059, file: !2060, line: 491, baseType: !243, size: 64, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2059, file: !2060, line: 495, baseType: !131, size: 16, offset: 256)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2059, file: !2060, line: 496, baseType: !131, size: 16, offset: 272)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2059, file: !2060, line: 497, baseType: !131, size: 16, offset: 288)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2059, file: !2060, line: 498, baseType: !131, size: 16, offset: 304)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2059, file: !2060, line: 502, baseType: !243, size: 64, offset: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2059, file: !2060, line: 503, baseType: !243, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2059, file: !2060, line: 514, baseType: !2088, size: 256, offset: 448)
!2088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2089, size: 256, elements: !1074)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2060, line: 483, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2059, file: !2060, line: 516, baseType: !243, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2059, file: !2060, line: 518, baseType: !243, size: 64, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2059, file: !2060, line: 520, baseType: !243, size: 64, offset: 832)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2059, file: !2060, line: 521, baseType: !243, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2059, file: !2060, line: 522, baseType: !243, size: 64, offset: 960)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2059, file: !2060, line: 528, baseType: !2097, size: 64, offset: 1024)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2060, line: 10, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2059, file: !2060, line: 535, baseType: !243, size: 64, offset: 1088)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2059, file: !2060, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2059, file: !2060, line: 540, baseType: !2102, size: 33280, offset: 1536)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2103, line: 317, size: 33280, elements: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2104 = !{!2105, !2106, !2107}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2102, file: !2103, line: 330, baseType: !7, size: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2102, file: !2103, line: 337, baseType: !243, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2102, file: !2103, line: 348, baseType: !2108, size: 32768, offset: 512)
!2108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2103, line: 304, size: 32768, elements: !2109)
!2109 = !{!2110, !2125, !2164, !2214, !2227}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2108, file: !2103, line: 305, baseType: !2111, size: 896)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2103, line: 12, size: 896, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2124}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2111, file: !2103, line: 13, baseType: !334, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2111, file: !2103, line: 14, baseType: !334, size: 32, offset: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2111, file: !2103, line: 15, baseType: !334, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2111, file: !2103, line: 16, baseType: !334, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2111, file: !2103, line: 17, baseType: !334, size: 32, offset: 128)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2111, file: !2103, line: 18, baseType: !334, size: 32, offset: 160)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2111, file: !2103, line: 19, baseType: !334, size: 32, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2111, file: !2103, line: 22, baseType: !2121, size: 640, offset: 224)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 640, elements: !2122)
!2122 = !{!2123}
!2123 = !DISubrange(count: 20)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2111, file: !2103, line: 25, baseType: !334, size: 32, offset: 864)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2108, file: !2103, line: 306, baseType: !2126, size: 4096, align: 128)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2103, line: 34, size: 4096, align: 128, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2147, !2148, !2149, !2153, !2155, !2159}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2126, file: !2103, line: 35, baseType: !778, size: 16)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2126, file: !2103, line: 36, baseType: !778, size: 16, offset: 16)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2126, file: !2103, line: 37, baseType: !778, size: 16, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2126, file: !2103, line: 38, baseType: !778, size: 16, offset: 48)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2103, line: 39, baseType: !2133, size: 128, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !2103, line: 39, size: 128, elements: !2134)
!2134 = !{!2135, !2140}
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2103, line: 40, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2103, line: 40, size: 128, elements: !2137)
!2137 = !{!2138, !2139}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2136, file: !2103, line: 41, baseType: !340, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2136, file: !2103, line: 42, baseType: !340, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !2103, line: 44, baseType: !2141, size: 128)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2133, file: !2103, line: 44, size: 128, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2141, file: !2103, line: 45, baseType: !334, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2141, file: !2103, line: 46, baseType: !334, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2141, file: !2103, line: 47, baseType: !334, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2141, file: !2103, line: 48, baseType: !334, size: 32, offset: 96)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2126, file: !2103, line: 51, baseType: !334, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2126, file: !2103, line: 52, baseType: !334, size: 32, offset: 224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2126, file: !2103, line: 55, baseType: !2150, size: 1024, offset: 256)
!2150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 1024, elements: !2151)
!2151 = !{!2152}
!2152 = !DISubrange(count: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2126, file: !2103, line: 58, baseType: !2154, size: 2048, offset: 1280)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 2048, elements: !210)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2126, file: !2103, line: 60, baseType: !2156, size: 384, offset: 3328)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 384, elements: !2157)
!2157 = !{!2158}
!2158 = !DISubrange(count: 12)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !2103, line: 62, baseType: !2160, size: 384, offset: 3712)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !2103, line: 62, size: 384, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2160, file: !2103, line: 63, baseType: !2156, size: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2160, file: !2103, line: 64, baseType: !2156, size: 384)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2108, file: !2103, line: 307, baseType: !2165, size: 1088)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2103, line: 79, size: 1088, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2213}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2165, file: !2103, line: 80, baseType: !334, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2165, file: !2103, line: 81, baseType: !334, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2165, file: !2103, line: 82, baseType: !334, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2165, file: !2103, line: 83, baseType: !334, size: 32, offset: 96)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2165, file: !2103, line: 84, baseType: !334, size: 32, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2165, file: !2103, line: 85, baseType: !334, size: 32, offset: 160)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2165, file: !2103, line: 86, baseType: !334, size: 32, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2165, file: !2103, line: 88, baseType: !2121, size: 640, offset: 224)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2165, file: !2103, line: 89, baseType: !1271, size: 8, offset: 864)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2165, file: !2103, line: 90, baseType: !1271, size: 8, offset: 872)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2165, file: !2103, line: 91, baseType: !1271, size: 8, offset: 880)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2165, file: !2103, line: 92, baseType: !1271, size: 8, offset: 888)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2165, file: !2103, line: 93, baseType: !1271, size: 8, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2165, file: !2103, line: 94, baseType: !1271, size: 8, offset: 904)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2165, file: !2103, line: 95, baseType: !2182, size: 64, offset: 960)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2184, line: 11, size: 128, elements: !2185)
!2184 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2183, file: !2184, line: 12, baseType: !140, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2183, file: !2184, line: 13, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2190, line: 56, size: 1344, elements: !2191)
!2190 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2189, file: !2190, line: 61, baseType: !243, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2189, file: !2190, line: 62, baseType: !243, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2189, file: !2190, line: 63, baseType: !243, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2189, file: !2190, line: 64, baseType: !243, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2189, file: !2190, line: 65, baseType: !243, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2189, file: !2190, line: 66, baseType: !243, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2189, file: !2190, line: 68, baseType: !243, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2189, file: !2190, line: 69, baseType: !243, size: 64, offset: 448)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2189, file: !2190, line: 70, baseType: !243, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2189, file: !2190, line: 71, baseType: !243, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2189, file: !2190, line: 72, baseType: !243, size: 64, offset: 640)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2189, file: !2190, line: 73, baseType: !243, size: 64, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2189, file: !2190, line: 74, baseType: !243, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2189, file: !2190, line: 75, baseType: !243, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2189, file: !2190, line: 76, baseType: !243, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2189, file: !2190, line: 81, baseType: !243, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2189, file: !2190, line: 83, baseType: !243, size: 64, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2189, file: !2190, line: 84, baseType: !243, size: 64, offset: 1088)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2189, file: !2190, line: 85, baseType: !243, size: 64, offset: 1152)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2189, file: !2190, line: 86, baseType: !243, size: 64, offset: 1216)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2189, file: !2190, line: 87, baseType: !243, size: 64, offset: 1280)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2165, file: !2103, line: 96, baseType: !334, size: 32, offset: 1024)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2108, file: !2103, line: 308, baseType: !2215, size: 4608, align: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2103, line: 289, size: 4608, align: 512, elements: !2216)
!2216 = !{!2217, !2218, !2225}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2215, file: !2103, line: 290, baseType: !2126, size: 4096, align: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2215, file: !2103, line: 291, baseType: !2219, size: 512, offset: 4096)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2103, line: 268, size: 512, elements: !2220)
!2220 = !{!2221, !2222, !2223}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2219, file: !2103, line: 269, baseType: !340, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2219, file: !2103, line: 270, baseType: !340, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2219, file: !2103, line: 271, baseType: !2224, size: 384, offset: 128)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 384, elements: !1544)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2215, file: !2103, line: 292, baseType: !2226, offset: 4608)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, elements: !1642)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2108, file: !2103, line: 309, baseType: !2228, size: 32768)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 32768, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 4096)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !642, line: 378, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1128, file: !642, line: 384, baseType: !1421, size: 192, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !897, file: !642, line: 500, baseType: !163, offset: 6656)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !897, file: !642, line: 501, baseType: !2236, size: 64, offset: 6656)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !642, line: 387, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !897, file: !642, line: 516, baseType: !1632, size: 64, offset: 6720)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !897, file: !642, line: 519, baseType: !271, size: 64, offset: 6784)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !897, file: !642, line: 521, baseType: !2241, size: 64, offset: 6848)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !642, line: 521, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !897, file: !642, line: 545, baseType: !666, size: 32, offset: 6912)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !897, file: !642, line: 548, baseType: !409, size: 8, offset: 6944)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !897, file: !642, line: 550, baseType: !2246, offset: 6952)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2247, line: 142, elements: !177)
!2247 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !897, file: !642, line: 554, baseType: !1878, size: 256, offset: 6976)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !897, file: !642, line: 557, baseType: !334, size: 32, offset: 7232)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !894, file: !642, line: 565, baseType: !2251, offset: 7296)
!2251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !2252)
!2252 = !{!2253}
!2253 = !DISubrange(count: -1)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !890, file: !642, line: 151, baseType: !666, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !883, file: !642, line: 156, baseType: !163, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !642, line: 159, baseType: !2257, size: 128)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !646, file: !642, line: 159, size: 128, elements: !2258)
!2258 = !{!2259, !2323}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2257, file: !642, line: 161, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2262)
!2262 = !{!2263, !2273, !2294, !2295, !2296, !2297, !2298, !2310, !2311, !2312}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2261, file: !31, line: 111, baseType: !2264, size: 384)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2265)
!2265 = !{!2266, !2268, !2269, !2270, !2271, !2272}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2264, file: !31, line: 20, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2264, file: !31, line: 21, baseType: !2267, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2264, file: !31, line: 22, baseType: !2267, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2264, file: !31, line: 23, baseType: !243, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2264, file: !31, line: 24, baseType: !243, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2264, file: !31, line: 25, baseType: !243, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2261, file: !31, line: 112, baseType: !2274, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2276, line: 105, size: 128, elements: !2277)
!2276 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2277 = !{!2278, !2279}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2275, file: !2276, line: 110, baseType: !243, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2275, file: !2276, line: 118, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2276, line: 95, size: 448, elements: !2282)
!2282 = !{!2283, !2284, !2289, !2290, !2291, !2292, !2293}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2281, file: !2276, line: 96, baseType: !690, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2281, file: !2276, line: 97, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2276, line: 60, baseType: !2287)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !2274}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2281, file: !2276, line: 98, baseType: !2285, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2281, file: !2276, line: 99, baseType: !409, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2281, file: !2276, line: 100, baseType: !409, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2281, file: !2276, line: 101, baseType: !284, size: 128, align: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2281, file: !2276, line: 102, baseType: !2274, size: 64, offset: 384)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2261, file: !31, line: 113, baseType: !2275, size: 128, offset: 448)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2261, file: !31, line: 114, baseType: !1421, size: 192, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2261, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2261, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2261, file: !31, line: 117, baseType: !2299, size: 64, offset: 832)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2302)
!2302 = !{!2303, !2304, !2308, !2309}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2301, file: !31, line: 73, baseType: !759, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2301, file: !31, line: 78, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{null, !2260}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2301, file: !31, line: 83, baseType: !2305, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2301, file: !31, line: 89, baseType: !946, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2261, file: !31, line: 118, baseType: !108, size: 64, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2261, file: !31, line: 119, baseType: !189, size: 32, offset: 960)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2261, file: !31, line: 120, baseType: !2313, size: 128, offset: 1024)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2261, file: !31, line: 120, size: 128, elements: !2314)
!2314 = !{!2315, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2313, file: !31, line: 121, baseType: !2316, size: 128)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2317, line: 6, size: 128, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2316, file: !2317, line: 7, baseType: !340, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2316, file: !2317, line: 8, baseType: !340, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2313, file: !31, line: 122, baseType: !2322)
!2322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, elements: !1642)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2257, file: !642, line: 162, baseType: !108, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !646, file: !642, line: 176, baseType: !284, size: 128, align: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !642, line: 179, baseType: !2326, size: 32, offset: 384)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !642, line: 179, size: 32, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2326, file: !642, line: 184, baseType: !666, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2326, file: !642, line: 192, baseType: !7, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2326, file: !642, line: 194, baseType: !7, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2326, file: !642, line: 195, baseType: !189, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !641, file: !642, line: 199, baseType: !666, size: 32, offset: 416)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !576, file: !44, line: 1964, baseType: !2334, size: 64, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!140, !518, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2339, line: 12, size: 256, elements: !2340)
!2339 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2340 = !{!2341, !2342, !2343, !2344, !2345}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2338, file: !2339, line: 13, baseType: !112, size: 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2338, file: !2339, line: 16, baseType: !189, size: 32, offset: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2338, file: !2339, line: 23, baseType: !243, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2338, file: !2339, line: 30, baseType: !243, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2338, file: !2339, line: 33, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !642, line: 27, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !576, file: !44, line: 1966, baseType: !2334, size: 64, offset: 1408)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !519, file: !44, line: 1424, baseType: !2350, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2353)
!2353 = !{!2354, !2400, !2404, !2408, !2409, !2410, !2411, !2412, !2417, !2422, !2426}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2352, file: !38, line: 323, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!189, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2385, !2386, !2387}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2359, file: !38, line: 295, baseType: !558, size: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2359, file: !38, line: 296, baseType: !150, size: 128, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2359, file: !38, line: 297, baseType: !150, size: 128, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2359, file: !38, line: 298, baseType: !150, size: 128, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2359, file: !38, line: 299, baseType: !1092, size: 192, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2359, file: !38, line: 300, baseType: !163, offset: 704)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2359, file: !38, line: 301, baseType: !666, size: 32, offset: 704)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2359, file: !38, line: 302, baseType: !518, size: 64, offset: 768)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2359, file: !38, line: 303, baseType: !2370, size: 64, offset: 832)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2371)
!2371 = !{!2372, !2384}
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2370, file: !38, line: 69, baseType: !2373, size: 32)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2370, file: !38, line: 69, size: 32, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2373, file: !38, line: 70, baseType: !354, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2373, file: !38, line: 71, baseType: !362, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2373, file: !38, line: 72, baseType: !2378, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2379, line: 24, baseType: !2380)
!2379 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2379, line: 22, size: 32, elements: !2381)
!2381 = !{!2382}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2380, file: !2379, line: 23, baseType: !2383, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2379, line: 20, baseType: !360)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2370, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2359, file: !38, line: 304, baseType: !450, size: 64, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2359, file: !38, line: 305, baseType: !243, size: 64, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2359, file: !38, line: 306, baseType: !2388, size: 576, offset: 1024)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2389)
!2389 = !{!2390, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2388, file: !38, line: 206, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !452)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2388, file: !38, line: 207, baseType: !2391, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2388, file: !38, line: 208, baseType: !2391, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2388, file: !38, line: 209, baseType: !2391, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2388, file: !38, line: 210, baseType: !2391, size: 64, offset: 256)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2388, file: !38, line: 211, baseType: !2391, size: 64, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2388, file: !38, line: 212, baseType: !2391, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2388, file: !38, line: 213, baseType: !458, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2388, file: !38, line: 214, baseType: !458, size: 64, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2352, file: !38, line: 324, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2358, !518, !189}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2352, file: !38, line: 325, baseType: !2405, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2358}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2352, file: !38, line: 326, baseType: !2355, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2352, file: !38, line: 327, baseType: !2355, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2352, file: !38, line: 328, baseType: !2355, size: 64, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2352, file: !38, line: 329, baseType: !604, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2352, file: !38, line: 332, baseType: !2413, size: 64, offset: 448)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2416, !348}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2352, file: !38, line: 333, baseType: !2418, size: 64, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!189, !348, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2352, file: !38, line: 335, baseType: !2423, size: 64, offset: 576)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!189, !348, !2416}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2352, file: !38, line: 337, baseType: !2427, size: 64, offset: 640)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!189, !518, !2430}
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !519, file: !44, line: 1425, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2434)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2435)
!2435 = !{!2436, !2440, !2441, !2445, !2446, !2447, !2462, !2485, !2489, !2490, !2513}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2434, file: !38, line: 429, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!189, !518, !189, !189, !468}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2434, file: !38, line: 430, baseType: !604, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2434, file: !38, line: 431, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!189, !518, !7}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2434, file: !38, line: 432, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2434, file: !38, line: 433, baseType: !604, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2434, file: !38, line: 434, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!189, !518, !189, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2452, file: !38, line: 416, baseType: !189, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2452, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2452, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2452, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2452, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2452, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2452, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2452, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2434, file: !38, line: 435, baseType: !2463, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!189, !518, !2370, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2467, file: !38, line: 344, baseType: !189, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2467, file: !38, line: 345, baseType: !340, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2467, file: !38, line: 346, baseType: !340, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2467, file: !38, line: 347, baseType: !340, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2467, file: !38, line: 348, baseType: !340, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2467, file: !38, line: 349, baseType: !340, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2467, file: !38, line: 350, baseType: !340, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2467, file: !38, line: 351, baseType: !696, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2467, file: !38, line: 353, baseType: !696, size: 64, offset: 512)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2467, file: !38, line: 354, baseType: !189, size: 32, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2467, file: !38, line: 355, baseType: !189, size: 32, offset: 608)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2467, file: !38, line: 356, baseType: !340, size: 64, offset: 640)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2467, file: !38, line: 357, baseType: !340, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2467, file: !38, line: 358, baseType: !340, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2467, file: !38, line: 359, baseType: !696, size: 64, offset: 832)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2467, file: !38, line: 360, baseType: !189, size: 32, offset: 896)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2434, file: !38, line: 436, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!189, !518, !2430, !2466}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2434, file: !38, line: 438, baseType: !2463, size: 64, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2434, file: !38, line: 439, baseType: !2491, size: 64, offset: 576)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!189, !518, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2495, file: !38, line: 410, baseType: !7, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2495, file: !38, line: 411, baseType: !2499, size: 1344, offset: 64)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2500, size: 1344, elements: !206)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2512}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2500, file: !38, line: 396, baseType: !7, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2500, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2500, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2500, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2500, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2500, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2500, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2500, file: !38, line: 404, baseType: !342, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2500, file: !38, line: 405, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !113, line: 126, baseType: !340)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2500, file: !38, line: 406, baseType: !2511, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2434, file: !38, line: 440, baseType: !2442, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !519, file: !44, line: 1426, baseType: !2515, size: 64, offset: 576)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2517)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !519, file: !44, line: 1427, baseType: !243, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !519, file: !44, line: 1428, baseType: !243, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !519, file: !44, line: 1429, baseType: !243, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !519, file: !44, line: 1430, baseType: !301, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !519, file: !44, line: 1431, baseType: !686, size: 256, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !519, file: !44, line: 1432, baseType: !189, size: 32, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !519, file: !44, line: 1433, baseType: !666, size: 32, offset: 1184)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !519, file: !44, line: 1437, baseType: !2526, size: 64, offset: 1216)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !519, file: !44, line: 1449, baseType: !2531, size: 64, offset: 1280)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !317, line: 34, size: 64, elements: !2532)
!2532 = !{!2533}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2531, file: !317, line: 35, baseType: !320, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !519, file: !44, line: 1450, baseType: !150, size: 128, offset: 1344)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !519, file: !44, line: 1451, baseType: !2536, size: 64, offset: 1472)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !519, file: !44, line: 1452, baseType: !1844, size: 64, offset: 1536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !519, file: !44, line: 1453, baseType: !2540, size: 64, offset: 1600)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !519, file: !44, line: 1454, baseType: !558, size: 128, offset: 1664)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !519, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !519, file: !44, line: 1456, baseType: !2545, size: 2432, offset: 1856)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2546)
!2546 = !{!2547, !2548, !2549, !2551, !2583}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2545, file: !38, line: 519, baseType: !7, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2545, file: !38, line: 520, baseType: !686, size: 256, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2545, file: !38, line: 521, baseType: !2550, size: 192, offset: 320)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 192, elements: !206)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2545, file: !38, line: 522, baseType: !2552, size: 1728, offset: 512)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2553, size: 1728, elements: !206)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2554)
!2554 = !{!2555, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2553, file: !38, line: 223, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2558)
!2558 = !{!2559, !2560, !2573, !2574}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2557, file: !38, line: 444, baseType: !189, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2557, file: !38, line: 445, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2563)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2563, file: !38, line: 311, baseType: !604, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2563, file: !38, line: 312, baseType: !604, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2563, file: !38, line: 313, baseType: !604, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2563, file: !38, line: 314, baseType: !604, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2563, file: !38, line: 315, baseType: !2355, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2563, file: !38, line: 316, baseType: !2355, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2563, file: !38, line: 317, baseType: !2355, size: 64, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2563, file: !38, line: 318, baseType: !2427, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2557, file: !38, line: 446, baseType: !109, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2557, file: !38, line: 447, baseType: !2556, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2553, file: !38, line: 224, baseType: !189, size: 32, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2553, file: !38, line: 226, baseType: !150, size: 128, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2553, file: !38, line: 227, baseType: !243, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2553, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2553, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2553, file: !38, line: 230, baseType: !2391, size: 64, offset: 384)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2553, file: !38, line: 231, baseType: !2391, size: 64, offset: 448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2553, file: !38, line: 232, baseType: !108, size: 64, offset: 512)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2545, file: !38, line: 523, baseType: !2584, size: 192, offset: 2240)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2561, size: 192, elements: !206)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !519, file: !44, line: 1458, baseType: !2586, size: 2112, offset: 4288)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2587)
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2586, file: !44, line: 1411, baseType: !189, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2586, file: !44, line: 1412, baseType: !1400, size: 128, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2586, file: !44, line: 1413, baseType: !2591, size: 1920, offset: 192)
!2591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2592, size: 1920, elements: !206)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2593, line: 12, size: 640, elements: !2594)
!2593 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2594 = !{!2595, !2603, !2605, !2610, !2611}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2592, file: !2593, line: 13, baseType: !2596, size: 320)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2597, line: 17, size: 320, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2596, file: !2597, line: 18, baseType: !189, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2596, file: !2597, line: 19, baseType: !189, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2596, file: !2597, line: 20, baseType: !1400, size: 128, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2596, file: !2597, line: 22, baseType: !284, size: 128, align: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2592, file: !2593, line: 14, baseType: !2604, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2592, file: !2593, line: 15, baseType: !2606, size: 64, offset: 384)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2607, line: 16, size: 64, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2606, file: !2607, line: 17, baseType: !1135, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2592, file: !2593, line: 16, baseType: !1400, size: 128, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2592, file: !2593, line: 17, baseType: !666, size: 32, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !519, file: !44, line: 1465, baseType: !108, size: 64, offset: 6400)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !519, file: !44, line: 1468, baseType: !334, size: 32, offset: 6464)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !519, file: !44, line: 1470, baseType: !458, size: 64, offset: 6528)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !519, file: !44, line: 1471, baseType: !458, size: 64, offset: 6592)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !519, file: !44, line: 1473, baseType: !336, size: 32, offset: 6656)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !519, file: !44, line: 1474, baseType: !2618, size: 64, offset: 6720)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !519, file: !44, line: 1477, baseType: !2621, size: 256, offset: 6784)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !2151)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !519, file: !44, line: 1478, baseType: !2623, size: 128, offset: 7040)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2624, line: 18, baseType: !2625)
!2624 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2624, line: 16, size: 128, elements: !2626)
!2626 = !{!2627}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2625, file: !2624, line: 17, baseType: !2628, size: 128)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 128, elements: !1654)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !519, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !519, file: !44, line: 1481, baseType: !2631, size: 32, offset: 7200)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !113, line: 150, baseType: !7)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !519, file: !44, line: 1487, baseType: !1092, size: 192, offset: 7232)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !519, file: !44, line: 1493, baseType: !126, size: 64, offset: 7424)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !519, file: !44, line: 1495, baseType: !2635, size: 64, offset: 7488)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !299, line: 135, size: 1024, align: 512, elements: !2638)
!2638 = !{!2639, !2643, !2644, !2651, !2657, !2661, !2665, !2669, !2670, !2674, !2678, !2683, !2687}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2637, file: !299, line: 136, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!189, !301, !7}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2637, file: !299, line: 137, baseType: !2640, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2637, file: !299, line: 138, baseType: !2645, size: 64, offset: 128)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!189, !2648, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2637, file: !299, line: 139, baseType: !2652, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!189, !2648, !7, !126, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2637, file: !299, line: 141, baseType: !2658, size: 64, offset: 256)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!189, !2648}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2637, file: !299, line: 142, baseType: !2662, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!189, !301}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2637, file: !299, line: 143, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !301}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2637, file: !299, line: 144, baseType: !2666, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2637, file: !299, line: 145, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !301, !348}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2637, file: !299, line: 146, baseType: !2675, size: 64, offset: 576)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!205, !301, !205, !189}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2637, file: !299, line: 147, baseType: !2679, size: 64, offset: 640)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!297, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2637, file: !299, line: 148, baseType: !2684, size: 64, offset: 704)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!189, !468, !409}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2637, file: !299, line: 149, baseType: !2688, size: 64, offset: 768)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!301, !301, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !519, file: !44, line: 1500, baseType: !189, size: 32, offset: 7552)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !519, file: !44, line: 1502, baseType: !2695, size: 448, offset: 7616)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2339, line: 60, size: 448, elements: !2696)
!2696 = !{!2697, !2702, !2703, !2704, !2705, !2706, !2707}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2695, file: !2339, line: 61, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!243, !2701, !2337}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2695, file: !2339, line: 63, baseType: !2698, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2695, file: !2339, line: 66, baseType: !140, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2695, file: !2339, line: 67, baseType: !189, size: 32, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2695, file: !2339, line: 68, baseType: !7, size: 32, offset: 224)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2695, file: !2339, line: 71, baseType: !150, size: 128, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2695, file: !2339, line: 77, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !519, file: !44, line: 1505, baseType: !690, size: 64, offset: 8064)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !519, file: !44, line: 1508, baseType: !690, size: 64, offset: 8128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !519, file: !44, line: 1511, baseType: !189, size: 32, offset: 8192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !519, file: !44, line: 1514, baseType: !828, size: 32, offset: 8224)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !519, file: !44, line: 1517, baseType: !2714, size: 64, offset: 8256)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1879, line: 18, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !519, file: !44, line: 1518, baseType: !554, size: 64, offset: 8320)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !519, file: !44, line: 1525, baseType: !1632, size: 64, offset: 8384)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !519, file: !44, line: 1532, baseType: !2719, size: 64, offset: 8448)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2720, line: 52, size: 64, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2719, file: !2720, line: 53, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2720, line: 40, size: 256, elements: !2725)
!2725 = !{!2726, !2727, !2732}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2724, file: !2720, line: 42, baseType: !163)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2724, file: !2720, line: 44, baseType: !2728, size: 192)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2720, line: 28, size: 192, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2728, file: !2720, line: 29, baseType: !150, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2728, file: !2720, line: 31, baseType: !140, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2724, file: !2720, line: 49, baseType: !140, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !519, file: !44, line: 1533, baseType: !2719, size: 64, offset: 8512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !519, file: !44, line: 1534, baseType: !284, size: 128, align: 64, offset: 8576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !519, file: !44, line: 1535, baseType: !1878, size: 256, offset: 8704)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !519, file: !44, line: 1537, baseType: !1092, size: 192, offset: 8960)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !519, file: !44, line: 1542, baseType: !189, size: 32, offset: 9152)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !519, file: !44, line: 1545, baseType: !163, offset: 9184)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !519, file: !44, line: 1546, baseType: !150, size: 128, offset: 9216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !519, file: !44, line: 1548, baseType: !163, offset: 9344)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !519, file: !44, line: 1549, baseType: !150, size: 128, offset: 9344)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !349, file: !44, line: 624, baseType: !653, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !349, file: !44, line: 631, baseType: !243, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !44, line: 639, baseType: !2745, size: 32, offset: 384)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !44, line: 639, size: 32, elements: !2746)
!2746 = !{!2747, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2745, file: !44, line: 640, baseType: !2748, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2745, file: !44, line: 641, baseType: !7, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !349, file: !44, line: 643, baseType: !432, size: 32, offset: 416)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !349, file: !44, line: 644, baseType: !450, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !349, file: !44, line: 645, baseType: !454, size: 128, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !349, file: !44, line: 646, baseType: !454, size: 128, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !349, file: !44, line: 647, baseType: !454, size: 128, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !349, file: !44, line: 648, baseType: !163, offset: 896)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !349, file: !44, line: 649, baseType: !131, size: 16, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !349, file: !44, line: 650, baseType: !1271, size: 8, offset: 912)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !349, file: !44, line: 651, baseType: !1271, size: 8, offset: 920)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !349, file: !44, line: 652, baseType: !2511, size: 64, offset: 960)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !349, file: !44, line: 659, baseType: !243, size: 64, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !349, file: !44, line: 660, baseType: !686, size: 256, offset: 1088)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !349, file: !44, line: 662, baseType: !243, size: 64, offset: 1344)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !349, file: !44, line: 663, baseType: !243, size: 64, offset: 1408)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !349, file: !44, line: 665, baseType: !558, size: 128, offset: 1472)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !349, file: !44, line: 666, baseType: !150, size: 128, offset: 1600)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !349, file: !44, line: 675, baseType: !150, size: 128, offset: 1728)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !349, file: !44, line: 676, baseType: !150, size: 128, offset: 1856)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !349, file: !44, line: 677, baseType: !150, size: 128, offset: 1984)
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !44, line: 678, baseType: !2770, size: 128, offset: 2112)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !44, line: 678, size: 128, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2770, file: !44, line: 679, baseType: !554, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2770, file: !44, line: 680, baseType: !284, size: 128, align: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !349, file: !44, line: 682, baseType: !692, size: 64, offset: 2240)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !349, file: !44, line: 683, baseType: !692, size: 64, offset: 2304)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !349, file: !44, line: 684, baseType: !666, size: 32, offset: 2368)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !349, file: !44, line: 685, baseType: !666, size: 32, offset: 2400)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !349, file: !44, line: 686, baseType: !666, size: 32, offset: 2432)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !349, file: !44, line: 688, baseType: !666, size: 32, offset: 2464)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !44, line: 690, baseType: !2781, size: 64, offset: 2496)
!2781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !44, line: 690, size: 64, elements: !2782)
!2782 = !{!2783, !3006}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2781, file: !44, line: 691, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2787)
!2787 = !{!2788, !2789, !2793, !2798, !2802, !2803, !2804, !2808, !2821, !2822, !2830, !2834, !2835, !2839, !2840, !2844, !2849, !2850, !2854, !2858, !2966, !2970, !2971, !2975, !2976, !2980, !2984, !2989, !2993, !2997, !3001, !3005}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2786, file: !44, line: 1823, baseType: !109, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2786, file: !44, line: 1824, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!450, !271, !450, !189}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2786, file: !44, line: 1825, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!136, !271, !205, !240, !2797}
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2786, file: !44, line: 1826, baseType: !2799, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!136, !271, !126, !240, !2797}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2786, file: !44, line: 1827, baseType: !763, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2786, file: !44, line: 1828, baseType: !763, size: 64, offset: 320)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2786, file: !44, line: 1829, baseType: !2805, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!189, !766, !409}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2786, file: !44, line: 1830, baseType: !2809, size: 64, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!189, !271, !2812}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2814)
!2814 = !{!2815, !2820}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2813, file: !44, line: 1777, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!189, !2812, !126, !189, !450, !340, !7}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2813, file: !44, line: 1778, baseType: !450, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2786, file: !44, line: 1831, baseType: !2809, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2786, file: !44, line: 1832, baseType: !2823, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2826, !271, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2827, line: 52, baseType: !7)
!2827 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !538, line: 27, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2786, file: !44, line: 1833, baseType: !2831, size: 64, offset: 640)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!140, !271, !7, !243}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2786, file: !44, line: 1834, baseType: !2831, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2786, file: !44, line: 1835, baseType: !2836, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!189, !271, !900}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2786, file: !44, line: 1836, baseType: !243, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2786, file: !44, line: 1837, baseType: !2841, size: 64, offset: 896)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!189, !348, !271}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2786, file: !44, line: 1838, baseType: !2845, size: 64, offset: 960)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!189, !271, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !108)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2786, file: !44, line: 1839, baseType: !2841, size: 64, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2786, file: !44, line: 1840, baseType: !2851, size: 64, offset: 1088)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!189, !271, !450, !450, !189}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2786, file: !44, line: 1841, baseType: !2855, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!189, !189, !271, !189}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2786, file: !44, line: 1842, baseType: !2859, size: 64, offset: 1216)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!189, !271, !189, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2896, !2897, !2898, !2911, !2942}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2863, file: !44, line: 1063, baseType: !2862, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2863, file: !44, line: 1064, baseType: !150, size: 128, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2863, file: !44, line: 1065, baseType: !558, size: 128, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2863, file: !44, line: 1066, baseType: !150, size: 128, offset: 320)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2863, file: !44, line: 1069, baseType: !150, size: 128, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2863, file: !44, line: 1072, baseType: !2848, size: 64, offset: 576)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2863, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2863, file: !44, line: 1074, baseType: !346, size: 8, offset: 672)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2863, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2863, file: !44, line: 1076, baseType: !189, size: 32, offset: 736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2863, file: !44, line: 1077, baseType: !1400, size: 128, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2863, file: !44, line: 1078, baseType: !271, size: 64, offset: 896)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2863, file: !44, line: 1079, baseType: !450, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2863, file: !44, line: 1080, baseType: !450, size: 64, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2863, file: !44, line: 1082, baseType: !2880, size: 64, offset: 1088)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2882)
!2882 = !{!2883, !2891, !2892, !2893, !2894, !2895}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2881, file: !44, line: 1315, baseType: !2884)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2885, line: 20, baseType: !2886)
!2885 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2885, line: 11, elements: !2887)
!2887 = !{!2888}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2886, file: !2885, line: 12, baseType: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !175, line: 33, baseType: !2890)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 31, elements: !177)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2881, file: !44, line: 1316, baseType: !189, size: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2881, file: !44, line: 1317, baseType: !189, size: 32, offset: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2881, file: !44, line: 1318, baseType: !2880, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2881, file: !44, line: 1319, baseType: !271, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2881, file: !44, line: 1320, baseType: !284, size: 128, align: 64, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2863, file: !44, line: 1084, baseType: !243, size: 64, offset: 1152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2863, file: !44, line: 1085, baseType: !243, size: 64, offset: 1216)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2863, file: !44, line: 1087, baseType: !2899, size: 64, offset: 1280)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2901)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2902)
!2902 = !{!2903, !2907}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2901, file: !44, line: 1012, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2862, !2862}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2901, file: !44, line: 1013, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2862}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2863, file: !44, line: 1088, baseType: !2912, size: 64, offset: 1344)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2915)
!2915 = !{!2916, !2920, !2924, !2925, !2929, !2933, !2937, !2941}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2914, file: !44, line: 1017, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!2848, !2848}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2914, file: !44, line: 1018, baseType: !2921, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{null, !2848}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2914, file: !44, line: 1019, baseType: !2908, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2914, file: !44, line: 1020, baseType: !2926, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!189, !2862, !189}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2914, file: !44, line: 1021, baseType: !2930, size: 64, offset: 256)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!409, !2862}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2914, file: !44, line: 1022, baseType: !2934, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!189, !2862, !189, !153}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2914, file: !44, line: 1023, baseType: !2938, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2862, !740}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2914, file: !44, line: 1024, baseType: !2930, size: 64, offset: 448)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2863, file: !44, line: 1097, baseType: !2943, size: 256, offset: 1408)
!2943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2863, file: !44, line: 1089, size: 256, elements: !2944)
!2944 = !{!2945, !2954, !2960}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2943, file: !44, line: 1090, baseType: !2946, size: 256)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2947, line: 10, size: 256, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2948 = !{!2949, !2950, !2953}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2946, file: !2947, line: 11, baseType: !334, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2946, file: !2947, line: 12, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2947, line: 5, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2946, file: !2947, line: 13, baseType: !150, size: 128, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2943, file: !44, line: 1091, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2947, line: 17, size: 64, elements: !2956)
!2956 = !{!2957}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2955, file: !2947, line: 18, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2947, line: 16, flags: DIFlagFwdDecl)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2943, file: !44, line: 1096, baseType: !2961, size: 192)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2943, file: !44, line: 1092, size: 192, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2961, file: !44, line: 1093, baseType: !150, size: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !44, line: 1094, baseType: !189, size: 32, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2961, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2786, file: !44, line: 1843, baseType: !2967, size: 64, offset: 1280)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!136, !271, !640, !189, !240, !2797, !189}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2786, file: !44, line: 1844, baseType: !1020, size: 64, offset: 1344)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2786, file: !44, line: 1845, baseType: !2972, size: 64, offset: 1408)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!189, !189}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2786, file: !44, line: 1846, baseType: !2859, size: 64, offset: 1472)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2786, file: !44, line: 1847, baseType: !2977, size: 64, offset: 1536)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!136, !2019, !271, !2797, !240, !7}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2786, file: !44, line: 1848, baseType: !2981, size: 64, offset: 1600)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!136, !271, !2797, !2019, !240, !7}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2786, file: !44, line: 1849, baseType: !2985, size: 64, offset: 1664)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!189, !271, !140, !2988, !740}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2786, file: !44, line: 1850, baseType: !2990, size: 64, offset: 1728)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!140, !271, !189, !450, !450}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2786, file: !44, line: 1852, baseType: !2994, size: 64, offset: 1792)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{null, !630, !271}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2786, file: !44, line: 1856, baseType: !2998, size: 64, offset: 1856)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!136, !271, !450, !271, !450, !240, !7}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2786, file: !44, line: 1858, baseType: !3002, size: 64, offset: 1920)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!450, !271, !450, !271, !450, !450, !7}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2786, file: !44, line: 1861, baseType: !2851, size: 64, offset: 1984)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2781, file: !44, line: 692, baseType: !583, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !349, file: !44, line: 694, baseType: !3008, size: 64, offset: 2560)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3009, file: !44, line: 1101, baseType: !163)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3009, file: !44, line: 1102, baseType: !150, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3009, file: !44, line: 1103, baseType: !150, size: 128, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3009, file: !44, line: 1104, baseType: !150, size: 128, offset: 256)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !349, file: !44, line: 695, baseType: !654, size: 1216, align: 64, offset: 2624)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !349, file: !44, line: 696, baseType: !150, size: 128, offset: 3840)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !44, line: 697, baseType: !3018, size: 64, offset: 3968)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !44, line: 697, size: 64, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3025, !3026}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3018, file: !44, line: 698, baseType: !2019, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3018, file: !44, line: 699, baseType: !2536, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3018, file: !44, line: 700, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3018, file: !44, line: 701, baseType: !205, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3018, file: !44, line: 702, baseType: !7, size: 32)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !349, file: !44, line: 705, baseType: !336, size: 32, offset: 4032)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !349, file: !44, line: 708, baseType: !336, size: 32, offset: 4064)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !349, file: !44, line: 709, baseType: !2618, size: 64, offset: 4096)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !349, file: !44, line: 720, baseType: !108, size: 64, offset: 4160)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !302, file: !299, line: 98, baseType: !3032, size: 256, offset: 448)
!3032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !2151)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !302, file: !299, line: 101, baseType: !3034, size: 32, offset: 704)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3035, line: 25, size: 32, elements: !3036)
!3035 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3036 = !{!3037}
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !3034, file: !3035, line: 26, baseType: !3038, size: 32)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3034, file: !3035, line: 26, size: 32, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !3035, line: 30, baseType: !3041, size: 32)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !3035, line: 30, size: 32, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3041, file: !3035, line: 31, baseType: !163)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3041, file: !3035, line: 32, baseType: !189, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !302, file: !299, line: 102, baseType: !2635, size: 64, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !302, file: !299, line: 103, baseType: !518, size: 64, offset: 832)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !302, file: !299, line: 104, baseType: !243, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !302, file: !299, line: 105, baseType: !108, size: 64, offset: 960)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !299, line: 107, baseType: !3050, size: 128, offset: 1024)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !299, line: 107, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3050, file: !299, line: 108, baseType: !150, size: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3050, file: !299, line: 109, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !302, file: !299, line: 111, baseType: !150, size: 128, offset: 1152)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !302, file: !299, line: 112, baseType: !150, size: 128, offset: 1280)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !302, file: !299, line: 120, baseType: !3058, size: 128, offset: 1408)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !299, line: 116, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3058, file: !299, line: 117, baseType: !558, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3058, file: !299, line: 118, baseType: !316, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3058, file: !299, line: 119, baseType: !284, size: 128, align: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !272, file: !44, line: 922, baseType: !348, size: 64, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !272, file: !44, line: 923, baseType: !2784, size: 64, offset: 320)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !272, file: !44, line: 929, baseType: !163, offset: 384)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !272, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !272, file: !44, line: 931, baseType: !690, size: 64, offset: 448)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !272, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !272, file: !44, line: 933, baseType: !2631, size: 32, offset: 544)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !272, file: !44, line: 934, baseType: !1092, size: 192, offset: 576)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !272, file: !44, line: 935, baseType: !450, size: 64, offset: 768)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !272, file: !44, line: 936, baseType: !3073, size: 192, offset: 832)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3074)
!3074 = !{!3075, !3076, !3077, !3078, !3079, !3080}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3073, file: !44, line: 886, baseType: !2884)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3073, file: !44, line: 887, baseType: !1390, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3073, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3073, file: !44, line: 889, baseType: !354, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3073, file: !44, line: 889, baseType: !354, size: 32, offset: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3073, file: !44, line: 890, baseType: !189, size: 32, offset: 160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !272, file: !44, line: 937, baseType: !1466, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !272, file: !44, line: 938, baseType: !3083, size: 256, offset: 1088)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3089, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3083, file: !44, line: 897, baseType: !243, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3083, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3083, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3083, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3083, file: !44, line: 904, baseType: !450, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !272, file: !44, line: 940, baseType: !340, size: 64, offset: 1344)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !272, file: !44, line: 945, baseType: !108, size: 64, offset: 1408)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !272, file: !44, line: 949, baseType: !150, size: 128, offset: 1472)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !272, file: !44, line: 950, baseType: !150, size: 128, offset: 1600)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !272, file: !44, line: 952, baseType: !653, size: 64, offset: 1728)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !272, file: !44, line: 953, baseType: !828, size: 32, offset: 1792)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !272, file: !44, line: 954, baseType: !828, size: 32, offset: 1824)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !262, file: !123, line: 174, baseType: !268, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !262, file: !123, line: 176, baseType: !3100, size: 64, offset: 384)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!189, !271, !156, !261, !900}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !250, file: !123, line: 90, baseType: !245, size: 64, offset: 192)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !250, file: !123, line: 91, baseType: !3105, size: 64, offset: 256)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !220, file: !146, line: 143, baseType: !3107, size: 64, offset: 256)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !156}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3113)
!3113 = !{!3114, !3115, !3119, !3123, !3129, !3133}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3112, file: !61, line: 40, baseType: !60, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3112, file: !61, line: 41, baseType: !3116, size: 64, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!409}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3112, file: !61, line: 42, baseType: !3120, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!108}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3112, file: !61, line: 43, baseType: !3124, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!2048, !3127}
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3112, file: !61, line: 44, baseType: !3130, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!2048}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3112, file: !61, line: 45, baseType: !387, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !220, file: !146, line: 144, baseType: !3135, size: 64, offset: 320)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!2048, !156}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !220, file: !146, line: 145, baseType: !3139, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{null, !156, !3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !145, file: !146, line: 70, baseType: !3145, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !538, line: 123, size: 1024, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3276, !3277, !3278, !3279, !3280}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3146, file: !538, line: 124, baseType: !666, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3146, file: !538, line: 125, baseType: !666, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3146, file: !538, line: 135, baseType: !3145, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3146, file: !538, line: 136, baseType: !126, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3146, file: !538, line: 138, baseType: !679, size: 192, align: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3146, file: !538, line: 140, baseType: !2048, size: 64, offset: 384)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3146, file: !538, line: 141, baseType: !7, size: 32, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !538, line: 142, baseType: !3156, size: 256, offset: 512)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !538, line: 142, size: 256, elements: !3157)
!3157 = !{!3158, !3204, !3208}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3156, file: !538, line: 143, baseType: !3159, size: 192)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !538, line: 91, size: 192, elements: !3160)
!3160 = !{!3161, !3162, !3163}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3159, file: !538, line: 92, baseType: !243, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3159, file: !538, line: 94, baseType: !675, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3159, file: !538, line: 100, baseType: !3164, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !538, line: 180, size: 704, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3176, !3177, !3178, !3202, !3203}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3165, file: !538, line: 182, baseType: !3145, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3165, file: !538, line: 183, baseType: !7, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3165, file: !538, line: 186, baseType: !3170, size: 192, offset: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3171, line: 19, size: 192, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3170, file: !3171, line: 20, baseType: !658, size: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3170, file: !3171, line: 21, baseType: !7, size: 32, offset: 128)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3170, file: !3171, line: 22, baseType: !7, size: 32, offset: 160)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3165, file: !538, line: 187, baseType: !334, size: 32, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3165, file: !538, line: 188, baseType: !334, size: 32, offset: 352)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3165, file: !538, line: 189, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !538, line: 168, size: 320, elements: !3181)
!3181 = !{!3182, !3186, !3190, !3194, !3198}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3180, file: !538, line: 169, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!189, !630, !3164}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3180, file: !538, line: 171, baseType: !3187, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!189, !3145, !126, !130}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3180, file: !538, line: 173, baseType: !3191, size: 64, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!189, !3145}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3180, file: !538, line: 174, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!189, !3145, !3145, !126}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3180, file: !538, line: 176, baseType: !3199, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!189, !630, !3145, !3164}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3165, file: !538, line: 192, baseType: !150, size: 128, offset: 448)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3165, file: !538, line: 194, baseType: !1400, size: 128, offset: 576)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3156, file: !538, line: 144, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !538, line: 103, size: 64, elements: !3206)
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3205, file: !538, line: 104, baseType: !3145, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3156, file: !538, line: 145, baseType: !3209, size: 256)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !538, line: 107, size: 256, elements: !3210)
!3210 = !{!3211, !3271, !3274, !3275}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3209, file: !538, line: 108, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3214)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !538, line: 217, size: 768, elements: !3215)
!3215 = !{!3216, !3236, !3240, !3244, !3248, !3252, !3256, !3260, !3261, !3262, !3263, !3267}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3214, file: !538, line: 222, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!189, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !538, line: 197, size: 1088, elements: !3222)
!3222 = !{!3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3221, file: !538, line: 199, baseType: !3145, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3221, file: !538, line: 200, baseType: !271, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3221, file: !538, line: 201, baseType: !630, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3221, file: !538, line: 202, baseType: !108, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3221, file: !538, line: 205, baseType: !1092, size: 192, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3221, file: !538, line: 206, baseType: !1092, size: 192, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3221, file: !538, line: 207, baseType: !189, size: 32, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3221, file: !538, line: 208, baseType: !150, size: 128, offset: 704)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3221, file: !538, line: 209, baseType: !205, size: 64, offset: 832)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3221, file: !538, line: 211, baseType: !240, size: 64, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3221, file: !538, line: 212, baseType: !409, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3221, file: !538, line: 213, baseType: !409, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3221, file: !538, line: 214, baseType: !928, size: 64, offset: 1024)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3214, file: !538, line: 223, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{null, !3220}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3214, file: !538, line: 236, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!189, !630, !108}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3214, file: !538, line: 238, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!108, !630, !2797}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3214, file: !538, line: 239, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!108, !630, !108, !2797}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3214, file: !538, line: 240, baseType: !3253, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !630, !108}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3214, file: !538, line: 242, baseType: !3257, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!136, !3220, !205, !240, !450}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3214, file: !538, line: 252, baseType: !240, size: 64, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3214, file: !538, line: 259, baseType: !409, size: 8, offset: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3214, file: !538, line: 260, baseType: !3257, size: 64, offset: 576)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3214, file: !538, line: 263, baseType: !3264, size: 64, offset: 640)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!2826, !3220, !2828}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3214, file: !538, line: 266, baseType: !3268, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!189, !3220, !900}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3209, file: !538, line: 109, baseType: !3272, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !538, line: 31, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3209, file: !538, line: 110, baseType: !450, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3209, file: !538, line: 111, baseType: !3145, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3146, file: !538, line: 148, baseType: !108, size: 64, offset: 768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3146, file: !538, line: 154, baseType: !340, size: 64, offset: 832)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3146, file: !538, line: 156, baseType: !131, size: 16, offset: 896)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3146, file: !538, line: 157, baseType: !130, size: 16, offset: 912)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3146, file: !538, line: 158, baseType: !3281, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !538, line: 32, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !145, file: !146, line: 71, baseType: !3284, size: 32, offset: 448)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3285, line: 19, size: 32, elements: !3286)
!3285 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3286 = !{!3287}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3284, file: !3285, line: 20, baseType: !1149, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !145, file: !146, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !145, file: !146, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !145, file: !146, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !145, file: !146, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !145, file: !146, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !142, file: !73, line: 463, baseType: !141, size: 64, offset: 512)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !142, file: !73, line: 465, baseType: !3295, size: 64, offset: 576)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !142, file: !73, line: 467, baseType: !126, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !73, line: 468, baseType: !3299, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3309, !3314, !3318}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3301, file: !73, line: 88, baseType: !126, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3301, file: !73, line: 89, baseType: !247, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3301, file: !73, line: 90, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!189, !141, !200}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3301, file: !73, line: 91, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!205, !141, !3313, !3142, !3143}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3301, file: !73, line: 93, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{null, !141}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3301, file: !73, line: 95, baseType: !3319, size: 64, offset: 320)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3322)
!3322 = !{!3323, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3321, file: !80, line: 279, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!189, !141}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3321, file: !80, line: 280, baseType: !3315, size: 64, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3321, file: !80, line: 281, baseType: !3324, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3321, file: !80, line: 282, baseType: !3324, size: 64, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3321, file: !80, line: 283, baseType: !3324, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3321, file: !80, line: 284, baseType: !3324, size: 64, offset: 320)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3321, file: !80, line: 285, baseType: !3324, size: 64, offset: 384)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3321, file: !80, line: 286, baseType: !3324, size: 64, offset: 448)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3321, file: !80, line: 287, baseType: !3324, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3321, file: !80, line: 288, baseType: !3324, size: 64, offset: 576)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3321, file: !80, line: 289, baseType: !3324, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3321, file: !80, line: 290, baseType: !3324, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3321, file: !80, line: 291, baseType: !3324, size: 64, offset: 768)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3321, file: !80, line: 292, baseType: !3324, size: 64, offset: 832)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3321, file: !80, line: 293, baseType: !3324, size: 64, offset: 896)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3321, file: !80, line: 294, baseType: !3324, size: 64, offset: 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3321, file: !80, line: 295, baseType: !3324, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3321, file: !80, line: 296, baseType: !3324, size: 64, offset: 1088)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3321, file: !80, line: 297, baseType: !3324, size: 64, offset: 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3321, file: !80, line: 298, baseType: !3324, size: 64, offset: 1216)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3321, file: !80, line: 299, baseType: !3324, size: 64, offset: 1280)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3321, file: !80, line: 300, baseType: !3324, size: 64, offset: 1344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3321, file: !80, line: 301, baseType: !3324, size: 64, offset: 1408)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !142, file: !73, line: 470, baseType: !3350, size: 64, offset: 768)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3352, line: 82, size: 1408, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3435, !3438, !3439}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !3352, line: 83, baseType: !126, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3351, file: !3352, line: 84, baseType: !126, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3351, file: !3352, line: 85, baseType: !141, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3351, file: !3352, line: 86, baseType: !247, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3351, file: !3352, line: 87, baseType: !247, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3351, file: !3352, line: 88, baseType: !247, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3351, file: !3352, line: 90, baseType: !3361, size: 64, offset: 384)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!189, !141, !3364}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3386, !3399, !3400, !3401, !3402, !3403, !3411, !3412, !3413, !3414, !3415, !3416}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3365, file: !67, line: 96, baseType: !126, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3365, file: !67, line: 97, baseType: !3350, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3365, file: !67, line: 99, baseType: !109, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3365, file: !67, line: 100, baseType: !126, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3365, file: !67, line: 102, baseType: !409, size: 8, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3365, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3365, file: !67, line: 105, baseType: !3374, size: 64, offset: 320)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3377, line: 262, size: 1600, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3378 = !{!3379, !3380, !3381, !3385}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3376, file: !3377, line: 263, baseType: !2621, size: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3376, file: !3377, line: 264, baseType: !2621, size: 256, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3376, file: !3377, line: 265, baseType: !3382, size: 1024, offset: 512)
!3382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !3383)
!3383 = !{!3384}
!3384 = !DISubrange(count: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3376, file: !3377, line: 266, baseType: !2048, size: 64, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3365, file: !67, line: 106, baseType: !3387, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3377, line: 210, size: 256, elements: !3390)
!3390 = !{!3391, !3395, !3397, !3398}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3389, file: !3377, line: 211, baseType: !3392, size: 72)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, size: 72, elements: !3393)
!3393 = !{!3394}
!3394 = !DISubrange(count: 9)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3389, file: !3377, line: 212, baseType: !3396, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3377, line: 14, baseType: !243)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3389, file: !3377, line: 213, baseType: !336, size: 32, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3389, file: !3377, line: 214, baseType: !336, size: 32, offset: 224)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3365, file: !67, line: 108, baseType: !3324, size: 64, offset: 448)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3365, file: !67, line: 109, baseType: !3315, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3365, file: !67, line: 110, baseType: !3324, size: 64, offset: 576)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3365, file: !67, line: 111, baseType: !3315, size: 64, offset: 640)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3365, file: !67, line: 112, baseType: !3404, size: 64, offset: 704)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!189, !141, !3407}
!3407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3408)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3408, file: !80, line: 51, baseType: !189, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3365, file: !67, line: 113, baseType: !3324, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3365, file: !67, line: 114, baseType: !247, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3365, file: !67, line: 115, baseType: !247, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3365, file: !67, line: 117, baseType: !3319, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3365, file: !67, line: 118, baseType: !3315, size: 64, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3365, file: !67, line: 120, baseType: !3417, size: 64, offset: 1088)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3351, file: !3352, line: 91, baseType: !3306, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3351, file: !3352, line: 92, baseType: !3324, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3351, file: !3352, line: 93, baseType: !3315, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3351, file: !3352, line: 94, baseType: !3324, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3351, file: !3352, line: 95, baseType: !3315, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3351, file: !3352, line: 97, baseType: !3324, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3351, file: !3352, line: 98, baseType: !3324, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3351, file: !3352, line: 100, baseType: !3404, size: 64, offset: 896)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3351, file: !3352, line: 101, baseType: !3324, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3351, file: !3352, line: 103, baseType: !3324, size: 64, offset: 1024)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3351, file: !3352, line: 105, baseType: !3324, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !3352, line: 107, baseType: !3319, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3351, file: !3352, line: 109, baseType: !3432, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3352, line: 109, flags: DIFlagFwdDecl)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3351, file: !3352, line: 111, baseType: !3436, size: 64, offset: 1280)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3352, line: 111, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3351, file: !3352, line: 112, baseType: !564, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3351, file: !3352, line: 114, baseType: !409, size: 8, offset: 1344)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !142, file: !73, line: 471, baseType: !3364, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !142, file: !73, line: 473, baseType: !108, size: 64, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !142, file: !73, line: 475, baseType: !108, size: 64, offset: 960)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !142, file: !73, line: 480, baseType: !1092, size: 192, offset: 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !142, file: !73, line: 484, baseType: !3445, size: 576, offset: 1216)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3445, file: !73, line: 362, baseType: !150, size: 128)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3445, file: !73, line: 363, baseType: !150, size: 128, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3445, file: !73, line: 364, baseType: !150, size: 128, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3445, file: !73, line: 365, baseType: !150, size: 128, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3445, file: !73, line: 366, baseType: !409, size: 8, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3445, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !142, file: !73, line: 485, baseType: !3454, size: 2304, offset: 1792)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3551, !3555}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3454, file: !80, line: 566, baseType: !3407, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3454, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3454, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3454, file: !80, line: 569, baseType: !409, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3454, file: !80, line: 570, baseType: !409, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3454, file: !80, line: 571, baseType: !409, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3454, file: !80, line: 572, baseType: !409, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3454, file: !80, line: 573, baseType: !409, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3454, file: !80, line: 574, baseType: !409, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3454, file: !80, line: 575, baseType: !409, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3454, file: !80, line: 576, baseType: !409, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3454, file: !80, line: 577, baseType: !334, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !80, line: 578, baseType: !163, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3454, file: !80, line: 580, baseType: !150, size: 128, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3454, file: !80, line: 581, baseType: !1421, size: 192, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3454, file: !80, line: 582, baseType: !3472, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3474, line: 43, size: 1472, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3483, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !3474, line: 44, baseType: !126, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3473, file: !3474, line: 45, baseType: !189, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3473, file: !3474, line: 46, baseType: !150, size: 128, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !3474, line: 47, baseType: !163, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3473, file: !3474, line: 48, baseType: !3481, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3473, file: !3474, line: 49, baseType: !3484, size: 320, offset: 320)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3485, line: 11, size: 320, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3486 = !{!3487, !3488, !3489, !3494}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3484, file: !3485, line: 16, baseType: !558, size: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3484, file: !3485, line: 17, baseType: !243, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3484, file: !3485, line: 18, baseType: !3490, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{null, !3493}
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3485, line: 19, baseType: !334, size: 32, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3473, file: !3474, line: 50, baseType: !243, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3473, file: !3474, line: 51, baseType: !1219, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3473, file: !3474, line: 52, baseType: !1219, size: 64, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3473, file: !3474, line: 53, baseType: !1219, size: 64, offset: 832)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3473, file: !3474, line: 54, baseType: !1219, size: 64, offset: 896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3473, file: !3474, line: 55, baseType: !1219, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3473, file: !3474, line: 56, baseType: !243, size: 64, offset: 1024)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3473, file: !3474, line: 57, baseType: !243, size: 64, offset: 1088)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3473, file: !3474, line: 58, baseType: !243, size: 64, offset: 1152)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3473, file: !3474, line: 59, baseType: !243, size: 64, offset: 1216)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3473, file: !3474, line: 60, baseType: !243, size: 64, offset: 1280)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3473, file: !3474, line: 61, baseType: !141, size: 64, offset: 1344)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3473, file: !3474, line: 62, baseType: !409, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3473, file: !3474, line: 63, baseType: !409, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3454, file: !80, line: 583, baseType: !409, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3454, file: !80, line: 584, baseType: !409, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3454, file: !80, line: 585, baseType: !409, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3454, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3454, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3454, file: !80, line: 592, baseType: !1211, size: 512, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3454, file: !80, line: 593, baseType: !340, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3454, file: !80, line: 594, baseType: !1878, size: 256, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3454, file: !80, line: 595, baseType: !1400, size: 128, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3454, file: !80, line: 596, baseType: !3481, size: 64, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3454, file: !80, line: 597, baseType: !666, size: 32, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3454, file: !80, line: 598, baseType: !666, size: 32, offset: 1632)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3454, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3454, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3454, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3454, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3454, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3454, file: !80, line: 604, baseType: !409, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3454, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3454, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3454, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3454, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3454, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3454, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3454, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3454, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3454, file: !80, line: 613, baseType: !189, size: 32, offset: 1792)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3454, file: !80, line: 614, baseType: !189, size: 32, offset: 1824)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3454, file: !80, line: 615, baseType: !340, size: 64, offset: 1856)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3454, file: !80, line: 616, baseType: !340, size: 64, offset: 1920)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3454, file: !80, line: 617, baseType: !340, size: 64, offset: 1984)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3454, file: !80, line: 618, baseType: !340, size: 64, offset: 2048)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3454, file: !80, line: 620, baseType: !3542, size: 64, offset: 2112)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3544)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3543, file: !80, line: 537, baseType: !163)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3543, file: !80, line: 538, baseType: !7, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3543, file: !80, line: 540, baseType: !150, size: 128, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3543, file: !80, line: 543, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3454, file: !80, line: 621, baseType: !3552, size: 64, offset: 2176)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !141, !1363}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3454, file: !80, line: 622, baseType: !3556, size: 64, offset: 2240)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !142, file: !73, line: 486, baseType: !3559, size: 64, offset: 4096)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3560, file: !80, line: 643, baseType: !3321, size: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3560, file: !80, line: 644, baseType: !3324, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3560, file: !80, line: 645, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !141, !409}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3560, file: !80, line: 646, baseType: !3324, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3560, file: !80, line: 647, baseType: !3315, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3560, file: !80, line: 648, baseType: !3315, size: 64, offset: 1728)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !142, file: !73, line: 493, baseType: !3572, size: 64, offset: 4160)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3750, !3751, !3752, !3753, !3754, !3755, !3758, !3759, !3760, !3761, !3762, !3763, !3764}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3573, file: !94, line: 163, baseType: !150, size: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3573, file: !94, line: 164, baseType: !126, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3573, file: !94, line: 165, baseType: !3578, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3581)
!3581 = !{!3582, !3700, !3711, !3716, !3720, !3727, !3731, !3735, !3742, !3746}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3580, file: !94, line: 106, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!189, !3572, !3586, !93}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3588, line: 51, size: 1344, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3589 = !{!3590, !3591, !3593, !3594, !3684, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3587, file: !3588, line: 52, baseType: !126, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3587, file: !3588, line: 53, baseType: !3592, size: 32, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3588, line: 28, baseType: !334)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3587, file: !3588, line: 54, baseType: !126, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3587, file: !3588, line: 55, baseType: !3595, size: 192, offset: 192)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3596, line: 17, size: 192, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !{!3598, !3600, !3683}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3595, file: !3596, line: 18, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3595, file: !3596, line: 19, baseType: !3601, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3596, line: 110, size: 1152, elements: !3604)
!3604 = !{!3605, !3609, !3613, !3619, !3625, !3629, !3633, !3638, !3642, !3643, !3647, !3651, !3655, !3666, !3667, !3668, !3669, !3679}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3603, file: !3596, line: 111, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!3599, !3599}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3603, file: !3596, line: 112, baseType: !3610, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !3599}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3603, file: !3596, line: 113, baseType: !3614, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!409, !3617}
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3603, file: !3596, line: 114, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!2048, !3617, !3623}
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3603, file: !3596, line: 116, baseType: !3626, size: 64, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!409, !3617, !126}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3603, file: !3596, line: 118, baseType: !3630, size: 64, offset: 320)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!189, !3617, !126, !7, !108, !240}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3603, file: !3596, line: 123, baseType: !3634, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!189, !3617, !126, !3637, !240}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3603, file: !3596, line: 126, baseType: !3639, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!126, !3617}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3603, file: !3596, line: 127, baseType: !3639, size: 64, offset: 512)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3603, file: !3596, line: 128, baseType: !3644, size: 64, offset: 576)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!3599, !3617}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3603, file: !3596, line: 130, baseType: !3648, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{!3599, !3617, !3599}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3603, file: !3596, line: 133, baseType: !3652, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!3599, !3617, !126}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3603, file: !3596, line: 135, baseType: !3656, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!189, !3617, !126, !126, !7, !7, !3659}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3596, line: 43, size: 640, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3660, file: !3596, line: 44, baseType: !3599, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3660, file: !3596, line: 45, baseType: !7, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3660, file: !3596, line: 46, baseType: !3665, size: 512, offset: 128)
!3665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 512, elements: !1249)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3603, file: !3596, line: 140, baseType: !3648, size: 64, offset: 832)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3603, file: !3596, line: 143, baseType: !3644, size: 64, offset: 896)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3603, file: !3596, line: 145, baseType: !3606, size: 64, offset: 960)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3603, file: !3596, line: 146, baseType: !3670, size: 64, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!189, !3617, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3596, line: 29, size: 128, elements: !3675)
!3675 = !{!3676, !3677, !3678}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3674, file: !3596, line: 30, baseType: !7, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3674, file: !3596, line: 31, baseType: !7, size: 32, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3674, file: !3596, line: 32, baseType: !3617, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3603, file: !3596, line: 148, baseType: !3680, size: 64, offset: 1088)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!189, !3617, !141}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3595, file: !3596, line: 20, baseType: !141, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3587, file: !3588, line: 57, baseType: !3685, size: 64, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3588, line: 31, size: 704, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3691, !3692}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3686, file: !3588, line: 32, baseType: !205, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3686, file: !3588, line: 33, baseType: !189, size: 32, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3686, file: !3588, line: 34, baseType: !108, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3686, file: !3588, line: 35, baseType: !3685, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3686, file: !3588, line: 43, baseType: !262, size: 448, offset: 256)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3587, file: !3588, line: 58, baseType: !3685, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3587, file: !3588, line: 59, baseType: !3586, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3587, file: !3588, line: 60, baseType: !3586, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3587, file: !3588, line: 61, baseType: !3586, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3587, file: !3588, line: 63, baseType: !145, size: 512, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3587, file: !3588, line: 65, baseType: !243, size: 64, offset: 1216)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3587, file: !3588, line: 66, baseType: !108, size: 64, offset: 1280)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3580, file: !94, line: 108, baseType: !3701, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!189, !3572, !3704, !93}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3706)
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3705, file: !94, line: 64, baseType: !3599, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3705, file: !94, line: 65, baseType: !189, size: 32, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3705, file: !94, line: 66, baseType: !3710, size: 512, offset: 96)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 512, elements: !1654)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3580, file: !94, line: 110, baseType: !3712, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!189, !3572, !7, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !113, line: 164, baseType: !243)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3580, file: !94, line: 111, baseType: !3717, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3572, !7}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3580, file: !94, line: 112, baseType: !3721, size: 64, offset: 256)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!189, !3572, !3586, !3724, !7, !3726, !2604}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3580, file: !94, line: 117, baseType: !3728, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!189, !3572, !7, !7, !108}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3580, file: !94, line: 119, baseType: !3732, size: 64, offset: 384)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3572, !7, !7}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3580, file: !94, line: 121, baseType: !3736, size: 64, offset: 448)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!189, !3572, !3739, !409}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3741, line: 11, flags: DIFlagFwdDecl)
!3741 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3580, file: !94, line: 122, baseType: !3743, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3572, !3739}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3580, file: !94, line: 123, baseType: !3747, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!189, !3572, !3704, !3726, !2604}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3573, file: !94, line: 166, baseType: !108, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3573, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3573, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3573, file: !94, line: 171, baseType: !3599, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3573, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3573, file: !94, line: 173, baseType: !3756, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3573, file: !94, line: 175, baseType: !3572, size: 64, offset: 576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3573, file: !94, line: 182, baseType: !3715, size: 64, offset: 640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3573, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3573, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3573, file: !94, line: 185, baseType: !658, size: 128, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3573, file: !94, line: 186, baseType: !1092, size: 192, offset: 896)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3573, file: !94, line: 187, baseType: !3765, offset: 1088)
!3765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2252)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !142, file: !73, line: 499, baseType: !150, size: 128, offset: 4224)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !142, file: !73, line: 502, baseType: !3768, size: 64, offset: 4352)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !142, file: !73, line: 504, baseType: !3772, size: 64, offset: 4416)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !142, file: !73, line: 505, baseType: !340, size: 64, offset: 4480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !142, file: !73, line: 510, baseType: !340, size: 64, offset: 4544)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !142, file: !73, line: 511, baseType: !3776, size: 64, offset: 4608)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !142, file: !73, line: 513, baseType: !3780, size: 64, offset: 4672)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3781, file: !73, line: 293, baseType: !7, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3781, file: !73, line: 294, baseType: !243, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !142, file: !73, line: 515, baseType: !150, size: 128, offset: 4736)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !142, file: !73, line: 526, baseType: !3787, offset: 4864)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3788, line: 5, elements: !177)
!3788 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !142, file: !73, line: 528, baseType: !3586, size: 64, offset: 4864)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !142, file: !73, line: 529, baseType: !3599, size: 64, offset: 4928)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !142, file: !73, line: 534, baseType: !432, size: 32, offset: 4992)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !142, file: !73, line: 535, baseType: !334, size: 32, offset: 5024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !142, file: !73, line: 537, baseType: !163, offset: 5056)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !142, file: !73, line: 538, baseType: !150, size: 128, offset: 5056)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !142, file: !73, line: 540, baseType: !3796, size: 64, offset: 5184)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3798, line: 54, size: 960, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3810, !3814, !3815, !3816, !3817, !3821, !3825, !3826}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 55, baseType: !126, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3797, file: !3798, line: 56, baseType: !109, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3797, file: !3798, line: 58, baseType: !247, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3797, file: !3798, line: 59, baseType: !247, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3797, file: !3798, line: 60, baseType: !156, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3797, file: !3798, line: 62, baseType: !3306, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3797, file: !3798, line: 63, baseType: !3807, size: 64, offset: 384)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!205, !141, !3313}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3797, file: !3798, line: 65, baseType: !3811, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{null, !3796}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3797, file: !3798, line: 66, baseType: !3315, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3797, file: !3798, line: 68, baseType: !3324, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3797, file: !3798, line: 70, baseType: !3110, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3797, file: !3798, line: 71, baseType: !3818, size: 64, offset: 704)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!2048, !141}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3797, file: !3798, line: 73, baseType: !3822, size: 64, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !141, !3142, !3143}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3797, file: !3798, line: 75, baseType: !3319, size: 64, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3797, file: !3798, line: 77, baseType: !3436, size: 64, offset: 896)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !142, file: !73, line: 541, baseType: !247, size: 64, offset: 5248)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !142, file: !73, line: 543, baseType: !3315, size: 64, offset: 5312)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !142, file: !73, line: 544, baseType: !3830, size: 64, offset: 5376)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !142, file: !73, line: 545, baseType: !3833, size: 64, offset: 5440)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !142, file: !73, line: 547, baseType: !409, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !142, file: !73, line: 548, baseType: !409, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !142, file: !73, line: 549, baseType: !409, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !142, file: !73, line: 550, baseType: !409, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !119, file: !73, line: 103, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!136, !141, !3839, !126, !240}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !115, file: !116, line: 14, baseType: !189, size: 32, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!3847 = !{!3848, !3900, !3905, !3910, !3915, !3920, !3922, !3925, !3927, !3932, !3934, !3975, !0, !4241, !4243, !4246, !4251, !4272, !4275, !4277, !4279, !4284, !4286, !4288, !4290, !4292, !4294, !4296, !4298, !4300, !4302, !4304, !4306, !4308, !4310, !4312, !4314, !4316, !4318, !4320, !4322, !4324, !4326, !4328, !4330, !4332, !4334, !4336, !4338, !4343, !4345, !4347, !4349, !4351, !4353, !4355, !4357, !4359, !4361}
!3848 = !DIGlobalVariableExpression(var: !3849, expr: !DIExpression())
!3849 = distinct !DIGlobalVariable(name: "__param_force_addr", scope: !2, file: !3, line: 62, type: !3850, isLocal: true, isDefinition: true, align: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3852, line: 69, size: 320, elements: !3853)
!3852 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3853 = !{!3854, !3855, !3856, !3872, !3874, !3878, !3879}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !3852, line: 70, baseType: !126, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3851, file: !3852, line: 71, baseType: !109, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3851, file: !3852, line: 72, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3859)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3852, line: 47, size: 256, elements: !3860)
!3860 = !{!3861, !3862, !3867, !3871}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3859, file: !3852, line: 49, baseType: !7, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3859, file: !3852, line: 51, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!189, !126, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3859, file: !3852, line: 53, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!189, !205, !3866}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3859, file: !3852, line: 55, baseType: !387, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3851, file: !3852, line: 73, baseType: !3873, size: 16, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !778)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3851, file: !3852, line: 74, baseType: !3875, size: 8, offset: 208)
!3875 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !335, line: 16, baseType: !3876)
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !337, line: 20, baseType: !3877)
!3877 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3851, file: !3852, line: 75, baseType: !1271, size: 8, offset: 216)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !3852, line: 76, baseType: !3880, size: 64, offset: 256)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3851, file: !3852, line: 76, size: 64, elements: !3881)
!3881 = !{!3882, !3883, !3890}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3880, file: !3852, line: 77, baseType: !108, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3880, file: !3852, line: 78, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3886)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3852, line: 86, size: 128, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3886, file: !3852, line: 87, baseType: !7, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3886, file: !3852, line: 88, baseType: !205, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3880, file: !3852, line: 79, baseType: !3891, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3893)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3852, line: 92, size: 256, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898, !3899}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3893, file: !3852, line: 94, baseType: !7, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3893, file: !3852, line: 95, baseType: !7, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3893, file: !3852, line: 96, baseType: !2604, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3893, file: !3852, line: 97, baseType: !3857, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3893, file: !3852, line: 98, baseType: !108, size: 64, offset: 192)
!3900 = !DIGlobalVariableExpression(var: !3901, expr: !DIExpression())
!3901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addrtype238", scope: !2, file: !3, line: 62, type: !3902, isLocal: true, isDefinition: true, align: 8)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 280, elements: !3903)
!3903 = !{!3904}
!3904 = !DISubrange(count: 35)
!3905 = !DIGlobalVariableExpression(var: !3906, expr: !DIExpression())
!3906 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_addr239", scope: !2, file: !3, line: 63, type: !3907, isLocal: true, isDefinition: true, align: 8)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 536, elements: !3908)
!3908 = !{!3909}
!3909 = !DISubrange(count: 67)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author263", scope: !2, file: !3, line: 910, type: !3912, isLocal: true, isDefinition: true, align: 8)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 424, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 53)
!3915 = !DIGlobalVariableExpression(var: !3916, expr: !DIExpression())
!3916 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description264", scope: !2, file: !3, line: 911, type: !3917, isLocal: true, isDefinition: true, align: 8)
!3917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 344, elements: !3918)
!3918 = !{!3919}
!3919 = !DISubrange(count: 43)
!3920 = !DIGlobalVariableExpression(var: !3921, expr: !DIExpression())
!3921 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file265", scope: !2, file: !3, line: 912, type: !3902, isLocal: true, isDefinition: true, align: 8)
!3922 = !DIGlobalVariableExpression(var: !3923, expr: !DIExpression())
!3923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license266", scope: !2, file: !3, line: 912, type: !3924, isLocal: true, isDefinition: true, align: 8)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 160, elements: !2122)
!3925 = !DIGlobalVariableExpression(var: !3926, expr: !DIExpression())
!3926 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sm_sis5595_init267", scope: !2, file: !3, line: 914, type: !108, isLocal: true, isDefinition: true)
!3927 = !DIGlobalVariableExpression(var: !3928, expr: !DIExpression())
!3928 = distinct !DIGlobalVariable(name: "__exitcall_sm_sis5595_exit", scope: !2, file: !3, line: 915, type: !3929, isLocal: true, isDefinition: true)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3930, line: 117, baseType: !3931)
!3930 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "force_addr", scope: !2, file: !3, line: 61, type: !778, isLocal: true, isDefinition: true)
!3934 = !DIGlobalVariableExpression(var: !3935, expr: !DIExpression())
!3935 = distinct !DIGlobalVariable(name: "pdev", scope: !2, file: !3, line: 66, type: !3936, isLocal: true, isDefinition: true)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !3938, line: 22, size: 6208, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3961, !3969, !3970, !3973}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3937, file: !3938, line: 23, baseType: !126, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3937, file: !3938, line: 24, baseType: !189, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !3937, file: !3938, line: 25, baseType: !409, size: 8, offset: 96)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3937, file: !3938, line: 26, baseType: !142, size: 5568, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !3937, file: !3938, line: 27, baseType: !340, size: 64, offset: 5696)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3937, file: !3938, line: 28, baseType: !3781, size: 128, offset: 5760)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !3937, file: !3938, line: 29, baseType: !334, size: 32, offset: 5888)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3937, file: !3938, line: 30, baseType: !3948, size: 64, offset: 5952)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3950, line: 20, size: 512, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3951 = !{!3952, !3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3949, file: !3950, line: 21, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !113, line: 158, baseType: !2046)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3949, file: !3950, line: 22, baseType: !3953, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3949, file: !3950, line: 23, baseType: !126, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3949, file: !3950, line: 24, baseType: !243, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3949, file: !3950, line: 25, baseType: !243, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3949, file: !3950, line: 26, baseType: !3948, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3949, file: !3950, line: 26, baseType: !3948, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3949, file: !3950, line: 26, baseType: !3948, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !3937, file: !3938, line: 32, baseType: !3962, size: 64, offset: 6016)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !3377, line: 586, size: 256, elements: !3965)
!3965 = !{!3966, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3964, file: !3377, line: 587, baseType: !3967, size: 160)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 160, elements: !2122)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3964, file: !3377, line: 588, baseType: !3396, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3937, file: !3938, line: 33, baseType: !205, size: 64, offset: 6080)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !3937, file: !3938, line: 36, baseType: !3971, size: 64, offset: 6144)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !3938, line: 18, flags: DIFlagFwdDecl)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3937, file: !3938, line: 39, baseType: !3974, offset: 6208)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !3788, line: 8, elements: !177)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(name: "s_bridge", scope: !2, file: !3, line: 192, type: !3977, isLocal: true, isDefinition: true)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !3979, line: 309, size: 19264, elements: !3980)
!3979 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!3980 = !{!3981, !3982, !4044, !4045, !4046, !4047, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4139, !4140, !4141, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4215, !4216, !4217, !4218, !4219, !4220, !4222, !4223, !4224, !4227, !4234, !4235, !4236, !4237, !4238, !4239, !4240}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3978, file: !3979, line: 310, baseType: !150, size: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3978, file: !3979, line: 311, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !3979, line: 605, size: 8064, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3994, !3995, !3996, !4020, !4023, !4024, !4028, !4029, !4030, !4031, !4032, !4036, !4037, !4039, !4040, !4041, !4042, !4043}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3984, file: !3979, line: 606, baseType: !150, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3984, file: !3979, line: 607, baseType: !3983, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3984, file: !3979, line: 608, baseType: !150, size: 128, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3984, file: !3979, line: 609, baseType: !150, size: 128, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3984, file: !3979, line: 610, baseType: !3977, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3984, file: !3979, line: 611, baseType: !150, size: 128, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3984, file: !3979, line: 613, baseType: !3993, size: 256, offset: 640)
!3993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3948, size: 256, elements: !1074)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3984, file: !3979, line: 614, baseType: !150, size: 128, offset: 896)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3984, file: !3979, line: 615, baseType: !3949, size: 512, offset: 1024)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3984, file: !3979, line: 617, baseType: !3997, size: 64, offset: 1536)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !3979, line: 731, size: 320, elements: !3999)
!3999 = !{!4000, !4004, !4008, !4012, !4016}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3998, file: !3979, line: 732, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!189, !3983}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3998, file: !3979, line: 733, baseType: !4005, size: 64, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !3983}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3998, file: !3979, line: 734, baseType: !4009, size: 64, offset: 128)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!108, !3983, !7, !189}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3998, file: !3979, line: 735, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!189, !3983, !7, !189, !189, !1334}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3998, file: !3979, line: 736, baseType: !4017, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!189, !3983, !7, !189, !189, !334}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3984, file: !3979, line: 618, baseType: !4021, size: 64, offset: 1600)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !3979, line: 537, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3984, file: !3979, line: 619, baseType: !108, size: 64, offset: 1664)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3984, file: !3979, line: 620, baseType: !4025, size: 64, offset: 1728)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4027, line: 123, flags: DIFlagFwdDecl)
!4027 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3984, file: !3979, line: 622, baseType: !346, size: 8, offset: 1792)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3984, file: !3979, line: 623, baseType: !346, size: 8, offset: 1800)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3984, file: !3979, line: 624, baseType: !346, size: 8, offset: 1808)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3984, file: !3979, line: 625, baseType: !346, size: 8, offset: 1816)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3984, file: !3979, line: 630, baseType: !4033, size: 384, offset: 1824)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !4034)
!4034 = !{!4035}
!4035 = !DISubrange(count: 48)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3984, file: !3979, line: 632, baseType: !131, size: 16, offset: 2208)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3984, file: !3979, line: 633, baseType: !4038, size: 16, offset: 2224)
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !3979, line: 237, baseType: !131)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3984, file: !3979, line: 634, baseType: !141, size: 64, offset: 2240)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3984, file: !3979, line: 635, baseType: !142, size: 5568, offset: 2304)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3984, file: !3979, line: 636, baseType: !261, size: 64, offset: 7872)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3984, file: !3979, line: 637, baseType: !261, size: 64, offset: 7936)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3984, file: !3979, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3978, file: !3979, line: 312, baseType: !3983, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3978, file: !3979, line: 314, baseType: !108, size: 64, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3978, file: !3979, line: 315, baseType: !4025, size: 64, offset: 320)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3978, file: !3979, line: 316, baseType: !4048, size: 64, offset: 384)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !3979, line: 69, size: 832, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4056, !4057}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4049, file: !3979, line: 70, baseType: !3983, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4049, file: !3979, line: 71, baseType: !150, size: 128, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4049, file: !3979, line: 72, baseType: !4054, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !3979, line: 72, flags: DIFlagFwdDecl)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4049, file: !3979, line: 73, baseType: !346, size: 8, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4049, file: !3979, line: 74, baseType: !145, size: 512, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3978, file: !3979, line: 318, baseType: !7, size: 32, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3978, file: !3979, line: 319, baseType: !131, size: 16, offset: 480)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3978, file: !3979, line: 320, baseType: !131, size: 16, offset: 496)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3978, file: !3979, line: 321, baseType: !131, size: 16, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3978, file: !3979, line: 322, baseType: !131, size: 16, offset: 528)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3978, file: !3979, line: 323, baseType: !7, size: 32, offset: 544)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3978, file: !3979, line: 324, baseType: !1271, size: 8, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3978, file: !3979, line: 325, baseType: !1271, size: 8, offset: 584)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3978, file: !3979, line: 330, baseType: !1271, size: 8, offset: 592)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3978, file: !3979, line: 331, baseType: !1271, size: 8, offset: 600)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3978, file: !3979, line: 332, baseType: !1271, size: 8, offset: 608)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3978, file: !3979, line: 333, baseType: !1271, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3978, file: !3979, line: 334, baseType: !1271, size: 8, offset: 624)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3978, file: !3979, line: 335, baseType: !1271, size: 8, offset: 632)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3978, file: !3979, line: 336, baseType: !778, size: 16, offset: 640)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3978, file: !3979, line: 337, baseType: !3726, size: 64, offset: 704)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3978, file: !3979, line: 339, baseType: !4075, size: 64, offset: 768)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !3979, line: 858, size: 2048, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4092, !4096, !4100, !4104, !4108, !4109, !4113, !4132, !4133, !4134}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4076, file: !3979, line: 859, baseType: !150, size: 128)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4076, file: !3979, line: 860, baseType: !126, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4076, file: !3979, line: 861, baseType: !4081, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4083)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3377, line: 38, size: 256, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088, !4089, !4090, !4091}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4083, file: !3377, line: 39, baseType: !336, size: 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4083, file: !3377, line: 39, baseType: !336, size: 32, offset: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4083, file: !3377, line: 40, baseType: !336, size: 32, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4083, file: !3377, line: 40, baseType: !336, size: 32, offset: 96)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4083, file: !3377, line: 41, baseType: !336, size: 32, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4083, file: !3377, line: 41, baseType: !336, size: 32, offset: 160)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4083, file: !3377, line: 42, baseType: !3396, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4076, file: !3979, line: 862, baseType: !4093, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!189, !3977, !4081}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4076, file: !3979, line: 863, baseType: !4097, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !3977}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4076, file: !3979, line: 864, baseType: !4101, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!189, !3977, !3407}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4076, file: !3979, line: 865, baseType: !4105, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!189, !3977}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4076, file: !3979, line: 866, baseType: !4097, size: 64, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4076, file: !3979, line: 867, baseType: !4110, size: 64, offset: 576)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!189, !3977, !189}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4076, file: !3979, line: 868, baseType: !4114, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4116)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !3979, line: 795, size: 384, elements: !4117)
!4117 = !{!4118, !4124, !4128, !4129, !4130, !4131}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4116, file: !3979, line: 797, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!4122, !3977, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !3979, line: 772, baseType: !7)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !3979, line: 180, baseType: !7)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4116, file: !3979, line: 801, baseType: !4125, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!4122, !3977}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4116, file: !3979, line: 804, baseType: !4125, size: 64, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4116, file: !3979, line: 807, baseType: !4097, size: 64, offset: 192)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4116, file: !3979, line: 808, baseType: !4097, size: 64, offset: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4116, file: !3979, line: 811, baseType: !4097, size: 64, offset: 320)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4076, file: !3979, line: 869, baseType: !247, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4076, file: !3979, line: 870, baseType: !3365, size: 1152, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4076, file: !3979, line: 871, baseType: !4135, size: 128, offset: 1920)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !3979, line: 759, size: 128, elements: !4136)
!4136 = !{!4137, !4138}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4135, file: !3979, line: 760, baseType: !163)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4135, file: !3979, line: 761, baseType: !150, size: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3978, file: !3979, line: 340, baseType: !340, size: 64, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3978, file: !3979, line: 346, baseType: !3781, size: 128, offset: 896)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3978, file: !3979, line: 348, baseType: !4142, size: 32, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !3979, line: 155, baseType: !189)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3978, file: !3979, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3978, file: !3979, line: 352, baseType: !1271, size: 8, offset: 1064)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3978, file: !3979, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3978, file: !3979, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3978, file: !3979, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3978, file: !3979, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3978, file: !3979, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3978, file: !3979, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3978, file: !3979, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3978, file: !3979, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3978, file: !3979, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3978, file: !3979, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3978, file: !3979, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3978, file: !3979, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3978, file: !3979, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3978, file: !3979, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3978, file: !3979, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3978, file: !3979, line: 376, baseType: !7, size: 32, offset: 1120)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3978, file: !3979, line: 377, baseType: !7, size: 32, offset: 1152)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3978, file: !3979, line: 380, baseType: !4163, size: 64, offset: 1216)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !3979, line: 303, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3978, file: !3979, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3978, file: !3979, line: 383, baseType: !189, size: 32, offset: 1312)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3978, file: !3979, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3978, file: !3979, line: 387, baseType: !4123, size: 32, offset: 1376)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3978, file: !3979, line: 388, baseType: !142, size: 5568, offset: 1408)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3978, file: !3979, line: 390, baseType: !189, size: 32, offset: 6976)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3978, file: !3979, line: 396, baseType: !7, size: 32, offset: 7008)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3978, file: !3979, line: 397, baseType: !4173, size: 8704, offset: 7040)
!4173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3949, size: 8704, elements: !4174)
!4174 = !{!4175}
!4175 = !DISubrange(count: 17)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3978, file: !3979, line: 399, baseType: !409, size: 8, offset: 15744)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3978, file: !3979, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3978, file: !3979, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3978, file: !3979, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3978, file: !3979, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3978, file: !3979, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3978, file: !3979, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3978, file: !3979, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3978, file: !3979, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3978, file: !3979, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3978, file: !3979, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3978, file: !3979, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3978, file: !3979, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3978, file: !3979, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3978, file: !3979, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3978, file: !3979, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3978, file: !3979, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3978, file: !3979, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3978, file: !3979, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3978, file: !3979, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3978, file: !3979, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3978, file: !3979, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3978, file: !3979, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3978, file: !3979, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3978, file: !3979, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3978, file: !3979, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3978, file: !3979, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3978, file: !3979, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3978, file: !3979, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3978, file: !3979, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3978, file: !3979, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3978, file: !3979, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3978, file: !3979, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3978, file: !3979, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3978, file: !3979, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3978, file: !3979, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3978, file: !3979, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3978, file: !3979, line: 450, baseType: !4214, size: 16, offset: 15792)
!4214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !3979, line: 206, baseType: !131)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3978, file: !3979, line: 451, baseType: !666, size: 32, offset: 15808)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3978, file: !3979, line: 453, baseType: !3710, size: 512, offset: 15840)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3978, file: !3979, line: 454, baseType: !554, size: 64, offset: 16384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3978, file: !3979, line: 455, baseType: !261, size: 64, offset: 16448)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3978, file: !3979, line: 456, baseType: !189, size: 32, offset: 16512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3978, file: !3979, line: 457, baseType: !4221, size: 1088, offset: 16576)
!4221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 1088, elements: !4174)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3978, file: !3979, line: 458, baseType: !4221, size: 1088, offset: 17664)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3978, file: !3979, line: 469, baseType: !247, size: 64, offset: 18752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3978, file: !3979, line: 471, baseType: !4225, size: 64, offset: 18816)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !3979, line: 304, flags: DIFlagFwdDecl)
!4227 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3979, line: 478, baseType: !4228, size: 64, offset: 18880)
!4228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3978, file: !3979, line: 478, size: 64, elements: !4229)
!4229 = !{!4230, !4233}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4228, file: !3979, line: 479, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !3979, line: 305, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4228, file: !3979, line: 480, baseType: !3977, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3978, file: !3979, line: 482, baseType: !778, size: 16, offset: 18944)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3978, file: !3979, line: 483, baseType: !1271, size: 8, offset: 18960)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3978, file: !3979, line: 497, baseType: !778, size: 16, offset: 18976)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3978, file: !3979, line: 498, baseType: !2046, size: 64, offset: 19008)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3978, file: !3979, line: 499, baseType: !240, size: 64, offset: 19072)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3978, file: !3979, line: 500, baseType: !205, size: 64, offset: 19136)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3978, file: !3979, line: 502, baseType: !243, size: 64, offset: 19200)
!4241 = !DIGlobalVariableExpression(var: !4242, expr: !DIExpression())
!4242 = distinct !DIGlobalVariable(name: "sis5595_pci_driver", scope: !2, file: !3, line: 888, type: !4076, isLocal: true, isDefinition: true)
!4243 = !DIGlobalVariableExpression(var: !4244, expr: !DIExpression())
!4244 = distinct !DIGlobalVariable(name: "sis5595_pci_ids", scope: !2, file: !3, line: 739, type: !4245, isLocal: true, isDefinition: true)
!4245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4082, size: 512, elements: !1488)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(name: "blacklist", scope: !2, file: !3, line: 746, type: !4248, isLocal: true, isDefinition: true)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 320, elements: !4249)
!4249 = !{!4250}
!4250 = !DISubrange(count: 10)
!4251 = !DIGlobalVariableExpression(var: !4252, expr: !DIExpression())
!4252 = distinct !DIGlobalVariable(name: "sis5595_driver", scope: !2, file: !3, line: 202, type: !4253, isLocal: true, isDefinition: true)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !3938, line: 200, size: 1600, elements: !4254)
!4254 = !{!4255, !4259, !4260, !4264, !4268, !4269, !4270, !4271}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4253, file: !3938, line: 201, baseType: !4256, size: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!189, !3936}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4253, file: !3938, line: 202, baseType: !4256, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4253, file: !3938, line: 203, baseType: !4261, size: 64, offset: 128)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{null, !3936}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4253, file: !3938, line: 204, baseType: !4265, size: 64, offset: 192)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!189, !3936, !3407}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4253, file: !3938, line: 205, baseType: !4256, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4253, file: !3938, line: 206, baseType: !3365, size: 1152, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4253, file: !3938, line: 207, baseType: !3962, size: 64, offset: 1472)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !4253, file: !3938, line: 208, baseType: !409, size: 8, offset: 1536)
!4272 = !DIGlobalVariableExpression(var: !4273, expr: !DIExpression())
!4273 = distinct !DIGlobalVariable(name: "__key", scope: !4274, file: !3, line: 591, type: !564, isLocal: true, isDefinition: true)
!4274 = distinct !DISubprogram(name: "sis5595_probe", scope: !3, file: !3, line: 572, type: !4257, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(name: "__key", scope: !4274, file: !3, line: 592, type: !564, isLocal: true, isDefinition: true)
!4277 = !DIGlobalVariableExpression(var: !4278, expr: !DIExpression())
!4278 = distinct !DIGlobalVariable(name: "sis5595_group", scope: !2, file: !3, line: 543, type: !249, isLocal: true, isDefinition: true)
!4279 = !DIGlobalVariableExpression(var: !4280, expr: !DIExpression())
!4280 = distinct !DIGlobalVariable(name: "sis5595_attributes", scope: !2, file: !3, line: 511, type: !4281, isLocal: true, isDefinition: true)
!4281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 1728, elements: !4282)
!4282 = !{!4283}
!4283 = !DISubrange(count: 27)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_input", scope: !2, file: !3, line: 278, type: !115, isLocal: true, isDefinition: true)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_min", scope: !2, file: !3, line: 279, type: !115, isLocal: true, isDefinition: true)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_max", scope: !2, file: !3, line: 280, type: !115, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in0_alarm", scope: !2, file: !3, line: 494, type: !115, isLocal: true, isDefinition: true)
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_input", scope: !2, file: !3, line: 281, type: !115, isLocal: true, isDefinition: true)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_min", scope: !2, file: !3, line: 282, type: !115, isLocal: true, isDefinition: true)
!4296 = !DIGlobalVariableExpression(var: !4297, expr: !DIExpression())
!4297 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_max", scope: !2, file: !3, line: 283, type: !115, isLocal: true, isDefinition: true)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in1_alarm", scope: !2, file: !3, line: 495, type: !115, isLocal: true, isDefinition: true)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_input", scope: !2, file: !3, line: 284, type: !115, isLocal: true, isDefinition: true)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_min", scope: !2, file: !3, line: 285, type: !115, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_max", scope: !2, file: !3, line: 286, type: !115, isLocal: true, isDefinition: true)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in2_alarm", scope: !2, file: !3, line: 496, type: !115, isLocal: true, isDefinition: true)
!4308 = !DIGlobalVariableExpression(var: !4309, expr: !DIExpression())
!4309 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_input", scope: !2, file: !3, line: 287, type: !115, isLocal: true, isDefinition: true)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_min", scope: !2, file: !3, line: 288, type: !115, isLocal: true, isDefinition: true)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_max", scope: !2, file: !3, line: 289, type: !115, isLocal: true, isDefinition: true)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in3_alarm", scope: !2, file: !3, line: 497, type: !115, isLocal: true, isDefinition: true)
!4316 = !DIGlobalVariableExpression(var: !4317, expr: !DIExpression())
!4317 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_input", scope: !2, file: !3, line: 471, type: !115, isLocal: true, isDefinition: true)
!4318 = !DIGlobalVariableExpression(var: !4319, expr: !DIExpression())
!4319 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_min", scope: !2, file: !3, line: 472, type: !115, isLocal: true, isDefinition: true)
!4320 = !DIGlobalVariableExpression(var: !4321, expr: !DIExpression())
!4321 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_div", scope: !2, file: !3, line: 473, type: !115, isLocal: true, isDefinition: true)
!4322 = !DIGlobalVariableExpression(var: !4323, expr: !DIExpression())
!4323 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan1_alarm", scope: !2, file: !3, line: 499, type: !115, isLocal: true, isDefinition: true)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_input", scope: !2, file: !3, line: 474, type: !115, isLocal: true, isDefinition: true)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_min", scope: !2, file: !3, line: 475, type: !115, isLocal: true, isDefinition: true)
!4328 = !DIGlobalVariableExpression(var: !4329, expr: !DIExpression())
!4329 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_div", scope: !2, file: !3, line: 476, type: !115, isLocal: true, isDefinition: true)
!4330 = !DIGlobalVariableExpression(var: !4331, expr: !DIExpression())
!4331 = distinct !DIGlobalVariable(name: "sensor_dev_attr_fan2_alarm", scope: !2, file: !3, line: 500, type: !115, isLocal: true, isDefinition: true)
!4332 = !DIGlobalVariableExpression(var: !4333, expr: !DIExpression())
!4333 = distinct !DIGlobalVariable(name: "dev_attr_alarms", scope: !2, file: !3, line: 485, type: !119, isLocal: true, isDefinition: true)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 509, type: !119, isLocal: true, isDefinition: true)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(name: "sis5595_group_in4", scope: !2, file: !3, line: 555, type: !249, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(name: "sis5595_attributes_in4", scope: !2, file: !3, line: 547, type: !4340, isLocal: true, isDefinition: true)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 320, elements: !4341)
!4341 = !{!4342}
!4342 = !DISubrange(count: 5)
!4343 = !DIGlobalVariableExpression(var: !4344, expr: !DIExpression())
!4344 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_input", scope: !2, file: !3, line: 290, type: !115, isLocal: true, isDefinition: true)
!4345 = !DIGlobalVariableExpression(var: !4346, expr: !DIExpression())
!4346 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_min", scope: !2, file: !3, line: 291, type: !115, isLocal: true, isDefinition: true)
!4347 = !DIGlobalVariableExpression(var: !4348, expr: !DIExpression())
!4348 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_max", scope: !2, file: !3, line: 292, type: !115, isLocal: true, isDefinition: true)
!4349 = !DIGlobalVariableExpression(var: !4350, expr: !DIExpression())
!4350 = distinct !DIGlobalVariable(name: "sensor_dev_attr_in4_alarm", scope: !2, file: !3, line: 498, type: !115, isLocal: true, isDefinition: true)
!4351 = !DIGlobalVariableExpression(var: !4352, expr: !DIExpression())
!4352 = distinct !DIGlobalVariable(name: "sis5595_group_temp1", scope: !2, file: !3, line: 567, type: !249, isLocal: true, isDefinition: true)
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(name: "sis5595_attributes_temp1", scope: !2, file: !3, line: 559, type: !4340, isLocal: true, isDefinition: true)
!4355 = !DIGlobalVariableExpression(var: !4356, expr: !DIExpression())
!4356 = distinct !DIGlobalVariable(name: "dev_attr_temp1_input", scope: !2, file: !3, line: 354, type: !119, isLocal: true, isDefinition: true)
!4357 = !DIGlobalVariableExpression(var: !4358, expr: !DIExpression())
!4358 = distinct !DIGlobalVariable(name: "dev_attr_temp1_max", scope: !2, file: !3, line: 355, type: !119, isLocal: true, isDefinition: true)
!4359 = !DIGlobalVariableExpression(var: !4360, expr: !DIExpression())
!4360 = distinct !DIGlobalVariable(name: "dev_attr_temp1_max_hyst", scope: !2, file: !3, line: 356, type: !119, isLocal: true, isDefinition: true)
!4361 = !DIGlobalVariableExpression(var: !4362, expr: !DIExpression())
!4362 = distinct !DIGlobalVariable(name: "sensor_dev_attr_temp1_alarm", scope: !2, file: !3, line: 501, type: !115, isLocal: true, isDefinition: true)
!4363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 152, elements: !4364)
!4364 = !{!4365}
!4365 = !DISubrange(count: 19)
!4366 = !{i32 7, !"Dwarf Version", i32 4}
!4367 = !{i32 2, !"Debug Info Version", i32 3}
!4368 = !{i32 1, !"wchar_size", i32 2}
!4369 = !{i32 1, !"Code Model", i32 2}
!4370 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4371 = distinct !DISubprogram(name: "sm_sis5595_exit", scope: !3, file: !3, line: 899, type: !1799, scopeLine: 900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4372 = !DILocation(line: 901, column: 2, scope: !4371)
!4373 = !DILocation(line: 902, column: 6, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 902, column: 6)
!4375 = !DILocation(line: 902, column: 15, scope: !4374)
!4376 = !DILocation(line: 902, column: 6, scope: !4371)
!4377 = !DILocation(line: 903, column: 30, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 902, column: 24)
!4379 = !DILocation(line: 903, column: 3, scope: !4378)
!4380 = !DILocation(line: 904, column: 3, scope: !4378)
!4381 = !DILocation(line: 905, column: 15, scope: !4378)
!4382 = !DILocation(line: 905, column: 3, scope: !4378)
!4383 = !DILocation(line: 906, column: 12, scope: !4378)
!4384 = !DILocation(line: 907, column: 2, scope: !4378)
!4385 = !DILocation(line: 908, column: 1, scope: !4371)
!4386 = distinct !DISubprogram(name: "sm_sis5595_init", scope: !3, file: !3, line: 894, type: !4387, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!189}
!4389 = !DILocation(line: 896, column: 9, scope: !4386)
!4390 = !DILocation(line: 896, column: 2, scope: !4386)
!4391 = distinct !DISubprogram(name: "sis5595_pci_probe", scope: !3, file: !3, line: 803, type: !4094, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4392 = !DILocalVariable(name: "dev", arg: 1, scope: !4391, file: !3, line: 803, type: !3977)
!4393 = !DILocation(line: 803, column: 46, scope: !4391)
!4394 = !DILocalVariable(name: "id", arg: 2, scope: !4391, file: !3, line: 804, type: !4081)
!4395 = !DILocation(line: 804, column: 40, scope: !4391)
!4396 = !DILocalVariable(name: "address", scope: !4391, file: !3, line: 806, type: !778)
!4397 = !DILocation(line: 806, column: 6, scope: !4391)
!4398 = !DILocalVariable(name: "enable", scope: !4391, file: !3, line: 807, type: !1271)
!4399 = !DILocation(line: 807, column: 5, scope: !4391)
!4400 = !DILocalVariable(name: "i", scope: !4391, file: !3, line: 808, type: !624)
!4401 = !DILocation(line: 808, column: 7, scope: !4391)
!4402 = !DILocation(line: 810, column: 9, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 810, column: 2)
!4404 = !DILocation(line: 810, column: 7, scope: !4403)
!4405 = !DILocation(line: 810, column: 23, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 810, column: 2)
!4407 = !DILocation(line: 810, column: 22, scope: !4406)
!4408 = !DILocation(line: 810, column: 25, scope: !4406)
!4409 = !DILocation(line: 810, column: 2, scope: !4403)
!4410 = !DILocalVariable(name: "d", scope: !4411, file: !3, line: 811, type: !3977)
!4411 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 810, column: 36)
!4412 = !DILocation(line: 811, column: 19, scope: !4411)
!4413 = !DILocation(line: 812, column: 41, scope: !4411)
!4414 = !DILocation(line: 812, column: 40, scope: !4411)
!4415 = !DILocation(line: 812, column: 7, scope: !4411)
!4416 = !DILocation(line: 812, column: 5, scope: !4411)
!4417 = !DILocation(line: 813, column: 7, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 813, column: 7)
!4419 = !DILocation(line: 813, column: 7, scope: !4411)
!4420 = !DILocation(line: 814, column: 4, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 813, column: 10)
!4422 = !DILocation(line: 817, column: 16, scope: !4421)
!4423 = !DILocation(line: 817, column: 4, scope: !4421)
!4424 = !DILocation(line: 818, column: 4, scope: !4421)
!4425 = !DILocation(line: 820, column: 2, scope: !4411)
!4426 = !DILocation(line: 810, column: 32, scope: !4406)
!4427 = !DILocation(line: 810, column: 2, scope: !4406)
!4428 = distinct !{!4428, !4409, !4429}
!4429 = !DILocation(line: 820, column: 2, scope: !4403)
!4430 = !DILocation(line: 822, column: 13, scope: !4391)
!4431 = !DILocation(line: 823, column: 6, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 823, column: 6)
!4433 = !DILocation(line: 823, column: 6, scope: !4391)
!4434 = !DILocation(line: 824, column: 3, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 823, column: 18)
!4436 = !DILocation(line: 825, column: 25, scope: !4435)
!4437 = !DILocation(line: 825, column: 48, scope: !4435)
!4438 = !DILocation(line: 825, column: 3, scope: !4435)
!4439 = !DILocation(line: 826, column: 2, scope: !4435)
!4440 = !DILocation(line: 829, column: 27, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 828, column: 6)
!4442 = !DILocation(line: 829, column: 6, scope: !4441)
!4443 = !DILocation(line: 828, column: 25, scope: !4441)
!4444 = !DILocation(line: 828, column: 6, scope: !4391)
!4445 = !DILocation(line: 830, column: 3, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 829, column: 61)
!4447 = !DILocation(line: 831, column: 3, scope: !4446)
!4448 = !DILocation(line: 834, column: 10, scope: !4391)
!4449 = !DILocation(line: 835, column: 7, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 835, column: 6)
!4451 = !DILocation(line: 835, column: 6, scope: !4391)
!4452 = !DILocation(line: 836, column: 3, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4450, file: !3, line: 835, column: 16)
!4454 = !DILocation(line: 838, column: 3, scope: !4453)
!4455 = !DILocation(line: 840, column: 6, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 840, column: 6)
!4457 = !DILocation(line: 840, column: 17, scope: !4456)
!4458 = !DILocation(line: 840, column: 20, scope: !4456)
!4459 = !DILocation(line: 840, column: 31, scope: !4456)
!4460 = !DILocation(line: 840, column: 28, scope: !4456)
!4461 = !DILocation(line: 840, column: 6, scope: !4391)
!4462 = !DILocation(line: 842, column: 3, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 840, column: 43)
!4464 = !DILocation(line: 843, column: 3, scope: !4463)
!4465 = !DILocation(line: 847, column: 27, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 846, column: 6)
!4467 = !DILocation(line: 847, column: 6, scope: !4466)
!4468 = !DILocation(line: 846, column: 25, scope: !4466)
!4469 = !DILocation(line: 846, column: 6, scope: !4391)
!4470 = !DILocation(line: 848, column: 3, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 847, column: 62)
!4472 = !DILocation(line: 849, column: 3, scope: !4471)
!4473 = !DILocation(line: 851, column: 8, scope: !4474)
!4474 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 851, column: 6)
!4475 = !DILocation(line: 851, column: 15, scope: !4474)
!4476 = !DILocation(line: 851, column: 6, scope: !4391)
!4477 = !DILocation(line: 853, column: 30, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 852, column: 7)
!4479 = distinct !DILexicalBlock(scope: !4474, file: !3, line: 851, column: 24)
!4480 = !DILocation(line: 854, column: 9, scope: !4478)
!4481 = !DILocation(line: 854, column: 16, scope: !4478)
!4482 = !DILocation(line: 853, column: 8, scope: !4478)
!4483 = !DILocation(line: 852, column: 27, scope: !4478)
!4484 = !DILocation(line: 855, column: 4, scope: !4478)
!4485 = !DILocation(line: 856, column: 29, scope: !4478)
!4486 = !DILocation(line: 856, column: 8, scope: !4478)
!4487 = !DILocation(line: 855, column: 27, scope: !4478)
!4488 = !DILocation(line: 857, column: 4, scope: !4478)
!4489 = !DILocation(line: 857, column: 10, scope: !4478)
!4490 = !DILocation(line: 857, column: 17, scope: !4478)
!4491 = !DILocation(line: 852, column: 7, scope: !4479)
!4492 = !DILocation(line: 859, column: 4, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 857, column: 27)
!4494 = !DILocation(line: 860, column: 4, scope: !4493)
!4495 = !DILocation(line: 862, column: 2, scope: !4479)
!4496 = !DILocation(line: 864, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 864, column: 6)
!4498 = !DILocation(line: 864, column: 6, scope: !4391)
!4499 = !DILocation(line: 866, column: 3, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 864, column: 49)
!4501 = !DILocation(line: 869, column: 25, scope: !4391)
!4502 = !DILocation(line: 869, column: 13, scope: !4391)
!4503 = !DILocation(line: 869, column: 11, scope: !4391)
!4504 = !DILocation(line: 871, column: 25, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 871, column: 6)
!4506 = !DILocation(line: 871, column: 6, scope: !4505)
!4507 = !DILocation(line: 871, column: 6, scope: !4391)
!4508 = !DILocation(line: 872, column: 3, scope: !4505)
!4509 = !DILocation(line: 879, column: 2, scope: !4391)
!4510 = !DILabel(scope: !4391, name: "exit_unregister", file: !3, line: 881)
!4511 = !DILocation(line: 881, column: 1, scope: !4391)
!4512 = !DILocation(line: 882, column: 14, scope: !4391)
!4513 = !DILocation(line: 882, column: 2, scope: !4391)
!4514 = !DILocation(line: 883, column: 2, scope: !4391)
!4515 = !DILabel(scope: !4391, name: "exit", file: !3, line: 884)
!4516 = !DILocation(line: 884, column: 1, scope: !4391)
!4517 = !DILocation(line: 885, column: 2, scope: !4391)
!4518 = !DILocation(line: 886, column: 1, scope: !4391)
!4519 = distinct !DISubprogram(name: "sis5595_device_add", scope: !3, file: !3, line: 762, type: !4520, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!189, !131}
!4522 = !DILocalVariable(name: "address", arg: 1, scope: !4519, file: !3, line: 762, type: !131)
!4523 = !DILocation(line: 762, column: 46, scope: !4519)
!4524 = !DILocalVariable(name: "res", scope: !4519, file: !3, line: 764, type: !3949)
!4525 = !DILocation(line: 764, column: 18, scope: !4519)
!4526 = !DILocation(line: 764, column: 24, scope: !4519)
!4527 = !DILocation(line: 765, column: 12, scope: !4519)
!4528 = !DILocation(line: 766, column: 10, scope: !4519)
!4529 = !DILocation(line: 766, column: 18, scope: !4519)
!4530 = !DILocation(line: 766, column: 35, scope: !4519)
!4531 = !DILocalVariable(name: "err", scope: !4519, file: !3, line: 770, type: !189)
!4532 = !DILocation(line: 770, column: 6, scope: !4519)
!4533 = !DILocation(line: 772, column: 8, scope: !4519)
!4534 = !DILocation(line: 772, column: 6, scope: !4519)
!4535 = !DILocation(line: 773, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 773, column: 6)
!4537 = !DILocation(line: 773, column: 6, scope: !4519)
!4538 = !DILocation(line: 774, column: 3, scope: !4536)
!4539 = !DILocation(line: 776, column: 42, scope: !4519)
!4540 = !DILocation(line: 776, column: 9, scope: !4519)
!4541 = !DILocation(line: 776, column: 7, scope: !4519)
!4542 = !DILocation(line: 777, column: 7, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 777, column: 6)
!4544 = !DILocation(line: 777, column: 6, scope: !4519)
!4545 = !DILocation(line: 778, column: 7, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 777, column: 13)
!4547 = !DILocation(line: 779, column: 3, scope: !4546)
!4548 = !DILocation(line: 780, column: 3, scope: !4546)
!4549 = !DILocation(line: 783, column: 38, scope: !4519)
!4550 = !DILocation(line: 783, column: 8, scope: !4519)
!4551 = !DILocation(line: 783, column: 6, scope: !4519)
!4552 = !DILocation(line: 784, column: 6, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 784, column: 6)
!4554 = !DILocation(line: 784, column: 6, scope: !4519)
!4555 = !DILocation(line: 785, column: 3, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 784, column: 11)
!4557 = !DILocation(line: 786, column: 3, scope: !4556)
!4558 = !DILocation(line: 789, column: 28, scope: !4519)
!4559 = !DILocation(line: 789, column: 8, scope: !4519)
!4560 = !DILocation(line: 789, column: 6, scope: !4519)
!4561 = !DILocation(line: 790, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 790, column: 6)
!4563 = !DILocation(line: 790, column: 6, scope: !4519)
!4564 = !DILocation(line: 791, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4562, file: !3, line: 790, column: 11)
!4566 = !DILocation(line: 792, column: 3, scope: !4565)
!4567 = !DILocation(line: 795, column: 2, scope: !4519)
!4568 = !DILabel(scope: !4519, name: "exit_device_put", file: !3, line: 797)
!4569 = !DILocation(line: 797, column: 1, scope: !4519)
!4570 = !DILocation(line: 798, column: 22, scope: !4519)
!4571 = !DILocation(line: 798, column: 2, scope: !4519)
!4572 = !DILabel(scope: !4519, name: "exit", file: !3, line: 799)
!4573 = !DILocation(line: 799, column: 1, scope: !4519)
!4574 = !DILocation(line: 800, column: 9, scope: !4519)
!4575 = !DILocation(line: 800, column: 2, scope: !4519)
!4576 = !DILocation(line: 801, column: 1, scope: !4519)
!4577 = !DILocalVariable(name: "pdev", arg: 1, scope: !4274, file: !3, line: 572, type: !3936)
!4578 = !DILocation(line: 572, column: 50, scope: !4274)
!4579 = !DILocalVariable(name: "err", scope: !4274, file: !3, line: 574, type: !189)
!4580 = !DILocation(line: 574, column: 6, scope: !4274)
!4581 = !DILocalVariable(name: "i", scope: !4274, file: !3, line: 575, type: !189)
!4582 = !DILocation(line: 575, column: 6, scope: !4274)
!4583 = !DILocalVariable(name: "data", scope: !4274, file: !3, line: 576, type: !4584)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sis5595_data", file: !3, line: 168, size: 960, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4598, !4599, !4600, !4602, !4603, !4604, !4605, !4606, !4607}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4585, file: !3, line: 169, baseType: !131, size: 16)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4585, file: !3, line: 170, baseType: !126, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "hwmon_dev", scope: !4585, file: !3, line: 171, baseType: !141, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4585, file: !3, line: 172, baseType: !1092, size: 192, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4585, file: !3, line: 174, baseType: !1092, size: 192, offset: 384)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !4585, file: !3, line: 175, baseType: !128, size: 8, offset: 576)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "last_updated", scope: !4585, file: !3, line: 176, baseType: !243, size: 64, offset: 640)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "maxins", scope: !4585, file: !3, line: 177, baseType: !128, size: 8, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4585, file: !3, line: 178, baseType: !1271, size: 8, offset: 712)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !4585, file: !3, line: 180, baseType: !4597, size: 40, offset: 720)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 40, elements: !4341)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "in_max", scope: !4585, file: !3, line: 181, baseType: !4597, size: 40, offset: 760)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "in_min", scope: !4585, file: !3, line: 182, baseType: !4597, size: 40, offset: 800)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "fan", scope: !4585, file: !3, line: 183, baseType: !4601, size: 16, offset: 840)
!4601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 16, elements: !1488)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "fan_min", scope: !4585, file: !3, line: 184, baseType: !4601, size: 16, offset: 856)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4585, file: !3, line: 185, baseType: !3875, size: 8, offset: 872)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "temp_over", scope: !4585, file: !3, line: 186, baseType: !3875, size: 8, offset: 880)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "temp_hyst", scope: !4585, file: !3, line: 187, baseType: !3875, size: 8, offset: 888)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "fan_div", scope: !4585, file: !3, line: 188, baseType: !4601, size: 16, offset: 896)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "alarms", scope: !4585, file: !3, line: 189, baseType: !778, size: 16, offset: 912)
!4608 = !DILocation(line: 576, column: 23, scope: !4274)
!4609 = !DILocalVariable(name: "res", scope: !4274, file: !3, line: 577, type: !3948)
!4610 = !DILocation(line: 577, column: 19, scope: !4274)
!4611 = !DILocalVariable(name: "val", scope: !4274, file: !3, line: 578, type: !128)
!4612 = !DILocation(line: 578, column: 7, scope: !4274)
!4613 = !DILocation(line: 581, column: 30, scope: !4274)
!4614 = !DILocation(line: 581, column: 8, scope: !4274)
!4615 = !DILocation(line: 581, column: 6, scope: !4274)
!4616 = !DILocation(line: 582, column: 7, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 582, column: 6)
!4618 = !DILocation(line: 582, column: 6, scope: !4274)
!4619 = !DILocation(line: 584, column: 3, scope: !4617)
!4620 = !DILocation(line: 586, column: 23, scope: !4274)
!4621 = !DILocation(line: 586, column: 29, scope: !4274)
!4622 = !DILocation(line: 586, column: 9, scope: !4274)
!4623 = !DILocation(line: 586, column: 7, scope: !4274)
!4624 = !DILocation(line: 588, column: 7, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 588, column: 6)
!4626 = !DILocation(line: 588, column: 6, scope: !4274)
!4627 = !DILocation(line: 589, column: 3, scope: !4625)
!4628 = !DILocation(line: 591, column: 2, scope: !4274)
!4629 = !DILocation(line: 591, column: 2, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 591, column: 2)
!4631 = !DILocation(line: 592, column: 2, scope: !4274)
!4632 = !DILocation(line: 592, column: 2, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 592, column: 2)
!4634 = !DILocation(line: 593, column: 15, scope: !4274)
!4635 = !DILocation(line: 593, column: 20, scope: !4274)
!4636 = !DILocation(line: 593, column: 2, scope: !4274)
!4637 = !DILocation(line: 593, column: 8, scope: !4274)
!4638 = !DILocation(line: 593, column: 13, scope: !4274)
!4639 = !DILocation(line: 594, column: 2, scope: !4274)
!4640 = !DILocation(line: 594, column: 8, scope: !4274)
!4641 = !DILocation(line: 594, column: 13, scope: !4274)
!4642 = !DILocation(line: 595, column: 23, scope: !4274)
!4643 = !DILocation(line: 595, column: 29, scope: !4274)
!4644 = !DILocation(line: 595, column: 2, scope: !4274)
!4645 = !DILocation(line: 600, column: 19, scope: !4274)
!4646 = !DILocation(line: 600, column: 29, scope: !4274)
!4647 = !DILocation(line: 600, column: 2, scope: !4274)
!4648 = !DILocation(line: 600, column: 8, scope: !4274)
!4649 = !DILocation(line: 600, column: 17, scope: !4274)
!4650 = !DILocation(line: 602, column: 2, scope: !4274)
!4651 = !DILocation(line: 602, column: 8, scope: !4274)
!4652 = !DILocation(line: 602, column: 15, scope: !4274)
!4653 = !DILocation(line: 603, column: 6, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 603, column: 6)
!4655 = !DILocation(line: 603, column: 12, scope: !4654)
!4656 = !DILocation(line: 603, column: 21, scope: !4654)
!4657 = !DILocation(line: 603, column: 6, scope: !4274)
!4658 = !DILocation(line: 604, column: 24, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4654, file: !3, line: 603, column: 33)
!4660 = !DILocation(line: 604, column: 3, scope: !4659)
!4661 = !DILocation(line: 605, column: 9, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 605, column: 7)
!4663 = !DILocation(line: 605, column: 13, scope: !4662)
!4664 = !DILocation(line: 605, column: 7, scope: !4659)
!4665 = !DILocation(line: 607, column: 4, scope: !4662)
!4666 = !DILocation(line: 607, column: 10, scope: !4662)
!4667 = !DILocation(line: 607, column: 17, scope: !4662)
!4668 = !DILocation(line: 608, column: 2, scope: !4659)
!4669 = !DILocation(line: 611, column: 22, scope: !4274)
!4670 = !DILocation(line: 611, column: 2, scope: !4274)
!4671 = !DILocation(line: 614, column: 9, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 614, column: 2)
!4673 = !DILocation(line: 614, column: 7, scope: !4672)
!4674 = !DILocation(line: 614, column: 14, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 614, column: 2)
!4676 = !DILocation(line: 614, column: 16, scope: !4675)
!4677 = !DILocation(line: 614, column: 2, scope: !4672)
!4678 = !DILocation(line: 615, column: 41, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 614, column: 26)
!4680 = !DILocation(line: 616, column: 6, scope: !4679)
!4681 = !DILocation(line: 615, column: 22, scope: !4679)
!4682 = !DILocation(line: 615, column: 3, scope: !4679)
!4683 = !DILocation(line: 615, column: 9, scope: !4679)
!4684 = !DILocation(line: 615, column: 17, scope: !4679)
!4685 = !DILocation(line: 615, column: 20, scope: !4679)
!4686 = !DILocation(line: 617, column: 2, scope: !4679)
!4687 = !DILocation(line: 614, column: 22, scope: !4675)
!4688 = !DILocation(line: 614, column: 2, scope: !4675)
!4689 = distinct !{!4689, !4677, !4690}
!4690 = !DILocation(line: 617, column: 2, scope: !4672)
!4691 = !DILocation(line: 620, column: 28, scope: !4274)
!4692 = !DILocation(line: 620, column: 34, scope: !4274)
!4693 = !DILocation(line: 620, column: 38, scope: !4274)
!4694 = !DILocation(line: 620, column: 8, scope: !4274)
!4695 = !DILocation(line: 620, column: 6, scope: !4274)
!4696 = !DILocation(line: 621, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 621, column: 6)
!4698 = !DILocation(line: 621, column: 6, scope: !4274)
!4699 = !DILocation(line: 622, column: 10, scope: !4697)
!4700 = !DILocation(line: 622, column: 3, scope: !4697)
!4701 = !DILocation(line: 623, column: 6, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 623, column: 6)
!4703 = !DILocation(line: 623, column: 12, scope: !4702)
!4704 = !DILocation(line: 623, column: 19, scope: !4702)
!4705 = !DILocation(line: 623, column: 6, scope: !4274)
!4706 = !DILocation(line: 624, column: 29, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 623, column: 25)
!4708 = !DILocation(line: 624, column: 35, scope: !4707)
!4709 = !DILocation(line: 624, column: 39, scope: !4707)
!4710 = !DILocation(line: 624, column: 9, scope: !4707)
!4711 = !DILocation(line: 624, column: 7, scope: !4707)
!4712 = !DILocation(line: 625, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 625, column: 7)
!4714 = !DILocation(line: 625, column: 7, scope: !4707)
!4715 = !DILocation(line: 626, column: 4, scope: !4713)
!4716 = !DILocation(line: 627, column: 2, scope: !4707)
!4717 = !DILocation(line: 628, column: 29, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 627, column: 9)
!4719 = !DILocation(line: 628, column: 35, scope: !4718)
!4720 = !DILocation(line: 628, column: 39, scope: !4718)
!4721 = !DILocation(line: 628, column: 9, scope: !4718)
!4722 = !DILocation(line: 628, column: 7, scope: !4718)
!4723 = !DILocation(line: 629, column: 7, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 629, column: 7)
!4725 = !DILocation(line: 629, column: 7, scope: !4718)
!4726 = !DILocation(line: 630, column: 4, scope: !4724)
!4727 = !DILocation(line: 633, column: 43, scope: !4274)
!4728 = !DILocation(line: 633, column: 49, scope: !4274)
!4729 = !DILocation(line: 633, column: 20, scope: !4274)
!4730 = !DILocation(line: 633, column: 2, scope: !4274)
!4731 = !DILocation(line: 633, column: 8, scope: !4274)
!4732 = !DILocation(line: 633, column: 18, scope: !4274)
!4733 = !DILocation(line: 634, column: 13, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 634, column: 6)
!4735 = !DILocation(line: 634, column: 19, scope: !4734)
!4736 = !DILocation(line: 634, column: 6, scope: !4734)
!4737 = !DILocation(line: 634, column: 6, scope: !4274)
!4738 = !DILocation(line: 635, column: 17, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 634, column: 31)
!4740 = !DILocation(line: 635, column: 23, scope: !4739)
!4741 = !DILocation(line: 635, column: 9, scope: !4739)
!4742 = !DILocation(line: 635, column: 7, scope: !4739)
!4743 = !DILocation(line: 636, column: 3, scope: !4739)
!4744 = !DILocation(line: 639, column: 2, scope: !4274)
!4745 = !DILabel(scope: !4274, name: "exit_remove_files", file: !3, line: 641)
!4746 = !DILocation(line: 641, column: 1, scope: !4274)
!4747 = !DILocation(line: 642, column: 22, scope: !4274)
!4748 = !DILocation(line: 642, column: 28, scope: !4274)
!4749 = !DILocation(line: 642, column: 32, scope: !4274)
!4750 = !DILocation(line: 642, column: 2, scope: !4274)
!4751 = !DILocation(line: 643, column: 22, scope: !4274)
!4752 = !DILocation(line: 643, column: 28, scope: !4274)
!4753 = !DILocation(line: 643, column: 32, scope: !4274)
!4754 = !DILocation(line: 643, column: 2, scope: !4274)
!4755 = !DILocation(line: 644, column: 22, scope: !4274)
!4756 = !DILocation(line: 644, column: 28, scope: !4274)
!4757 = !DILocation(line: 644, column: 32, scope: !4274)
!4758 = !DILocation(line: 644, column: 2, scope: !4274)
!4759 = !DILocation(line: 645, column: 9, scope: !4274)
!4760 = !DILocation(line: 645, column: 2, scope: !4274)
!4761 = !DILocation(line: 646, column: 1, scope: !4274)
!4762 = distinct !DISubprogram(name: "sis5595_remove", scope: !3, file: !3, line: 648, type: !4257, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4763 = !DILocalVariable(name: "pdev", arg: 1, scope: !4762, file: !3, line: 648, type: !3936)
!4764 = !DILocation(line: 648, column: 51, scope: !4762)
!4765 = !DILocalVariable(name: "data", scope: !4762, file: !3, line: 650, type: !4584)
!4766 = !DILocation(line: 650, column: 23, scope: !4762)
!4767 = !DILocation(line: 650, column: 51, scope: !4762)
!4768 = !DILocation(line: 650, column: 30, scope: !4762)
!4769 = !DILocation(line: 652, column: 26, scope: !4762)
!4770 = !DILocation(line: 652, column: 32, scope: !4762)
!4771 = !DILocation(line: 652, column: 2, scope: !4762)
!4772 = !DILocation(line: 653, column: 22, scope: !4762)
!4773 = !DILocation(line: 653, column: 28, scope: !4762)
!4774 = !DILocation(line: 653, column: 32, scope: !4762)
!4775 = !DILocation(line: 653, column: 2, scope: !4762)
!4776 = !DILocation(line: 654, column: 22, scope: !4762)
!4777 = !DILocation(line: 654, column: 28, scope: !4762)
!4778 = !DILocation(line: 654, column: 32, scope: !4762)
!4779 = !DILocation(line: 654, column: 2, scope: !4762)
!4780 = !DILocation(line: 655, column: 22, scope: !4762)
!4781 = !DILocation(line: 655, column: 28, scope: !4762)
!4782 = !DILocation(line: 655, column: 32, scope: !4762)
!4783 = !DILocation(line: 655, column: 2, scope: !4762)
!4784 = !DILocation(line: 657, column: 2, scope: !4762)
!4785 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4786, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4786 = !DISubroutineType(types: !4787)
!4787 = !{!108, !141, !240, !112}
!4788 = !DILocalVariable(name: "dev", arg: 1, scope: !4785, file: !73, line: 215, type: !141)
!4789 = !DILocation(line: 215, column: 49, scope: !4785)
!4790 = !DILocalVariable(name: "size", arg: 2, scope: !4785, file: !73, line: 215, type: !240)
!4791 = !DILocation(line: 215, column: 61, scope: !4785)
!4792 = !DILocalVariable(name: "gfp", arg: 3, scope: !4785, file: !73, line: 215, type: !112)
!4793 = !DILocation(line: 215, column: 73, scope: !4785)
!4794 = !DILocation(line: 217, column: 22, scope: !4785)
!4795 = !DILocation(line: 217, column: 27, scope: !4785)
!4796 = !DILocation(line: 217, column: 33, scope: !4785)
!4797 = !DILocation(line: 217, column: 37, scope: !4785)
!4798 = !DILocation(line: 217, column: 9, scope: !4785)
!4799 = !DILocation(line: 217, column: 2, scope: !4785)
!4800 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !3938, file: !3938, line: 236, type: !4801, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{null, !3936, !108}
!4803 = !DILocalVariable(name: "pdev", arg: 1, scope: !4800, file: !3938, line: 236, type: !3936)
!4804 = !DILocation(line: 236, column: 65, scope: !4800)
!4805 = !DILocalVariable(name: "data", arg: 2, scope: !4800, file: !3938, line: 237, type: !108)
!4806 = !DILocation(line: 237, column: 12, scope: !4800)
!4807 = !DILocation(line: 239, column: 19, scope: !4800)
!4808 = !DILocation(line: 239, column: 25, scope: !4800)
!4809 = !DILocation(line: 239, column: 30, scope: !4800)
!4810 = !DILocation(line: 239, column: 2, scope: !4800)
!4811 = !DILocation(line: 240, column: 1, scope: !4800)
!4812 = distinct !DISubprogram(name: "sis5595_init_device", scope: !3, file: !3, line: 681, type: !4813, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{null, !4584}
!4815 = !DILocalVariable(name: "data", arg: 1, scope: !4812, file: !3, line: 681, type: !4584)
!4816 = !DILocation(line: 681, column: 54, scope: !4812)
!4817 = !DILocalVariable(name: "config", scope: !4812, file: !3, line: 683, type: !1271)
!4818 = !DILocation(line: 683, column: 5, scope: !4812)
!4819 = !DILocation(line: 683, column: 33, scope: !4812)
!4820 = !DILocation(line: 683, column: 14, scope: !4812)
!4821 = !DILocation(line: 684, column: 8, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 684, column: 6)
!4823 = !DILocation(line: 684, column: 15, scope: !4822)
!4824 = !DILocation(line: 684, column: 6, scope: !4812)
!4825 = !DILocation(line: 685, column: 23, scope: !4822)
!4826 = !DILocation(line: 686, column: 6, scope: !4822)
!4827 = !DILocation(line: 686, column: 13, scope: !4822)
!4828 = !DILocation(line: 686, column: 21, scope: !4822)
!4829 = !DILocation(line: 686, column: 5, scope: !4822)
!4830 = !DILocation(line: 685, column: 3, scope: !4822)
!4831 = !DILocation(line: 687, column: 1, scope: !4812)
!4832 = distinct !DISubprogram(name: "sis5595_read_value", scope: !3, file: !3, line: 661, type: !4833, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!189, !4584, !1271}
!4835 = !DILocalVariable(name: "data", arg: 1, scope: !4832, file: !3, line: 661, type: !4584)
!4836 = !DILocation(line: 661, column: 52, scope: !4832)
!4837 = !DILocalVariable(name: "reg", arg: 2, scope: !4832, file: !3, line: 661, type: !1271)
!4838 = !DILocation(line: 661, column: 61, scope: !4832)
!4839 = !DILocalVariable(name: "res", scope: !4832, file: !3, line: 663, type: !189)
!4840 = !DILocation(line: 663, column: 6, scope: !4832)
!4841 = !DILocation(line: 665, column: 14, scope: !4832)
!4842 = !DILocation(line: 665, column: 20, scope: !4832)
!4843 = !DILocation(line: 665, column: 2, scope: !4832)
!4844 = !DILocation(line: 666, column: 9, scope: !4832)
!4845 = !DILocation(line: 666, column: 14, scope: !4832)
!4846 = !DILocation(line: 666, column: 20, scope: !4832)
!4847 = !DILocation(line: 666, column: 25, scope: !4832)
!4848 = !DILocation(line: 666, column: 2, scope: !4832)
!4849 = !DILocation(line: 667, column: 14, scope: !4832)
!4850 = !DILocation(line: 667, column: 20, scope: !4832)
!4851 = !DILocation(line: 667, column: 25, scope: !4832)
!4852 = !DILocation(line: 667, column: 8, scope: !4832)
!4853 = !DILocation(line: 667, column: 6, scope: !4832)
!4854 = !DILocation(line: 668, column: 16, scope: !4832)
!4855 = !DILocation(line: 668, column: 22, scope: !4832)
!4856 = !DILocation(line: 668, column: 2, scope: !4832)
!4857 = !DILocation(line: 669, column: 9, scope: !4832)
!4858 = !DILocation(line: 669, column: 2, scope: !4832)
!4859 = distinct !DISubprogram(name: "IS_ERR", scope: !4860, file: !4860, line: 34, type: !4861, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4860 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!409, !2048}
!4863 = !DILocalVariable(name: "ptr", arg: 1, scope: !4859, file: !4860, line: 34, type: !2048)
!4864 = !DILocation(line: 34, column: 60, scope: !4859)
!4865 = !DILocation(line: 36, column: 9, scope: !4859)
!4866 = !DILocation(line: 36, column: 2, scope: !4859)
!4867 = distinct !DISubprogram(name: "PTR_ERR", scope: !4860, file: !4860, line: 29, type: !4868, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!140, !2048}
!4870 = !DILocalVariable(name: "ptr", arg: 1, scope: !4867, file: !4860, line: 29, type: !2048)
!4871 = !DILocation(line: 29, column: 61, scope: !4867)
!4872 = !DILocation(line: 31, column: 16, scope: !4867)
!4873 = !DILocation(line: 31, column: 9, scope: !4867)
!4874 = !DILocation(line: 31, column: 2, scope: !4867)
!4875 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !4876, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4876 = !DISubroutineType(types: !4877)
!4877 = !{null, !141, !108}
!4878 = !DILocalVariable(name: "dev", arg: 1, scope: !4875, file: !73, line: 660, type: !141)
!4879 = !DILocation(line: 660, column: 51, scope: !4875)
!4880 = !DILocalVariable(name: "data", arg: 2, scope: !4875, file: !73, line: 660, type: !108)
!4881 = !DILocation(line: 660, column: 62, scope: !4875)
!4882 = !DILocation(line: 662, column: 21, scope: !4875)
!4883 = !DILocation(line: 662, column: 2, scope: !4875)
!4884 = !DILocation(line: 662, column: 7, scope: !4875)
!4885 = !DILocation(line: 662, column: 19, scope: !4875)
!4886 = !DILocation(line: 663, column: 1, scope: !4875)
!4887 = distinct !DISubprogram(name: "sis5595_write_value", scope: !3, file: !3, line: 672, type: !4888, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{null, !4584, !1271, !1271}
!4890 = !DILocalVariable(name: "data", arg: 1, scope: !4887, file: !3, line: 672, type: !4584)
!4891 = !DILocation(line: 672, column: 54, scope: !4887)
!4892 = !DILocalVariable(name: "reg", arg: 2, scope: !4887, file: !3, line: 672, type: !1271)
!4893 = !DILocation(line: 672, column: 63, scope: !4887)
!4894 = !DILocalVariable(name: "value", arg: 3, scope: !4887, file: !3, line: 672, type: !1271)
!4895 = !DILocation(line: 672, column: 71, scope: !4887)
!4896 = !DILocation(line: 674, column: 14, scope: !4887)
!4897 = !DILocation(line: 674, column: 20, scope: !4887)
!4898 = !DILocation(line: 674, column: 2, scope: !4887)
!4899 = !DILocation(line: 675, column: 9, scope: !4887)
!4900 = !DILocation(line: 675, column: 14, scope: !4887)
!4901 = !DILocation(line: 675, column: 20, scope: !4887)
!4902 = !DILocation(line: 675, column: 25, scope: !4887)
!4903 = !DILocation(line: 675, column: 2, scope: !4887)
!4904 = !DILocation(line: 676, column: 9, scope: !4887)
!4905 = !DILocation(line: 676, column: 16, scope: !4887)
!4906 = !DILocation(line: 676, column: 22, scope: !4887)
!4907 = !DILocation(line: 676, column: 27, scope: !4887)
!4908 = !DILocation(line: 676, column: 2, scope: !4887)
!4909 = !DILocation(line: 677, column: 16, scope: !4887)
!4910 = !DILocation(line: 677, column: 22, scope: !4887)
!4911 = !DILocation(line: 677, column: 2, scope: !4887)
!4912 = !DILocation(line: 678, column: 1, scope: !4887)
!4913 = distinct !DISubprogram(name: "outb_p", scope: !4914, file: !4914, line: 334, type: !4915, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4914 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4915 = !DISubroutineType(types: !4916)
!4916 = !{null, !346, !189}
!4917 = !DILocalVariable(name: "value", arg: 1, scope: !4913, file: !4914, line: 334, type: !346)
!4918 = !DILocation(line: 334, column: 1, scope: !4913)
!4919 = !DILocalVariable(name: "port", arg: 2, scope: !4913, file: !4914, line: 334, type: !189)
!4920 = distinct !DISubprogram(name: "outb", scope: !4914, file: !4914, line: 334, type: !4915, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4921 = !DILocalVariable(name: "value", arg: 1, scope: !4920, file: !4914, line: 334, type: !346)
!4922 = !DILocation(line: 334, column: 1, scope: !4920)
!4923 = !DILocalVariable(name: "port", arg: 2, scope: !4920, file: !4914, line: 334, type: !189)
!4924 = !{i32 -2143310226}
!4925 = distinct !DISubprogram(name: "slow_down_io", scope: !4926, file: !4926, line: 40, type: !1799, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4926 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4927 = !DILocation(line: 42, column: 13, scope: !4925)
!4928 = !DILocation(line: 42, column: 2, scope: !4925)
!4929 = !DILocation(line: 48, column: 1, scope: !4925)
!4930 = distinct !DISubprogram(name: "inb_p", scope: !4914, file: !4914, line: 334, type: !4931, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!346, !189}
!4933 = !DILocalVariable(name: "port", arg: 1, scope: !4930, file: !4914, line: 334, type: !189)
!4934 = !DILocation(line: 334, column: 1, scope: !4930)
!4935 = !DILocalVariable(name: "value", scope: !4930, file: !4914, line: 334, type: !346)
!4936 = distinct !DISubprogram(name: "inb", scope: !4914, file: !4914, line: 334, type: !4931, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4937 = !DILocalVariable(name: "port", arg: 1, scope: !4936, file: !4914, line: 334, type: !189)
!4938 = !DILocation(line: 334, column: 1, scope: !4936)
!4939 = !DILocalVariable(name: "value", scope: !4936, file: !4914, line: 334, type: !346)
!4940 = !{i32 -2143310024}
!4941 = distinct !DISubprogram(name: "in_show", scope: !3, file: !3, line: 211, type: !134, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4942 = !DILocalVariable(name: "dev", arg: 1, scope: !4941, file: !3, line: 211, type: !141)
!4943 = !DILocation(line: 211, column: 39, scope: !4941)
!4944 = !DILocalVariable(name: "da", arg: 2, scope: !4941, file: !3, line: 211, type: !3839)
!4945 = !DILocation(line: 211, column: 69, scope: !4941)
!4946 = !DILocalVariable(name: "buf", arg: 3, scope: !4941, file: !3, line: 212, type: !205)
!4947 = !DILocation(line: 212, column: 16, scope: !4941)
!4948 = !DILocalVariable(name: "data", scope: !4941, file: !3, line: 214, type: !4584)
!4949 = !DILocation(line: 214, column: 23, scope: !4941)
!4950 = !DILocation(line: 214, column: 52, scope: !4941)
!4951 = !DILocation(line: 214, column: 30, scope: !4941)
!4952 = !DILocalVariable(name: "attr", scope: !4941, file: !3, line: 215, type: !114)
!4953 = !DILocation(line: 215, column: 34, scope: !4941)
!4954 = !DILocalVariable(name: "__mptr", scope: !4955, file: !3, line: 215, type: !108)
!4955 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 215, column: 41)
!4956 = !DILocation(line: 215, column: 41, scope: !4955)
!4957 = !DILocation(line: 215, column: 41, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 215, column: 41)
!4959 = !DILocalVariable(name: "nr", scope: !4941, file: !3, line: 216, type: !189)
!4960 = !DILocation(line: 216, column: 6, scope: !4941)
!4961 = !DILocation(line: 216, column: 11, scope: !4941)
!4962 = !DILocation(line: 216, column: 17, scope: !4941)
!4963 = !DILocation(line: 217, column: 17, scope: !4941)
!4964 = !DILocation(line: 217, column: 30, scope: !4941)
!4965 = !DILocation(line: 217, column: 9, scope: !4941)
!4966 = !DILocation(line: 217, column: 2, scope: !4941)
!4967 = distinct !DISubprogram(name: "sis5595_update_device", scope: !3, file: !3, line: 689, type: !4968, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!4584, !141}
!4970 = !DILocalVariable(name: "dev", arg: 1, scope: !4967, file: !3, line: 689, type: !141)
!4971 = !DILocation(line: 689, column: 66, scope: !4967)
!4972 = !DILocalVariable(name: "data", scope: !4967, file: !3, line: 691, type: !4584)
!4973 = !DILocation(line: 691, column: 23, scope: !4967)
!4974 = !DILocation(line: 691, column: 46, scope: !4967)
!4975 = !DILocation(line: 691, column: 30, scope: !4967)
!4976 = !DILocalVariable(name: "i", scope: !4967, file: !3, line: 692, type: !189)
!4977 = !DILocation(line: 692, column: 6, scope: !4967)
!4978 = !DILocation(line: 694, column: 14, scope: !4967)
!4979 = !DILocation(line: 694, column: 20, scope: !4967)
!4980 = !DILocation(line: 694, column: 2, scope: !4967)
!4981 = !DILocation(line: 696, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 696, column: 6)
!4983 = !DILocation(line: 697, column: 6, scope: !4982)
!4984 = !DILocation(line: 697, column: 10, scope: !4982)
!4985 = !DILocation(line: 697, column: 16, scope: !4982)
!4986 = !DILocation(line: 696, column: 6, scope: !4967)
!4987 = !DILocation(line: 699, column: 10, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 699, column: 3)
!4989 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 697, column: 23)
!4990 = !DILocation(line: 699, column: 8, scope: !4988)
!4991 = !DILocation(line: 699, column: 15, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 699, column: 3)
!4993 = !DILocation(line: 699, column: 20, scope: !4992)
!4994 = !DILocation(line: 699, column: 26, scope: !4992)
!4995 = !DILocation(line: 699, column: 17, scope: !4992)
!4996 = !DILocation(line: 699, column: 3, scope: !4988)
!4997 = !DILocation(line: 701, column: 27, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 699, column: 39)
!4999 = !DILocation(line: 701, column: 33, scope: !4998)
!5000 = !DILocation(line: 701, column: 8, scope: !4998)
!5001 = !DILocation(line: 700, column: 4, scope: !4998)
!5002 = !DILocation(line: 700, column: 10, scope: !4998)
!5003 = !DILocation(line: 700, column: 13, scope: !4998)
!5004 = !DILocation(line: 700, column: 16, scope: !4998)
!5005 = !DILocation(line: 703, column: 27, scope: !4998)
!5006 = !DILocation(line: 704, column: 13, scope: !4998)
!5007 = !DILocation(line: 703, column: 8, scope: !4998)
!5008 = !DILocation(line: 702, column: 4, scope: !4998)
!5009 = !DILocation(line: 702, column: 10, scope: !4998)
!5010 = !DILocation(line: 702, column: 17, scope: !4998)
!5011 = !DILocation(line: 702, column: 20, scope: !4998)
!5012 = !DILocation(line: 706, column: 27, scope: !4998)
!5013 = !DILocation(line: 707, column: 13, scope: !4998)
!5014 = !DILocation(line: 706, column: 8, scope: !4998)
!5015 = !DILocation(line: 705, column: 4, scope: !4998)
!5016 = !DILocation(line: 705, column: 10, scope: !4998)
!5017 = !DILocation(line: 705, column: 17, scope: !4998)
!5018 = !DILocation(line: 705, column: 20, scope: !4998)
!5019 = !DILocation(line: 708, column: 3, scope: !4998)
!5020 = !DILocation(line: 699, column: 35, scope: !4992)
!5021 = !DILocation(line: 699, column: 3, scope: !4992)
!5022 = distinct !{!5022, !4996, !5023}
!5023 = !DILocation(line: 708, column: 3, scope: !4988)
!5024 = !DILocation(line: 709, column: 10, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 709, column: 3)
!5026 = !DILocation(line: 709, column: 8, scope: !5025)
!5027 = !DILocation(line: 709, column: 15, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 709, column: 3)
!5029 = !DILocation(line: 709, column: 17, scope: !5028)
!5030 = !DILocation(line: 709, column: 3, scope: !5025)
!5031 = !DILocation(line: 711, column: 27, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 709, column: 27)
!5033 = !DILocation(line: 711, column: 33, scope: !5032)
!5034 = !DILocation(line: 711, column: 8, scope: !5032)
!5035 = !DILocation(line: 710, column: 4, scope: !5032)
!5036 = !DILocation(line: 710, column: 10, scope: !5032)
!5037 = !DILocation(line: 710, column: 14, scope: !5032)
!5038 = !DILocation(line: 710, column: 17, scope: !5032)
!5039 = !DILocation(line: 713, column: 27, scope: !5032)
!5040 = !DILocation(line: 714, column: 13, scope: !5032)
!5041 = !DILocation(line: 713, column: 8, scope: !5032)
!5042 = !DILocation(line: 712, column: 4, scope: !5032)
!5043 = !DILocation(line: 712, column: 10, scope: !5032)
!5044 = !DILocation(line: 712, column: 18, scope: !5032)
!5045 = !DILocation(line: 712, column: 21, scope: !5032)
!5046 = !DILocation(line: 715, column: 3, scope: !5032)
!5047 = !DILocation(line: 709, column: 23, scope: !5028)
!5048 = !DILocation(line: 709, column: 3, scope: !5028)
!5049 = distinct !{!5049, !5030, !5050}
!5050 = !DILocation(line: 715, column: 3, scope: !5025)
!5051 = !DILocation(line: 716, column: 7, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 716, column: 7)
!5053 = !DILocation(line: 716, column: 13, scope: !5052)
!5054 = !DILocation(line: 716, column: 20, scope: !5052)
!5055 = !DILocation(line: 716, column: 7, scope: !4989)
!5056 = !DILocation(line: 718, column: 27, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 716, column: 26)
!5058 = !DILocation(line: 718, column: 33, scope: !5057)
!5059 = !DILocation(line: 718, column: 8, scope: !5057)
!5060 = !DILocation(line: 717, column: 4, scope: !5057)
!5061 = !DILocation(line: 717, column: 10, scope: !5057)
!5062 = !DILocation(line: 717, column: 15, scope: !5057)
!5063 = !DILocation(line: 720, column: 27, scope: !5057)
!5064 = !DILocation(line: 720, column: 33, scope: !5057)
!5065 = !DILocation(line: 720, column: 8, scope: !5057)
!5066 = !DILocation(line: 719, column: 4, scope: !5057)
!5067 = !DILocation(line: 719, column: 10, scope: !5057)
!5068 = !DILocation(line: 719, column: 20, scope: !5057)
!5069 = !DILocation(line: 722, column: 27, scope: !5057)
!5070 = !DILocation(line: 722, column: 33, scope: !5057)
!5071 = !DILocation(line: 722, column: 8, scope: !5057)
!5072 = !DILocation(line: 721, column: 4, scope: !5057)
!5073 = !DILocation(line: 721, column: 10, scope: !5057)
!5074 = !DILocation(line: 721, column: 20, scope: !5057)
!5075 = !DILocation(line: 723, column: 3, scope: !5057)
!5076 = !DILocation(line: 724, column: 26, scope: !4989)
!5077 = !DILocation(line: 724, column: 7, scope: !4989)
!5078 = !DILocation(line: 724, column: 5, scope: !4989)
!5079 = !DILocation(line: 725, column: 23, scope: !4989)
!5080 = !DILocation(line: 725, column: 25, scope: !4989)
!5081 = !DILocation(line: 725, column: 31, scope: !4989)
!5082 = !DILocation(line: 725, column: 22, scope: !4989)
!5083 = !DILocation(line: 725, column: 3, scope: !4989)
!5084 = !DILocation(line: 725, column: 9, scope: !4989)
!5085 = !DILocation(line: 725, column: 20, scope: !4989)
!5086 = !DILocation(line: 726, column: 22, scope: !4989)
!5087 = !DILocation(line: 726, column: 24, scope: !4989)
!5088 = !DILocation(line: 726, column: 3, scope: !4989)
!5089 = !DILocation(line: 726, column: 9, scope: !4989)
!5090 = !DILocation(line: 726, column: 20, scope: !4989)
!5091 = !DILocation(line: 728, column: 26, scope: !4989)
!5092 = !DILocation(line: 728, column: 7, scope: !4989)
!5093 = !DILocation(line: 729, column: 27, scope: !4989)
!5094 = !DILocation(line: 729, column: 8, scope: !4989)
!5095 = !DILocation(line: 729, column: 53, scope: !4989)
!5096 = !DILocation(line: 728, column: 52, scope: !4989)
!5097 = !DILocation(line: 727, column: 3, scope: !4989)
!5098 = !DILocation(line: 727, column: 9, scope: !4989)
!5099 = !DILocation(line: 727, column: 16, scope: !4989)
!5100 = !DILocation(line: 730, column: 24, scope: !4989)
!5101 = !DILocation(line: 730, column: 3, scope: !4989)
!5102 = !DILocation(line: 730, column: 9, scope: !4989)
!5103 = !DILocation(line: 730, column: 22, scope: !4989)
!5104 = !DILocation(line: 731, column: 3, scope: !4989)
!5105 = !DILocation(line: 731, column: 9, scope: !4989)
!5106 = !DILocation(line: 731, column: 15, scope: !4989)
!5107 = !DILocation(line: 732, column: 2, scope: !4989)
!5108 = !DILocation(line: 734, column: 16, scope: !4967)
!5109 = !DILocation(line: 734, column: 22, scope: !4967)
!5110 = !DILocation(line: 734, column: 2, scope: !4967)
!5111 = !DILocation(line: 736, column: 9, scope: !4967)
!5112 = !DILocation(line: 736, column: 2, scope: !4967)
!5113 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5114, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!108, !3623}
!5116 = !DILocalVariable(name: "dev", arg: 1, scope: !5113, file: !73, line: 655, type: !3623)
!5117 = !DILocation(line: 655, column: 58, scope: !5113)
!5118 = !DILocation(line: 657, column: 9, scope: !5113)
!5119 = !DILocation(line: 657, column: 14, scope: !5113)
!5120 = !DILocation(line: 657, column: 2, scope: !5113)
!5121 = distinct !DISubprogram(name: "in_min_show", scope: !3, file: !3, line: 220, type: !134, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5122 = !DILocalVariable(name: "dev", arg: 1, scope: !5121, file: !3, line: 220, type: !141)
!5123 = !DILocation(line: 220, column: 43, scope: !5121)
!5124 = !DILocalVariable(name: "da", arg: 2, scope: !5121, file: !3, line: 220, type: !3839)
!5125 = !DILocation(line: 220, column: 73, scope: !5121)
!5126 = !DILocalVariable(name: "buf", arg: 3, scope: !5121, file: !3, line: 221, type: !205)
!5127 = !DILocation(line: 221, column: 13, scope: !5121)
!5128 = !DILocalVariable(name: "data", scope: !5121, file: !3, line: 223, type: !4584)
!5129 = !DILocation(line: 223, column: 23, scope: !5121)
!5130 = !DILocation(line: 223, column: 52, scope: !5121)
!5131 = !DILocation(line: 223, column: 30, scope: !5121)
!5132 = !DILocalVariable(name: "attr", scope: !5121, file: !3, line: 224, type: !114)
!5133 = !DILocation(line: 224, column: 34, scope: !5121)
!5134 = !DILocalVariable(name: "__mptr", scope: !5135, file: !3, line: 224, type: !108)
!5135 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 224, column: 41)
!5136 = !DILocation(line: 224, column: 41, scope: !5135)
!5137 = !DILocation(line: 224, column: 41, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5135, file: !3, line: 224, column: 41)
!5139 = !DILocalVariable(name: "nr", scope: !5121, file: !3, line: 225, type: !189)
!5140 = !DILocation(line: 225, column: 6, scope: !5121)
!5141 = !DILocation(line: 225, column: 11, scope: !5121)
!5142 = !DILocation(line: 225, column: 17, scope: !5121)
!5143 = !DILocation(line: 226, column: 17, scope: !5121)
!5144 = !DILocation(line: 226, column: 30, scope: !5121)
!5145 = !DILocation(line: 226, column: 9, scope: !5121)
!5146 = !DILocation(line: 226, column: 2, scope: !5121)
!5147 = distinct !DISubprogram(name: "in_min_store", scope: !3, file: !3, line: 238, type: !3842, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5148 = !DILocalVariable(name: "dev", arg: 1, scope: !5147, file: !3, line: 238, type: !141)
!5149 = !DILocation(line: 238, column: 44, scope: !5147)
!5150 = !DILocalVariable(name: "da", arg: 2, scope: !5147, file: !3, line: 238, type: !3839)
!5151 = !DILocation(line: 238, column: 74, scope: !5147)
!5152 = !DILocalVariable(name: "buf", arg: 3, scope: !5147, file: !3, line: 239, type: !126)
!5153 = !DILocation(line: 239, column: 20, scope: !5147)
!5154 = !DILocalVariable(name: "count", arg: 4, scope: !5147, file: !3, line: 239, type: !240)
!5155 = !DILocation(line: 239, column: 32, scope: !5147)
!5156 = !DILocalVariable(name: "data", scope: !5147, file: !3, line: 241, type: !4584)
!5157 = !DILocation(line: 241, column: 23, scope: !5147)
!5158 = !DILocation(line: 241, column: 46, scope: !5147)
!5159 = !DILocation(line: 241, column: 30, scope: !5147)
!5160 = !DILocalVariable(name: "attr", scope: !5147, file: !3, line: 242, type: !114)
!5161 = !DILocation(line: 242, column: 34, scope: !5147)
!5162 = !DILocalVariable(name: "__mptr", scope: !5163, file: !3, line: 242, type: !108)
!5163 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 242, column: 41)
!5164 = !DILocation(line: 242, column: 41, scope: !5163)
!5165 = !DILocation(line: 242, column: 41, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5163, file: !3, line: 242, column: 41)
!5167 = !DILocalVariable(name: "nr", scope: !5147, file: !3, line: 243, type: !189)
!5168 = !DILocation(line: 243, column: 6, scope: !5147)
!5169 = !DILocation(line: 243, column: 11, scope: !5147)
!5170 = !DILocation(line: 243, column: 17, scope: !5147)
!5171 = !DILocalVariable(name: "val", scope: !5147, file: !3, line: 244, type: !243)
!5172 = !DILocation(line: 244, column: 16, scope: !5147)
!5173 = !DILocalVariable(name: "err", scope: !5147, file: !3, line: 245, type: !189)
!5174 = !DILocation(line: 245, column: 6, scope: !5147)
!5175 = !DILocation(line: 247, column: 17, scope: !5147)
!5176 = !DILocation(line: 247, column: 8, scope: !5147)
!5177 = !DILocation(line: 247, column: 6, scope: !5147)
!5178 = !DILocation(line: 248, column: 6, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 248, column: 6)
!5180 = !DILocation(line: 248, column: 6, scope: !5147)
!5181 = !DILocation(line: 249, column: 10, scope: !5179)
!5182 = !DILocation(line: 249, column: 3, scope: !5179)
!5183 = !DILocation(line: 251, column: 14, scope: !5147)
!5184 = !DILocation(line: 251, column: 20, scope: !5147)
!5185 = !DILocation(line: 251, column: 2, scope: !5147)
!5186 = !DILocation(line: 252, column: 31, scope: !5147)
!5187 = !DILocation(line: 252, column: 21, scope: !5147)
!5188 = !DILocation(line: 252, column: 2, scope: !5147)
!5189 = !DILocation(line: 252, column: 8, scope: !5147)
!5190 = !DILocation(line: 252, column: 15, scope: !5147)
!5191 = !DILocation(line: 252, column: 19, scope: !5147)
!5192 = !DILocation(line: 253, column: 22, scope: !5147)
!5193 = !DILocation(line: 253, column: 28, scope: !5147)
!5194 = !DILocation(line: 253, column: 52, scope: !5147)
!5195 = !DILocation(line: 253, column: 58, scope: !5147)
!5196 = !DILocation(line: 253, column: 65, scope: !5147)
!5197 = !DILocation(line: 253, column: 2, scope: !5147)
!5198 = !DILocation(line: 254, column: 16, scope: !5147)
!5199 = !DILocation(line: 254, column: 22, scope: !5147)
!5200 = !DILocation(line: 254, column: 2, scope: !5147)
!5201 = !DILocation(line: 255, column: 9, scope: !5147)
!5202 = !DILocation(line: 255, column: 2, scope: !5147)
!5203 = !DILocation(line: 256, column: 1, scope: !5147)
!5204 = distinct !DISubprogram(name: "kstrtoul", scope: !5205, file: !5205, line: 351, type: !5206, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5205 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!189, !126, !7, !3726}
!5208 = !DILocalVariable(name: "s", arg: 1, scope: !5204, file: !5205, line: 351, type: !126)
!5209 = !DILocation(line: 351, column: 53, scope: !5204)
!5210 = !DILocalVariable(name: "base", arg: 2, scope: !5204, file: !5205, line: 351, type: !7)
!5211 = !DILocation(line: 351, column: 69, scope: !5204)
!5212 = !DILocalVariable(name: "res", arg: 3, scope: !5204, file: !5205, line: 351, type: !3726)
!5213 = !DILocation(line: 351, column: 90, scope: !5204)
!5214 = !DILocation(line: 359, column: 20, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5204, file: !5205, line: 357, column: 6)
!5216 = !DILocation(line: 359, column: 23, scope: !5215)
!5217 = !DILocation(line: 359, column: 51, scope: !5215)
!5218 = !DILocation(line: 359, column: 10, scope: !5215)
!5219 = !DILocation(line: 359, column: 3, scope: !5215)
!5220 = distinct !DISubprogram(name: "IN_TO_REG", scope: !3, file: !3, line: 119, type: !5221, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!1271, !243}
!5223 = !DILocalVariable(name: "val", arg: 1, scope: !5220, file: !3, line: 119, type: !243)
!5224 = !DILocation(line: 119, column: 42, scope: !5220)
!5225 = !DILocalVariable(name: "nval", scope: !5220, file: !3, line: 121, type: !243)
!5226 = !DILocation(line: 121, column: 16, scope: !5220)
!5227 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !5228, file: !3, line: 121, type: !243)
!5228 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 121, column: 23)
!5229 = !DILocation(line: 121, column: 23, scope: !5228)
!5230 = !DILocalVariable(name: "__UNIQUE_ID___x240", scope: !5231, file: !3, line: 121, type: !243)
!5231 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 121, column: 23)
!5232 = !DILocation(line: 121, column: 23, scope: !5231)
!5233 = !DILocalVariable(name: "__UNIQUE_ID___y241", scope: !5231, file: !3, line: 121, type: !243)
!5234 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !5228, file: !3, line: 121, type: !243)
!5235 = !DILocation(line: 122, column: 10, scope: !5220)
!5236 = !DILocation(line: 122, column: 15, scope: !5220)
!5237 = !DILocation(line: 122, column: 20, scope: !5220)
!5238 = !DILocation(line: 122, column: 9, scope: !5220)
!5239 = !DILocation(line: 122, column: 2, scope: !5220)
!5240 = distinct !DISubprogram(name: "in_max_show", scope: !3, file: !3, line: 229, type: !134, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5241 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !3, line: 229, type: !141)
!5242 = !DILocation(line: 229, column: 43, scope: !5240)
!5243 = !DILocalVariable(name: "da", arg: 2, scope: !5240, file: !3, line: 229, type: !3839)
!5244 = !DILocation(line: 229, column: 73, scope: !5240)
!5245 = !DILocalVariable(name: "buf", arg: 3, scope: !5240, file: !3, line: 230, type: !205)
!5246 = !DILocation(line: 230, column: 13, scope: !5240)
!5247 = !DILocalVariable(name: "data", scope: !5240, file: !3, line: 232, type: !4584)
!5248 = !DILocation(line: 232, column: 23, scope: !5240)
!5249 = !DILocation(line: 232, column: 52, scope: !5240)
!5250 = !DILocation(line: 232, column: 30, scope: !5240)
!5251 = !DILocalVariable(name: "attr", scope: !5240, file: !3, line: 233, type: !114)
!5252 = !DILocation(line: 233, column: 34, scope: !5240)
!5253 = !DILocalVariable(name: "__mptr", scope: !5254, file: !3, line: 233, type: !108)
!5254 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 233, column: 41)
!5255 = !DILocation(line: 233, column: 41, scope: !5254)
!5256 = !DILocation(line: 233, column: 41, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !5254, file: !3, line: 233, column: 41)
!5258 = !DILocalVariable(name: "nr", scope: !5240, file: !3, line: 234, type: !189)
!5259 = !DILocation(line: 234, column: 6, scope: !5240)
!5260 = !DILocation(line: 234, column: 11, scope: !5240)
!5261 = !DILocation(line: 234, column: 17, scope: !5240)
!5262 = !DILocation(line: 235, column: 17, scope: !5240)
!5263 = !DILocation(line: 235, column: 30, scope: !5240)
!5264 = !DILocation(line: 235, column: 9, scope: !5240)
!5265 = !DILocation(line: 235, column: 2, scope: !5240)
!5266 = distinct !DISubprogram(name: "in_max_store", scope: !3, file: !3, line: 258, type: !3842, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5267 = !DILocalVariable(name: "dev", arg: 1, scope: !5266, file: !3, line: 258, type: !141)
!5268 = !DILocation(line: 258, column: 44, scope: !5266)
!5269 = !DILocalVariable(name: "da", arg: 2, scope: !5266, file: !3, line: 258, type: !3839)
!5270 = !DILocation(line: 258, column: 74, scope: !5266)
!5271 = !DILocalVariable(name: "buf", arg: 3, scope: !5266, file: !3, line: 259, type: !126)
!5272 = !DILocation(line: 259, column: 20, scope: !5266)
!5273 = !DILocalVariable(name: "count", arg: 4, scope: !5266, file: !3, line: 259, type: !240)
!5274 = !DILocation(line: 259, column: 32, scope: !5266)
!5275 = !DILocalVariable(name: "data", scope: !5266, file: !3, line: 261, type: !4584)
!5276 = !DILocation(line: 261, column: 23, scope: !5266)
!5277 = !DILocation(line: 261, column: 46, scope: !5266)
!5278 = !DILocation(line: 261, column: 30, scope: !5266)
!5279 = !DILocalVariable(name: "attr", scope: !5266, file: !3, line: 262, type: !114)
!5280 = !DILocation(line: 262, column: 34, scope: !5266)
!5281 = !DILocalVariable(name: "__mptr", scope: !5282, file: !3, line: 262, type: !108)
!5282 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 262, column: 41)
!5283 = !DILocation(line: 262, column: 41, scope: !5282)
!5284 = !DILocation(line: 262, column: 41, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 262, column: 41)
!5286 = !DILocalVariable(name: "nr", scope: !5266, file: !3, line: 263, type: !189)
!5287 = !DILocation(line: 263, column: 6, scope: !5266)
!5288 = !DILocation(line: 263, column: 11, scope: !5266)
!5289 = !DILocation(line: 263, column: 17, scope: !5266)
!5290 = !DILocalVariable(name: "val", scope: !5266, file: !3, line: 264, type: !243)
!5291 = !DILocation(line: 264, column: 16, scope: !5266)
!5292 = !DILocalVariable(name: "err", scope: !5266, file: !3, line: 265, type: !189)
!5293 = !DILocation(line: 265, column: 6, scope: !5266)
!5294 = !DILocation(line: 267, column: 17, scope: !5266)
!5295 = !DILocation(line: 267, column: 8, scope: !5266)
!5296 = !DILocation(line: 267, column: 6, scope: !5266)
!5297 = !DILocation(line: 268, column: 6, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 268, column: 6)
!5299 = !DILocation(line: 268, column: 6, scope: !5266)
!5300 = !DILocation(line: 269, column: 10, scope: !5298)
!5301 = !DILocation(line: 269, column: 3, scope: !5298)
!5302 = !DILocation(line: 271, column: 14, scope: !5266)
!5303 = !DILocation(line: 271, column: 20, scope: !5266)
!5304 = !DILocation(line: 271, column: 2, scope: !5266)
!5305 = !DILocation(line: 272, column: 31, scope: !5266)
!5306 = !DILocation(line: 272, column: 21, scope: !5266)
!5307 = !DILocation(line: 272, column: 2, scope: !5266)
!5308 = !DILocation(line: 272, column: 8, scope: !5266)
!5309 = !DILocation(line: 272, column: 15, scope: !5266)
!5310 = !DILocation(line: 272, column: 19, scope: !5266)
!5311 = !DILocation(line: 273, column: 22, scope: !5266)
!5312 = !DILocation(line: 273, column: 28, scope: !5266)
!5313 = !DILocation(line: 273, column: 52, scope: !5266)
!5314 = !DILocation(line: 273, column: 58, scope: !5266)
!5315 = !DILocation(line: 273, column: 65, scope: !5266)
!5316 = !DILocation(line: 273, column: 2, scope: !5266)
!5317 = !DILocation(line: 274, column: 16, scope: !5266)
!5318 = !DILocation(line: 274, column: 22, scope: !5266)
!5319 = !DILocation(line: 274, column: 2, scope: !5266)
!5320 = !DILocation(line: 275, column: 9, scope: !5266)
!5321 = !DILocation(line: 275, column: 2, scope: !5266)
!5322 = !DILocation(line: 276, column: 1, scope: !5266)
!5323 = distinct !DISubprogram(name: "alarm_show", scope: !3, file: !3, line: 487, type: !134, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5324 = !DILocalVariable(name: "dev", arg: 1, scope: !5323, file: !3, line: 487, type: !141)
!5325 = !DILocation(line: 487, column: 42, scope: !5323)
!5326 = !DILocalVariable(name: "da", arg: 2, scope: !5323, file: !3, line: 487, type: !3839)
!5327 = !DILocation(line: 487, column: 72, scope: !5323)
!5328 = !DILocalVariable(name: "buf", arg: 3, scope: !5323, file: !3, line: 488, type: !205)
!5329 = !DILocation(line: 488, column: 12, scope: !5323)
!5330 = !DILocalVariable(name: "data", scope: !5323, file: !3, line: 490, type: !4584)
!5331 = !DILocation(line: 490, column: 23, scope: !5323)
!5332 = !DILocation(line: 490, column: 52, scope: !5323)
!5333 = !DILocation(line: 490, column: 30, scope: !5323)
!5334 = !DILocalVariable(name: "nr", scope: !5323, file: !3, line: 491, type: !189)
!5335 = !DILocation(line: 491, column: 6, scope: !5323)
!5336 = !DILocalVariable(name: "__mptr", scope: !5337, file: !3, line: 491, type: !108)
!5337 = distinct !DILexicalBlock(scope: !5323, file: !3, line: 491, column: 11)
!5338 = !DILocation(line: 491, column: 11, scope: !5337)
!5339 = !DILocation(line: 491, column: 11, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 491, column: 11)
!5341 = !DILocation(line: 491, column: 35, scope: !5323)
!5342 = !DILocation(line: 492, column: 17, scope: !5323)
!5343 = !DILocation(line: 492, column: 31, scope: !5323)
!5344 = !DILocation(line: 492, column: 37, scope: !5323)
!5345 = !DILocation(line: 492, column: 47, scope: !5323)
!5346 = !DILocation(line: 492, column: 44, scope: !5323)
!5347 = !DILocation(line: 492, column: 51, scope: !5323)
!5348 = !DILocation(line: 492, column: 9, scope: !5323)
!5349 = !DILocation(line: 492, column: 2, scope: !5323)
!5350 = distinct !DISubprogram(name: "fan_show", scope: !3, file: !3, line: 359, type: !134, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5351 = !DILocalVariable(name: "dev", arg: 1, scope: !5350, file: !3, line: 359, type: !141)
!5352 = !DILocation(line: 359, column: 40, scope: !5350)
!5353 = !DILocalVariable(name: "da", arg: 2, scope: !5350, file: !3, line: 359, type: !3839)
!5354 = !DILocation(line: 359, column: 70, scope: !5350)
!5355 = !DILocalVariable(name: "buf", arg: 3, scope: !5350, file: !3, line: 360, type: !205)
!5356 = !DILocation(line: 360, column: 10, scope: !5350)
!5357 = !DILocalVariable(name: "data", scope: !5350, file: !3, line: 362, type: !4584)
!5358 = !DILocation(line: 362, column: 23, scope: !5350)
!5359 = !DILocation(line: 362, column: 52, scope: !5350)
!5360 = !DILocation(line: 362, column: 30, scope: !5350)
!5361 = !DILocalVariable(name: "attr", scope: !5350, file: !3, line: 363, type: !114)
!5362 = !DILocation(line: 363, column: 34, scope: !5350)
!5363 = !DILocalVariable(name: "__mptr", scope: !5364, file: !3, line: 363, type: !108)
!5364 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 363, column: 41)
!5365 = !DILocation(line: 363, column: 41, scope: !5364)
!5366 = !DILocation(line: 363, column: 41, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 363, column: 41)
!5368 = !DILocalVariable(name: "nr", scope: !5350, file: !3, line: 364, type: !189)
!5369 = !DILocation(line: 364, column: 6, scope: !5350)
!5370 = !DILocation(line: 364, column: 11, scope: !5350)
!5371 = !DILocation(line: 364, column: 17, scope: !5350)
!5372 = !DILocation(line: 365, column: 17, scope: !5350)
!5373 = !DILocation(line: 365, column: 43, scope: !5350)
!5374 = !DILocation(line: 365, column: 49, scope: !5350)
!5375 = !DILocation(line: 365, column: 53, scope: !5350)
!5376 = !DILocation(line: 366, column: 3, scope: !5350)
!5377 = !DILocation(line: 365, column: 30, scope: !5350)
!5378 = !DILocation(line: 365, column: 9, scope: !5350)
!5379 = !DILocation(line: 365, column: 2, scope: !5350)
!5380 = distinct !DISubprogram(name: "FAN_FROM_REG", scope: !3, file: !3, line: 135, type: !5381, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!189, !1271, !189}
!5383 = !DILocalVariable(name: "val", arg: 1, scope: !5380, file: !3, line: 135, type: !1271)
!5384 = !DILocation(line: 135, column: 35, scope: !5380)
!5385 = !DILocalVariable(name: "div", arg: 2, scope: !5380, file: !3, line: 135, type: !189)
!5386 = !DILocation(line: 135, column: 44, scope: !5380)
!5387 = !DILocation(line: 137, column: 9, scope: !5380)
!5388 = !DILocation(line: 137, column: 13, scope: !5380)
!5389 = !DILocation(line: 137, column: 25, scope: !5380)
!5390 = !DILocation(line: 137, column: 29, scope: !5380)
!5391 = !DILocation(line: 137, column: 53, scope: !5380)
!5392 = !DILocation(line: 137, column: 59, scope: !5380)
!5393 = !DILocation(line: 137, column: 57, scope: !5380)
!5394 = !DILocation(line: 137, column: 50, scope: !5380)
!5395 = !DILocation(line: 137, column: 2, scope: !5380)
!5396 = distinct !DISubprogram(name: "fan_min_show", scope: !3, file: !3, line: 369, type: !134, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5397 = !DILocalVariable(name: "dev", arg: 1, scope: !5396, file: !3, line: 369, type: !141)
!5398 = !DILocation(line: 369, column: 44, scope: !5396)
!5399 = !DILocalVariable(name: "da", arg: 2, scope: !5396, file: !3, line: 369, type: !3839)
!5400 = !DILocation(line: 369, column: 74, scope: !5396)
!5401 = !DILocalVariable(name: "buf", arg: 3, scope: !5396, file: !3, line: 370, type: !205)
!5402 = !DILocation(line: 370, column: 14, scope: !5396)
!5403 = !DILocalVariable(name: "data", scope: !5396, file: !3, line: 372, type: !4584)
!5404 = !DILocation(line: 372, column: 23, scope: !5396)
!5405 = !DILocation(line: 372, column: 52, scope: !5396)
!5406 = !DILocation(line: 372, column: 30, scope: !5396)
!5407 = !DILocalVariable(name: "attr", scope: !5396, file: !3, line: 373, type: !114)
!5408 = !DILocation(line: 373, column: 34, scope: !5396)
!5409 = !DILocalVariable(name: "__mptr", scope: !5410, file: !3, line: 373, type: !108)
!5410 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 373, column: 41)
!5411 = !DILocation(line: 373, column: 41, scope: !5410)
!5412 = !DILocation(line: 373, column: 41, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 373, column: 41)
!5414 = !DILocalVariable(name: "nr", scope: !5396, file: !3, line: 374, type: !189)
!5415 = !DILocation(line: 374, column: 6, scope: !5396)
!5416 = !DILocation(line: 374, column: 11, scope: !5396)
!5417 = !DILocation(line: 374, column: 17, scope: !5396)
!5418 = !DILocation(line: 375, column: 17, scope: !5396)
!5419 = !DILocation(line: 375, column: 43, scope: !5396)
!5420 = !DILocation(line: 375, column: 49, scope: !5396)
!5421 = !DILocation(line: 375, column: 57, scope: !5396)
!5422 = !DILocation(line: 376, column: 3, scope: !5396)
!5423 = !DILocation(line: 375, column: 30, scope: !5396)
!5424 = !DILocation(line: 375, column: 9, scope: !5396)
!5425 = !DILocation(line: 375, column: 2, scope: !5396)
!5426 = distinct !DISubprogram(name: "fan_min_store", scope: !3, file: !3, line: 379, type: !3842, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5427 = !DILocalVariable(name: "dev", arg: 1, scope: !5426, file: !3, line: 379, type: !141)
!5428 = !DILocation(line: 379, column: 45, scope: !5426)
!5429 = !DILocalVariable(name: "da", arg: 2, scope: !5426, file: !3, line: 379, type: !3839)
!5430 = !DILocation(line: 379, column: 75, scope: !5426)
!5431 = !DILocalVariable(name: "buf", arg: 3, scope: !5426, file: !3, line: 380, type: !126)
!5432 = !DILocation(line: 380, column: 21, scope: !5426)
!5433 = !DILocalVariable(name: "count", arg: 4, scope: !5426, file: !3, line: 380, type: !240)
!5434 = !DILocation(line: 380, column: 33, scope: !5426)
!5435 = !DILocalVariable(name: "data", scope: !5426, file: !3, line: 382, type: !4584)
!5436 = !DILocation(line: 382, column: 23, scope: !5426)
!5437 = !DILocation(line: 382, column: 46, scope: !5426)
!5438 = !DILocation(line: 382, column: 30, scope: !5426)
!5439 = !DILocalVariable(name: "attr", scope: !5426, file: !3, line: 383, type: !114)
!5440 = !DILocation(line: 383, column: 34, scope: !5426)
!5441 = !DILocalVariable(name: "__mptr", scope: !5442, file: !3, line: 383, type: !108)
!5442 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 383, column: 41)
!5443 = !DILocation(line: 383, column: 41, scope: !5442)
!5444 = !DILocation(line: 383, column: 41, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 383, column: 41)
!5446 = !DILocalVariable(name: "nr", scope: !5426, file: !3, line: 384, type: !189)
!5447 = !DILocation(line: 384, column: 6, scope: !5426)
!5448 = !DILocation(line: 384, column: 11, scope: !5426)
!5449 = !DILocation(line: 384, column: 17, scope: !5426)
!5450 = !DILocalVariable(name: "val", scope: !5426, file: !3, line: 385, type: !243)
!5451 = !DILocation(line: 385, column: 16, scope: !5426)
!5452 = !DILocalVariable(name: "err", scope: !5426, file: !3, line: 386, type: !189)
!5453 = !DILocation(line: 386, column: 6, scope: !5426)
!5454 = !DILocation(line: 388, column: 17, scope: !5426)
!5455 = !DILocation(line: 388, column: 8, scope: !5426)
!5456 = !DILocation(line: 388, column: 6, scope: !5426)
!5457 = !DILocation(line: 389, column: 6, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 389, column: 6)
!5459 = !DILocation(line: 389, column: 6, scope: !5426)
!5460 = !DILocation(line: 390, column: 10, scope: !5458)
!5461 = !DILocation(line: 390, column: 3, scope: !5458)
!5462 = !DILocation(line: 392, column: 14, scope: !5426)
!5463 = !DILocation(line: 392, column: 20, scope: !5426)
!5464 = !DILocation(line: 392, column: 2, scope: !5426)
!5465 = !DILocation(line: 393, column: 33, scope: !5426)
!5466 = !DILocation(line: 393, column: 38, scope: !5426)
!5467 = !DILocation(line: 393, column: 22, scope: !5426)
!5468 = !DILocation(line: 393, column: 2, scope: !5426)
!5469 = !DILocation(line: 393, column: 8, scope: !5426)
!5470 = !DILocation(line: 393, column: 16, scope: !5426)
!5471 = !DILocation(line: 393, column: 20, scope: !5426)
!5472 = !DILocation(line: 394, column: 22, scope: !5426)
!5473 = !DILocation(line: 394, column: 28, scope: !5426)
!5474 = !DILocation(line: 394, column: 53, scope: !5426)
!5475 = !DILocation(line: 394, column: 59, scope: !5426)
!5476 = !DILocation(line: 394, column: 67, scope: !5426)
!5477 = !DILocation(line: 394, column: 2, scope: !5426)
!5478 = !DILocation(line: 395, column: 16, scope: !5426)
!5479 = !DILocation(line: 395, column: 22, scope: !5426)
!5480 = !DILocation(line: 395, column: 2, scope: !5426)
!5481 = !DILocation(line: 396, column: 9, scope: !5426)
!5482 = !DILocation(line: 396, column: 2, scope: !5426)
!5483 = !DILocation(line: 397, column: 1, scope: !5426)
!5484 = distinct !DISubprogram(name: "FAN_TO_REG", scope: !3, file: !3, line: 126, type: !5485, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!1271, !140, !189}
!5487 = !DILocalVariable(name: "rpm", arg: 1, scope: !5484, file: !3, line: 126, type: !140)
!5488 = !DILocation(line: 126, column: 34, scope: !5484)
!5489 = !DILocalVariable(name: "div", arg: 2, scope: !5484, file: !3, line: 126, type: !189)
!5490 = !DILocation(line: 126, column: 43, scope: !5484)
!5491 = !DILocation(line: 128, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 128, column: 6)
!5493 = !DILocation(line: 128, column: 10, scope: !5492)
!5494 = !DILocation(line: 128, column: 6, scope: !5484)
!5495 = !DILocation(line: 129, column: 3, scope: !5492)
!5496 = !DILocation(line: 130, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 130, column: 6)
!5498 = !DILocation(line: 130, column: 10, scope: !5497)
!5499 = !DILocation(line: 130, column: 6, scope: !5484)
!5500 = !DILocation(line: 131, column: 3, scope: !5497)
!5501 = !DILocalVariable(name: "__UNIQUE_ID___x246", scope: !5502, file: !3, line: 132, type: !140)
!5502 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 132, column: 9)
!5503 = !DILocation(line: 132, column: 9, scope: !5502)
!5504 = !DILocalVariable(name: "__UNIQUE_ID___x244", scope: !5505, file: !3, line: 132, type: !140)
!5505 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 132, column: 9)
!5506 = !DILocation(line: 132, column: 9, scope: !5505)
!5507 = !DILocalVariable(name: "__UNIQUE_ID___y245", scope: !5505, file: !3, line: 132, type: !140)
!5508 = !DILocalVariable(name: "__UNIQUE_ID___y247", scope: !5502, file: !3, line: 132, type: !140)
!5509 = !DILocation(line: 132, column: 9, scope: !5484)
!5510 = !DILocation(line: 132, column: 2, scope: !5484)
!5511 = !DILocation(line: 133, column: 1, scope: !5484)
!5512 = distinct !DISubprogram(name: "fan_div_show", scope: !3, file: !3, line: 399, type: !134, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5513 = !DILocalVariable(name: "dev", arg: 1, scope: !5512, file: !3, line: 399, type: !141)
!5514 = !DILocation(line: 399, column: 44, scope: !5512)
!5515 = !DILocalVariable(name: "da", arg: 2, scope: !5512, file: !3, line: 399, type: !3839)
!5516 = !DILocation(line: 399, column: 74, scope: !5512)
!5517 = !DILocalVariable(name: "buf", arg: 3, scope: !5512, file: !3, line: 400, type: !205)
!5518 = !DILocation(line: 400, column: 14, scope: !5512)
!5519 = !DILocalVariable(name: "data", scope: !5512, file: !3, line: 402, type: !4584)
!5520 = !DILocation(line: 402, column: 23, scope: !5512)
!5521 = !DILocation(line: 402, column: 52, scope: !5512)
!5522 = !DILocation(line: 402, column: 30, scope: !5512)
!5523 = !DILocalVariable(name: "attr", scope: !5512, file: !3, line: 403, type: !114)
!5524 = !DILocation(line: 403, column: 34, scope: !5512)
!5525 = !DILocalVariable(name: "__mptr", scope: !5526, file: !3, line: 403, type: !108)
!5526 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 403, column: 41)
!5527 = !DILocation(line: 403, column: 41, scope: !5526)
!5528 = !DILocation(line: 403, column: 41, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 403, column: 41)
!5530 = !DILocalVariable(name: "nr", scope: !5512, file: !3, line: 404, type: !189)
!5531 = !DILocation(line: 404, column: 6, scope: !5512)
!5532 = !DILocation(line: 404, column: 11, scope: !5512)
!5533 = !DILocation(line: 404, column: 17, scope: !5512)
!5534 = !DILocation(line: 405, column: 17, scope: !5512)
!5535 = !DILocation(line: 405, column: 30, scope: !5512)
!5536 = !DILocation(line: 405, column: 9, scope: !5512)
!5537 = !DILocation(line: 405, column: 2, scope: !5512)
!5538 = distinct !DISubprogram(name: "fan_div_store", scope: !3, file: !3, line: 414, type: !3842, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5539 = !DILocalVariable(name: "dev", arg: 1, scope: !5538, file: !3, line: 414, type: !141)
!5540 = !DILocation(line: 414, column: 45, scope: !5538)
!5541 = !DILocalVariable(name: "da", arg: 2, scope: !5538, file: !3, line: 414, type: !3839)
!5542 = !DILocation(line: 414, column: 75, scope: !5538)
!5543 = !DILocalVariable(name: "buf", arg: 3, scope: !5538, file: !3, line: 415, type: !126)
!5544 = !DILocation(line: 415, column: 21, scope: !5538)
!5545 = !DILocalVariable(name: "count", arg: 4, scope: !5538, file: !3, line: 415, type: !240)
!5546 = !DILocation(line: 415, column: 33, scope: !5538)
!5547 = !DILocalVariable(name: "data", scope: !5538, file: !3, line: 417, type: !4584)
!5548 = !DILocation(line: 417, column: 23, scope: !5538)
!5549 = !DILocation(line: 417, column: 46, scope: !5538)
!5550 = !DILocation(line: 417, column: 30, scope: !5538)
!5551 = !DILocalVariable(name: "attr", scope: !5538, file: !3, line: 418, type: !114)
!5552 = !DILocation(line: 418, column: 34, scope: !5538)
!5553 = !DILocalVariable(name: "__mptr", scope: !5554, file: !3, line: 418, type: !108)
!5554 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 418, column: 41)
!5555 = !DILocation(line: 418, column: 41, scope: !5554)
!5556 = !DILocation(line: 418, column: 41, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 418, column: 41)
!5558 = !DILocalVariable(name: "nr", scope: !5538, file: !3, line: 419, type: !189)
!5559 = !DILocation(line: 419, column: 6, scope: !5538)
!5560 = !DILocation(line: 419, column: 11, scope: !5538)
!5561 = !DILocation(line: 419, column: 17, scope: !5538)
!5562 = !DILocalVariable(name: "min", scope: !5538, file: !3, line: 420, type: !243)
!5563 = !DILocation(line: 420, column: 16, scope: !5538)
!5564 = !DILocalVariable(name: "reg", scope: !5538, file: !3, line: 421, type: !189)
!5565 = !DILocation(line: 421, column: 6, scope: !5538)
!5566 = !DILocalVariable(name: "val", scope: !5538, file: !3, line: 422, type: !243)
!5567 = !DILocation(line: 422, column: 16, scope: !5538)
!5568 = !DILocalVariable(name: "err", scope: !5538, file: !3, line: 423, type: !189)
!5569 = !DILocation(line: 423, column: 6, scope: !5538)
!5570 = !DILocation(line: 425, column: 17, scope: !5538)
!5571 = !DILocation(line: 425, column: 8, scope: !5538)
!5572 = !DILocation(line: 425, column: 6, scope: !5538)
!5573 = !DILocation(line: 426, column: 6, scope: !5574)
!5574 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 426, column: 6)
!5575 = !DILocation(line: 426, column: 6, scope: !5538)
!5576 = !DILocation(line: 427, column: 10, scope: !5574)
!5577 = !DILocation(line: 427, column: 3, scope: !5574)
!5578 = !DILocation(line: 429, column: 14, scope: !5538)
!5579 = !DILocation(line: 429, column: 20, scope: !5538)
!5580 = !DILocation(line: 429, column: 2, scope: !5538)
!5581 = !DILocation(line: 430, column: 21, scope: !5538)
!5582 = !DILocation(line: 430, column: 27, scope: !5538)
!5583 = !DILocation(line: 430, column: 35, scope: !5538)
!5584 = !DILocation(line: 431, column: 4, scope: !5538)
!5585 = !DILocation(line: 430, column: 8, scope: !5538)
!5586 = !DILocation(line: 430, column: 6, scope: !5538)
!5587 = !DILocation(line: 432, column: 27, scope: !5538)
!5588 = !DILocation(line: 432, column: 8, scope: !5538)
!5589 = !DILocation(line: 432, column: 6, scope: !5538)
!5590 = !DILocation(line: 434, column: 10, scope: !5538)
!5591 = !DILocation(line: 434, column: 2, scope: !5538)
!5592 = !DILocation(line: 436, column: 3, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 434, column: 15)
!5594 = !DILocation(line: 436, column: 9, scope: !5593)
!5595 = !DILocation(line: 436, column: 17, scope: !5593)
!5596 = !DILocation(line: 436, column: 21, scope: !5593)
!5597 = !DILocation(line: 437, column: 3, scope: !5593)
!5598 = !DILocation(line: 439, column: 3, scope: !5593)
!5599 = !DILocation(line: 439, column: 9, scope: !5593)
!5600 = !DILocation(line: 439, column: 17, scope: !5593)
!5601 = !DILocation(line: 439, column: 21, scope: !5593)
!5602 = !DILocation(line: 440, column: 3, scope: !5593)
!5603 = !DILocation(line: 442, column: 3, scope: !5593)
!5604 = !DILocation(line: 442, column: 9, scope: !5593)
!5605 = !DILocation(line: 442, column: 17, scope: !5593)
!5606 = !DILocation(line: 442, column: 21, scope: !5593)
!5607 = !DILocation(line: 443, column: 3, scope: !5593)
!5608 = !DILocation(line: 445, column: 3, scope: !5593)
!5609 = !DILocation(line: 445, column: 9, scope: !5593)
!5610 = !DILocation(line: 445, column: 17, scope: !5593)
!5611 = !DILocation(line: 445, column: 21, scope: !5593)
!5612 = !DILocation(line: 446, column: 3, scope: !5593)
!5613 = !DILocation(line: 448, column: 3, scope: !5593)
!5614 = !DILocation(line: 451, column: 17, scope: !5593)
!5615 = !DILocation(line: 451, column: 23, scope: !5593)
!5616 = !DILocation(line: 451, column: 3, scope: !5593)
!5617 = !DILocation(line: 452, column: 3, scope: !5593)
!5618 = !DILocation(line: 455, column: 10, scope: !5538)
!5619 = !DILocation(line: 455, column: 2, scope: !5538)
!5620 = !DILocation(line: 457, column: 10, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 455, column: 14)
!5622 = !DILocation(line: 457, column: 14, scope: !5621)
!5623 = !DILocation(line: 457, column: 25, scope: !5621)
!5624 = !DILocation(line: 457, column: 31, scope: !5621)
!5625 = !DILocation(line: 457, column: 39, scope: !5621)
!5626 = !DILocation(line: 457, column: 43, scope: !5621)
!5627 = !DILocation(line: 457, column: 22, scope: !5621)
!5628 = !DILocation(line: 457, column: 7, scope: !5621)
!5629 = !DILocation(line: 458, column: 3, scope: !5621)
!5630 = !DILocation(line: 460, column: 10, scope: !5621)
!5631 = !DILocation(line: 460, column: 14, scope: !5621)
!5632 = !DILocation(line: 460, column: 25, scope: !5621)
!5633 = !DILocation(line: 460, column: 31, scope: !5621)
!5634 = !DILocation(line: 460, column: 39, scope: !5621)
!5635 = !DILocation(line: 460, column: 43, scope: !5621)
!5636 = !DILocation(line: 460, column: 22, scope: !5621)
!5637 = !DILocation(line: 460, column: 7, scope: !5621)
!5638 = !DILocation(line: 461, column: 3, scope: !5621)
!5639 = !DILocation(line: 463, column: 22, scope: !5538)
!5640 = !DILocation(line: 463, column: 48, scope: !5538)
!5641 = !DILocation(line: 463, column: 2, scope: !5538)
!5642 = !DILocation(line: 465, column: 14, scope: !5538)
!5643 = !DILocation(line: 465, column: 19, scope: !5538)
!5644 = !DILocation(line: 465, column: 3, scope: !5538)
!5645 = !DILocation(line: 464, column: 2, scope: !5538)
!5646 = !DILocation(line: 464, column: 8, scope: !5538)
!5647 = !DILocation(line: 464, column: 16, scope: !5538)
!5648 = !DILocation(line: 464, column: 20, scope: !5538)
!5649 = !DILocation(line: 466, column: 22, scope: !5538)
!5650 = !DILocation(line: 466, column: 28, scope: !5538)
!5651 = !DILocation(line: 466, column: 53, scope: !5538)
!5652 = !DILocation(line: 466, column: 59, scope: !5538)
!5653 = !DILocation(line: 466, column: 67, scope: !5538)
!5654 = !DILocation(line: 466, column: 2, scope: !5538)
!5655 = !DILocation(line: 467, column: 16, scope: !5538)
!5656 = !DILocation(line: 467, column: 22, scope: !5538)
!5657 = !DILocation(line: 467, column: 2, scope: !5538)
!5658 = !DILocation(line: 468, column: 9, scope: !5538)
!5659 = !DILocation(line: 468, column: 2, scope: !5538)
!5660 = !DILocation(line: 469, column: 1, scope: !5538)
!5661 = distinct !DISubprogram(name: "alarms_show", scope: !3, file: !3, line: 479, type: !134, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5662 = !DILocalVariable(name: "dev", arg: 1, scope: !5661, file: !3, line: 479, type: !141)
!5663 = !DILocation(line: 479, column: 43, scope: !5661)
!5664 = !DILocalVariable(name: "attr", arg: 2, scope: !5661, file: !3, line: 479, type: !3839)
!5665 = !DILocation(line: 479, column: 73, scope: !5661)
!5666 = !DILocalVariable(name: "buf", arg: 3, scope: !5661, file: !3, line: 480, type: !205)
!5667 = !DILocation(line: 480, column: 13, scope: !5661)
!5668 = !DILocalVariable(name: "data", scope: !5661, file: !3, line: 482, type: !4584)
!5669 = !DILocation(line: 482, column: 23, scope: !5661)
!5670 = !DILocation(line: 482, column: 52, scope: !5661)
!5671 = !DILocation(line: 482, column: 30, scope: !5661)
!5672 = !DILocation(line: 483, column: 17, scope: !5661)
!5673 = !DILocation(line: 483, column: 30, scope: !5661)
!5674 = !DILocation(line: 483, column: 36, scope: !5661)
!5675 = !DILocation(line: 483, column: 9, scope: !5661)
!5676 = !DILocation(line: 483, column: 2, scope: !5661)
!5677 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 503, type: !134, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5678 = !DILocalVariable(name: "dev", arg: 1, scope: !5677, file: !3, line: 503, type: !141)
!5679 = !DILocation(line: 503, column: 41, scope: !5677)
!5680 = !DILocalVariable(name: "attr", arg: 2, scope: !5677, file: !3, line: 503, type: !3839)
!5681 = !DILocation(line: 503, column: 71, scope: !5677)
!5682 = !DILocalVariable(name: "buf", arg: 3, scope: !5677, file: !3, line: 504, type: !205)
!5683 = !DILocation(line: 504, column: 11, scope: !5677)
!5684 = !DILocalVariable(name: "data", scope: !5677, file: !3, line: 506, type: !4584)
!5685 = !DILocation(line: 506, column: 23, scope: !5677)
!5686 = !DILocation(line: 506, column: 46, scope: !5677)
!5687 = !DILocation(line: 506, column: 30, scope: !5677)
!5688 = !DILocation(line: 507, column: 17, scope: !5677)
!5689 = !DILocation(line: 507, column: 30, scope: !5677)
!5690 = !DILocation(line: 507, column: 36, scope: !5677)
!5691 = !DILocation(line: 507, column: 9, scope: !5677)
!5692 = !DILocation(line: 507, column: 2, scope: !5677)
!5693 = distinct !DISubprogram(name: "temp1_input_show", scope: !3, file: !3, line: 295, type: !134, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5694 = !DILocalVariable(name: "dev", arg: 1, scope: !5693, file: !3, line: 295, type: !141)
!5695 = !DILocation(line: 295, column: 48, scope: !5693)
!5696 = !DILocalVariable(name: "attr", arg: 2, scope: !5693, file: !3, line: 296, type: !3839)
!5697 = !DILocation(line: 296, column: 30, scope: !5693)
!5698 = !DILocalVariable(name: "buf", arg: 3, scope: !5693, file: !3, line: 296, type: !205)
!5699 = !DILocation(line: 296, column: 42, scope: !5693)
!5700 = !DILocalVariable(name: "data", scope: !5693, file: !3, line: 298, type: !4584)
!5701 = !DILocation(line: 298, column: 23, scope: !5693)
!5702 = !DILocation(line: 298, column: 52, scope: !5693)
!5703 = !DILocation(line: 298, column: 30, scope: !5693)
!5704 = !DILocation(line: 299, column: 17, scope: !5693)
!5705 = !DILocation(line: 299, column: 44, scope: !5693)
!5706 = !DILocation(line: 299, column: 50, scope: !5693)
!5707 = !DILocation(line: 299, column: 30, scope: !5693)
!5708 = !DILocation(line: 299, column: 9, scope: !5693)
!5709 = !DILocation(line: 299, column: 2, scope: !5693)
!5710 = distinct !DISubprogram(name: "TEMP_FROM_REG", scope: !3, file: !3, line: 144, type: !5711, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5711 = !DISubroutineType(types: !5712)
!5712 = !{!189, !3875}
!5713 = !DILocalVariable(name: "val", arg: 1, scope: !5710, file: !3, line: 144, type: !3875)
!5714 = !DILocation(line: 144, column: 36, scope: !5710)
!5715 = !DILocation(line: 146, column: 9, scope: !5710)
!5716 = !DILocation(line: 146, column: 13, scope: !5710)
!5717 = !DILocation(line: 146, column: 19, scope: !5710)
!5718 = !DILocation(line: 146, column: 2, scope: !5710)
!5719 = distinct !DISubprogram(name: "temp1_max_show", scope: !3, file: !3, line: 302, type: !134, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5720 = !DILocalVariable(name: "dev", arg: 1, scope: !5719, file: !3, line: 302, type: !141)
!5721 = !DILocation(line: 302, column: 46, scope: !5719)
!5722 = !DILocalVariable(name: "attr", arg: 2, scope: !5719, file: !3, line: 302, type: !3839)
!5723 = !DILocation(line: 302, column: 76, scope: !5719)
!5724 = !DILocalVariable(name: "buf", arg: 3, scope: !5719, file: !3, line: 303, type: !205)
!5725 = !DILocation(line: 303, column: 16, scope: !5719)
!5726 = !DILocalVariable(name: "data", scope: !5719, file: !3, line: 305, type: !4584)
!5727 = !DILocation(line: 305, column: 23, scope: !5719)
!5728 = !DILocation(line: 305, column: 52, scope: !5719)
!5729 = !DILocation(line: 305, column: 30, scope: !5719)
!5730 = !DILocation(line: 306, column: 17, scope: !5719)
!5731 = !DILocation(line: 306, column: 44, scope: !5719)
!5732 = !DILocation(line: 306, column: 50, scope: !5719)
!5733 = !DILocation(line: 306, column: 30, scope: !5719)
!5734 = !DILocation(line: 306, column: 9, scope: !5719)
!5735 = !DILocation(line: 306, column: 2, scope: !5719)
!5736 = distinct !DISubprogram(name: "temp1_max_store", scope: !3, file: !3, line: 309, type: !3842, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5737 = !DILocalVariable(name: "dev", arg: 1, scope: !5736, file: !3, line: 309, type: !141)
!5738 = !DILocation(line: 309, column: 47, scope: !5736)
!5739 = !DILocalVariable(name: "attr", arg: 2, scope: !5736, file: !3, line: 310, type: !3839)
!5740 = !DILocation(line: 310, column: 36, scope: !5736)
!5741 = !DILocalVariable(name: "buf", arg: 3, scope: !5736, file: !3, line: 310, type: !126)
!5742 = !DILocation(line: 310, column: 54, scope: !5736)
!5743 = !DILocalVariable(name: "count", arg: 4, scope: !5736, file: !3, line: 311, type: !240)
!5744 = !DILocation(line: 311, column: 18, scope: !5736)
!5745 = !DILocalVariable(name: "data", scope: !5736, file: !3, line: 313, type: !4584)
!5746 = !DILocation(line: 313, column: 23, scope: !5736)
!5747 = !DILocation(line: 313, column: 46, scope: !5736)
!5748 = !DILocation(line: 313, column: 30, scope: !5736)
!5749 = !DILocalVariable(name: "val", scope: !5736, file: !3, line: 314, type: !140)
!5750 = !DILocation(line: 314, column: 7, scope: !5736)
!5751 = !DILocalVariable(name: "err", scope: !5736, file: !3, line: 315, type: !189)
!5752 = !DILocation(line: 315, column: 6, scope: !5736)
!5753 = !DILocation(line: 317, column: 16, scope: !5736)
!5754 = !DILocation(line: 317, column: 8, scope: !5736)
!5755 = !DILocation(line: 317, column: 6, scope: !5736)
!5756 = !DILocation(line: 318, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 318, column: 6)
!5758 = !DILocation(line: 318, column: 6, scope: !5736)
!5759 = !DILocation(line: 319, column: 10, scope: !5757)
!5760 = !DILocation(line: 319, column: 3, scope: !5757)
!5761 = !DILocation(line: 321, column: 14, scope: !5736)
!5762 = !DILocation(line: 321, column: 20, scope: !5736)
!5763 = !DILocation(line: 321, column: 2, scope: !5736)
!5764 = !DILocation(line: 322, column: 32, scope: !5736)
!5765 = !DILocation(line: 322, column: 20, scope: !5736)
!5766 = !DILocation(line: 322, column: 2, scope: !5736)
!5767 = !DILocation(line: 322, column: 8, scope: !5736)
!5768 = !DILocation(line: 322, column: 18, scope: !5736)
!5769 = !DILocation(line: 323, column: 22, scope: !5736)
!5770 = !DILocation(line: 323, column: 28, scope: !5736)
!5771 = !DILocation(line: 323, column: 51, scope: !5736)
!5772 = !DILocation(line: 323, column: 57, scope: !5736)
!5773 = !DILocation(line: 323, column: 2, scope: !5736)
!5774 = !DILocation(line: 324, column: 16, scope: !5736)
!5775 = !DILocation(line: 324, column: 22, scope: !5736)
!5776 = !DILocation(line: 324, column: 2, scope: !5736)
!5777 = !DILocation(line: 325, column: 9, scope: !5736)
!5778 = !DILocation(line: 325, column: 2, scope: !5736)
!5779 = !DILocation(line: 326, column: 1, scope: !5736)
!5780 = distinct !DISubprogram(name: "kstrtol", scope: !5205, file: !5205, line: 379, type: !5781, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!189, !126, !7, !5783}
!5783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!5784 = !DILocalVariable(name: "s", arg: 1, scope: !5780, file: !5205, line: 379, type: !126)
!5785 = !DILocation(line: 379, column: 52, scope: !5780)
!5786 = !DILocalVariable(name: "base", arg: 2, scope: !5780, file: !5205, line: 379, type: !7)
!5787 = !DILocation(line: 379, column: 68, scope: !5780)
!5788 = !DILocalVariable(name: "res", arg: 3, scope: !5780, file: !5205, line: 379, type: !5783)
!5789 = !DILocation(line: 379, column: 80, scope: !5780)
!5790 = !DILocation(line: 387, column: 19, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5780, file: !5205, line: 385, column: 6)
!5792 = !DILocation(line: 387, column: 22, scope: !5791)
!5793 = !DILocation(line: 387, column: 41, scope: !5791)
!5794 = !DILocation(line: 387, column: 10, scope: !5791)
!5795 = !DILocation(line: 387, column: 3, scope: !5791)
!5796 = distinct !DISubprogram(name: "TEMP_TO_REG", scope: !3, file: !3, line: 148, type: !5797, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5797 = !DISubroutineType(types: !5798)
!5798 = !{!3875, !140}
!5799 = !DILocalVariable(name: "val", arg: 1, scope: !5796, file: !3, line: 148, type: !140)
!5800 = !DILocation(line: 148, column: 35, scope: !5796)
!5801 = !DILocalVariable(name: "nval", scope: !5796, file: !3, line: 150, type: !189)
!5802 = !DILocation(line: 150, column: 6, scope: !5796)
!5803 = !DILocalVariable(name: "__UNIQUE_ID___x250", scope: !5804, file: !3, line: 150, type: !140)
!5804 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 150, column: 13)
!5805 = !DILocation(line: 150, column: 13, scope: !5804)
!5806 = !DILocalVariable(name: "__UNIQUE_ID___x248", scope: !5807, file: !3, line: 150, type: !140)
!5807 = distinct !DILexicalBlock(scope: !5804, file: !3, line: 150, column: 13)
!5808 = !DILocation(line: 150, column: 13, scope: !5807)
!5809 = !DILocalVariable(name: "__UNIQUE_ID___y249", scope: !5807, file: !3, line: 150, type: !140)
!5810 = !DILocalVariable(name: "__UNIQUE_ID___y251", scope: !5804, file: !3, line: 150, type: !140)
!5811 = !DILocation(line: 150, column: 13, scope: !5796)
!5812 = !DILocation(line: 151, column: 9, scope: !5796)
!5813 = !DILocation(line: 151, column: 14, scope: !5796)
!5814 = !DILocation(line: 151, column: 21, scope: !5796)
!5815 = !DILocation(line: 151, column: 26, scope: !5796)
!5816 = !DILocation(line: 151, column: 33, scope: !5796)
!5817 = !DILocation(line: 151, column: 40, scope: !5796)
!5818 = !DILocation(line: 151, column: 49, scope: !5796)
!5819 = !DILocation(line: 151, column: 54, scope: !5796)
!5820 = !DILocation(line: 151, column: 61, scope: !5796)
!5821 = !DILocation(line: 151, column: 68, scope: !5796)
!5822 = !DILocation(line: 151, column: 2, scope: !5796)
!5823 = distinct !DISubprogram(name: "temp1_max_hyst_show", scope: !3, file: !3, line: 328, type: !134, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5824 = !DILocalVariable(name: "dev", arg: 1, scope: !5823, file: !3, line: 328, type: !141)
!5825 = !DILocation(line: 328, column: 51, scope: !5823)
!5826 = !DILocalVariable(name: "attr", arg: 2, scope: !5823, file: !3, line: 329, type: !3839)
!5827 = !DILocation(line: 329, column: 33, scope: !5823)
!5828 = !DILocalVariable(name: "buf", arg: 3, scope: !5823, file: !3, line: 329, type: !205)
!5829 = !DILocation(line: 329, column: 45, scope: !5823)
!5830 = !DILocalVariable(name: "data", scope: !5823, file: !3, line: 331, type: !4584)
!5831 = !DILocation(line: 331, column: 23, scope: !5823)
!5832 = !DILocation(line: 331, column: 52, scope: !5823)
!5833 = !DILocation(line: 331, column: 30, scope: !5823)
!5834 = !DILocation(line: 332, column: 17, scope: !5823)
!5835 = !DILocation(line: 332, column: 44, scope: !5823)
!5836 = !DILocation(line: 332, column: 50, scope: !5823)
!5837 = !DILocation(line: 332, column: 30, scope: !5823)
!5838 = !DILocation(line: 332, column: 9, scope: !5823)
!5839 = !DILocation(line: 332, column: 2, scope: !5823)
!5840 = distinct !DISubprogram(name: "temp1_max_hyst_store", scope: !3, file: !3, line: 335, type: !3842, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5841 = !DILocalVariable(name: "dev", arg: 1, scope: !5840, file: !3, line: 335, type: !141)
!5842 = !DILocation(line: 335, column: 52, scope: !5840)
!5843 = !DILocalVariable(name: "attr", arg: 2, scope: !5840, file: !3, line: 336, type: !3839)
!5844 = !DILocation(line: 336, column: 34, scope: !5840)
!5845 = !DILocalVariable(name: "buf", arg: 3, scope: !5840, file: !3, line: 337, type: !126)
!5846 = !DILocation(line: 337, column: 21, scope: !5840)
!5847 = !DILocalVariable(name: "count", arg: 4, scope: !5840, file: !3, line: 337, type: !240)
!5848 = !DILocation(line: 337, column: 33, scope: !5840)
!5849 = !DILocalVariable(name: "data", scope: !5840, file: !3, line: 339, type: !4584)
!5850 = !DILocation(line: 339, column: 23, scope: !5840)
!5851 = !DILocation(line: 339, column: 46, scope: !5840)
!5852 = !DILocation(line: 339, column: 30, scope: !5840)
!5853 = !DILocalVariable(name: "val", scope: !5840, file: !3, line: 340, type: !140)
!5854 = !DILocation(line: 340, column: 7, scope: !5840)
!5855 = !DILocalVariable(name: "err", scope: !5840, file: !3, line: 341, type: !189)
!5856 = !DILocation(line: 341, column: 6, scope: !5840)
!5857 = !DILocation(line: 343, column: 16, scope: !5840)
!5858 = !DILocation(line: 343, column: 8, scope: !5840)
!5859 = !DILocation(line: 343, column: 6, scope: !5840)
!5860 = !DILocation(line: 344, column: 6, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 344, column: 6)
!5862 = !DILocation(line: 344, column: 6, scope: !5840)
!5863 = !DILocation(line: 345, column: 10, scope: !5861)
!5864 = !DILocation(line: 345, column: 3, scope: !5861)
!5865 = !DILocation(line: 347, column: 14, scope: !5840)
!5866 = !DILocation(line: 347, column: 20, scope: !5840)
!5867 = !DILocation(line: 347, column: 2, scope: !5840)
!5868 = !DILocation(line: 348, column: 32, scope: !5840)
!5869 = !DILocation(line: 348, column: 20, scope: !5840)
!5870 = !DILocation(line: 348, column: 2, scope: !5840)
!5871 = !DILocation(line: 348, column: 8, scope: !5840)
!5872 = !DILocation(line: 348, column: 18, scope: !5840)
!5873 = !DILocation(line: 349, column: 22, scope: !5840)
!5874 = !DILocation(line: 349, column: 28, scope: !5840)
!5875 = !DILocation(line: 349, column: 51, scope: !5840)
!5876 = !DILocation(line: 349, column: 57, scope: !5840)
!5877 = !DILocation(line: 349, column: 2, scope: !5840)
!5878 = !DILocation(line: 350, column: 16, scope: !5840)
!5879 = !DILocation(line: 350, column: 22, scope: !5840)
!5880 = !DILocation(line: 350, column: 2, scope: !5840)
!5881 = !DILocation(line: 351, column: 9, scope: !5840)
!5882 = !DILocation(line: 351, column: 2, scope: !5840)
!5883 = !DILocation(line: 352, column: 1, scope: !5840)
!5884 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !3938, file: !3938, line: 231, type: !5885, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!108, !5887}
!5887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5888, size: 64)
!5888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3937)
!5889 = !DILocalVariable(name: "pdev", arg: 1, scope: !5884, file: !3938, line: 231, type: !5887)
!5890 = !DILocation(line: 231, column: 72, scope: !5884)
!5891 = !DILocation(line: 233, column: 26, scope: !5884)
!5892 = !DILocation(line: 233, column: 32, scope: !5884)
!5893 = !DILocation(line: 233, column: 9, scope: !5884)
!5894 = !DILocation(line: 233, column: 2, scope: !5884)
