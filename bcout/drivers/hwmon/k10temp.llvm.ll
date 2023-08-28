; ModuleID = '../bcout/drivers/hwmon/k10temp.llvm.bc'
source_filename = "drivers/hwmon/k10temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_k10temp_driver_init6:\09\09\09"
module asm ".long\09k10temp_driver_init - .\09\09\09"
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
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.67, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.67 = type { i64, [72 x i8] }
%struct.tctl_offset = type { i8, i8*, i32 }
%struct.hwmon_chip_info = type { %struct.hwmon_ops*, %struct.hwmon_channel_info** }
%struct.hwmon_ops = type { i16 (i8*, i32, i32, i32)*, i32 (%struct.device*, i32, i32, i32, i64*)*, i32 (%struct.device*, i32, i32, i32, i8**)*, i32 (%struct.device*, i32, i32, i32, i64)* }
%struct.hwmon_channel_info = type { i32, i32* }
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
%struct.k10temp_data = type { %struct.pci_dev*, void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)*, i32, i32, i32, [2 x i32], i8, i8, [2 x i32] }
%struct.amd_northbridge = type { %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.amd_l3_cache, %struct.threshold_bank* }
%struct.amd_l3_cache = type { i32, [4 x i8] }
%struct.threshold_bank = type { %struct.kobject*, %struct.threshold_block*, %struct.refcount_struct, i32 }
%struct.threshold_block = type { i32, i32, i32, i32, i16, i8, i16, %struct.kobject, %struct.list_head }
%struct.pci_sysdata = type { i32, i32, %struct.acpi_device*, i8*, i8*, %struct.pci_dev* }
%struct.acpi_device = type opaque

@__UNIQUE_ID_description235 = internal constant [65 x i8] c"k10temp.description=AMD Family 10h+ CPU core temperature monitor\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_author236 = internal constant [52 x i8] c"k10temp.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1, !dbg !123
@__UNIQUE_ID_file237 = internal constant [35 x i8] c"k10temp.file=drivers/hwmon/k10temp\00", section ".modinfo", align 1, !dbg !130
@__UNIQUE_ID_license238 = internal constant [20 x i8] c"k10temp.license=GPL\00", section ".modinfo", align 1, !dbg !135
@__param_str_force = internal constant [14 x i8] c"k10temp.force\00", align 1, !dbg !229
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@force = internal global i8 0, align 1, !dbg !225
@__param_force = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_force, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @force } }, section "__param", align 8, !dbg !140
@__UNIQUE_ID_forcetype239 = internal constant [28 x i8] c"k10temp.parmtype=force:bool\00", section ".modinfo", align 1, !dbg !206
@__UNIQUE_ID_force240 = internal constant [64 x i8] c"k10temp.parm=force:force loading on processors with erratum 319\00", section ".modinfo", align 1, !dbg !211
@__UNIQUE_ID___addressable_k10temp_driver_init241 = internal global i8* bitcast (i32 ()* @k10temp_driver_init to i8*), section ".discard.addressable", align 8, !dbg !216
@k10temp_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([18 x %struct.pci_device_id], [18 x %struct.pci_device_id]* @k10temp_id_table, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @k10temp_probe, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !234
@__exitcall_k10temp_driver_exit = internal global void ()* @k10temp_driver_exit, section ".exitcall.exit", align 8, !dbg !218
@.str = private unnamed_addr constant [8 x i8] c"k10temp\00", align 1
@k10temp_id_table = internal constant [18 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 4611, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 4867, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5891, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5635, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5123, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5149, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5491, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5555, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5427, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5507, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5219, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5611, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5267, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5195, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5187, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4130, i32 5715, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 7572, i32 5219, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4101
@.str.1 = private unnamed_addr constant [52 x i8] c"unreliable CPU thermal sensor; monitoring disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"unreliable CPU thermal sensor; check erratum 319\0A\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@tctl_offset_table = internal constant [6 x %struct.tctl_offset] [%struct.tctl_offset { i8 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i32 20000 }, %struct.tctl_offset { i8 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 20000 }, %struct.tctl_offset { i8 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 20000 }, %struct.tctl_offset { i8 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 10000 }, %struct.tctl_offset { i8 23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0), i32 27000 }, %struct.tctl_offset { i8 23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i32 27000 }], align 16, !dbg !4108
@k10temp_chip_info = internal constant %struct.hwmon_chip_info { %struct.hwmon_ops* @k10temp_hwmon_ops, %struct.hwmon_channel_info** getelementptr inbounds ([4 x %struct.hwmon_channel_info*], [4 x %struct.hwmon_channel_info*]* @k10temp_info, i32 0, i32 0) }, align 8, !dbg !4117
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@nb_smu_ind_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @nb_smu_ind_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @nb_smu_ind_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4106
@.str.3 = private unnamed_addr constant [42 x i8] c"Unable to find AMD Northbridge id for %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"arch/x86/include/asm/amd_nb.h\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Threadripper\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"EPYC\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"AMD Ryzen 5 1600X\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"AMD Ryzen 7 1700X\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"AMD Ryzen 7 1800X\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"AMD Ryzen 7 2700X\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"AMD Ryzen Threadripper 19\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"AMD Ryzen Threadripper 29\00", align 1
@k10temp_hwmon_ops = internal constant %struct.hwmon_ops { i16 (i8*, i32, i32, i32)* @k10temp_is_visible, i32 (%struct.device*, i32, i32, i32, i64*)* @k10temp_read, i32 (%struct.device*, i32, i32, i32, i8**)* @k10temp_read_labels, i32 (%struct.device*, i32, i32, i32, i64)* null }, align 8, !dbg !4154
@k10temp_info = internal global [4 x %struct.hwmon_channel_info*] [%struct.hwmon_channel_info* @.compoundliteral.27, %struct.hwmon_channel_info* @.compoundliteral.29, %struct.hwmon_channel_info* @.compoundliteral.31, %struct.hwmon_channel_info* null], align 16, !dbg !4166
@k10temp_temp_label = internal global [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)], align 16, !dbg !4156
@k10temp_in_label = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)], align 16, !dbg !4161
@k10temp_curr_label = internal global [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)], align 16, !dbg !4164
@.str.13 = private unnamed_addr constant [5 x i8] c"Tctl\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Tdie\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Tccd1\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Tccd2\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"Tccd3\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Tccd4\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Tccd5\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Tccd6\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Tccd7\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Tccd8\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Vcore\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Vsoc\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Icore\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.compoundliteral = internal global [11 x i32] [i32 2098818, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 0], align 4
@.compoundliteral.27 = internal global %struct.hwmon_channel_info { i32 1, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @.compoundliteral, i32 0, i32 0) }, align 8
@.compoundliteral.28 = internal global [3 x i32] [i32 1026, i32 1026, i32 0], align 4
@.compoundliteral.29 = internal global %struct.hwmon_channel_info { i32 2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.compoundliteral.28, i32 0, i32 0) }, align 8
@.compoundliteral.30 = internal global [3 x i32] [i32 1026, i32 1026, i32 0], align 4
@.compoundliteral.31 = internal global %struct.hwmon_channel_info { i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.compoundliteral.30, i32 0, i32 0) }, align 8
@llvm.used = appending global [10 x i8*] [i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_description235, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author236, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_file237, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license238, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_force to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_forcetype239, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_force240, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_k10temp_driver_init241 to i8*), i8* bitcast (void ()* @k10temp_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_k10temp_driver_exit to i8*)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_driver_init() #0 section ".init.text" !dbg !4178 {
entry:
  %call = call i32 @__pci_register_driver(%struct.pci_driver* @k10temp_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #7, !dbg !4181
  ret i32 %call, !dbg !4181
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @k10temp_driver_exit() #0 section ".exit.text" !dbg !4182 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @k10temp_driver) #7, !dbg !4183
  ret void, !dbg !4183
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %id) #2 !dbg !4184 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %id.addr = alloca %struct.pci_device_id*, align 8
  %unreliable = alloca i32, align 4
  %dev = alloca %struct.device*, align 8
  %data = alloca %struct.k10temp_data*, align 8
  %hwmon_dev = alloca %struct.device*, align 8
  %i = alloca i32, align 4
  %entry92 = alloca %struct.tctl_offset*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  store %struct.pci_device_id* %id, %struct.pci_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %id.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.declare(metadata i32* %unreliable, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4191
  %call = call zeroext i1 @has_erratum_319(%struct.pci_dev* %0) #7, !dbg !4192
  %conv = zext i1 %call to i32, !dbg !4192
  store i32 %conv, i32* %unreliable, align 4, !dbg !4190
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !4193, metadata !DIExpression()), !dbg !4194
  %1 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4195
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %1, i32 0, i32 41, !dbg !4196
  store %struct.device* %dev1, %struct.device** %dev, align 8, !dbg !4194
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data, metadata !4197, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.declare(metadata %struct.device** %hwmon_dev, metadata !4217, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4219, metadata !DIExpression()), !dbg !4220
  %2 = load i32, i32* %unreliable, align 4, !dbg !4221
  %tobool = icmp ne i32 %2, 0, !dbg !4221
  br i1 %tobool, label %if.then, label %if.end4, !dbg !4223

if.then:                                          ; preds = %entry
  %3 = load i8, i8* @force, align 1, !dbg !4224
  %tobool2 = trunc i8 %3 to i1, !dbg !4224
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !4227

if.then3:                                         ; preds = %if.then
  %4 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4228
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !4228
  store i32 -19, i32* %retval, align 4, !dbg !4230
  br label %return, !dbg !4230

if.end:                                           ; preds = %if.then
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4231
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4231
  br label %if.end4, !dbg !4232

if.end4:                                          ; preds = %if.end, %entry
  %6 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4233
  %call5 = call i8* @devm_kzalloc(%struct.device* %6, i64 56, i32 3264) #7, !dbg !4234
  %7 = bitcast i8* %call5 to %struct.k10temp_data*, !dbg !4234
  store %struct.k10temp_data* %7, %struct.k10temp_data** %data, align 8, !dbg !4235
  %8 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4236
  %tobool6 = icmp ne %struct.k10temp_data* %8, null, !dbg !4236
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4238

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !4239
  br label %return, !dbg !4239

if.end8:                                          ; preds = %if.end4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4240
  %10 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4241
  %pdev9 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %10, i32 0, i32 0, !dbg !4242
  store %struct.pci_dev* %9, %struct.pci_dev** %pdev9, align 8, !dbg !4243
  %11 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4244
  %show_temp = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %11, i32 0, i32 5, !dbg !4245
  %12 = load i32, i32* %show_temp, align 8, !dbg !4246
  %conv10 = zext i32 %12 to i64, !dbg !4246
  %or = or i64 %conv10, 1, !dbg !4246
  %conv11 = trunc i64 %or to i32, !dbg !4246
  store i32 %conv11, i32* %show_temp, align 8, !dbg !4246
  %13 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4247
  %conv12 = zext i8 %13 to i32, !dbg !4249
  %cmp = icmp eq i32 %conv12, 21, !dbg !4250
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !4251

land.lhs.true:                                    ; preds = %if.end8
  %14 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4252
  %conv14 = zext i8 %14 to i32, !dbg !4253
  %and = and i32 %conv14, 240, !dbg !4254
  %cmp15 = icmp eq i32 %and, 96, !dbg !4255
  br i1 %cmp15, label %if.then21, label %lor.lhs.false, !dbg !4256

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4257
  %conv17 = zext i8 %15 to i32, !dbg !4258
  %and18 = and i32 %conv17, 240, !dbg !4259
  %cmp19 = icmp eq i32 %and18, 112, !dbg !4260
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !4261

if.then21:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4262
  %read_htcreg = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %16, i32 0, i32 1, !dbg !4264
  store void (%struct.pci_dev*, i32*)* @read_htcreg_nb_f15, void (%struct.pci_dev*, i32*)** %read_htcreg, align 8, !dbg !4265
  %17 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4266
  %read_tempreg = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %17, i32 0, i32 2, !dbg !4267
  store void (%struct.pci_dev*, i32*)* @read_tempreg_nb_f15, void (%struct.pci_dev*, i32*)** %read_tempreg, align 8, !dbg !4268
  br label %if.end88, !dbg !4269

if.else:                                          ; preds = %lor.lhs.false, %if.end8
  %18 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4270
  %conv22 = zext i8 %18 to i32, !dbg !4272
  %cmp23 = icmp eq i32 %conv22, 23, !dbg !4273
  br i1 %cmp23, label %if.then29, label %lor.lhs.false25, !dbg !4274

lor.lhs.false25:                                  ; preds = %if.else
  %19 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4275
  %conv26 = zext i8 %19 to i32, !dbg !4276
  %cmp27 = icmp eq i32 %conv26, 24, !dbg !4277
  br i1 %cmp27, label %if.then29, label %if.else59, !dbg !4278

if.then29:                                        ; preds = %lor.lhs.false25, %if.else
  %20 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4279
  %temp_adjust_mask = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %20, i32 0, i32 4, !dbg !4281
  store i32 524288, i32* %temp_adjust_mask, align 4, !dbg !4282
  %21 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4283
  %read_tempreg30 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %21, i32 0, i32 2, !dbg !4284
  store void (%struct.pci_dev*, i32*)* @read_tempreg_nb_zen, void (%struct.pci_dev*, i32*)** %read_tempreg30, align 8, !dbg !4285
  %22 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4286
  %show_temp31 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %22, i32 0, i32 5, !dbg !4287
  %23 = load i32, i32* %show_temp31, align 8, !dbg !4288
  %conv32 = zext i32 %23 to i64, !dbg !4288
  %or33 = or i64 %conv32, 2, !dbg !4288
  %conv34 = trunc i64 %or33 to i32, !dbg !4288
  store i32 %conv34, i32* %show_temp31, align 8, !dbg !4288
  %24 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4289
  %is_zen = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %24, i32 0, i32 7, !dbg !4290
  store i8 1, i8* %is_zen, align 4, !dbg !4291
  %25 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4292
  %conv35 = zext i8 %25 to i32, !dbg !4293
  switch i32 %conv35, label %sw.epilog [
    i32 1, label %sw.bb
    i32 8, label %sw.bb
    i32 17, label %sw.bb
    i32 24, label %sw.bb
    i32 49, label %sw.bb43
    i32 113, label %sw.bb43
  ], !dbg !4294

sw.bb:                                            ; preds = %if.then29, %if.then29, %if.then29, %if.then29
  %call36 = call zeroext i1 @is_threadripper() #7, !dbg !4295
  br i1 %call36, label %land.end, label %land.rhs, !dbg !4297

land.rhs:                                         ; preds = %sw.bb
  %call37 = call zeroext i1 @is_epyc() #7, !dbg !4298
  %lnot = xor i1 %call37, true, !dbg !4299
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %26 = phi i1 [ false, %sw.bb ], [ %lnot, %land.rhs ], !dbg !4300
  %27 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4301
  %show_current = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %27, i32 0, i32 8, !dbg !4302
  %frombool = zext i1 %26 to i8, !dbg !4303
  store i8 %frombool, i8* %show_current, align 1, !dbg !4303
  %28 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4304
  %svi_addr = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %28, i32 0, i32 6, !dbg !4305
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %svi_addr, i64 0, i64 0, !dbg !4304
  store i32 368652, i32* %arrayidx, align 4, !dbg !4306
  %29 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4307
  %svi_addr38 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %29, i32 0, i32 6, !dbg !4308
  %arrayidx39 = getelementptr [2 x i32], [2 x i32]* %svi_addr38, i64 0, i64 1, !dbg !4307
  store i32 368656, i32* %arrayidx39, align 4, !dbg !4309
  %30 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4310
  %cfactor = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %30, i32 0, i32 9, !dbg !4311
  %arrayidx40 = getelementptr [2 x i32], [2 x i32]* %cfactor, i64 0, i64 0, !dbg !4310
  store i32 1000000, i32* %arrayidx40, align 8, !dbg !4312
  %31 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4313
  %cfactor41 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %31, i32 0, i32 9, !dbg !4314
  %arrayidx42 = getelementptr [2 x i32], [2 x i32]* %cfactor41, i64 0, i64 1, !dbg !4313
  store i32 250000, i32* %arrayidx42, align 4, !dbg !4315
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4316
  %33 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4317
  call void @k10temp_get_ccd_support(%struct.pci_dev* %32, %struct.k10temp_data* %33, i32 4) #7, !dbg !4318
  br label %sw.epilog, !dbg !4319

sw.bb43:                                          ; preds = %if.then29, %if.then29
  %call44 = call zeroext i1 @is_threadripper() #7, !dbg !4320
  br i1 %call44, label %land.end48, label %land.rhs45, !dbg !4321

land.rhs45:                                       ; preds = %sw.bb43
  %call46 = call zeroext i1 @is_epyc() #7, !dbg !4322
  %lnot47 = xor i1 %call46, true, !dbg !4323
  br label %land.end48

land.end48:                                       ; preds = %land.rhs45, %sw.bb43
  %34 = phi i1 [ false, %sw.bb43 ], [ %lnot47, %land.rhs45 ], !dbg !4300
  %35 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4324
  %show_current49 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %35, i32 0, i32 8, !dbg !4325
  %frombool50 = zext i1 %34 to i8, !dbg !4326
  store i8 %frombool50, i8* %show_current49, align 1, !dbg !4326
  %36 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4327
  %cfactor51 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %36, i32 0, i32 9, !dbg !4328
  %arrayidx52 = getelementptr [2 x i32], [2 x i32]* %cfactor51, i64 0, i64 0, !dbg !4327
  store i32 1000000, i32* %arrayidx52, align 8, !dbg !4329
  %37 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4330
  %cfactor53 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %37, i32 0, i32 9, !dbg !4331
  %arrayidx54 = getelementptr [2 x i32], [2 x i32]* %cfactor53, i64 0, i64 1, !dbg !4330
  store i32 310000, i32* %arrayidx54, align 4, !dbg !4332
  %38 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4333
  %svi_addr55 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %38, i32 0, i32 6, !dbg !4334
  %arrayidx56 = getelementptr [2 x i32], [2 x i32]* %svi_addr55, i64 0, i64 0, !dbg !4333
  store i32 368660, i32* %arrayidx56, align 4, !dbg !4335
  %39 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4336
  %svi_addr57 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %39, i32 0, i32 6, !dbg !4337
  %arrayidx58 = getelementptr [2 x i32], [2 x i32]* %svi_addr57, i64 0, i64 1, !dbg !4336
  store i32 368656, i32* %arrayidx58, align 4, !dbg !4338
  %40 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4339
  %41 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4340
  call void @k10temp_get_ccd_support(%struct.pci_dev* %40, %struct.k10temp_data* %41, i32 8) #7, !dbg !4341
  br label %sw.epilog, !dbg !4342

sw.epilog:                                        ; preds = %if.then29, %land.end48, %land.end
  br label %if.end87, !dbg !4343

if.else59:                                        ; preds = %lor.lhs.false25
  %42 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4344
  %conv60 = zext i8 %42 to i32, !dbg !4346
  %cmp61 = icmp eq i32 %conv60, 25, !dbg !4347
  br i1 %cmp61, label %if.then63, label %if.else83, !dbg !4348

if.then63:                                        ; preds = %if.else59
  %43 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4349
  %temp_adjust_mask64 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %43, i32 0, i32 4, !dbg !4351
  store i32 524288, i32* %temp_adjust_mask64, align 4, !dbg !4352
  %44 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4353
  %read_tempreg65 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %44, i32 0, i32 2, !dbg !4354
  store void (%struct.pci_dev*, i32*)* @read_tempreg_nb_zen, void (%struct.pci_dev*, i32*)** %read_tempreg65, align 8, !dbg !4355
  %45 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4356
  %show_temp66 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %45, i32 0, i32 5, !dbg !4357
  %46 = load i32, i32* %show_temp66, align 8, !dbg !4358
  %conv67 = zext i32 %46 to i64, !dbg !4358
  %or68 = or i64 %conv67, 2, !dbg !4358
  %conv69 = trunc i64 %or68 to i32, !dbg !4358
  store i32 %conv69, i32* %show_temp66, align 8, !dbg !4358
  %47 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4359
  %is_zen70 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %47, i32 0, i32 7, !dbg !4360
  store i8 1, i8* %is_zen70, align 4, !dbg !4361
  %48 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4362
  %conv71 = zext i8 %48 to i32, !dbg !4363
  switch i32 %conv71, label %sw.epilog82 [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb72
  ], !dbg !4364

sw.bb72:                                          ; preds = %if.then63, %if.then63
  %49 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4365
  %show_current73 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %49, i32 0, i32 8, !dbg !4367
  store i8 1, i8* %show_current73, align 1, !dbg !4368
  %50 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4369
  %svi_addr74 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %50, i32 0, i32 6, !dbg !4370
  %arrayidx75 = getelementptr [2 x i32], [2 x i32]* %svi_addr74, i64 0, i64 0, !dbg !4369
  store i32 368660, i32* %arrayidx75, align 4, !dbg !4371
  %51 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4372
  %svi_addr76 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %51, i32 0, i32 6, !dbg !4373
  %arrayidx77 = getelementptr [2 x i32], [2 x i32]* %svi_addr76, i64 0, i64 1, !dbg !4372
  store i32 368656, i32* %arrayidx77, align 4, !dbg !4374
  %52 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4375
  %cfactor78 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %52, i32 0, i32 9, !dbg !4376
  %arrayidx79 = getelementptr [2 x i32], [2 x i32]* %cfactor78, i64 0, i64 0, !dbg !4375
  store i32 1000000, i32* %arrayidx79, align 8, !dbg !4377
  %53 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4378
  %cfactor80 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %53, i32 0, i32 9, !dbg !4379
  %arrayidx81 = getelementptr [2 x i32], [2 x i32]* %cfactor80, i64 0, i64 1, !dbg !4378
  store i32 310000, i32* %arrayidx81, align 4, !dbg !4380
  %54 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4381
  %55 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4382
  call void @k10temp_get_ccd_support(%struct.pci_dev* %54, %struct.k10temp_data* %55, i32 8) #7, !dbg !4383
  br label %sw.epilog82, !dbg !4384

sw.epilog82:                                      ; preds = %if.then63, %sw.bb72
  br label %if.end86, !dbg !4385

if.else83:                                        ; preds = %if.else59
  %56 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4386
  %read_htcreg84 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %56, i32 0, i32 1, !dbg !4388
  store void (%struct.pci_dev*, i32*)* @read_htcreg_pci, void (%struct.pci_dev*, i32*)** %read_htcreg84, align 8, !dbg !4389
  %57 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4390
  %read_tempreg85 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %57, i32 0, i32 2, !dbg !4391
  store void (%struct.pci_dev*, i32*)* @read_tempreg_pci, void (%struct.pci_dev*, i32*)** %read_tempreg85, align 8, !dbg !4392
  br label %if.end86

if.end86:                                         ; preds = %if.else83, %sw.epilog82
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %sw.epilog
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then21
  store i32 0, i32* %i, align 4, !dbg !4393
  br label %for.cond, !dbg !4395

for.cond:                                         ; preds = %for.inc, %if.end88
  %58 = load i32, i32* %i, align 4, !dbg !4396
  %conv89 = sext i32 %58 to i64, !dbg !4396
  %cmp90 = icmp ult i64 %conv89, 6, !dbg !4398
  br i1 %cmp90, label %for.body, label %for.end, !dbg !4399

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.tctl_offset** %entry92, metadata !4400, metadata !DIExpression()), !dbg !4403
  %59 = load i32, i32* %i, align 4, !dbg !4404
  %idxprom = sext i32 %59 to i64, !dbg !4405
  %arrayidx93 = getelementptr [6 x %struct.tctl_offset], [6 x %struct.tctl_offset]* @tctl_offset_table, i64 0, i64 %idxprom, !dbg !4405
  store %struct.tctl_offset* %arrayidx93, %struct.tctl_offset** %entry92, align 8, !dbg !4403
  %60 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4406
  %conv94 = zext i8 %60 to i32, !dbg !4408
  %61 = load %struct.tctl_offset*, %struct.tctl_offset** %entry92, align 8, !dbg !4409
  %model = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %61, i32 0, i32 0, !dbg !4410
  %62 = load i8, i8* %model, align 8, !dbg !4410
  %conv95 = zext i8 %62 to i32, !dbg !4409
  %cmp96 = icmp eq i32 %conv94, %conv95, !dbg !4411
  br i1 %cmp96, label %land.lhs.true98, label %if.end103, !dbg !4412

land.lhs.true98:                                  ; preds = %for.body
  %63 = load %struct.tctl_offset*, %struct.tctl_offset** %entry92, align 8, !dbg !4413
  %id99 = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %63, i32 0, i32 1, !dbg !4414
  %64 = load i8*, i8** %id99, align 8, !dbg !4414
  %call100 = call i8* @strstr(i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 14, i64 0), i8* %64) #7, !dbg !4415
  %tobool101 = icmp ne i8* %call100, null, !dbg !4415
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !4416

if.then102:                                       ; preds = %land.lhs.true98
  %65 = load %struct.tctl_offset*, %struct.tctl_offset** %entry92, align 8, !dbg !4417
  %offset = getelementptr inbounds %struct.tctl_offset, %struct.tctl_offset* %65, i32 0, i32 2, !dbg !4419
  %66 = load i32, i32* %offset, align 8, !dbg !4419
  %67 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4420
  %temp_offset = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %67, i32 0, i32 3, !dbg !4421
  store i32 %66, i32* %temp_offset, align 8, !dbg !4422
  br label %for.end, !dbg !4423

if.end103:                                        ; preds = %land.lhs.true98, %for.body
  br label %for.inc, !dbg !4424

for.inc:                                          ; preds = %if.end103
  %68 = load i32, i32* %i, align 4, !dbg !4425
  %inc = add i32 %68, 1, !dbg !4425
  store i32 %inc, i32* %i, align 4, !dbg !4425
  br label %for.cond, !dbg !4426, !llvm.loop !4427

for.end:                                          ; preds = %if.then102, %for.cond
  %69 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4429
  %70 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4430
  %71 = bitcast %struct.k10temp_data* %70 to i8*, !dbg !4430
  %call104 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %71, %struct.hwmon_chip_info* @k10temp_chip_info, %struct.attribute_group** null) #7, !dbg !4431
  store %struct.device* %call104, %struct.device** %hwmon_dev, align 8, !dbg !4432
  %72 = load %struct.device*, %struct.device** %hwmon_dev, align 8, !dbg !4433
  %73 = bitcast %struct.device* %72 to i8*, !dbg !4433
  %call105 = call i32 @PTR_ERR_OR_ZERO(i8* %73) #7, !dbg !4434
  store i32 %call105, i32* %retval, align 4, !dbg !4435
  br label %return, !dbg !4435

return:                                           ; preds = %for.end, %if.then7, %if.then3
  %74 = load i32, i32* %retval, align 4, !dbg !4436
  ret i32 %74, !dbg !4436
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @has_erratum_319(%struct.pci_dev* %pdev) #2 !dbg !4437 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %pkg_type = alloca i32, align 4
  %reg_dram_cfg = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.declare(metadata i32* %pkg_type, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.declare(metadata i32* %reg_dram_cfg, metadata !4444, metadata !DIExpression()), !dbg !4445
  %0 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !4446
  %conv = zext i8 %0 to i32, !dbg !4448
  %cmp = icmp ne i32 %conv, 16, !dbg !4449
  br i1 %cmp, label %if.then, label %if.end, !dbg !4450

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !4451
  br label %return, !dbg !4451

if.end:                                           ; preds = %entry
  %call = call i32 @cpuid_ebx(i32 -2147483647) #7, !dbg !4452
  %conv2 = zext i32 %call to i64, !dbg !4452
  %and = and i64 %conv2, 4026531840, !dbg !4453
  %conv3 = trunc i64 %and to i32, !dbg !4452
  store i32 %conv3, i32* %pkg_type, align 4, !dbg !4454
  %1 = load i32, i32* %pkg_type, align 4, !dbg !4455
  %cmp4 = icmp eq i32 %1, 0, !dbg !4457
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4458

if.then6:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !4459
  br label %return, !dbg !4459

if.end7:                                          ; preds = %if.end
  %2 = load i32, i32* %pkg_type, align 4, !dbg !4460
  %cmp8 = icmp ne i32 %2, 268435456, !dbg !4462
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4463

if.then10:                                        ; preds = %if.end7
  store i1 false, i1* %retval, align 1, !dbg !4464
  br label %return, !dbg !4464

if.end11:                                         ; preds = %if.end7
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4465
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4466
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4466
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4467
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 6, !dbg !4467
  %6 = load i32, i32* %devfn, align 8, !dbg !4467
  %shr = lshr i32 %6, 3, !dbg !4467
  %and12 = and i32 %shr, 31, !dbg !4467
  %and13 = and i32 %and12, 31, !dbg !4467
  %shl = shl i32 %and13, 3, !dbg !4467
  %or = or i32 %shl, 2, !dbg !4467
  %call14 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %4, i32 %or, i32 148, i32* %reg_dram_cfg) #7, !dbg !4468
  %7 = load i32, i32* %reg_dram_cfg, align 4, !dbg !4469
  %conv15 = zext i32 %7 to i64, !dbg !4469
  %and16 = and i64 %conv15, 256, !dbg !4471
  %tobool = icmp ne i64 %and16, 0, !dbg !4471
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !4472

if.then17:                                        ; preds = %if.end11
  store i1 false, i1* %retval, align 1, !dbg !4473
  br label %return, !dbg !4473

if.end18:                                         ; preds = %if.end11
  %8 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4474
  %conv19 = zext i8 %8 to i32, !dbg !4475
  %cmp20 = icmp slt i32 %conv19, 4, !dbg !4476
  br i1 %cmp20, label %lor.end, label %lor.rhs, !dbg !4477

lor.rhs:                                          ; preds = %if.end18
  %9 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 2), align 2, !dbg !4478
  %conv22 = zext i8 %9 to i32, !dbg !4479
  %cmp23 = icmp eq i32 %conv22, 4, !dbg !4480
  br i1 %cmp23, label %land.rhs, label %land.end, !dbg !4481

land.rhs:                                         ; preds = %lor.rhs
  %10 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 3), align 1, !dbg !4482
  %conv25 = zext i8 %10 to i32, !dbg !4483
  %cmp26 = icmp sle i32 %conv25, 2, !dbg !4484
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ %cmp26, %land.rhs ], !dbg !4485
  br label %lor.end, !dbg !4477

lor.end:                                          ; preds = %land.end, %if.end18
  %12 = phi i1 [ true, %if.end18 ], [ %11, %land.end ]
  store i1 %12, i1* %retval, align 1, !dbg !4486
  br label %return, !dbg !4486

return:                                           ; preds = %lor.end, %if.then17, %if.then10, %if.then6, %if.then
  %13 = load i1, i1* %retval, align 1, !dbg !4487
  ret i1 %13, !dbg !4487
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !4488 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4491, metadata !DIExpression()), !dbg !4492
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4495, metadata !DIExpression()), !dbg !4496
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4497
  %1 = load i64, i64* %size.addr, align 8, !dbg !4498
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4499
  %or = or i32 %2, 256, !dbg !4500
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #7, !dbg !4501
  ret i8* %call, !dbg !4502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_htcreg_nb_f15(%struct.pci_dev* %pdev, i32* %regval) #2 !dbg !4503 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %regval.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  store i32* %regval, i32** %regval.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %regval.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4508
  %1 = load i32*, i32** %regval.addr, align 8, !dbg !4509
  call void @amd_nb_index_read(%struct.pci_dev* %0, i32 0, i32 184, i32 -668988316, i32* %1) #7, !dbg !4510
  ret void, !dbg !4511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_tempreg_nb_f15(%struct.pci_dev* %pdev, i32* %regval) #2 !dbg !4512 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %regval.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  store i32* %regval, i32** %regval.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %regval.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4517
  %1 = load i32*, i32** %regval.addr, align 8, !dbg !4518
  call void @amd_nb_index_read(%struct.pci_dev* %0, i32 0, i32 184, i32 -668988252, i32* %1) #7, !dbg !4519
  ret void, !dbg !4520
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_tempreg_nb_zen(%struct.pci_dev* %pdev, i32* %regval) #2 !dbg !4521 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %regval.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  store i32* %regval, i32** %regval.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %regval.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4526
  %call = call zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %0) #7, !dbg !4527
  %1 = load i32*, i32** %regval.addr, align 8, !dbg !4528
  %call1 = call i32 @amd_smn_read(i16 zeroext %call, i32 366592, i32* %1) #7, !dbg !4529
  ret void, !dbg !4530
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_threadripper() #2 !dbg !4531 {
entry:
  %call = call i8* @strstr(i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 14, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4532
  %tobool = icmp ne i8* %call, null, !dbg !4532
  ret i1 %tobool, !dbg !4533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @is_epyc() #2 !dbg !4534 {
entry:
  %call = call i8* @strstr(i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 14, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4535
  %tobool = icmp ne i8* %call, null, !dbg !4535
  ret i1 %tobool, !dbg !4536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @k10temp_get_ccd_support(%struct.pci_dev* %pdev, %struct.k10temp_data* %data, i32 %limit) #2 !dbg !4537 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca %struct.k10temp_data*, align 8
  %limit.addr = alloca i32, align 4
  %regval = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4540, metadata !DIExpression()), !dbg !4541
  store %struct.k10temp_data* %data, %struct.k10temp_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  store i32 %limit, i32* %limit.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %limit.addr, metadata !4544, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !4546, metadata !DIExpression()), !dbg !4547
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4548, metadata !DIExpression()), !dbg !4549
  store i32 0, i32* %i, align 4, !dbg !4550
  br label %for.cond, !dbg !4552

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4553
  %1 = load i32, i32* %limit.addr, align 4, !dbg !4555
  %cmp = icmp slt i32 %0, %1, !dbg !4556
  br i1 %cmp, label %for.body, label %for.end, !dbg !4557

for.body:                                         ; preds = %for.cond
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4558
  %call = call zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %2) #7, !dbg !4560
  %3 = load i32, i32* %i, align 4, !dbg !4561
  %mul = mul i32 %3, 4, !dbg !4561
  %add = add i32 366932, %mul, !dbg !4561
  %call1 = call i32 @amd_smn_read(i16 zeroext %call, i32 %add, i32* %regval) #7, !dbg !4562
  %4 = load i32, i32* %regval, align 4, !dbg !4563
  %conv = zext i32 %4 to i64, !dbg !4563
  %and = and i64 %conv, 2048, !dbg !4565
  %tobool = icmp ne i64 %and, 0, !dbg !4565
  br i1 %tobool, label %if.then, label %if.end, !dbg !4566

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !4567
  %add2 = add i32 %5, 2, !dbg !4567
  %sh_prom = zext i32 %add2 to i64, !dbg !4567
  %shl = shl i64 1, %sh_prom, !dbg !4567
  %6 = load %struct.k10temp_data*, %struct.k10temp_data** %data.addr, align 8, !dbg !4568
  %show_temp = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %6, i32 0, i32 5, !dbg !4569
  %7 = load i32, i32* %show_temp, align 8, !dbg !4570
  %conv3 = zext i32 %7 to i64, !dbg !4570
  %or = or i64 %conv3, %shl, !dbg !4570
  %conv4 = trunc i64 %or to i32, !dbg !4570
  store i32 %conv4, i32* %show_temp, align 8, !dbg !4570
  br label %if.end, !dbg !4568

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !4571

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !4572
  %inc = add i32 %8, 1, !dbg !4572
  store i32 %inc, i32* %i, align 4, !dbg !4572
  br label %for.cond, !dbg !4573, !llvm.loop !4574

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4576
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_htcreg_pci(%struct.pci_dev* %pdev, i32* %regval) #2 !dbg !4577 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %regval.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  store i32* %regval, i32** %regval.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %regval.addr, metadata !4580, metadata !DIExpression()), !dbg !4581
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4582
  %1 = load i32*, i32** %regval.addr, align 8, !dbg !4583
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 100, i32* %1) #7, !dbg !4584
  ret void, !dbg !4585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @read_tempreg_pci(%struct.pci_dev* %pdev, i32* %regval) #2 !dbg !4586 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %regval.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4587, metadata !DIExpression()), !dbg !4588
  store i32* %regval, i32** %regval.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %regval.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4591
  %1 = load i32*, i32** %regval.addr, align 8, !dbg !4592
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %0, i32 164, i32* %1) #7, !dbg !4593
  ret void, !dbg !4594
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i8*, i8*, %struct.hwmon_chip_info*, %struct.attribute_group**) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @PTR_ERR_OR_ZERO(i8* %ptr) #2 !dbg !4595 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4601
  %call = call zeroext i1 @IS_ERR(i8* %0) #7, !dbg !4603
  br i1 %call, label %if.then, label %if.else, !dbg !4604

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !4605
  %call1 = call i64 @PTR_ERR(i8* %1) #7, !dbg !4606
  %conv = trunc i64 %call1 to i32, !dbg !4606
  store i32 %conv, i32* %retval, align 4, !dbg !4607
  br label %return, !dbg !4607

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4608
  br label %return, !dbg !4608

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !4609
  ret i32 %2, !dbg !4609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuid_ebx(i32 %op) #2 !dbg !4610 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !4613, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata i32* %eax, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i32* %ebx, metadata !4617, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.declare(metadata i32* %ecx, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.declare(metadata i32* %edx, metadata !4621, metadata !DIExpression()), !dbg !4622
  %0 = load i32, i32* %op.addr, align 4, !dbg !4623
  call void @cpuid(i32 %0, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #7, !dbg !4624
  %1 = load i32, i32* %ebx, align 4, !dbg !4625
  ret i32 %1, !dbg !4626
}

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuid(i32 %op, i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #2 !dbg !4627 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  store i32 %op, i32* %op.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !4630, metadata !DIExpression()), !dbg !4631
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !4634, metadata !DIExpression()), !dbg !4635
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !4636, metadata !DIExpression()), !dbg !4637
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  %0 = load i32, i32* %op.addr, align 4, !dbg !4640
  %1 = load i32*, i32** %eax.addr, align 8, !dbg !4641
  store i32 %0, i32* %1, align 4, !dbg !4642
  %2 = load i32*, i32** %ecx.addr, align 8, !dbg !4643
  store i32 0, i32* %2, align 4, !dbg !4644
  %3 = load i32*, i32** %eax.addr, align 8, !dbg !4645
  %4 = load i32*, i32** %ebx.addr, align 8, !dbg !4646
  %5 = load i32*, i32** %ecx.addr, align 8, !dbg !4647
  %6 = load i32*, i32** %edx.addr, align 8, !dbg !4648
  call void @__cpuid(i32* %3, i32* %4, i32* %5, i32* %6) #7, !dbg !4649
  ret void, !dbg !4650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__cpuid(i32* %eax, i32* %ebx, i32* %ecx, i32* %edx) #2 !dbg !4651 {
entry:
  %eax.addr = alloca i32*, align 8
  %ebx.addr = alloca i32*, align 8
  %ecx.addr = alloca i32*, align 8
  %edx.addr = alloca i32*, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32* %eax, i32** %eax.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %eax.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  store i32* %ebx, i32** %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ebx.addr, metadata !4657, metadata !DIExpression()), !dbg !4658
  store i32* %ecx, i32** %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ecx.addr, metadata !4659, metadata !DIExpression()), !dbg !4660
  store i32* %edx, i32** %edx.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %edx.addr, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4663, metadata !DIExpression()), !dbg !4665
  %0 = load i64, i64* %__edi, align 8, !dbg !4665
  store i64 %0, i64* %__edi, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4666, metadata !DIExpression()), !dbg !4665
  %1 = load i64, i64* %__esi, align 8, !dbg !4665
  store i64 %1, i64* %__esi, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4667, metadata !DIExpression()), !dbg !4665
  %2 = load i64, i64* %__edx, align 8, !dbg !4665
  store i64 %2, i64* %__edx, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4668, metadata !DIExpression()), !dbg !4665
  %3 = load i64, i64* %__ecx, align 8, !dbg !4665
  store i64 %3, i64* %__ecx, align 8, !dbg !4665
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4669, metadata !DIExpression()), !dbg !4665
  %4 = load i64, i64* %__eax, align 8, !dbg !4665
  store i64 %4, i64* %__eax, align 8, !dbg !4665
  %5 = load void (i32*, i32*, i32*, i32*)*, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), align 8, !dbg !4665
  %6 = call i64 @llvm.read_register.i64(metadata !4172), !dbg !4665
  %7 = load i32*, i32** %eax.addr, align 8, !dbg !4665
  %8 = ptrtoint i32* %7 to i64, !dbg !4665
  %9 = load i32*, i32** %ebx.addr, align 8, !dbg !4665
  %10 = ptrtoint i32* %9 to i64, !dbg !4665
  %11 = load i32*, i32** %ecx.addr, align 8, !dbg !4665
  %12 = ptrtoint i32* %11 to i64, !dbg !4665
  %13 = load i32*, i32** %edx.addr, align 8, !dbg !4665
  %14 = ptrtoint i32* %13 to i64, !dbg !4665
  %15 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},{cx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 25, void (i32*, i32*, i32*, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 22), i32 511, i64 %8, i64 %10, i64 %12, i64 %14, i64 %6) #6, !dbg !4665, !srcloc !4670
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %15, 0, !dbg !4665
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64 } %15, 1, !dbg !4665
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64 } %15, 2, !dbg !4665
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %15, 3, !dbg !4665
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %15, 4, !dbg !4665
  store i64 %asmresult, i64* %__edi, align 8, !dbg !4665
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !4665
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !4665
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !4665
  call void @llvm.write_register.i64(metadata !4172, i64 %asmresult4), !dbg !4665
  ret void, !dbg !4671
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd_nb_index_read(%struct.pci_dev* %pdev, i32 %devfn, i32 %base, i32 %offset, i32* %val) #2 !dbg !4672 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %devfn.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  store i32 %devfn, i32* %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devfn.addr, metadata !4677, metadata !DIExpression()), !dbg !4678
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !4681, metadata !DIExpression()), !dbg !4682
  store i32* %val, i32** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %val.addr, metadata !4683, metadata !DIExpression()), !dbg !4684
  call void @mutex_lock(%struct.mutex* @nb_smu_ind_mutex) #7, !dbg !4685
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4686
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4687
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4687
  %2 = load i32, i32* %devfn.addr, align 4, !dbg !4688
  %3 = load i32, i32* %base.addr, align 4, !dbg !4689
  %4 = load i32, i32* %offset.addr, align 4, !dbg !4690
  %call = call i32 @pci_bus_write_config_dword(%struct.pci_bus* %1, i32 %2, i32 %3, i32 %4) #7, !dbg !4691
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4692
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !4693
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !4693
  %7 = load i32, i32* %devfn.addr, align 4, !dbg !4694
  %8 = load i32, i32* %base.addr, align 4, !dbg !4695
  %add = add i32 %8, 4, !dbg !4696
  %9 = load i32*, i32** %val.addr, align 8, !dbg !4697
  %call2 = call i32 @pci_bus_read_config_dword(%struct.pci_bus* %6, i32 %7, i32 %add, i32* %9) #7, !dbg !4698
  call void @mutex_unlock(%struct.mutex* @nb_smu_ind_mutex) #7, !dbg !4699
  ret void, !dbg !4700
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_bus_write_config_dword(%struct.pci_bus*, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @amd_smn_read(i16 zeroext, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %pdev) #2 !dbg !4701 {
entry:
  %retval = alloca i16, align 2
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %misc = alloca %struct.pci_dev*, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %misc, metadata !4707, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4709, metadata !DIExpression()), !dbg !4710
  store i32 0, i32* %i, align 4, !dbg !4711
  br label %for.cond, !dbg !4713

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4714
  %call = call zeroext i16 @amd_nb_num() #7, !dbg !4716
  %conv = zext i16 %call to i32, !dbg !4716
  %cmp = icmp ne i32 %0, %conv, !dbg !4717
  br i1 %cmp, label %for.body, label %for.end, !dbg !4718

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !4719
  %call2 = call %struct.amd_northbridge* @node_to_amd_nb(i32 %1) #7, !dbg !4721
  %misc3 = getelementptr inbounds %struct.amd_northbridge, %struct.amd_northbridge* %call2, i32 0, i32 1, !dbg !4722
  %2 = load %struct.pci_dev*, %struct.pci_dev** %misc3, align 8, !dbg !4722
  store %struct.pci_dev* %2, %struct.pci_dev** %misc, align 8, !dbg !4723
  %3 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4724
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %3, i32 0, i32 1, !dbg !4726
  %4 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4726
  %call4 = call i32 @pci_domain_nr(%struct.pci_bus* %4) #7, !dbg !4727
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4728
  %bus5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !4729
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus5, align 8, !dbg !4729
  %call6 = call i32 @pci_domain_nr(%struct.pci_bus* %6) #7, !dbg !4730
  %cmp7 = icmp eq i32 %call4, %call6, !dbg !4731
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !4732

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.pci_dev*, %struct.pci_dev** %misc, align 8, !dbg !4733
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 6, !dbg !4733
  %8 = load i32, i32* %devfn, align 8, !dbg !4733
  %shr = lshr i32 %8, 3, !dbg !4733
  %and = and i32 %shr, 31, !dbg !4733
  %9 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4734
  %devfn9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 6, !dbg !4734
  %10 = load i32, i32* %devfn9, align 8, !dbg !4734
  %shr10 = lshr i32 %10, 3, !dbg !4734
  %and11 = and i32 %shr10, 31, !dbg !4734
  %cmp12 = icmp eq i32 %and, %and11, !dbg !4735
  br i1 %cmp12, label %if.then, label %if.end, !dbg !4736

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %i, align 4, !dbg !4737
  %conv14 = trunc i32 %11 to i16, !dbg !4737
  store i16 %conv14, i16* %retval, align 2, !dbg !4738
  br label %return, !dbg !4738

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4739

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !4740
  %inc = add i32 %12, 1, !dbg !4740
  store i32 %inc, i32* %i, align 4, !dbg !4740
  br label %for.cond, !dbg !4741, !llvm.loop !4742

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4744, metadata !DIExpression()), !dbg !4746
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4746
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !4747
  %tobool = icmp ne i32 %13, 0, !dbg !4747
  %lnot = xor i1 %tobool, true, !dbg !4747
  %lnot15 = xor i1 %lnot, true, !dbg !4747
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !4747
  %conv16 = sext i32 %lnot.ext to i64, !dbg !4747
  %tobool17 = icmp ne i64 %conv16, 0, !dbg !4747
  br i1 %tobool17, label %if.then18, label %if.end32, !dbg !4746

if.then18:                                        ; preds = %for.end
  br label %do.body, !dbg !4747

do.body:                                          ; preds = %if.then18
  br label %do.body19, !dbg !4749

do.body19:                                        ; preds = %do.body
  br label %do.end, !dbg !4751

do.end:                                           ; preds = %do.body19
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4749
  %call20 = call i8* @pci_name(%struct.pci_dev* %14) #7, !dbg !4749
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %call20) #7, !dbg !4749
  br label %do.body21, !dbg !4749

do.body21:                                        ; preds = %do.end
  br label %do.body22, !dbg !4753

do.body22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4755

do.end23:                                         ; preds = %do.body22
  br label %do.body24, !dbg !4753

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 100, i32 2313, i64 12) #6, !dbg !4757, !srcloc !4759
  br label %do.end25, !dbg !4757

do.end25:                                         ; preds = %do.body24
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 234) #6, !dbg !4760, !srcloc !4762
  br label %do.body26, !dbg !4753

do.body26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !4763

do.end27:                                         ; preds = %do.body26
  br label %do.end28, !dbg !4753

do.end28:                                         ; preds = %do.end27
  br label %do.body29, !dbg !4749

do.body29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !4765

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !4749

do.end31:                                         ; preds = %do.end30
  br label %if.end32, !dbg !4749

if.end32:                                         ; preds = %do.end31, %for.end
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !4746
  %tobool33 = icmp ne i32 %15, 0, !dbg !4746
  %lnot34 = xor i1 %tobool33, true, !dbg !4746
  %lnot36 = xor i1 %lnot34, true, !dbg !4746
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4746
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !4746
  store i64 %conv38, i64* %tmp, align 8, !dbg !4747
  %16 = load i64, i64* %tmp, align 8, !dbg !4746
  store i16 0, i16* %retval, align 2, !dbg !4767
  br label %return, !dbg !4767

return:                                           ; preds = %if.end32, %if.then
  %17 = load i16, i16* %retval, align 2, !dbg !4768
  ret i16 %17, !dbg !4768
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @amd_nb_num() #1

; Function Attrs: noredzone
declare dso_local %struct.amd_northbridge* @node_to_amd_nb(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_domain_nr(%struct.pci_bus* %bus) #2 !dbg !4769 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4773
  %call = call %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %0) #7, !dbg !4774
  %domain = getelementptr inbounds %struct.pci_sysdata, %struct.pci_sysdata* %call, i32 0, i32 0, !dbg !4775
  %1 = load i32, i32* %domain, align 8, !dbg !4775
  ret i32 %1, !dbg !4776
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_name(%struct.pci_dev* %pdev) #2 !dbg !4777 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4784
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4785
  %call = call i8* @dev_name(%struct.device* %dev) #7, !dbg !4786
  ret i8* %call, !dbg !4787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %bus) #2 !dbg !4788 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4806
  %sysdata = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 11, !dbg !4807
  %1 = load i8*, i8** %sysdata, align 8, !dbg !4807
  %2 = bitcast i8* %1 to %struct.pci_sysdata*, !dbg !4806
  ret %struct.pci_sysdata* %2, !dbg !4808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #2 !dbg !4809 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4814
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4816
  %1 = load i8*, i8** %init_name, align 8, !dbg !4816
  %tobool = icmp ne i8* %1, null, !dbg !4814
  br i1 %tobool, label %if.then, label %if.end, !dbg !4817

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4818
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4819
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4819
  store i8* %3, i8** %retval, align 8, !dbg !4820
  br label %return, !dbg !4820

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4821
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4822
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !4823
  store i8* %call, i8** %retval, align 8, !dbg !4824
  br label %return, !dbg !4824

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4825
  ret i8* %5, !dbg !4825
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #2 !dbg !4826 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4833
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4834
  %1 = load i8*, i8** %name, align 8, !dbg !4834
  ret i8* %1, !dbg !4835
}

; Function Attrs: noredzone
declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @k10temp_is_visible(i8* %_data, i32 %type, i32 %attr, i32 %channel) #2 !dbg !4836 {
entry:
  %retval = alloca i16, align 2
  %_data.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %data = alloca %struct.k10temp_data*, align 8
  %pdev = alloca %struct.pci_dev*, align 8
  %reg = alloca i32, align 4
  store i8* %_data, i8** %_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_data.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data, metadata !4845, metadata !DIExpression()), !dbg !4848
  %0 = load i8*, i8** %_data.addr, align 8, !dbg !4849
  %1 = bitcast i8* %0 to %struct.k10temp_data*, !dbg !4849
  store %struct.k10temp_data* %1, %struct.k10temp_data** %data, align 8, !dbg !4848
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev, metadata !4850, metadata !DIExpression()), !dbg !4851
  %2 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4852
  %pdev1 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %2, i32 0, i32 0, !dbg !4853
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev1, align 8, !dbg !4853
  store %struct.pci_dev* %3, %struct.pci_dev** %pdev, align 8, !dbg !4851
  call void @llvm.dbg.declare(metadata i32* %reg, metadata !4854, metadata !DIExpression()), !dbg !4855
  %4 = load i32, i32* %type.addr, align 4, !dbg !4856
  switch i32 %4, label %sw.default43 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb39
    i32 3, label %sw.bb39
  ], !dbg !4857

sw.bb:                                            ; preds = %entry
  %5 = load i32, i32* %attr.addr, align 4, !dbg !4858
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb2
    i32 7, label %sw.bb3
    i32 9, label %sw.bb9
    i32 10, label %sw.bb9
    i32 21, label %sw.bb27
  ], !dbg !4860

sw.bb2:                                           ; preds = %sw.bb
  %6 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4861
  %show_temp = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %6, i32 0, i32 5, !dbg !4861
  %7 = load i32, i32* %show_temp, align 8, !dbg !4861
  %conv = zext i32 %7 to i64, !dbg !4861
  %8 = load i32, i32* %channel.addr, align 4, !dbg !4861
  %sh_prom = zext i32 %8 to i64, !dbg !4861
  %shl = shl i64 1, %sh_prom, !dbg !4861
  %and = and i64 %conv, %shl, !dbg !4861
  %tobool = icmp ne i64 %and, 0, !dbg !4861
  br i1 %tobool, label %if.end, label %if.then, !dbg !4864

if.then:                                          ; preds = %sw.bb2
  store i16 0, i16* %retval, align 2, !dbg !4865
  br label %return, !dbg !4865

if.end:                                           ; preds = %sw.bb2
  br label %sw.epilog, !dbg !4866

sw.bb3:                                           ; preds = %sw.bb
  %9 = load i32, i32* %channel.addr, align 4, !dbg !4867
  %tobool4 = icmp ne i32 %9, 0, !dbg !4867
  br i1 %tobool4, label %if.then7, label %lor.lhs.false, !dbg !4869

lor.lhs.false:                                    ; preds = %sw.bb3
  %10 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4870
  %is_zen = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %10, i32 0, i32 7, !dbg !4871
  %11 = load i8, i8* %is_zen, align 4, !dbg !4871
  %tobool5 = trunc i8 %11 to i1, !dbg !4871
  br i1 %tobool5, label %if.then7, label %if.end8, !dbg !4872

if.then7:                                         ; preds = %lor.lhs.false, %sw.bb3
  store i16 0, i16* %retval, align 2, !dbg !4873
  br label %return, !dbg !4873

if.end8:                                          ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !4874

sw.bb9:                                           ; preds = %sw.bb, %sw.bb
  %12 = load i32, i32* %channel.addr, align 4, !dbg !4875
  %tobool10 = icmp ne i32 %12, 0, !dbg !4875
  br i1 %tobool10, label %if.then13, label %lor.lhs.false11, !dbg !4877

lor.lhs.false11:                                  ; preds = %sw.bb9
  %13 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4878
  %read_htcreg = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %13, i32 0, i32 1, !dbg !4879
  %14 = load void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)** %read_htcreg, align 8, !dbg !4879
  %tobool12 = icmp ne void (%struct.pci_dev*, i32*)* %14, null, !dbg !4878
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4880

if.then13:                                        ; preds = %lor.lhs.false11, %sw.bb9
  store i16 0, i16* %retval, align 2, !dbg !4881
  br label %return, !dbg !4881

if.end14:                                         ; preds = %lor.lhs.false11
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !4882
  %call = call i32 @pci_read_config_dword(%struct.pci_dev* %15, i32 232, i32* %reg) #7, !dbg !4883
  %16 = load i32, i32* %reg, align 4, !dbg !4884
  %conv15 = zext i32 %16 to i64, !dbg !4884
  %and16 = and i64 %conv15, 1024, !dbg !4886
  %tobool17 = icmp ne i64 %and16, 0, !dbg !4886
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4887

if.then18:                                        ; preds = %if.end14
  store i16 0, i16* %retval, align 2, !dbg !4888
  br label %return, !dbg !4888

if.end19:                                         ; preds = %if.end14
  %17 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4889
  %read_htcreg20 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %17, i32 0, i32 1, !dbg !4890
  %18 = load void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)** %read_htcreg20, align 8, !dbg !4890
  %19 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4891
  %pdev21 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %19, i32 0, i32 0, !dbg !4892
  %20 = load %struct.pci_dev*, %struct.pci_dev** %pdev21, align 8, !dbg !4892
  call void %18(%struct.pci_dev* %20, i32* %reg) #7, !dbg !4889
  %21 = load i32, i32* %reg, align 4, !dbg !4893
  %conv22 = zext i32 %21 to i64, !dbg !4893
  %and23 = and i64 %conv22, 1, !dbg !4895
  %tobool24 = icmp ne i64 %and23, 0, !dbg !4895
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !4896

if.then25:                                        ; preds = %if.end19
  store i16 0, i16* %retval, align 2, !dbg !4897
  br label %return, !dbg !4897

if.end26:                                         ; preds = %if.end19
  br label %sw.epilog, !dbg !4898

sw.bb27:                                          ; preds = %sw.bb
  %22 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4899
  %is_zen28 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %22, i32 0, i32 7, !dbg !4901
  %23 = load i8, i8* %is_zen28, align 4, !dbg !4901
  %tobool29 = trunc i8 %23 to i1, !dbg !4901
  br i1 %tobool29, label %lor.lhs.false30, label %if.then37, !dbg !4902

lor.lhs.false30:                                  ; preds = %sw.bb27
  %24 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4903
  %show_temp31 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %24, i32 0, i32 5, !dbg !4903
  %25 = load i32, i32* %show_temp31, align 8, !dbg !4903
  %conv32 = zext i32 %25 to i64, !dbg !4903
  %26 = load i32, i32* %channel.addr, align 4, !dbg !4903
  %sh_prom33 = zext i32 %26 to i64, !dbg !4903
  %shl34 = shl i64 1, %sh_prom33, !dbg !4903
  %and35 = and i64 %conv32, %shl34, !dbg !4903
  %tobool36 = icmp ne i64 %and35, 0, !dbg !4903
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !4904

if.then37:                                        ; preds = %lor.lhs.false30, %sw.bb27
  store i16 0, i16* %retval, align 2, !dbg !4905
  br label %return, !dbg !4905

if.end38:                                         ; preds = %lor.lhs.false30
  br label %sw.epilog, !dbg !4906

sw.default:                                       ; preds = %sw.bb
  store i16 0, i16* %retval, align 2, !dbg !4907
  br label %return, !dbg !4907

sw.epilog:                                        ; preds = %if.end38, %if.end26, %if.end8, %if.end
  br label %sw.epilog44, !dbg !4908

sw.bb39:                                          ; preds = %entry, %entry
  %27 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !4909
  %show_current = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %27, i32 0, i32 8, !dbg !4911
  %28 = load i8, i8* %show_current, align 1, !dbg !4911
  %tobool40 = trunc i8 %28 to i1, !dbg !4911
  br i1 %tobool40, label %if.end42, label %if.then41, !dbg !4912

if.then41:                                        ; preds = %sw.bb39
  store i16 0, i16* %retval, align 2, !dbg !4913
  br label %return, !dbg !4913

if.end42:                                         ; preds = %sw.bb39
  br label %sw.epilog44, !dbg !4914

sw.default43:                                     ; preds = %entry
  store i16 0, i16* %retval, align 2, !dbg !4915
  br label %return, !dbg !4915

sw.epilog44:                                      ; preds = %if.end42, %sw.epilog
  store i16 292, i16* %retval, align 2, !dbg !4916
  br label %return, !dbg !4916

return:                                           ; preds = %sw.epilog44, %sw.default43, %if.then41, %sw.default, %if.then37, %if.then25, %if.then18, %if.then13, %if.then7, %if.then
  %29 = load i16, i16* %retval, align 2, !dbg !4917
  ret i16 %29, !dbg !4917
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_read(%struct.device* %dev, i32 %type, i32 %attr, i32 %channel, i64* %val) #2 !dbg !4918 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !4925, metadata !DIExpression()), !dbg !4926
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  %0 = load i32, i32* %type.addr, align 4, !dbg !4929
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ], !dbg !4930

sw.bb:                                            ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4931
  %2 = load i32, i32* %attr.addr, align 4, !dbg !4933
  %3 = load i32, i32* %channel.addr, align 4, !dbg !4934
  %4 = load i64*, i64** %val.addr, align 8, !dbg !4935
  %call = call i32 @k10temp_read_temp(%struct.device* %1, i32 %2, i32 %3, i64* %4) #7, !dbg !4936
  store i32 %call, i32* %retval, align 4, !dbg !4937
  br label %return, !dbg !4937

sw.bb1:                                           ; preds = %entry
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4938
  %6 = load i32, i32* %attr.addr, align 4, !dbg !4939
  %7 = load i32, i32* %channel.addr, align 4, !dbg !4940
  %8 = load i64*, i64** %val.addr, align 8, !dbg !4941
  %call2 = call i32 @k10temp_read_in(%struct.device* %5, i32 %6, i32 %7, i64* %8) #7, !dbg !4942
  store i32 %call2, i32* %retval, align 4, !dbg !4943
  br label %return, !dbg !4943

sw.bb3:                                           ; preds = %entry
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4944
  %10 = load i32, i32* %attr.addr, align 4, !dbg !4945
  %11 = load i32, i32* %channel.addr, align 4, !dbg !4946
  %12 = load i64*, i64** %val.addr, align 8, !dbg !4947
  %call4 = call i32 @k10temp_read_curr(%struct.device* %9, i32 %10, i32 %11, i64* %12) #7, !dbg !4948
  store i32 %call4, i32* %retval, align 4, !dbg !4949
  br label %return, !dbg !4949

sw.default:                                       ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !4950
  br label %return, !dbg !4950

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %13 = load i32, i32* %retval, align 4, !dbg !4951
  ret i32 %13, !dbg !4951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_read_labels(%struct.device* %dev, i32 %type, i32 %attr, i32 %channel, i8** %str) #2 !dbg !4952 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %str.addr = alloca i8**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4955, metadata !DIExpression()), !dbg !4956
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  store i8** %str, i8*** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %str.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load i32, i32* %type.addr, align 4, !dbg !4963
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb4
  ], !dbg !4964

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %channel.addr, align 4, !dbg !4965
  %idxprom = sext i32 %1 to i64, !dbg !4967
  %arrayidx = getelementptr [10 x i8*], [10 x i8*]* @k10temp_temp_label, i64 0, i64 %idxprom, !dbg !4967
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !4967
  %3 = load i8**, i8*** %str.addr, align 8, !dbg !4968
  store i8* %2, i8** %3, align 8, !dbg !4969
  br label %sw.epilog, !dbg !4970

sw.bb1:                                           ; preds = %entry
  %4 = load i32, i32* %channel.addr, align 4, !dbg !4971
  %idxprom2 = sext i32 %4 to i64, !dbg !4972
  %arrayidx3 = getelementptr [2 x i8*], [2 x i8*]* @k10temp_in_label, i64 0, i64 %idxprom2, !dbg !4972
  %5 = load i8*, i8** %arrayidx3, align 8, !dbg !4972
  %6 = load i8**, i8*** %str.addr, align 8, !dbg !4973
  store i8* %5, i8** %6, align 8, !dbg !4974
  br label %sw.epilog, !dbg !4975

sw.bb4:                                           ; preds = %entry
  %7 = load i32, i32* %channel.addr, align 4, !dbg !4976
  %idxprom5 = sext i32 %7 to i64, !dbg !4977
  %arrayidx6 = getelementptr [2 x i8*], [2 x i8*]* @k10temp_curr_label, i64 0, i64 %idxprom5, !dbg !4977
  %8 = load i8*, i8** %arrayidx6, align 8, !dbg !4977
  %9 = load i8**, i8*** %str.addr, align 8, !dbg !4978
  store i8* %8, i8** %9, align 8, !dbg !4979
  br label %sw.epilog, !dbg !4980

sw.default:                                       ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !4981
  br label %return, !dbg !4981

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !4982
  br label %return, !dbg !4982

return:                                           ; preds = %sw.epilog, %sw.default
  %10 = load i32, i32* %retval, align 4, !dbg !4983
  ret i32 %10, !dbg !4983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_read_temp(%struct.device* %dev, i32 %attr, i32 %channel, i64* %val) #2 !dbg !4984 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %data = alloca %struct.k10temp_data*, align 8
  %regval = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !4993, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4997
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !4998
  %1 = bitcast i8* %call to %struct.k10temp_data*, !dbg !4998
  store %struct.k10temp_data* %1, %struct.k10temp_data** %data, align 8, !dbg !4996
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !4999, metadata !DIExpression()), !dbg !5000
  %2 = load i32, i32* %attr.addr, align 4, !dbg !5001
  switch i32 %2, label %sw.default34 [
    i32 1, label %sw.bb
    i32 7, label %sw.bb16
    i32 9, label %sw.bb17
    i32 10, label %sw.bb23
  ], !dbg !5002

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %channel.addr, align 4, !dbg !5003
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
    i32 2, label %sw.bb9
    i32 3, label %sw.bb9
    i32 4, label %sw.bb9
    i32 5, label %sw.bb9
    i32 6, label %sw.bb9
    i32 7, label %sw.bb9
    i32 8, label %sw.bb9
    i32 9, label %sw.bb9
  ], !dbg !5005

sw.bb1:                                           ; preds = %sw.bb
  %4 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5006
  %call2 = call i64 @get_raw_temp(%struct.k10temp_data* %4) #7, !dbg !5008
  %5 = load i64*, i64** %val.addr, align 8, !dbg !5009
  store i64 %call2, i64* %5, align 8, !dbg !5010
  %6 = load i64*, i64** %val.addr, align 8, !dbg !5011
  %7 = load i64, i64* %6, align 8, !dbg !5013
  %cmp = icmp slt i64 %7, 0, !dbg !5014
  br i1 %cmp, label %if.then, label %if.end, !dbg !5015

if.then:                                          ; preds = %sw.bb1
  %8 = load i64*, i64** %val.addr, align 8, !dbg !5016
  store i64 0, i64* %8, align 8, !dbg !5017
  br label %if.end, !dbg !5018

if.end:                                           ; preds = %if.then, %sw.bb1
  br label %sw.epilog, !dbg !5019

sw.bb3:                                           ; preds = %sw.bb
  %9 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5020
  %call4 = call i64 @get_raw_temp(%struct.k10temp_data* %9) #7, !dbg !5021
  %10 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5022
  %temp_offset = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %10, i32 0, i32 3, !dbg !5023
  %11 = load i32, i32* %temp_offset, align 8, !dbg !5023
  %conv = sext i32 %11 to i64, !dbg !5022
  %sub = sub i64 %call4, %conv, !dbg !5024
  %12 = load i64*, i64** %val.addr, align 8, !dbg !5025
  store i64 %sub, i64* %12, align 8, !dbg !5026
  %13 = load i64*, i64** %val.addr, align 8, !dbg !5027
  %14 = load i64, i64* %13, align 8, !dbg !5029
  %cmp5 = icmp slt i64 %14, 0, !dbg !5030
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5031

if.then7:                                         ; preds = %sw.bb3
  %15 = load i64*, i64** %val.addr, align 8, !dbg !5032
  store i64 0, i64* %15, align 8, !dbg !5033
  br label %if.end8, !dbg !5034

if.end8:                                          ; preds = %if.then7, %sw.bb3
  br label %sw.epilog, !dbg !5035

sw.bb9:                                           ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  %16 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5036
  %pdev = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %16, i32 0, i32 0, !dbg !5037
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5037
  %call10 = call zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %17) #7, !dbg !5038
  %18 = load i32, i32* %channel.addr, align 4, !dbg !5039
  %sub11 = sub i32 %18, 2, !dbg !5039
  %mul = mul i32 %sub11, 4, !dbg !5039
  %add = add i32 366932, %mul, !dbg !5039
  %call12 = call i32 @amd_smn_read(i16 zeroext %call10, i32 %add, i32* %regval) #7, !dbg !5040
  %19 = load i32, i32* %regval, align 4, !dbg !5041
  %conv13 = zext i32 %19 to i64, !dbg !5041
  %and = and i64 %conv13, 2047, !dbg !5042
  %mul14 = mul i64 %and, 125, !dbg !5043
  %sub15 = sub i64 %mul14, 49000, !dbg !5044
  %20 = load i64*, i64** %val.addr, align 8, !dbg !5045
  store i64 %sub15, i64* %20, align 8, !dbg !5046
  br label %sw.epilog, !dbg !5047

sw.default:                                       ; preds = %sw.bb
  store i32 -95, i32* %retval, align 4, !dbg !5048
  br label %return, !dbg !5048

sw.epilog:                                        ; preds = %sw.bb9, %if.end8, %if.end
  br label %sw.epilog35, !dbg !5049

sw.bb16:                                          ; preds = %entry
  %21 = load i64*, i64** %val.addr, align 8, !dbg !5050
  store i64 70000, i64* %21, align 8, !dbg !5051
  br label %sw.epilog35, !dbg !5052

sw.bb17:                                          ; preds = %entry
  %22 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5053
  %read_htcreg = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %22, i32 0, i32 1, !dbg !5054
  %23 = load void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)** %read_htcreg, align 8, !dbg !5054
  %24 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5055
  %pdev18 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %24, i32 0, i32 0, !dbg !5056
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pdev18, align 8, !dbg !5056
  call void %23(%struct.pci_dev* %25, i32* %regval) #7, !dbg !5053
  %26 = load i32, i32* %regval, align 4, !dbg !5057
  %shr = lshr i32 %26, 16, !dbg !5058
  %and19 = and i32 %shr, 127, !dbg !5059
  %mul20 = mul i32 %and19, 500, !dbg !5060
  %add21 = add i32 %mul20, 52000, !dbg !5061
  %conv22 = zext i32 %add21 to i64, !dbg !5062
  %27 = load i64*, i64** %val.addr, align 8, !dbg !5063
  store i64 %conv22, i64* %27, align 8, !dbg !5064
  br label %sw.epilog35, !dbg !5065

sw.bb23:                                          ; preds = %entry
  %28 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5066
  %read_htcreg24 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %28, i32 0, i32 1, !dbg !5067
  %29 = load void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)** %read_htcreg24, align 8, !dbg !5067
  %30 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5068
  %pdev25 = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %30, i32 0, i32 0, !dbg !5069
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev25, align 8, !dbg !5069
  call void %29(%struct.pci_dev* %31, i32* %regval) #7, !dbg !5066
  %32 = load i32, i32* %regval, align 4, !dbg !5070
  %shr26 = lshr i32 %32, 16, !dbg !5071
  %and27 = and i32 %shr26, 127, !dbg !5072
  %33 = load i32, i32* %regval, align 4, !dbg !5073
  %shr28 = lshr i32 %33, 24, !dbg !5074
  %and29 = and i32 %shr28, 15, !dbg !5075
  %sub30 = sub i32 %and27, %and29, !dbg !5076
  %mul31 = mul i32 %sub30, 500, !dbg !5077
  %add32 = add i32 %mul31, 52000, !dbg !5078
  %conv33 = zext i32 %add32 to i64, !dbg !5079
  %34 = load i64*, i64** %val.addr, align 8, !dbg !5080
  store i64 %conv33, i64* %34, align 8, !dbg !5081
  br label %sw.epilog35, !dbg !5082

sw.default34:                                     ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5083
  br label %return, !dbg !5083

sw.epilog35:                                      ; preds = %sw.bb23, %sw.bb17, %sw.bb16, %sw.epilog
  store i32 0, i32* %retval, align 4, !dbg !5084
  br label %return, !dbg !5084

return:                                           ; preds = %sw.epilog35, %sw.default34, %sw.default
  %35 = load i32, i32* %retval, align 4, !dbg !5085
  ret i32 %35, !dbg !5085
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_read_in(%struct.device* %dev, i32 %attr, i32 %channel, i64* %val) #2 !dbg !5086 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %data = alloca %struct.k10temp_data*, align 8
  %regval = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data, metadata !5095, metadata !DIExpression()), !dbg !5096
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5097
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5098
  %1 = bitcast i8* %call to %struct.k10temp_data*, !dbg !5098
  store %struct.k10temp_data* %1, %struct.k10temp_data** %data, align 8, !dbg !5096
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !5099, metadata !DIExpression()), !dbg !5100
  %2 = load i32, i32* %attr.addr, align 4, !dbg !5101
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !5102

sw.bb:                                            ; preds = %entry
  %3 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5103
  %pdev = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %3, i32 0, i32 0, !dbg !5105
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5105
  %call1 = call zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %4) #7, !dbg !5106
  %5 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5107
  %svi_addr = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %5, i32 0, i32 6, !dbg !5108
  %6 = load i32, i32* %channel.addr, align 4, !dbg !5109
  %idxprom = sext i32 %6 to i64, !dbg !5107
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %svi_addr, i64 0, i64 %idxprom, !dbg !5107
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5107
  %call2 = call i32 @amd_smn_read(i16 zeroext %call1, i32 %7, i32* %regval) #7, !dbg !5110
  %8 = load i32, i32* %regval, align 4, !dbg !5111
  %shr = lshr i32 %8, 16, !dbg !5112
  %and = and i32 %shr, 255, !dbg !5113
  store i32 %and, i32* %regval, align 4, !dbg !5114
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5115, metadata !DIExpression()), !dbg !5117
  %9 = load i32, i32* %regval, align 4, !dbg !5117
  %mul = mul i32 %9, 625, !dbg !5117
  %sub = sub i32 155000, %mul, !dbg !5117
  store i32 %sub, i32* %__x, align 4, !dbg !5117
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5118, metadata !DIExpression()), !dbg !5117
  store i32 100, i32* %__d, align 4, !dbg !5117
  %10 = load i32, i32* %__x, align 4, !dbg !5117
  %11 = load i32, i32* %__d, align 4, !dbg !5117
  %div = sdiv i32 %11, 2, !dbg !5117
  %add = add i32 %10, %div, !dbg !5117
  %12 = load i32, i32* %__d, align 4, !dbg !5117
  %div3 = udiv i32 %add, %12, !dbg !5117
  store i32 %div3, i32* %tmp, align 4, !dbg !5117
  %13 = load i32, i32* %tmp, align 4, !dbg !5117
  %conv = zext i32 %13 to i64, !dbg !5119
  %14 = load i64*, i64** %val.addr, align 8, !dbg !5120
  store i64 %conv, i64* %14, align 8, !dbg !5121
  br label %sw.epilog, !dbg !5122

sw.default:                                       ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

return:                                           ; preds = %sw.epilog, %sw.default
  %15 = load i32, i32* %retval, align 4, !dbg !5125
  ret i32 %15, !dbg !5125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @k10temp_read_curr(%struct.device* %dev, i32 %attr, i32 %channel, i64* %val) #2 !dbg !5126 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %data = alloca %struct.k10temp_data*, align 8
  %regval = alloca i32, align 4
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i32 %attr, i32* %attr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %attr.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  store i32 %channel, i32* %channel.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %channel.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  store i64* %val, i64** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %val.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data, metadata !5135, metadata !DIExpression()), !dbg !5136
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5137
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #7, !dbg !5138
  %1 = bitcast i8* %call to %struct.k10temp_data*, !dbg !5138
  store %struct.k10temp_data* %1, %struct.k10temp_data** %data, align 8, !dbg !5136
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !5139, metadata !DIExpression()), !dbg !5140
  %2 = load i32, i32* %attr.addr, align 4, !dbg !5141
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
  ], !dbg !5142

sw.bb:                                            ; preds = %entry
  %3 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5143
  %pdev = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %3, i32 0, i32 0, !dbg !5145
  %4 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5145
  %call1 = call zeroext i16 @amd_pci_dev_to_node_id(%struct.pci_dev* %4) #7, !dbg !5146
  %5 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5147
  %svi_addr = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %5, i32 0, i32 6, !dbg !5148
  %6 = load i32, i32* %channel.addr, align 4, !dbg !5149
  %idxprom = sext i32 %6 to i64, !dbg !5147
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %svi_addr, i64 0, i64 %idxprom, !dbg !5147
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5147
  %call2 = call i32 @amd_smn_read(i16 zeroext %call1, i32 %7, i32* %regval) #7, !dbg !5150
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5151, metadata !DIExpression()), !dbg !5153
  %8 = load %struct.k10temp_data*, %struct.k10temp_data** %data, align 8, !dbg !5153
  %cfactor = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %8, i32 0, i32 9, !dbg !5153
  %9 = load i32, i32* %channel.addr, align 4, !dbg !5153
  %idxprom3 = sext i32 %9 to i64, !dbg !5153
  %arrayidx4 = getelementptr [2 x i32], [2 x i32]* %cfactor, i64 0, i64 %idxprom3, !dbg !5153
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !5153
  %11 = load i32, i32* %regval, align 4, !dbg !5153
  %and = and i32 %11, 255, !dbg !5153
  %mul = mul i32 %10, %and, !dbg !5153
  store i32 %mul, i32* %__x, align 4, !dbg !5153
  call void @llvm.dbg.declare(metadata i32* %__d, metadata !5154, metadata !DIExpression()), !dbg !5153
  store i32 1000, i32* %__d, align 4, !dbg !5153
  %12 = load i32, i32* %__x, align 4, !dbg !5153
  %13 = load i32, i32* %__d, align 4, !dbg !5153
  %div = sdiv i32 %13, 2, !dbg !5153
  %add = add i32 %12, %div, !dbg !5153
  %14 = load i32, i32* %__d, align 4, !dbg !5153
  %div5 = udiv i32 %add, %14, !dbg !5153
  store i32 %div5, i32* %tmp, align 4, !dbg !5153
  %15 = load i32, i32* %tmp, align 4, !dbg !5153
  %conv = zext i32 %15 to i64, !dbg !5155
  %16 = load i64*, i64** %val.addr, align 8, !dbg !5156
  store i64 %conv, i64* %16, align 8, !dbg !5157
  br label %sw.epilog, !dbg !5158

sw.default:                                       ; preds = %entry
  store i32 -95, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

sw.epilog:                                        ; preds = %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !5160
  br label %return, !dbg !5160

return:                                           ; preds = %sw.epilog, %sw.default
  %17 = load i32, i32* %retval, align 4, !dbg !5161
  ret i32 %17, !dbg !5161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5162 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5167
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5168
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5168
  ret i8* %1, !dbg !5169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @get_raw_temp(%struct.k10temp_data* %data) #2 !dbg !5170 {
entry:
  %data.addr = alloca %struct.k10temp_data*, align 8
  %regval = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.k10temp_data* %data, %struct.k10temp_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.k10temp_data** %data.addr, metadata !5173, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !5175, metadata !DIExpression()), !dbg !5176
  call void @llvm.dbg.declare(metadata i64* %temp, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load %struct.k10temp_data*, %struct.k10temp_data** %data.addr, align 8, !dbg !5179
  %read_tempreg = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %0, i32 0, i32 2, !dbg !5180
  %1 = load void (%struct.pci_dev*, i32*)*, void (%struct.pci_dev*, i32*)** %read_tempreg, align 8, !dbg !5180
  %2 = load %struct.k10temp_data*, %struct.k10temp_data** %data.addr, align 8, !dbg !5181
  %pdev = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %2, i32 0, i32 0, !dbg !5182
  %3 = load %struct.pci_dev*, %struct.pci_dev** %pdev, align 8, !dbg !5182
  call void %1(%struct.pci_dev* %3, i32* %regval) #7, !dbg !5179
  %4 = load i32, i32* %regval, align 4, !dbg !5183
  %shr = lshr i32 %4, 21, !dbg !5184
  %mul = mul i32 %shr, 125, !dbg !5185
  %conv = zext i32 %mul to i64, !dbg !5186
  store i64 %conv, i64* %temp, align 8, !dbg !5187
  %5 = load i32, i32* %regval, align 4, !dbg !5188
  %6 = load %struct.k10temp_data*, %struct.k10temp_data** %data.addr, align 8, !dbg !5190
  %temp_adjust_mask = getelementptr inbounds %struct.k10temp_data, %struct.k10temp_data* %6, i32 0, i32 4, !dbg !5191
  %7 = load i32, i32* %temp_adjust_mask, align 4, !dbg !5191
  %and = and i32 %5, %7, !dbg !5192
  %tobool = icmp ne i32 %and, 0, !dbg !5192
  br i1 %tobool, label %if.then, label %if.end, !dbg !5193

if.then:                                          ; preds = %entry
  %8 = load i64, i64* %temp, align 8, !dbg !5194
  %sub = sub i64 %8, 49000, !dbg !5194
  store i64 %sub, i64* %temp, align 8, !dbg !5194
  br label %if.end, !dbg !5195

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %temp, align 8, !dbg !5196
  ret i64 %9, !dbg !5197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !5198 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5203
  %1 = ptrtoint i8* %0 to i64, !dbg !5203
  %2 = inttoptr i64 %1 to i8*, !dbg !5203
  %3 = ptrtoint i8* %2 to i64, !dbg !5203
  %cmp = icmp uge i64 %3, -4095, !dbg !5203
  %lnot = xor i1 %cmp, true, !dbg !5203
  %lnot1 = xor i1 %lnot, true, !dbg !5203
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5203
  %conv = sext i32 %lnot.ext to i64, !dbg !5203
  %tobool = icmp ne i64 %conv, 0, !dbg !5203
  ret i1 %tobool, !dbg !5204
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5205 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5210
  %1 = ptrtoint i8* %0 to i64, !dbg !5211
  ret i64 %1, !dbg !5212
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4172}
!llvm.module.flags = !{!4173, !4174, !4175, !4176}
!llvm.ident = !{!4177}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description235", scope: !2, file: !3, line: 33, type: !4169, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !112, globals: !122, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwmon/k10temp.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !98}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hwmon_sensor_types", file: !99, line: 20, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/hwmon.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!101 = !DIEnumerator(name: "hwmon_chip", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "hwmon_temp", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "hwmon_in", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "hwmon_curr", value: 3, isUnsigned: true)
!105 = !DIEnumerator(name: "hwmon_power", value: 4, isUnsigned: true)
!106 = !DIEnumerator(name: "hwmon_energy", value: 5, isUnsigned: true)
!107 = !DIEnumerator(name: "hwmon_humidity", value: 6, isUnsigned: true)
!108 = !DIEnumerator(name: "hwmon_fan", value: 7, isUnsigned: true)
!109 = !DIEnumerator(name: "hwmon_pwm", value: 8, isUnsigned: true)
!110 = !DIEnumerator(name: "hwmon_intrusion", value: 9, isUnsigned: true)
!111 = !DIEnumerator(name: "hwmon_max", value: 10, isUnsigned: true)
!112 = !{!113, !116, !118, !119, !120, !121}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !115, line: 76, flags: DIFlagFwdDecl)
!115 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 148, baseType: !7)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!122 = !{!0, !123, !130, !135, !140, !206, !211, !216, !218, !225, !229, !234, !4101, !4106, !4108, !4117, !4154, !4156, !4161, !4164, !4166}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author236", scope: !2, file: !3, line: 34, type: !125, isLocal: true, isDefinition: true, align: 8)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 416, elements: !128)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !{!129}
!129 = !DISubrange(count: 52)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file237", scope: !2, file: !3, line: 35, type: !132, isLocal: true, isDefinition: true, align: 8)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 280, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 35)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license238", scope: !2, file: !3, line: 35, type: !137, isLocal: true, isDefinition: true, align: 8)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 160, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 20)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__param_force", scope: !2, file: !3, line: 38, type: !142, isLocal: true, isDefinition: true, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !144, line: 69, size: 320, elements: !145)
!144 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !148, !149, !169, !176, !180, !184}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 70, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !143, file: !144, line: 71, baseType: !113, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !143, file: !144, line: 72, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !144, line: 47, size: 256, elements: !153)
!153 = !{!154, !155, !160, !165}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !144, line: 49, baseType: !7, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !152, file: !144, line: 51, baseType: !156, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!118, !147, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !152, file: !144, line: 53, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!118, !164, !159}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !152, file: !144, line: 55, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !120}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !143, file: !144, line: 73, baseType: !170, size: 16, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !172, line: 19, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !174, line: 24, baseType: !175)
!174 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !143, file: !144, line: 74, baseType: !177, size: 8, offset: 208)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !172, line: 16, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !174, line: 20, baseType: !179)
!179 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !144, line: 75, baseType: !181, size: 8, offset: 216)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !172, line: 17, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !174, line: 21, baseType: !183)
!183 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !144, line: 76, baseType: !185, size: 64, offset: 256)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !144, line: 76, size: 64, elements: !186)
!186 = !{!187, !188, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !185, file: !144, line: 77, baseType: !120, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !185, file: !144, line: 78, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !144, line: 86, size: 128, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !191, file: !144, line: 87, baseType: !7, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !191, file: !144, line: 88, baseType: !164, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !185, file: !144, line: 79, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !144, line: 92, size: 256, elements: !199)
!199 = !{!200, !201, !202, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !198, file: !144, line: 94, baseType: !7, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !198, file: !144, line: 95, baseType: !7, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !198, file: !144, line: 96, baseType: !203, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !198, file: !144, line: 97, baseType: !150, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !198, file: !144, line: 98, baseType: !120, size: 64, offset: 192)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_forcetype239", scope: !2, file: !3, line: 38, type: !208, isLocal: true, isDefinition: true, align: 8)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 224, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 28)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force240", scope: !2, file: !3, line: 39, type: !213, isLocal: true, isDefinition: true, align: 8)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 64)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_k10temp_driver_init241", scope: !2, file: !3, line: 602, type: !120, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "__exitcall_k10temp_driver_exit", scope: !2, file: !3, line: 602, type: !220, isLocal: true, isDefinition: true)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !221, line: 117, baseType: !222)
!221 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "force", scope: !2, file: !3, line: 37, type: !227, isLocal: true, isDefinition: true)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 30, baseType: !228)
!228 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__param_str_force", scope: !2, file: !3, line: 38, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 112, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 14)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "k10temp_driver", scope: !2, file: !3, line: 596, type: !236, isLocal: true, isDefinition: true)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !237, line: 858, size: 2048, elements: !238)
!237 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !245, !246, !261, !4059, !4063, !4067, !4071, !4072, !4076, !4094, !4095, !4096}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !236, file: !237, line: 859, baseType: !240, size: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 178, size: 128, elements: !241)
!241 = !{!242, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !117, line: 179, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !240, file: !117, line: 179, baseType: !243, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !237, line: 860, baseType: !147, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !236, file: !237, line: 861, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !250, line: 38, size: 256, elements: !251)
!250 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !254, !255, !256, !257, !258, !259}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !249, file: !250, line: 39, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !174, line: 27, baseType: !7)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !249, file: !250, line: 39, baseType: !253, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !249, file: !250, line: 40, baseType: !253, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !249, file: !250, line: 40, baseType: !253, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !249, file: !250, line: 41, baseType: !253, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !249, file: !250, line: 41, baseType: !253, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !249, file: !250, line: 42, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !250, line: 14, baseType: !119)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !236, file: !237, line: 862, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!118, !265, !247}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !237, line: 309, size: 19264, elements: !267)
!267 = !{!268, !269, !3922, !3923, !3924, !3925, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3953, !3955, !3956, !3957, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3981, !3982, !3983, !3984, !3986, !3987, !3988, !3989, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4032, !4033, !4035, !4036, !4037, !4038, !4040, !4041, !4042, !4045, !4052, !4053, !4054, !4055, !4056, !4057, !4058}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !266, file: !237, line: 310, baseType: !240, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !266, file: !237, line: 311, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !237, line: 605, size: 8064, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279, !300, !301, !302, !328, !331, !332, !336, !337, !338, !339, !340, !344, !345, !347, !3918, !3919, !3920, !3921}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !271, file: !237, line: 606, baseType: !240, size: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !271, file: !237, line: 607, baseType: !270, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !271, file: !237, line: 608, baseType: !240, size: 128, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !271, file: !237, line: 609, baseType: !240, size: 128, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !271, file: !237, line: 610, baseType: !265, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !271, file: !237, line: 611, baseType: !240, size: 128, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !271, file: !237, line: 613, baseType: !280, size: 256, offset: 640)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 256, elements: !298)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !283, line: 20, size: 512, elements: !284)
!283 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !291, !292, !293, !294, !295, !296, !297}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !282, file: !283, line: 21, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !117, line: 158, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !117, line: 153, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !172, line: 23, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !174, line: 31, baseType: !290)
!290 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !282, file: !283, line: 22, baseType: !286, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !283, line: 23, baseType: !147, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !282, file: !283, line: 24, baseType: !119, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !282, file: !283, line: 25, baseType: !119, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !282, file: !283, line: 26, baseType: !281, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !282, file: !283, line: 26, baseType: !281, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !282, file: !283, line: 26, baseType: !281, size: 64, offset: 448)
!298 = !{!299}
!299 = !DISubrange(count: 4)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !271, file: !237, line: 614, baseType: !240, size: 128, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !271, file: !237, line: 615, baseType: !282, size: 512, offset: 1024)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !271, file: !237, line: 617, baseType: !303, size: 64, offset: 1536)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !237, line: 731, size: 320, elements: !305)
!305 = !{!306, !310, !314, !318, !324}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !304, file: !237, line: 732, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!118, !270}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !304, file: !237, line: 733, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !270}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !304, file: !237, line: 734, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!120, !270, !7, !118}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !304, file: !237, line: 735, baseType: !319, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!118, !270, !7, !118, !118, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !172, line: 21, baseType: !253)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !304, file: !237, line: 736, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!118, !270, !7, !118, !118, !323}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !271, file: !237, line: 618, baseType: !329, size: 64, offset: 1600)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !237, line: 537, flags: DIFlagFwdDecl)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !271, file: !237, line: 619, baseType: !120, size: 64, offset: 1664)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !271, file: !237, line: 620, baseType: !333, size: 64, offset: 1728)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !335, line: 123, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !271, file: !237, line: 622, baseType: !183, size: 8, offset: 1792)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !271, file: !237, line: 623, baseType: !183, size: 8, offset: 1800)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !271, file: !237, line: 624, baseType: !183, size: 8, offset: 1808)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !271, file: !237, line: 625, baseType: !183, size: 8, offset: 1816)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !237, line: 630, baseType: !341, size: 384, offset: 1824)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 48)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !271, file: !237, line: 632, baseType: !175, size: 16, offset: 2208)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !271, file: !237, line: 633, baseType: !346, size: 16, offset: 2224)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !237, line: 237, baseType: !175)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !271, file: !237, line: 634, baseType: !348, size: 64, offset: 2240)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !350)
!350 = !{!351, !3474, !3475, !3478, !3479, !3530, !3619, !3620, !3621, !3622, !3623, !3632, !3737, !3750, !3753, !3754, !3758, !3760, !3761, !3762, !3766, !3772, !3773, !3776, !3780, !3870, !3871, !3872, !3873, !3874, !3906, !3907, !3908, !3911, !3914, !3915, !3916, !3917}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !349, file: !73, line: 462, baseType: !352, size: 512)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !353, line: 64, size: 512, elements: !354)
!353 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !356, !357, !359, !416, !3325, !3464, !3469, !3470, !3471, !3472, !3473}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !353, line: 65, baseType: !147, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !352, file: !353, line: 66, baseType: !240, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !352, file: !353, line: 67, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !352, file: !353, line: 68, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !353, line: 192, size: 704, elements: !362)
!362 = !{!363, !364, !380, !381}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !361, file: !353, line: 193, baseType: !240, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !361, file: !353, line: 194, baseType: !365, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !366, line: 83, baseType: !367)
!366 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !366, line: 71, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !366, line: 72, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !366, line: 72, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !370, file: !366, line: 73, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !366, line: 20, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !373, file: !366, line: 21, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !377, line: 25, baseType: !378)
!377 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 25, elements: !379)
!379 = !{}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !361, file: !353, line: 195, baseType: !352, size: 512, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !361, file: !353, line: 196, baseType: !382, size: 64, offset: 640)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !353, line: 156, size: 192, elements: !385)
!385 = !{!386, !391, !396}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !384, file: !353, line: 157, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!118, !360, !358}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !353, line: 158, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!147, !360, !358}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !384, file: !353, line: 159, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!118, !360, !358, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !353, line: 148, size: 20736, elements: !403)
!403 = !{!404, !408, !410, !411, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !402, file: !353, line: 149, baseType: !405, size: 192)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 192, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 3)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !402, file: !353, line: 150, baseType: !409, size: 4096, offset: 192)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 4096, elements: !214)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !402, file: !353, line: 151, baseType: !118, size: 32, offset: 4288)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !402, file: !353, line: 152, baseType: !412, size: 16384, offset: 4320)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 2048)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !402, file: !353, line: 153, baseType: !118, size: 32, offset: 20704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !352, file: !353, line: 69, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !353, line: 138, size: 448, elements: !419)
!419 = !{!420, !424, !451, !453, !3287, !3315, !3319}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !418, file: !353, line: 139, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !358}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !418, file: !353, line: 140, baseType: !425, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !428, line: 230, size: 128, elements: !429)
!428 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!429 = !{!430, !444}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !427, file: !428, line: 231, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !358, !438, !164}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 60, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !436, line: 73, baseType: !437)
!436 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !436, line: 15, baseType: !121)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !428, line: 30, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !428, line: 31, baseType: !147, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !439, file: !428, line: 32, baseType: !443, size: 16, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 19, baseType: !175)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !427, file: !428, line: 232, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!434, !358, !438, !147, !448}
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 55, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !436, line: 72, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !436, line: 16, baseType: !119)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !418, file: !353, line: 141, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !418, file: !353, line: 142, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !428, line: 84, size: 320, elements: !458)
!458 = !{!459, !460, !464, !3284, !3285}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !428, line: 85, baseType: !147, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !457, file: !428, line: 86, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!443, !358, !438, !118}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !457, file: !428, line: 88, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!443, !358, !468, !118}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !428, line: 168, size: 448, elements: !470)
!470 = !{!471, !472, !473, !474, !3279, !3280}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !469, file: !428, line: 169, baseType: !439, size: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !469, file: !428, line: 170, baseType: !448, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !469, file: !428, line: 171, baseType: !120, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !469, file: !428, line: 172, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!434, !478, !358, !468, !164, !644, !448}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !480)
!480 = !{!481, !499, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3262, !3263, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !479, file: !44, line: 920, baseType: !482, size: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !479, file: !44, line: 917, size: 128, elements: !483)
!483 = !{!484, !490}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !482, file: !44, line: 918, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !486, line: 58, size: 64, elements: !487)
!486 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !486, line: 59, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !482, file: !44, line: 919, baseType: !491, size: 128, align: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 216, size: 128, align: 64, elements: !492)
!492 = !{!493, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !117, line: 217, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !491, file: !117, line: 218, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !494}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !479, file: !44, line: 921, baseType: !500, size: 128, offset: 128)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !501, line: 8, size: 128, elements: !502)
!501 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !507}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !500, file: !501, line: 9, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !506, line: 18, flags: DIFlagFwdDecl)
!506 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !500, file: !501, line: 10, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !506, line: 89, size: 1536, elements: !510)
!510 = !{!511, !512, !522, !530, !531, !546, !3212, !3214, !3226, !3227, !3228, !3229, !3230, !3236, !3237, !3238}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !509, file: !506, line: 91, baseType: !7, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !509, file: !506, line: 92, baseType: !513, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !514, line: 277, baseType: !515)
!514 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !514, line: 277, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !515, file: !514, line: 277, baseType: !518, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !514, line: 70, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !514, line: 65, size: 32, elements: !520)
!520 = !{!521}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !519, file: !514, line: 66, baseType: !7, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !509, file: !506, line: 93, baseType: !523, size: 128, offset: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !524, line: 38, size: 128, elements: !525)
!524 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!525 = !{!526, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !523, file: !524, line: 39, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !523, file: !524, line: 39, baseType: !529, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !509, file: !506, line: 94, baseType: !508, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !509, file: !506, line: 95, baseType: !532, size: 128, offset: 256)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !506, line: 47, size: 128, elements: !533)
!533 = !{!534, !543}
!534 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !506, line: 48, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !506, line: 48, size: 64, elements: !536)
!536 = !{!537, !542}
!537 = !DIDerivedType(tag: DW_TAG_member, scope: !535, file: !506, line: 49, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !535, file: !506, line: 49, size: 64, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !538, file: !506, line: 50, baseType: !323, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !538, file: !506, line: 50, baseType: !323, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !535, file: !506, line: 52, baseType: !288, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !506, line: 54, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !509, file: !506, line: 96, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !549)
!549 = !{!550, !551, !552, !560, !567, !568, !711, !2923, !2924, !2925, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !3188, !3196, !3197, !3198, !3208, !3209, !3210, !3211}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !548, file: !44, line: 611, baseType: !443, size: 16)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !548, file: !44, line: 612, baseType: !175, size: 16, offset: 16)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !548, file: !44, line: 613, baseType: !553, size: 32, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !554, line: 23, baseType: !555)
!554 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 21, size: 32, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !555, file: !554, line: 22, baseType: !558, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 32, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !436, line: 49, baseType: !7)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !548, file: !44, line: 614, baseType: !561, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !554, line: 28, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !554, line: 26, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !562, file: !554, line: 27, baseType: !565, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 33, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !436, line: 50, baseType: !7)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !548, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !548, file: !44, line: 622, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !572)
!572 = !{!573, !577, !587, !591, !597, !601, !605, !609, !613, !617, !621, !622, !628, !632, !658, !687, !691, !697, !702, !706, !707}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !571, file: !44, line: 1865, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!508, !547, !508, !7}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !571, file: !44, line: 1866, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!147, !508, !547, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !583, line: 10, size: 128, elements: !584)
!583 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !582, file: !583, line: 11, baseType: !166, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !582, file: !583, line: 12, baseType: !120, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !571, file: !44, line: 1867, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!118, !547, !118}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !571, file: !44, line: 1868, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !547, !118}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !571, file: !44, line: 1870, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!118, !508, !164, !118}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !571, file: !44, line: 1872, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!118, !547, !508, !443, !227}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !571, file: !44, line: 1873, baseType: !606, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!118, !508, !547, !508}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !571, file: !44, line: 1874, baseType: !610, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!118, !547, !508}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !571, file: !44, line: 1875, baseType: !614, size: 64, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!118, !547, !508, !147}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !571, file: !44, line: 1876, baseType: !618, size: 64, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!118, !547, !508, !443}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !571, file: !44, line: 1877, baseType: !610, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !571, file: !44, line: 1878, baseType: !623, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!118, !547, !508, !443, !626}
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 16, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 13, baseType: !323)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !571, file: !44, line: 1879, baseType: !629, size: 64, offset: 768)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!118, !547, !508, !547, !508, !7}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !571, file: !44, line: 1881, baseType: !633, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!118, !508, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !647, !655, !656, !657}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !637, file: !44, line: 220, baseType: !7, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !637, file: !44, line: 221, baseType: !443, size: 16, offset: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !637, file: !44, line: 222, baseType: !553, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !637, file: !44, line: 223, baseType: !561, size: 32, offset: 96)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !637, file: !44, line: 224, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 46, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !436, line: 88, baseType: !646)
!646 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !637, file: !44, line: 225, baseType: !648, size: 128, offset: 192)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !649, line: 13, size: 128, elements: !650)
!649 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!650 = !{!651, !654}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !648, file: !649, line: 14, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !649, line: 8, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !174, line: 30, baseType: !646)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !648, file: !649, line: 15, baseType: !121, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !637, file: !44, line: 226, baseType: !648, size: 128, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !637, file: !44, line: 227, baseType: !648, size: 128, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !637, file: !44, line: 234, baseType: !478, size: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !571, file: !44, line: 1882, baseType: !659, size: 64, offset: 896)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!118, !662, !664, !323, !7}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !666, line: 22, size: 1152, elements: !667)
!666 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!667 = !{!668, !669, !670, !671, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !665, file: !666, line: 23, baseType: !323, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !665, file: !666, line: 24, baseType: !443, size: 16, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !665, file: !666, line: 25, baseType: !7, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !665, file: !666, line: 26, baseType: !672, size: 32, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 104, baseType: !323)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !665, file: !666, line: 27, baseType: !288, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !665, file: !666, line: 28, baseType: !288, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !665, file: !666, line: 37, baseType: !288, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !665, file: !666, line: 38, baseType: !626, size: 32, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !665, file: !666, line: 39, baseType: !626, size: 32, offset: 352)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !665, file: !666, line: 40, baseType: !553, size: 32, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !665, file: !666, line: 41, baseType: !561, size: 32, offset: 416)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !665, file: !666, line: 42, baseType: !644, size: 64, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !665, file: !666, line: 43, baseType: !648, size: 128, offset: 512)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !665, file: !666, line: 44, baseType: !648, size: 128, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !665, file: !666, line: 45, baseType: !648, size: 128, offset: 768)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !665, file: !666, line: 46, baseType: !648, size: 128, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !665, file: !666, line: 47, baseType: !288, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !665, file: !666, line: 48, baseType: !288, size: 64, offset: 1088)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !571, file: !44, line: 1883, baseType: !688, size: 64, offset: 960)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!434, !508, !164, !448}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !571, file: !44, line: 1884, baseType: !692, size: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!118, !547, !695, !288, !288}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !571, file: !44, line: 1886, baseType: !698, size: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!118, !547, !701, !118}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !571, file: !44, line: 1887, baseType: !703, size: 64, offset: 1152)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!118, !547, !508, !478, !7, !443}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !571, file: !44, line: 1890, baseType: !618, size: 64, offset: 1216)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !571, file: !44, line: 1891, baseType: !708, size: 64, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!118, !547, !595, !118}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !548, file: !44, line: 623, baseType: !712, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !767, !2531, !2613, !2696, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2712, !2716, !2717, !2720, !2721, !2724, !2725, !2726, !2767, !2793, !2794, !2795, !2796, !2797, !2798, !2801, !2803, !2810, !2811, !2813, !2814, !2815, !2874, !2875, !2890, !2891, !2892, !2893, !2894, !2897, !2898, !2899, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !713, file: !44, line: 1417, baseType: !240, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !713, file: !44, line: 1418, baseType: !626, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !713, file: !44, line: 1419, baseType: !183, size: 8, offset: 160)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !713, file: !44, line: 1420, baseType: !119, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !713, file: !44, line: 1421, baseType: !644, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !713, file: !44, line: 1422, baseType: !721, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !723)
!723 = !{!724, !725, !726, !733, !737, !741, !745, !746, !747, !757, !760, !761, !762, !764, !765, !766}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !722, file: !44, line: 2229, baseType: !147, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !722, file: !44, line: 2230, baseType: !118, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !722, file: !44, line: 2238, baseType: !727, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!118, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !732, line: 28, flags: DIFlagFwdDecl)
!732 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!733 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !722, file: !44, line: 2239, baseType: !734, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !722, file: !44, line: 2240, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!508, !721, !118, !147, !120}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !722, file: !44, line: 2242, baseType: !742, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !712}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !722, file: !44, line: 2243, baseType: !113, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !44, line: 2244, baseType: !721, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !722, file: !44, line: 2245, baseType: !748, size: 64, offset: 512)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !117, line: 182, size: 64, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !748, file: !117, line: 183, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 186, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !117, line: 187, baseType: !751, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !752, file: !117, line: 187, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !722, file: !44, line: 2247, baseType: !758, offset: 576)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !759, line: 187, elements: !379)
!759 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!760 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !722, file: !44, line: 2248, baseType: !758, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !722, file: !44, line: 2249, baseType: !758, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !722, file: !44, line: 2250, baseType: !763, offset: 576)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, elements: !406)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !722, file: !44, line: 2252, baseType: !758, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !722, file: !44, line: 2253, baseType: !758, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !722, file: !44, line: 2254, baseType: !758, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !713, file: !44, line: 1423, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !771)
!771 = !{!772, !776, !780, !781, !785, !791, !795, !796, !797, !801, !805, !806, !807, !808, !814, !819, !820, !827, !828, !829, !830, !2515, !2530}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !770, file: !44, line: 1936, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!547, !712}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !770, file: !44, line: 1937, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !547}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !770, file: !44, line: 1938, baseType: !777, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !770, file: !44, line: 1940, baseType: !782, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !547, !118}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !770, file: !44, line: 1941, baseType: !786, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!118, !547, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !770, file: !44, line: 1942, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!118, !547}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !770, file: !44, line: 1943, baseType: !777, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !770, file: !44, line: 1944, baseType: !742, size: 64, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !770, file: !44, line: 1945, baseType: !798, size: 64, offset: 512)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!118, !712, !118}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !770, file: !44, line: 1946, baseType: !802, size: 64, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!118, !712}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !770, file: !44, line: 1947, baseType: !802, size: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !770, file: !44, line: 1948, baseType: !802, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !770, file: !44, line: 1949, baseType: !802, size: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !770, file: !44, line: 1950, baseType: !809, size: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!118, !508, !812}
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !770, file: !44, line: 1951, baseType: !815, size: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!118, !712, !818, !164}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !770, file: !44, line: 1952, baseType: !742, size: 64, offset: 960)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !770, file: !44, line: 1954, baseType: !821, size: 64, offset: 1024)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!118, !824, !508}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !826, line: 539, flags: DIFlagFwdDecl)
!826 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!827 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !770, file: !44, line: 1955, baseType: !821, size: 64, offset: 1088)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !770, file: !44, line: 1956, baseType: !821, size: 64, offset: 1152)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !770, file: !44, line: 1957, baseType: !821, size: 64, offset: 1216)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !770, file: !44, line: 1963, baseType: !831, size: 64, offset: 1280)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!118, !712, !834, !116}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !836, line: 68, size: 512, align: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!837 = !{!838, !839, !2507, !2514}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !835, file: !836, line: 69, baseType: !119, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 77, baseType: !840, size: 320, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 77, size: 320, elements: !841)
!841 = !{!842, !1027, !1032, !1060, !1068, !1074, !2438, !2506}
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 78, baseType: !843, size: 320)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 78, size: 320, elements: !844)
!844 = !{!845, !846, !1025, !1026}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !843, file: !836, line: 84, baseType: !240, size: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !843, file: !836, line: 86, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !849)
!849 = !{!850, !851, !858, !859, !864, !879, !895, !896, !897, !898, !1018, !1019, !1022, !1023, !1024}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !848, file: !44, line: 452, baseType: !547, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !848, file: !44, line: 453, baseType: !852, size: 128, offset: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !853, line: 292, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !856, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !852, file: !853, line: 293, baseType: !365)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !852, file: !853, line: 295, baseType: !116, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !852, file: !853, line: 296, baseType: !120, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !848, file: !44, line: 454, baseType: !116, size: 32, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !848, file: !44, line: 455, baseType: !860, size: 32, offset: 224)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 168, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 166, size: 32, elements: !862)
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !861, file: !117, line: 167, baseType: !118, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !848, file: !44, line: 460, baseType: !865, size: 128, offset: 256)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !866, line: 125, size: 128, elements: !867)
!866 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!867 = !{!868, !878}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !865, file: !866, line: 126, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !866, line: 31, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !869, file: !866, line: 32, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !866, line: 24, size: 192, align: 64, elements: !874)
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !873, file: !866, line: 25, baseType: !119, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !873, file: !866, line: 26, baseType: !872, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !873, file: !866, line: 27, baseType: !872, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !865, file: !866, line: 127, baseType: !872, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !848, file: !44, line: 461, baseType: !880, size: 256, offset: 384)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !881, line: 35, size: 256, elements: !882)
!881 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!882 = !{!883, !891, !892, !894}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !880, file: !881, line: 36, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !885, line: 13, baseType: !886)
!885 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 175, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 173, size: 64, elements: !888)
!888 = !{!889}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !887, file: !117, line: 174, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !172, line: 22, baseType: !653)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !880, file: !881, line: 42, baseType: !884, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !880, file: !881, line: 46, baseType: !893, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !366, line: 29, baseType: !373)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !880, file: !881, line: 47, baseType: !240, size: 128, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !848, file: !44, line: 462, baseType: !119, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !848, file: !44, line: 463, baseType: !119, size: 64, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !848, file: !44, line: 464, baseType: !119, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !848, file: !44, line: 465, baseType: !899, size: 64, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !902)
!902 = !{!903, !907, !911, !915, !919, !923, !929, !935, !939, !944, !948, !952, !956, !982, !986, !992, !993, !994, !998, !1003, !1007, !1014}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !901, file: !44, line: 368, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!118, !834, !789}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !901, file: !44, line: 369, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!118, !478, !834}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !901, file: !44, line: 372, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!118, !847, !789}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !901, file: !44, line: 375, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!118, !834}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !901, file: !44, line: 381, baseType: !920, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!118, !478, !847, !243, !7}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !901, file: !44, line: 383, baseType: !924, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !901, file: !44, line: 385, baseType: !930, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!118, !478, !847, !644, !7, !7, !933, !934}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !901, file: !44, line: 388, baseType: !936, size: 64, offset: 448)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!118, !478, !847, !644, !7, !7, !834, !120}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !901, file: !44, line: 393, baseType: !940, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!943, !847, !943}
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !117, line: 125, baseType: !288)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !901, file: !44, line: 394, baseType: !945, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !834, !7, !7}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !901, file: !44, line: 395, baseType: !949, size: 64, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!118, !834, !116}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !901, file: !44, line: 396, baseType: !953, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !834}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !901, file: !44, line: 397, baseType: !957, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!434, !960, !980}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !962)
!962 = !{!963, !964, !965, !969, !970, !971, !972, !973}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !961, file: !44, line: 321, baseType: !478, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !961, file: !44, line: 326, baseType: !644, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !961, file: !44, line: 327, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !960, !121, !121}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !961, file: !44, line: 328, baseType: !120, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !961, file: !44, line: 329, baseType: !118, size: 32, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !961, file: !44, line: 330, baseType: !171, size: 16, offset: 288)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !961, file: !44, line: 331, baseType: !171, size: 16, offset: 304)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !44, line: 332, baseType: !974, size: 64, offset: 320)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !44, line: 332, size: 64, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !974, file: !44, line: 333, baseType: !7, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !974, file: !44, line: 334, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !901, file: !44, line: 402, baseType: !983, size: 64, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!118, !847, !834, !834, !5}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !901, file: !44, line: 404, baseType: !987, size: 64, offset: 896)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!227, !834, !990}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !991, line: 305, baseType: !7)
!991 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!992 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !901, file: !44, line: 405, baseType: !953, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !901, file: !44, line: 406, baseType: !916, size: 64, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !901, file: !44, line: 407, baseType: !995, size: 64, offset: 1088)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!118, !834, !119, !119}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !901, file: !44, line: 409, baseType: !999, size: 64, offset: 1152)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !834, !1002, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !901, file: !44, line: 410, baseType: !1004, size: 64, offset: 1216)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!118, !847, !834}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !901, file: !44, line: 413, baseType: !1008, size: 64, offset: 1280)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!118, !1011, !478, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !901, file: !44, line: 415, baseType: !1015, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !478}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !44, line: 466, baseType: !119, size: 64, offset: 896)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !848, file: !44, line: 467, baseType: !1020, size: 32, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1021, line: 8, baseType: !323)
!1021 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !848, file: !44, line: 468, baseType: !365, offset: 992)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !848, file: !44, line: 469, baseType: !240, size: 128, offset: 1024)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !848, file: !44, line: 470, baseType: !120, size: 64, offset: 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !843, file: !836, line: 87, baseType: !119, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !843, file: !836, line: 94, baseType: !119, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 96, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 96, size: 64, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1028, file: !836, line: 101, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !117, line: 143, baseType: !288)
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 103, baseType: !1033, size: 320)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 103, size: 320, elements: !1034)
!1034 = !{!1035, !1045, !1048, !1049}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !836, line: 104, baseType: !1036, size: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !836, line: 104, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1036, file: !836, line: 105, baseType: !240, size: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1036, file: !836, line: 106, baseType: !1040, size: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !836, line: 106, size: 128, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !836, line: 107, baseType: !834, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1040, file: !836, line: 109, baseType: !118, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1040, file: !836, line: 110, baseType: !118, size: 32, offset: 96)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1033, file: !836, line: 117, baseType: !1046, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !836, line: 117, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1033, file: !836, line: 119, baseType: !120, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !836, line: 120, baseType: !1050, size: 64, offset: 256)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1033, file: !836, line: 120, size: 64, elements: !1051)
!1051 = !{!1052, !1053, !1054}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1050, file: !836, line: 121, baseType: !120, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1050, file: !836, line: 122, baseType: !119, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, scope: !1050, file: !836, line: 123, baseType: !1055, size: 32)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1050, file: !836, line: 123, size: 32, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1055, file: !836, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1055, file: !836, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1055, file: !836, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 130, baseType: !1061, size: 192)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 130, size: 192, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1061, file: !836, line: 131, baseType: !119, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1061, file: !836, line: 134, baseType: !183, size: 8, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1061, file: !836, line: 135, baseType: !183, size: 8, offset: 72)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1061, file: !836, line: 136, baseType: !860, size: 32, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1061, file: !836, line: 137, baseType: !7, size: 32, offset: 128)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 139, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 139, size: 256, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1069, file: !836, line: 140, baseType: !119, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1069, file: !836, line: 141, baseType: !860, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1069, file: !836, line: 143, baseType: !240, size: 128, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 145, baseType: !1075, size: 256)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 145, size: 256, elements: !1076)
!1076 = !{!1077, !1078, !1080, !1081, !2437}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1075, file: !836, line: 146, baseType: !119, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1075, file: !836, line: 147, baseType: !1079, size: 64, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !826, line: 509, baseType: !834)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1075, file: !836, line: 148, baseType: !119, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1075, file: !836, line: 149, baseType: !1082, size: 64, offset: 192)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1075, file: !836, line: 149, size: 64, elements: !1083)
!1083 = !{!1084, !2436}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1082, file: !836, line: 150, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !836, line: 388, size: 7296, elements: !1087)
!1087 = !{!1088, !2432}
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !836, line: 389, baseType: !1089, size: 7296)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1086, file: !836, line: 389, size: 7296, elements: !1090)
!1090 = !{!1091, !1209, !1210, !1211, !1215, !1216, !1217, !1218, !1219, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1260, !1266, !1269, !1315, !1316, !2416, !2417, !2420, !2421, !2422, !2425, !2426, !2427, !2430, !2431}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1089, file: !836, line: 390, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !836, line: 305, size: 1472, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1109, !1110, !1115, !1116, !1119, !1203, !1204, !1205, !1206, !1207}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1093, file: !836, line: 308, baseType: !119, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1093, file: !836, line: 309, baseType: !119, size: 64, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1093, file: !836, line: 313, baseType: !1092, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1093, file: !836, line: 313, baseType: !1092, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1093, file: !836, line: 315, baseType: !873, size: 192, align: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1093, file: !836, line: 323, baseType: !119, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1093, file: !836, line: 327, baseType: !1085, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1093, file: !836, line: 333, baseType: !1103, size: 64, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !826, line: 284, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !826, line: 284, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1104, file: !826, line: 284, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1108, line: 19, baseType: !119)
!1108 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1093, file: !836, line: 334, baseType: !119, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1093, file: !836, line: 343, baseType: !1111, size: 256, offset: 704)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !836, line: 340, size: 256, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1111, file: !836, line: 341, baseType: !873, size: 192, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1111, file: !836, line: 342, baseType: !119, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1093, file: !836, line: 351, baseType: !240, size: 128, offset: 960)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1093, file: !836, line: 353, baseType: !1117, size: 64, offset: 1088)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !836, line: 353, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1093, file: !836, line: 356, baseType: !1120, size: 64, offset: 1152)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1123)
!1123 = !{!1124, !1128, !1129, !1133, !1137, !1177, !1181, !1185, !1189, !1190, !1191, !1195, !1199}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1122, file: !14, line: 558, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1092}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1122, file: !14, line: 559, baseType: !1125, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1122, file: !14, line: 560, baseType: !1130, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!118, !1092, !119}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1122, file: !14, line: 561, baseType: !1134, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!118, !1092}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1122, file: !14, line: 562, baseType: !1138, size: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !836, line: 682, baseType: !7)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150, !1157, !1164, !1170, !1171, !1172, !1174, !1176}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1143, file: !14, line: 509, baseType: !1092, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1143, file: !14, line: 511, baseType: !116, size: 32, offset: 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1143, file: !14, line: 512, baseType: !119, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1143, file: !14, line: 513, baseType: !119, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1143, file: !14, line: 514, baseType: !1151, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !826, line: 385, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 385, size: 64, elements: !1154)
!1154 = !{!1155}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1153, file: !826, line: 385, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1108, line: 15, baseType: !119)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1143, file: !14, line: 516, baseType: !1158, size: 64, offset: 320)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !826, line: 359, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 359, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1160, file: !826, line: 359, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1108, line: 16, baseType: !119)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1143, file: !14, line: 519, baseType: !1165, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1108, line: 21, baseType: !1166)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1108, line: 21, size: 64, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1166, file: !1108, line: 21, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1108, line: 14, baseType: !119)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1143, file: !14, line: 521, baseType: !834, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1143, file: !14, line: 522, baseType: !834, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1143, file: !14, line: 528, baseType: !1173, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1143, file: !14, line: 532, baseType: !1175, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1143, file: !14, line: 536, baseType: !1079, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1122, file: !14, line: 563, baseType: !1178, size: 64, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!1141, !1142, !13}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1122, file: !14, line: 565, baseType: !1182, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1142, !119, !119}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1122, file: !14, line: 567, baseType: !1186, size: 64, offset: 448)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!119, !1092}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1122, file: !14, line: 571, baseType: !1138, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1122, file: !14, line: 574, baseType: !1138, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1122, file: !14, line: 579, baseType: !1192, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!118, !1092, !119, !120, !118, !118}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1122, file: !14, line: 585, baseType: !1196, size: 64, offset: 704)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!147, !1092}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1122, file: !14, line: 615, baseType: !1200, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!834, !1092, !119}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1093, file: !836, line: 359, baseType: !119, size: 64, offset: 1216)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1093, file: !836, line: 361, baseType: !478, size: 64, offset: 1280)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1093, file: !836, line: 362, baseType: !120, size: 64, offset: 1344)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1093, file: !836, line: 365, baseType: !884, size: 64, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1093, file: !836, line: 373, baseType: !1208, offset: 1472)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !836, line: 296, elements: !379)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1089, file: !836, line: 391, baseType: !869, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1089, file: !836, line: 392, baseType: !288, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1089, file: !836, line: 394, baseType: !1212, size: 64, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!119, !478, !119, !119, !119, !119}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1089, file: !836, line: 398, baseType: !119, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1089, file: !836, line: 399, baseType: !119, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1089, file: !836, line: 405, baseType: !119, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1089, file: !836, line: 406, baseType: !119, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1089, file: !836, line: 407, baseType: !1220, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !826, line: 286, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 286, size: 64, elements: !1223)
!1223 = !{!1224}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1222, file: !826, line: 286, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1108, line: 18, baseType: !119)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1089, file: !836, line: 416, baseType: !860, size: 32, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1089, file: !836, line: 428, baseType: !860, size: 32, offset: 608)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1089, file: !836, line: 437, baseType: !860, size: 32, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1089, file: !836, line: 447, baseType: !860, size: 32, offset: 672)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1089, file: !836, line: 450, baseType: !884, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1089, file: !836, line: 452, baseType: !118, size: 32, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1089, file: !836, line: 454, baseType: !365, offset: 800)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1089, file: !836, line: 457, baseType: !880, size: 256, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1089, file: !836, line: 459, baseType: !240, size: 128, offset: 1088)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1089, file: !836, line: 466, baseType: !119, size: 64, offset: 1216)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1089, file: !836, line: 467, baseType: !119, size: 64, offset: 1280)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1089, file: !836, line: 469, baseType: !119, size: 64, offset: 1344)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1089, file: !836, line: 470, baseType: !119, size: 64, offset: 1408)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1089, file: !836, line: 471, baseType: !886, size: 64, offset: 1472)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1089, file: !836, line: 472, baseType: !119, size: 64, offset: 1536)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1089, file: !836, line: 473, baseType: !119, size: 64, offset: 1600)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1089, file: !836, line: 474, baseType: !119, size: 64, offset: 1664)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1089, file: !836, line: 475, baseType: !119, size: 64, offset: 1728)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1089, file: !836, line: 477, baseType: !365, offset: 1792)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1089, file: !836, line: 478, baseType: !119, size: 64, offset: 1792)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1089, file: !836, line: 478, baseType: !119, size: 64, offset: 1856)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1089, file: !836, line: 478, baseType: !119, size: 64, offset: 1920)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1089, file: !836, line: 478, baseType: !119, size: 64, offset: 1984)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1089, file: !836, line: 479, baseType: !119, size: 64, offset: 2048)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1089, file: !836, line: 479, baseType: !119, size: 64, offset: 2112)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1089, file: !836, line: 479, baseType: !119, size: 64, offset: 2176)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1089, file: !836, line: 480, baseType: !119, size: 64, offset: 2240)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1089, file: !836, line: 480, baseType: !119, size: 64, offset: 2304)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1089, file: !836, line: 480, baseType: !119, size: 64, offset: 2368)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1089, file: !836, line: 480, baseType: !119, size: 64, offset: 2432)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1089, file: !836, line: 482, baseType: !1257, size: 2816, offset: 2496)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 2816, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 44)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1089, file: !836, line: 488, baseType: !1261, size: 256, offset: 5312)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1262, line: 60, size: 256, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1261, file: !1262, line: 61, baseType: !1265, size: 256)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 256, elements: !298)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1089, file: !836, line: 490, baseType: !1267, size: 64, offset: 5568)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !836, line: 490, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1089, file: !836, line: 493, baseType: !1270, size: 896, offset: 5632)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1271, line: 53, baseType: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1271, line: 13, size: 896, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1280, !1281, !1288, !1289, !1309, !1310, !1311}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1272, file: !1271, line: 18, baseType: !288, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1272, file: !1271, line: 28, baseType: !886, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1272, file: !1271, line: 31, baseType: !880, size: 256, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1272, file: !1271, line: 32, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1271, line: 32, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1272, file: !1271, line: 37, baseType: !175, size: 16, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1272, file: !1271, line: 40, baseType: !1282, size: 192, offset: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1283, line: 53, size: 192, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1282, file: !1283, line: 54, baseType: !884, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1282, file: !1283, line: 55, baseType: !365, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1282, file: !1283, line: 59, baseType: !240, size: 128, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1272, file: !1271, line: 41, baseType: !120, size: 64, offset: 704)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1272, file: !1271, line: 42, baseType: !1290, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1293, line: 13, size: 896, elements: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1292, file: !1293, line: 14, baseType: !120, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1292, file: !1293, line: 15, baseType: !119, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1292, file: !1293, line: 17, baseType: !119, size: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1292, file: !1293, line: 17, baseType: !119, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1292, file: !1293, line: 19, baseType: !121, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1292, file: !1293, line: 21, baseType: !121, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1292, file: !1293, line: 22, baseType: !121, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1292, file: !1293, line: 23, baseType: !121, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1292, file: !1293, line: 24, baseType: !121, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1292, file: !1293, line: 25, baseType: !121, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1292, file: !1293, line: 26, baseType: !121, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1292, file: !1293, line: 27, baseType: !121, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1292, file: !1293, line: 28, baseType: !121, size: 64, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1292, file: !1293, line: 29, baseType: !121, size: 64, offset: 832)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1272, file: !1271, line: 44, baseType: !860, size: 32, offset: 832)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1272, file: !1271, line: 50, baseType: !171, size: 16, offset: 864)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1272, file: !1271, line: 51, baseType: !1312, size: 16, offset: 880)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !172, line: 18, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !174, line: 23, baseType: !1314)
!1314 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !836, line: 495, baseType: !119, size: 64, offset: 6528)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1089, file: !836, line: 497, baseType: !1317, size: 64, offset: 6592)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !836, line: 381, size: 384, elements: !1319)
!1319 = !{!1320, !1321, !2415}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1318, file: !836, line: 382, baseType: !860, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1318, file: !836, line: 383, baseType: !1322, size: 128, offset: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !836, line: 376, size: 128, elements: !1323)
!1323 = !{!1324, !2413}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1322, file: !836, line: 377, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1327, line: 640, size: 48640, elements: !1328)
!1327 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1335, !1337, !1338, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1355, !1373, !1384, !1467, !1468, !1469, !1480, !1481, !1483, !1484, !1485, !1486, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1564, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1602, !1604, !1605, !1606, !1618, !1619, !1620, !1621, !1622, !1623, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1647, !1652, !1836, !1837, !1838, !1839, !1843, !1846, !1849, !1852, !1855, !1859, !1960, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2004, !2005, !2006, !2007, !2008, !2013, !2014, !2015, !2018, !2019, !2022, !2025, !2028, !2031, !2074, !2077, !2078, !2157, !2158, !2161, !2162, !2165, !2166, !2167, !2171, !2172, !2173, !2186, !2187, !2188, !2198, !2203, !2206, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1326, file: !1327, line: 646, baseType: !1330, size: 128)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1331, line: 56, size: 128, elements: !1332)
!1331 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !1331, line: 57, baseType: !119, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1330, file: !1331, line: 58, baseType: !323, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1326, file: !1327, line: 649, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1326, file: !1327, line: 657, baseType: !120, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1326, file: !1327, line: 658, baseType: !1339, size: 32, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1340, line: 113, baseType: !1341)
!1340 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1340, line: 111, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1341, file: !1340, line: 112, baseType: !860, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1327, line: 660, baseType: !7, size: 32, offset: 288)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1326, file: !1327, line: 661, baseType: !7, size: 32, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1326, file: !1327, line: 684, baseType: !118, size: 32, offset: 352)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1326, file: !1327, line: 686, baseType: !118, size: 32, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1326, file: !1327, line: 687, baseType: !118, size: 32, offset: 416)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1326, file: !1327, line: 688, baseType: !118, size: 32, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1326, file: !1327, line: 689, baseType: !7, size: 32, offset: 480)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1326, file: !1327, line: 691, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1354)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1327, line: 691, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1326, file: !1327, line: 692, baseType: !1356, size: 832, offset: 576)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1327, line: 451, size: 832, elements: !1357)
!1357 = !{!1358, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1356, file: !1327, line: 453, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1327, line: 325, size: 128, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1359, file: !1327, line: 326, baseType: !119, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1359, file: !1327, line: 327, baseType: !323, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1356, file: !1327, line: 454, baseType: !873, size: 192, align: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1356, file: !1327, line: 455, baseType: !240, size: 128, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1356, file: !1327, line: 456, baseType: !7, size: 32, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1356, file: !1327, line: 458, baseType: !288, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1356, file: !1327, line: 459, baseType: !288, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1356, file: !1327, line: 460, baseType: !288, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1356, file: !1327, line: 461, baseType: !288, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1356, file: !1327, line: 463, baseType: !288, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1356, file: !1327, line: 465, baseType: !1372, offset: 832)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1327, line: 415, elements: !379)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1326, file: !1327, line: 693, baseType: !1374, size: 384, offset: 1408)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1327, line: 489, size: 384, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1374, file: !1327, line: 490, baseType: !240, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1374, file: !1327, line: 491, baseType: !119, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1374, file: !1327, line: 492, baseType: !119, size: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1374, file: !1327, line: 493, baseType: !7, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1374, file: !1327, line: 494, baseType: !175, size: 16, offset: 288)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1374, file: !1327, line: 495, baseType: !175, size: 16, offset: 304)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1374, file: !1327, line: 497, baseType: !1383, size: 64, offset: 320)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1326, file: !1327, line: 697, baseType: !1385, size: 1792, offset: 1792)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1327, line: 507, size: 1792, elements: !1386)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1464, !1465}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1385, file: !1327, line: 508, baseType: !873, size: 192, align: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1385, file: !1327, line: 515, baseType: !288, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1385, file: !1327, line: 516, baseType: !288, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1385, file: !1327, line: 517, baseType: !288, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1385, file: !1327, line: 518, baseType: !288, size: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1385, file: !1327, line: 519, baseType: !288, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1385, file: !1327, line: 526, baseType: !890, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1385, file: !1327, line: 527, baseType: !288, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1385, file: !1327, line: 528, baseType: !7, size: 32, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1385, file: !1327, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1385, file: !1327, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1385, file: !1327, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1385, file: !1327, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1385, file: !1327, line: 563, baseType: !1401, size: 512, offset: 704)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1402)
!1402 = !{!1403, !1411, !1412, !1417, !1460, !1461, !1462, !1463}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1401, file: !20, line: 119, baseType: !1404, size: 256)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1405, line: 9, size: 256, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1404, file: !1405, line: 10, baseType: !873, size: 192, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1404, file: !1405, line: 11, baseType: !1409, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1410, line: 29, baseType: !890)
!1410 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1401, file: !20, line: 120, baseType: !1409, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1401, file: !20, line: 121, baseType: !1413, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!19, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1401, file: !20, line: 122, baseType: !1418, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1420)
!1420 = !{!1421, !1441, !1442, !1445, !1450, !1451, !1455, !1459}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1419, file: !20, line: 160, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1423, file: !20, line: 215, baseType: !893)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1423, file: !20, line: 216, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1423, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1423, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1423, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1423, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1423, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1423, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1423, file: !20, line: 233, baseType: !1409, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1423, file: !20, line: 234, baseType: !1416, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1423, file: !20, line: 235, baseType: !1409, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1423, file: !20, line: 236, baseType: !1416, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1423, file: !20, line: 237, baseType: !1438, size: 4096, offset: 512)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 4096, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 8)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1419, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1419, file: !20, line: 162, baseType: !1443, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 27, baseType: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !436, line: 96, baseType: !118)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1419, file: !20, line: 163, baseType: !1446, size: 32, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !514, line: 276, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !514, line: 276, size: 32, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1447, file: !514, line: 276, baseType: !518, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1419, file: !20, line: 164, baseType: !1416, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1419, file: !20, line: 165, baseType: !1452, size: 128, offset: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1405, line: 14, size: 128, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1452, file: !1405, line: 15, baseType: !865, size: 128)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1419, file: !20, line: 166, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1409}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1419, file: !20, line: 167, baseType: !1409, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1401, file: !20, line: 123, baseType: !181, size: 8, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1401, file: !20, line: 124, baseType: !181, size: 8, offset: 456)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1401, file: !20, line: 125, baseType: !181, size: 8, offset: 464)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1401, file: !20, line: 126, baseType: !181, size: 8, offset: 472)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1385, file: !1327, line: 572, baseType: !1401, size: 512, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1385, file: !1327, line: 580, baseType: !1466, size: 64, offset: 1728)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1326, file: !1327, line: 721, baseType: !7, size: 32, offset: 3584)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1326, file: !1327, line: 722, baseType: !118, size: 32, offset: 3616)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1326, file: !1327, line: 723, baseType: !1470, size: 64, offset: 3648)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1473, line: 17, baseType: !1474)
!1473 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1473, line: 17, size: 64, elements: !1475)
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1474, file: !1473, line: 17, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 1)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1326, file: !1327, line: 724, baseType: !1472, size: 64, offset: 3712)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1326, file: !1327, line: 749, baseType: !1482, offset: 3776)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1327, line: 290, elements: !379)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1326, file: !1327, line: 751, baseType: !240, size: 128, offset: 3776)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1326, file: !1327, line: 757, baseType: !1085, size: 64, offset: 3904)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1326, file: !1327, line: 758, baseType: !1085, size: 64, offset: 3968)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1326, file: !1327, line: 761, baseType: !1487, size: 320, offset: 4032)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1262, line: 34, size: 320, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1487, file: !1262, line: 35, baseType: !288, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1487, file: !1262, line: 36, baseType: !1491, size: 256, offset: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 256, elements: !298)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1326, file: !1327, line: 766, baseType: !118, size: 32, offset: 4352)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1326, file: !1327, line: 767, baseType: !118, size: 32, offset: 4384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1326, file: !1327, line: 768, baseType: !118, size: 32, offset: 4416)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1326, file: !1327, line: 770, baseType: !118, size: 32, offset: 4448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1326, file: !1327, line: 772, baseType: !119, size: 64, offset: 4480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1326, file: !1327, line: 775, baseType: !7, size: 32, offset: 4544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1326, file: !1327, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1326, file: !1327, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1326, file: !1327, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1326, file: !1327, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1326, file: !1327, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1326, file: !1327, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1326, file: !1327, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1326, file: !1327, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1326, file: !1327, line: 831, baseType: !119, size: 64, offset: 4672)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1326, file: !1327, line: 833, baseType: !1508, size: 384, offset: 4736)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1509)
!1509 = !{!1510, !1515}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1508, file: !25, line: 26, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!121, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !25, line: 27, baseType: !1516, size: 320, offset: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1508, file: !25, line: 27, size: 320, elements: !1517)
!1517 = !{!1518, !1527, !1554}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1516, file: !25, line: 36, baseType: !1519, size: 320)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !25, line: 29, size: 320, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1519, file: !25, line: 30, baseType: !322, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1519, file: !25, line: 31, baseType: !323, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1519, file: !25, line: 32, baseType: !323, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1519, file: !25, line: 33, baseType: !323, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1519, file: !25, line: 34, baseType: !288, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1519, file: !25, line: 35, baseType: !322, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1516, file: !25, line: 46, baseType: !1528, size: 192)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !25, line: 38, size: 192, elements: !1529)
!1529 = !{!1530, !1531, !1532, !1553}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1528, file: !25, line: 39, baseType: !1443, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1528, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1528, file: !25, line: 41, baseType: !1533, size: 64, offset: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1528, file: !25, line: 41, size: 64, elements: !1534)
!1534 = !{!1535, !1543}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1533, file: !25, line: 42, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1538, line: 7, size: 128, elements: !1539)
!1538 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1537, file: !1538, line: 8, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !436, line: 93, baseType: !646)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1537, file: !1538, line: 9, baseType: !646, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1533, file: !25, line: 43, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1546, line: 7, size: 64, elements: !1547)
!1546 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1552}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1545, file: !1546, line: 8, baseType: !1549, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1546, line: 5, baseType: !1550)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !172, line: 20, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !174, line: 26, baseType: !118)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1545, file: !1546, line: 9, baseType: !1550, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1528, file: !25, line: 45, baseType: !288, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1516, file: !25, line: 54, baseType: !1555, size: 256)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !25, line: 48, size: 256, elements: !1556)
!1556 = !{!1557, !1560, !1561, !1562, !1563}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1555, file: !25, line: 49, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1555, file: !25, line: 50, baseType: !118, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1555, file: !25, line: 51, baseType: !118, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1555, file: !25, line: 52, baseType: !119, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1555, file: !25, line: 53, baseType: !119, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1326, file: !1327, line: 835, baseType: !1565, size: 32, offset: 5120)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 22, baseType: !1566)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !436, line: 28, baseType: !118)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1326, file: !1327, line: 836, baseType: !1565, size: 32, offset: 5152)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1326, file: !1327, line: 840, baseType: !119, size: 64, offset: 5184)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1326, file: !1327, line: 849, baseType: !1325, size: 64, offset: 5248)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1326, file: !1327, line: 852, baseType: !1325, size: 64, offset: 5312)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1326, file: !1327, line: 857, baseType: !240, size: 128, offset: 5376)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1326, file: !1327, line: 858, baseType: !240, size: 128, offset: 5504)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1326, file: !1327, line: 859, baseType: !1325, size: 64, offset: 5632)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1326, file: !1327, line: 867, baseType: !240, size: 128, offset: 5696)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1326, file: !1327, line: 868, baseType: !240, size: 128, offset: 5824)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1326, file: !1327, line: 871, baseType: !1577, size: 64, offset: 5952)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1579)
!1579 = !{!1580, !1581, !1582, !1583, !1585, !1586, !1593, !1594}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1578, file: !53, line: 61, baseType: !1339, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1578, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !53, line: 63, baseType: !365, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1578, file: !53, line: 65, baseType: !1584, size: 256, offset: 64)
!1584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !748, size: 256, elements: !298)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1578, file: !53, line: 66, baseType: !748, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1578, file: !53, line: 68, baseType: !1587, size: 128, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1588, line: 40, baseType: !1589)
!1588 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1588, line: 36, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1589, file: !1588, line: 37, baseType: !365)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1589, file: !1588, line: 38, baseType: !240, size: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1578, file: !53, line: 69, baseType: !491, size: 128, align: 64, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1578, file: !53, line: 70, baseType: !1595, size: 128, offset: 640)
!1595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 128, elements: !1478)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1597)
!1597 = !{!1598, !1599}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1596, file: !53, line: 55, baseType: !118, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1596, file: !53, line: 56, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1326, file: !1327, line: 872, baseType: !1603, size: 512, offset: 6016)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 512, elements: !298)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1326, file: !1327, line: 873, baseType: !240, size: 128, offset: 6528)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1326, file: !1327, line: 874, baseType: !240, size: 128, offset: 6656)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1326, file: !1327, line: 876, baseType: !1607, size: 64, offset: 6784)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1609, line: 26, size: 192, elements: !1610)
!1609 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1608, file: !1609, line: 27, baseType: !7, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1608, file: !1609, line: 28, baseType: !1613, size: 128, offset: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1614, line: 43, size: 128, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1613, file: !1614, line: 44, baseType: !893)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1613, file: !1614, line: 45, baseType: !240, size: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1326, file: !1327, line: 879, baseType: !818, size: 64, offset: 6848)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1326, file: !1327, line: 882, baseType: !818, size: 64, offset: 6912)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1326, file: !1327, line: 884, baseType: !288, size: 64, offset: 6976)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1326, file: !1327, line: 885, baseType: !288, size: 64, offset: 7040)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1326, file: !1327, line: 890, baseType: !288, size: 64, offset: 7104)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1326, file: !1327, line: 891, baseType: !1624, size: 128, offset: 7168)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1327, line: 242, size: 128, elements: !1625)
!1625 = !{!1626, !1627, !1628}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1624, file: !1327, line: 244, baseType: !288, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1624, file: !1327, line: 245, baseType: !288, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1624, file: !1327, line: 246, baseType: !893, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1326, file: !1327, line: 900, baseType: !119, size: 64, offset: 7296)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1326, file: !1327, line: 901, baseType: !119, size: 64, offset: 7360)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1326, file: !1327, line: 904, baseType: !288, size: 64, offset: 7424)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1326, file: !1327, line: 907, baseType: !288, size: 64, offset: 7488)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1326, file: !1327, line: 910, baseType: !119, size: 64, offset: 7552)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1326, file: !1327, line: 911, baseType: !119, size: 64, offset: 7616)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1326, file: !1327, line: 914, baseType: !1636, size: 640, offset: 7680)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1637, line: 123, size: 640, elements: !1638)
!1637 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !{!1639, !1645, !1646}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1636, file: !1637, line: 124, baseType: !1640, size: 576)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 576, elements: !406)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1637, line: 108, size: 192, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1641, file: !1637, line: 109, baseType: !288, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1641, file: !1637, line: 110, baseType: !1452, size: 128, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1636, file: !1637, line: 125, baseType: !7, size: 32, offset: 576)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1636, file: !1637, line: 126, baseType: !7, size: 32, offset: 608)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1326, file: !1327, line: 917, baseType: !1648, size: 192, offset: 8320)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1637, line: 134, size: 192, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1648, file: !1637, line: 135, baseType: !491, size: 128, align: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1648, file: !1637, line: 136, baseType: !7, size: 32, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1326, file: !1327, line: 923, baseType: !1653, size: 64, offset: 8512)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1656, line: 111, size: 1280, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !{!1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1677, !1678, !1679, !1680, !1681, !1682, !1789, !1790, !1791, !1792, !1818, !1821, !1831}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1655, file: !1656, line: 112, baseType: !860, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1655, file: !1656, line: 120, baseType: !553, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1655, file: !1656, line: 121, baseType: !561, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1655, file: !1656, line: 122, baseType: !553, size: 32, offset: 96)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1655, file: !1656, line: 123, baseType: !561, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1655, file: !1656, line: 124, baseType: !553, size: 32, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1655, file: !1656, line: 125, baseType: !561, size: 32, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1655, file: !1656, line: 126, baseType: !553, size: 32, offset: 224)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1655, file: !1656, line: 127, baseType: !561, size: 32, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1655, file: !1656, line: 128, baseType: !7, size: 32, offset: 288)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1655, file: !1656, line: 129, baseType: !1669, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1670, line: 26, baseType: !1671)
!1670 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1670, line: 24, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1671, file: !1670, line: 25, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 64, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 2)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1655, file: !1656, line: 130, baseType: !1669, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1655, file: !1656, line: 131, baseType: !1669, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1655, file: !1656, line: 132, baseType: !1669, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1655, file: !1656, line: 133, baseType: !1669, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1655, file: !1656, line: 135, baseType: !183, size: 8, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1655, file: !1656, line: 137, baseType: !1683, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1685, line: 189, size: 1664, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1688, !1691, !1696, !1697, !1700, !1701, !1706, !1707, !1708, !1709, !1711, !1712, !1713, !1714, !1715, !1753, !1774}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1684, file: !1685, line: 190, baseType: !1339, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1684, file: !1685, line: 191, baseType: !1689, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1685, line: 28, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !117, line: 98, baseType: !1550)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 192, baseType: !1692, size: 192, offset: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 192, size: 192, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1692, file: !1685, line: 193, baseType: !240, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1692, file: !1685, line: 194, baseType: !873, size: 192, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1684, file: !1685, line: 199, baseType: !880, size: 256, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1684, file: !1685, line: 200, baseType: !1698, size: 64, offset: 512)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1685, line: 200, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1684, file: !1685, line: 201, baseType: !120, size: 64, offset: 576)
!1701 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 202, baseType: !1702, size: 64, offset: 640)
!1702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 202, size: 64, elements: !1703)
!1703 = !{!1704, !1705}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1702, file: !1685, line: 203, baseType: !652, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1702, file: !1685, line: 204, baseType: !652, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1684, file: !1685, line: 206, baseType: !652, size: 64, offset: 704)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1684, file: !1685, line: 207, baseType: !553, size: 32, offset: 768)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1684, file: !1685, line: 208, baseType: !561, size: 32, offset: 800)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1684, file: !1685, line: 209, baseType: !1710, size: 32, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1685, line: 31, baseType: !672)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1684, file: !1685, line: 210, baseType: !175, size: 16, offset: 864)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1684, file: !1685, line: 211, baseType: !175, size: 16, offset: 880)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1684, file: !1685, line: 215, baseType: !1314, size: 16, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1684, file: !1685, line: 222, baseType: !119, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 239, baseType: !1716, size: 320, offset: 1024)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 239, size: 320, elements: !1717)
!1717 = !{!1718, !1745}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1716, file: !1685, line: 240, baseType: !1719, size: 320)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1685, line: 108, size: 320, elements: !1720)
!1720 = !{!1721, !1722, !1734, !1737, !1744}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1719, file: !1685, line: 110, baseType: !119, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1685, line: 111, baseType: !1723, size: 64, offset: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1685, line: 111, size: 64, elements: !1724)
!1724 = !{!1725, !1733}
!1725 = !DIDerivedType(tag: DW_TAG_member, scope: !1723, file: !1685, line: 112, baseType: !1726, size: 64)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1723, file: !1685, line: 112, size: 64, elements: !1727)
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1726, file: !1685, line: 114, baseType: !171, size: 16)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1726, file: !1685, line: 115, baseType: !1730, size: 48, offset: 16)
!1730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 48, elements: !1731)
!1731 = !{!1732}
!1732 = !DISubrange(count: 6)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1723, file: !1685, line: 121, baseType: !119, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1719, file: !1685, line: 123, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1685, line: 96, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1719, file: !1685, line: 124, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1685, line: 102, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1739, file: !1685, line: 103, baseType: !491, size: 128, align: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1739, file: !1685, line: 104, baseType: !1339, size: 32, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1739, file: !1685, line: 105, baseType: !227, size: 8, offset: 160)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1719, file: !1685, line: 125, baseType: !147, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !1685, line: 241, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1716, file: !1685, line: 241, size: 320, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1752}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1746, file: !1685, line: 242, baseType: !119, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1746, file: !1685, line: 243, baseType: !119, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1746, file: !1685, line: 244, baseType: !1735, size: 64, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1746, file: !1685, line: 245, baseType: !1738, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1746, file: !1685, line: 246, baseType: !164, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !1685, line: 254, baseType: !1754, size: 256, offset: 1344)
!1754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !1685, line: 254, size: 256, elements: !1755)
!1755 = !{!1756, !1762}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1754, file: !1685, line: 255, baseType: !1757, size: 256)
!1757 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1685, line: 128, size: 256, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1757, file: !1685, line: 129, baseType: !120, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1757, file: !1685, line: 130, baseType: !1761, size: 256)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !298)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !1685, line: 256, baseType: !1763, size: 256)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1754, file: !1685, line: 256, size: 256, elements: !1764)
!1764 = !{!1765, !1766}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1763, file: !1685, line: 258, baseType: !240, size: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1763, file: !1685, line: 259, baseType: !1767, size: 128, offset: 128)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1768, line: 22, size: 128, elements: !1769)
!1768 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1769 = !{!1770, !1773}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1767, file: !1768, line: 23, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1768, line: 23, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1767, file: !1768, line: 24, baseType: !119, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1684, file: !1685, line: 274, baseType: !1775, size: 64, offset: 1600)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1685, line: 170, size: 192, elements: !1777)
!1777 = !{!1778, !1787, !1788}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1776, file: !1685, line: 171, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1685, line: 165, baseType: !1780)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!118, !1683, !1783, !1785, !1683}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1776, file: !1685, line: 172, baseType: !1683, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1776, file: !1685, line: 173, baseType: !1735, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1655, file: !1656, line: 138, baseType: !1683, size: 64, offset: 768)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1655, file: !1656, line: 139, baseType: !1683, size: 64, offset: 832)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1655, file: !1656, line: 140, baseType: !1683, size: 64, offset: 896)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1655, file: !1656, line: 145, baseType: !1793, size: 64, offset: 960)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1795, line: 13, size: 896, elements: !1796)
!1795 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1794, file: !1795, line: 14, baseType: !1339, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1794, file: !1795, line: 15, baseType: !860, size: 32, offset: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1794, file: !1795, line: 16, baseType: !860, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1794, file: !1795, line: 21, baseType: !884, size: 64, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1794, file: !1795, line: 27, baseType: !119, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1794, file: !1795, line: 28, baseType: !119, size: 64, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1794, file: !1795, line: 29, baseType: !884, size: 64, offset: 320)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1794, file: !1795, line: 32, baseType: !752, size: 128, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1794, file: !1795, line: 33, baseType: !553, size: 32, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1794, file: !1795, line: 37, baseType: !884, size: 64, offset: 576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1794, file: !1795, line: 44, baseType: !1808, size: 256, offset: 640)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1809, line: 15, size: 256, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812, !1813, !1814, !1815, !1816, !1817}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1808, file: !1809, line: 16, baseType: !893)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1808, file: !1809, line: 18, baseType: !118, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1808, file: !1809, line: 19, baseType: !118, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1808, file: !1809, line: 20, baseType: !118, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1808, file: !1809, line: 21, baseType: !118, size: 32, offset: 96)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1808, file: !1809, line: 22, baseType: !119, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 23, baseType: !119, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1655, file: !1656, line: 146, baseType: !1819, size: 64, offset: 1024)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !554, line: 18, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1655, file: !1656, line: 147, baseType: !1822, size: 64, offset: 1088)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1656, line: 25, size: 64, elements: !1824)
!1824 = !{!1825, !1826, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1823, file: !1656, line: 26, baseType: !860, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1823, file: !1656, line: 27, baseType: !118, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1823, file: !1656, line: 28, baseType: !1828, offset: 64)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, elements: !1829)
!1829 = !{!1830}
!1830 = !DISubrange(count: 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1656, line: 149, baseType: !1832, size: 128, offset: 1152)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1656, line: 149, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1832, file: !1656, line: 150, baseType: !118, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1832, file: !1656, line: 151, baseType: !491, size: 128, align: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1326, file: !1327, line: 926, baseType: !1653, size: 64, offset: 8576)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1326, file: !1327, line: 929, baseType: !1653, size: 64, offset: 8640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1326, file: !1327, line: 933, baseType: !1683, size: 64, offset: 8704)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1326, file: !1327, line: 943, baseType: !1840, size: 128, offset: 8768)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 16)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1326, file: !1327, line: 945, baseType: !1844, size: 64, offset: 8896)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1327, line: 49, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1326, file: !1327, line: 956, baseType: !1847, size: 64, offset: 8960)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1327, line: 45, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1326, file: !1327, line: 959, baseType: !1850, size: 64, offset: 9024)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1327, line: 959, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1326, file: !1327, line: 962, baseType: !1853, size: 64, offset: 9088)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1327, line: 66, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1326, file: !1327, line: 966, baseType: !1856, size: 64, offset: 9152)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1858, line: 35, flags: DIFlagFwdDecl)
!1858 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1326, file: !1327, line: 969, baseType: !1860, size: 64, offset: 9216)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1862, line: 82, size: 7296, elements: !1863)
!1862 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1899, !1908, !1909, !1911, !1912, !1913, !1916, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1946, !1947, !1954, !1955, !1956, !1957, !1958, !1959}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1861, file: !1862, line: 83, baseType: !1339, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1861, file: !1862, line: 84, baseType: !860, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1861, file: !1862, line: 85, baseType: !118, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1861, file: !1862, line: 86, baseType: !240, size: 128, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1861, file: !1862, line: 88, baseType: !1587, size: 128, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1861, file: !1862, line: 91, baseType: !1325, size: 64, offset: 384)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1861, file: !1862, line: 94, baseType: !1871, size: 192, offset: 448)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1872, line: 30, size: 192, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1871, file: !1872, line: 31, baseType: !240, size: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1871, file: !1872, line: 32, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1877, line: 25, baseType: !1878)
!1877 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1877, line: 23, size: 64, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1878, file: !1877, line: 24, baseType: !1477, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1861, file: !1862, line: 97, baseType: !748, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1861, file: !1862, line: 100, baseType: !118, size: 32, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1861, file: !1862, line: 106, baseType: !118, size: 32, offset: 736)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1861, file: !1862, line: 107, baseType: !1325, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1861, file: !1862, line: 110, baseType: !118, size: 32, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1862, line: 111, baseType: !7, size: 32, offset: 864)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1861, file: !1862, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1861, file: !1862, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1861, file: !1862, line: 128, baseType: !118, size: 32, offset: 928)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1861, file: !1862, line: 129, baseType: !240, size: 128, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1861, file: !1862, line: 132, baseType: !1401, size: 512, offset: 1088)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1861, file: !1862, line: 133, baseType: !1409, size: 64, offset: 1600)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1861, file: !1862, line: 140, baseType: !1894, size: 256, offset: 1664)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 256, elements: !1675)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1862, line: 38, size: 128, elements: !1896)
!1896 = !{!1897, !1898}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1895, file: !1862, line: 39, baseType: !288, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1895, file: !1862, line: 40, baseType: !288, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1861, file: !1862, line: 146, baseType: !1900, size: 192, offset: 1920)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1862, line: 66, size: 192, elements: !1901)
!1901 = !{!1902}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1900, file: !1862, line: 67, baseType: !1903, size: 192)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1862, line: 47, size: 192, elements: !1904)
!1904 = !{!1905, !1906, !1907}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1903, file: !1862, line: 48, baseType: !886, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1903, file: !1862, line: 49, baseType: !886, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1903, file: !1862, line: 50, baseType: !886, size: 64, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1861, file: !1862, line: 150, baseType: !1636, size: 640, offset: 2112)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1861, file: !1862, line: 153, baseType: !1910, size: 256, offset: 2752)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 256, elements: !298)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1861, file: !1862, line: 159, baseType: !1577, size: 64, offset: 3008)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1861, file: !1862, line: 162, baseType: !118, size: 32, offset: 3072)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1861, file: !1862, line: 164, baseType: !1914, size: 64, offset: 3136)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1862, line: 164, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1861, file: !1862, line: 175, baseType: !1917, size: 32, offset: 3200)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !514, line: 805, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 798, size: 32, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1918, file: !514, line: 803, baseType: !513, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1918, file: !514, line: 804, baseType: !365, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1861, file: !1862, line: 176, baseType: !288, size: 64, offset: 3264)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1861, file: !1862, line: 176, baseType: !288, size: 64, offset: 3328)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1861, file: !1862, line: 176, baseType: !288, size: 64, offset: 3392)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1861, file: !1862, line: 176, baseType: !288, size: 64, offset: 3456)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1861, file: !1862, line: 177, baseType: !288, size: 64, offset: 3520)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1861, file: !1862, line: 178, baseType: !288, size: 64, offset: 3584)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1861, file: !1862, line: 179, baseType: !1624, size: 128, offset: 3648)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1861, file: !1862, line: 180, baseType: !119, size: 64, offset: 3776)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1861, file: !1862, line: 180, baseType: !119, size: 64, offset: 3840)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1861, file: !1862, line: 180, baseType: !119, size: 64, offset: 3904)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1861, file: !1862, line: 180, baseType: !119, size: 64, offset: 3968)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1861, file: !1862, line: 181, baseType: !119, size: 64, offset: 4032)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1861, file: !1862, line: 181, baseType: !119, size: 64, offset: 4096)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1861, file: !1862, line: 181, baseType: !119, size: 64, offset: 4160)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1861, file: !1862, line: 181, baseType: !119, size: 64, offset: 4224)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1861, file: !1862, line: 182, baseType: !119, size: 64, offset: 4288)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1861, file: !1862, line: 182, baseType: !119, size: 64, offset: 4352)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1861, file: !1862, line: 182, baseType: !119, size: 64, offset: 4416)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1861, file: !1862, line: 182, baseType: !119, size: 64, offset: 4480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1861, file: !1862, line: 183, baseType: !119, size: 64, offset: 4544)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1861, file: !1862, line: 183, baseType: !119, size: 64, offset: 4608)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1861, file: !1862, line: 184, baseType: !1944, offset: 4672)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1945, line: 12, elements: !379)
!1945 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1861, file: !1862, line: 192, baseType: !290, size: 64, offset: 4672)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1861, file: !1862, line: 203, baseType: !1948, size: 2048, offset: 4736)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 2048, elements: !1841)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1950, line: 43, size: 128, elements: !1951)
!1950 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1949, file: !1950, line: 44, baseType: !450, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1949, file: !1950, line: 45, baseType: !450, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1861, file: !1862, line: 220, baseType: !227, size: 8, offset: 6784)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1861, file: !1862, line: 221, baseType: !1314, size: 16, offset: 6800)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1861, file: !1862, line: 222, baseType: !1314, size: 16, offset: 6816)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1861, file: !1862, line: 224, baseType: !1085, size: 64, offset: 6848)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1861, file: !1862, line: 227, baseType: !1282, size: 192, offset: 6912)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1861, file: !1862, line: 233, baseType: !1282, size: 192, offset: 7104)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1326, file: !1327, line: 970, baseType: !1961, size: 64, offset: 9280)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1862, line: 20, size: 16576, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1962, file: !1862, line: 21, baseType: !365)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1962, file: !1862, line: 22, baseType: !1339, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1962, file: !1862, line: 23, baseType: !1587, size: 128, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1962, file: !1862, line: 24, baseType: !1968, size: 16384, offset: 192)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1969, size: 16384, elements: !214)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1872, line: 49, size: 256, elements: !1970)
!1970 = !{!1971}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1969, file: !1872, line: 50, baseType: !1972, size: 256)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1872, line: 35, size: 256, elements: !1973)
!1973 = !{!1974, !1981, !1982, !1986}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1972, file: !1872, line: 37, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1976, line: 19, baseType: !1977)
!1976 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1976, line: 18, baseType: !1979)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !118}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1972, file: !1872, line: 38, baseType: !119, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1972, file: !1872, line: 44, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1976, line: 22, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1976, line: 21, baseType: !223)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1972, file: !1872, line: 46, baseType: !1876, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1326, file: !1327, line: 971, baseType: !1876, size: 64, offset: 9344)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1326, file: !1327, line: 972, baseType: !1876, size: 64, offset: 9408)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1326, file: !1327, line: 974, baseType: !1876, size: 64, offset: 9472)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1326, file: !1327, line: 975, baseType: !1871, size: 192, offset: 9536)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1326, file: !1327, line: 976, baseType: !119, size: 64, offset: 9728)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1326, file: !1327, line: 977, baseType: !448, size: 64, offset: 9792)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1326, file: !1327, line: 978, baseType: !7, size: 32, offset: 9856)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1326, file: !1327, line: 980, baseType: !494, size: 64, offset: 9920)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1326, file: !1327, line: 989, baseType: !1996, size: 128, offset: 9984)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1997, line: 35, size: 128, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000, !2001}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1996, file: !1997, line: 36, baseType: !118, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1996, file: !1997, line: 37, baseType: !860, size: 32, offset: 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1996, file: !1997, line: 38, baseType: !2002, size: 64, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1997, line: 23, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1326, file: !1327, line: 992, baseType: !288, size: 64, offset: 10112)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1326, file: !1327, line: 993, baseType: !288, size: 64, offset: 10176)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1326, file: !1327, line: 996, baseType: !365, offset: 10240)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1326, file: !1327, line: 999, baseType: !893, offset: 10240)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1326, file: !1327, line: 1001, baseType: !2009, size: 64, offset: 10240)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1327, line: 636, size: 64, elements: !2010)
!2010 = !{!2011}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2009, file: !1327, line: 637, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1326, file: !1327, line: 1005, baseType: !865, size: 128, offset: 10304)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1326, file: !1327, line: 1007, baseType: !1325, size: 64, offset: 10432)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1326, file: !1327, line: 1009, baseType: !2016, size: 64, offset: 10496)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1327, line: 1009, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1326, file: !1327, line: 1043, baseType: !120, size: 64, offset: 10560)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1326, file: !1327, line: 1046, baseType: !2020, size: 64, offset: 10624)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1327, line: 41, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1326, file: !1327, line: 1050, baseType: !2023, size: 64, offset: 10688)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1327, line: 42, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1326, file: !1327, line: 1054, baseType: !2026, size: 64, offset: 10752)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1327, line: 55, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1326, file: !1327, line: 1056, baseType: !2029, size: 64, offset: 10816)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1327, line: 40, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1326, file: !1327, line: 1058, baseType: !2032, size: 64, offset: 10880)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2034, line: 99, size: 704, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2061, !2062}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2033, file: !2034, line: 100, baseType: !884, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2033, file: !2034, line: 101, baseType: !860, size: 32, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2033, file: !2034, line: 102, baseType: !860, size: 32, offset: 96)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2033, file: !2034, line: 105, baseType: !365, offset: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2033, file: !2034, line: 107, baseType: !175, size: 16, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2033, file: !2034, line: 109, baseType: !852, size: 128, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2033, file: !2034, line: 110, baseType: !2043, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2034, line: 73, size: 448, elements: !2045)
!2045 = !{!2046, !2049, !2050, !2055, !2060}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2044, file: !2034, line: 74, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2034, line: 74, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2044, file: !2034, line: 75, baseType: !2032, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, scope: !2044, file: !2034, line: 83, baseType: !2051, size: 128, offset: 128)
!2051 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2044, file: !2034, line: 83, size: 128, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2051, file: !2034, line: 84, baseType: !240, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2051, file: !2034, line: 85, baseType: !1046, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2044, file: !2034, line: 87, baseType: !2056, size: 128, offset: 256)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2044, file: !2034, line: 87, size: 128, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2056, file: !2034, line: 88, baseType: !752, size: 128)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2056, file: !2034, line: 89, baseType: !491, size: 128, align: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2044, file: !2034, line: 92, baseType: !7, size: 32, offset: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2033, file: !2034, line: 111, baseType: !748, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2033, file: !2034, line: 113, baseType: !2063, size: 256, offset: 448)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2064, line: 102, size: 256, elements: !2065)
!2064 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2063, file: !2064, line: 103, baseType: !884, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2063, file: !2064, line: 104, baseType: !240, size: 128, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2063, file: !2064, line: 105, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2064, line: 21, baseType: !2070)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !2073}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1326, file: !1327, line: 1061, baseType: !2075, size: 64, offset: 10944)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1327, line: 43, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1326, file: !1327, line: 1064, baseType: !119, size: 64, offset: 11008)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1326, file: !1327, line: 1065, baseType: !2079, size: 64, offset: 11072)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1872, line: 14, baseType: !2081)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1872, line: 12, size: 384, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2081, file: !1872, line: 13, baseType: !2084, size: 384)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2081, file: !1872, line: 13, size: 384, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2084, file: !1872, line: 13, baseType: !118, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2084, file: !1872, line: 13, baseType: !118, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2084, file: !1872, line: 13, baseType: !118, size: 32, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2084, file: !1872, line: 13, baseType: !2090, size: 256, offset: 128)
!2090 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2091, line: 32, size: 256, elements: !2092)
!2091 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !{!2093, !2098, !2111, !2117, !2126, !2146, !2151}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2090, file: !2091, line: 37, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 34, size: 64, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2094, file: !2091, line: 35, baseType: !1566, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2094, file: !2091, line: 36, baseType: !559, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2090, file: !2091, line: 45, baseType: !2099, size: 192)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 40, size: 192, elements: !2100)
!2100 = !{!2101, !2103, !2104, !2110}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2099, file: !2091, line: 41, baseType: !2102, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !436, line: 95, baseType: !118)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2099, file: !2091, line: 42, baseType: !118, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2099, file: !2091, line: 43, baseType: !2105, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2091, line: 11, baseType: !2106)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2091, line: 8, size: 64, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2106, file: !2091, line: 9, baseType: !118, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2106, file: !2091, line: 10, baseType: !120, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2099, file: !2091, line: 44, baseType: !118, size: 32, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2090, file: !2091, line: 52, baseType: !2112, size: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 48, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2112, file: !2091, line: 49, baseType: !1566, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2112, file: !2091, line: 50, baseType: !559, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2112, file: !2091, line: 51, baseType: !2105, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2090, file: !2091, line: 61, baseType: !2118, size: 256)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 55, size: 256, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2125}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2118, file: !2091, line: 56, baseType: !1566, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2118, file: !2091, line: 57, baseType: !559, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2118, file: !2091, line: 58, baseType: !118, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2118, file: !2091, line: 59, baseType: !2124, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !436, line: 94, baseType: !437)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2118, file: !2091, line: 60, baseType: !2124, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2090, file: !2091, line: 95, baseType: !2127, size: 256)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 64, size: 256, elements: !2128)
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2127, file: !2091, line: 65, baseType: !120, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2127, file: !2091, line: 77, baseType: !2131, size: 192, offset: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2127, file: !2091, line: 77, size: 192, elements: !2132)
!2132 = !{!2133, !2134, !2141}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2131, file: !2091, line: 82, baseType: !1314, size: 16)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2131, file: !2091, line: 88, baseType: !2135, size: 192)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2091, line: 84, size: 192, elements: !2136)
!2136 = !{!2137, !2139, !2140}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2135, file: !2091, line: 85, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !1439)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2135, file: !2091, line: 86, baseType: !120, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2135, file: !2091, line: 87, baseType: !120, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2131, file: !2091, line: 93, baseType: !2142, size: 96)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2131, file: !2091, line: 90, size: 96, elements: !2143)
!2143 = !{!2144, !2145}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2142, file: !2091, line: 91, baseType: !2138, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2142, file: !2091, line: 92, baseType: !253, size: 32, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2090, file: !2091, line: 101, baseType: !2147, size: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 98, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2147, file: !2091, line: 99, baseType: !121, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2147, file: !2091, line: 100, baseType: !118, size: 32, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2090, file: !2091, line: 108, baseType: !2152, size: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2090, file: !2091, line: 104, size: 128, elements: !2153)
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2152, file: !2091, line: 105, baseType: !120, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2152, file: !2091, line: 106, baseType: !118, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2152, file: !2091, line: 107, baseType: !7, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1326, file: !1327, line: 1067, baseType: !1944, offset: 11136)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1326, file: !1327, line: 1099, baseType: !2159, size: 64, offset: 11136)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1327, line: 56, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1326, file: !1327, line: 1103, baseType: !240, size: 128, offset: 11200)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1326, file: !1327, line: 1104, baseType: !2163, size: 64, offset: 11328)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1327, line: 46, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1326, file: !1327, line: 1105, baseType: !1282, size: 192, offset: 11392)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1326, file: !1327, line: 1106, baseType: !7, size: 32, offset: 11584)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1326, file: !1327, line: 1109, baseType: !2168, size: 128, offset: 11648)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2169, size: 128, elements: !1675)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1327, line: 51, flags: DIFlagFwdDecl)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1326, file: !1327, line: 1110, baseType: !1282, size: 192, offset: 11776)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1326, file: !1327, line: 1111, baseType: !240, size: 128, offset: 11968)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1326, file: !1327, line: 1173, baseType: !2174, size: 64, offset: 12096)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2176, line: 62, size: 256, align: 256, elements: !2177)
!2176 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !{!2178, !2179, !2180, !2185}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2175, file: !2176, line: 75, baseType: !253, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2175, file: !2176, line: 90, baseType: !253, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2175, file: !2176, line: 124, baseType: !2181, size: 64, offset: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2176, line: 109, size: 64, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2181, file: !2176, line: 110, baseType: !289, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2181, file: !2176, line: 112, baseType: !289, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2175, file: !2176, line: 144, baseType: !253, size: 32, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1326, file: !1327, line: 1174, baseType: !323, size: 32, offset: 12160)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1326, file: !1327, line: 1179, baseType: !119, size: 64, offset: 12224)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1326, file: !1327, line: 1182, baseType: !2189, size: 128, offset: 12288)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1262, line: 76, size: 128, elements: !2190)
!2190 = !{!2191, !2196, !2197}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2189, file: !1262, line: 85, baseType: !2192, size: 64)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2193, line: 7, size: 64, elements: !2194)
!2193 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2194 = !{!2195}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2192, file: !2193, line: 12, baseType: !1474, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2189, file: !1262, line: 88, baseType: !227, size: 8, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2189, file: !1262, line: 95, baseType: !227, size: 8, offset: 72)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1327, line: 1184, baseType: !2199, size: 128, offset: 12416)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1327, line: 1184, size: 128, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2199, file: !1327, line: 1185, baseType: !1339, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2199, file: !1327, line: 1186, baseType: !491, size: 128, align: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1326, file: !1327, line: 1190, baseType: !2204, size: 64, offset: 12544)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1327, line: 53, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1326, file: !1327, line: 1192, baseType: !2207, size: 128, offset: 12608)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1262, line: 64, size: 128, elements: !2208)
!2208 = !{!2209, !2210, !2211}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2207, file: !1262, line: 65, baseType: !834, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2207, file: !1262, line: 67, baseType: !253, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2207, file: !1262, line: 68, baseType: !253, size: 32, offset: 96)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1326, file: !1327, line: 1206, baseType: !118, size: 32, offset: 12736)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1326, file: !1327, line: 1207, baseType: !118, size: 32, offset: 12768)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1326, file: !1327, line: 1209, baseType: !119, size: 64, offset: 12800)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1326, file: !1327, line: 1219, baseType: !288, size: 64, offset: 12864)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1326, file: !1327, line: 1220, baseType: !288, size: 64, offset: 12928)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1326, file: !1327, line: 1317, baseType: !118, size: 32, offset: 12992)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1326, file: !1327, line: 1319, baseType: !1325, size: 64, offset: 13056)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1326, file: !1327, line: 1322, baseType: !2220, size: 64, offset: 13120)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2222, line: 56, size: 512, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2221, file: !2222, line: 57, baseType: !2220, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2221, file: !2222, line: 58, baseType: !120, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2221, file: !2222, line: 59, baseType: !119, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2221, file: !2222, line: 60, baseType: !119, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2221, file: !2222, line: 61, baseType: !933, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2221, file: !2222, line: 62, baseType: !7, size: 32, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2221, file: !2222, line: 63, baseType: !287, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2221, file: !2222, line: 64, baseType: !2232, size: 64, offset: 448)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1326, file: !1327, line: 1326, baseType: !1339, size: 32, offset: 13184)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1326, file: !1327, line: 1342, baseType: !120, size: 64, offset: 13248)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1326, file: !1327, line: 1343, baseType: !289, size: 64, offset: 13312)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1326, file: !1327, line: 1344, baseType: !288, size: 64, offset: 13376)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1326, file: !1327, line: 1345, baseType: !289, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1326, file: !1327, line: 1346, baseType: !289, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1326, file: !1327, line: 1347, baseType: !289, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1326, file: !1327, line: 1348, baseType: !491, size: 128, align: 64, offset: 13504)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1326, file: !1327, line: 1358, baseType: !2243, size: 34816, offset: 13824)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2244, line: 485, size: 34816, elements: !2245)
!2244 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2245 = !{!2246, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2275, !2276, !2277, !2278, !2279, !2280, !2283, !2284, !2285}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2243, file: !2244, line: 487, baseType: !2247, size: 192)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2248, size: 192, elements: !406)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2249, line: 16, size: 64, elements: !2250)
!2249 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2248, file: !2249, line: 17, baseType: !171, size: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2248, file: !2249, line: 18, baseType: !171, size: 16, offset: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2248, file: !2249, line: 19, baseType: !171, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2248, file: !2249, line: 19, baseType: !171, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2248, file: !2249, line: 19, baseType: !171, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2248, file: !2249, line: 19, baseType: !171, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2248, file: !2249, line: 19, baseType: !171, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2248, file: !2249, line: 20, baseType: !171, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2248, file: !2249, line: 20, baseType: !171, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2248, file: !2249, line: 20, baseType: !171, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2248, file: !2249, line: 20, baseType: !171, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2248, file: !2249, line: 20, baseType: !171, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2248, file: !2249, line: 20, baseType: !171, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2243, file: !2244, line: 491, baseType: !119, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2243, file: !2244, line: 495, baseType: !175, size: 16, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2243, file: !2244, line: 496, baseType: !175, size: 16, offset: 272)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2243, file: !2244, line: 497, baseType: !175, size: 16, offset: 288)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2243, file: !2244, line: 498, baseType: !175, size: 16, offset: 304)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2243, file: !2244, line: 502, baseType: !119, size: 64, offset: 320)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2243, file: !2244, line: 503, baseType: !119, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2243, file: !2244, line: 514, baseType: !2272, size: 256, offset: 448)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 256, elements: !298)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2244, line: 483, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2243, file: !2244, line: 516, baseType: !119, size: 64, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2243, file: !2244, line: 518, baseType: !119, size: 64, offset: 768)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2243, file: !2244, line: 520, baseType: !119, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2243, file: !2244, line: 521, baseType: !119, size: 64, offset: 896)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2243, file: !2244, line: 522, baseType: !119, size: 64, offset: 960)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2243, file: !2244, line: 528, baseType: !2281, size: 64, offset: 1024)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2244, line: 10, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2243, file: !2244, line: 535, baseType: !119, size: 64, offset: 1088)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2243, file: !2244, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2243, file: !2244, line: 540, baseType: !2286, size: 33280, offset: 1536)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2287, line: 317, size: 33280, elements: !2288)
!2287 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2286, file: !2287, line: 330, baseType: !7, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2286, file: !2287, line: 337, baseType: !119, size: 64, offset: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2286, file: !2287, line: 348, baseType: !2292, size: 32768, offset: 512)
!2292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2287, line: 304, size: 32768, elements: !2293)
!2293 = !{!2294, !2307, !2346, !2396, !2409}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2292, file: !2287, line: 305, baseType: !2295, size: 896)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2287, line: 12, size: 896, elements: !2296)
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2306}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2295, file: !2287, line: 13, baseType: !323, size: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2295, file: !2287, line: 14, baseType: !323, size: 32, offset: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2295, file: !2287, line: 15, baseType: !323, size: 32, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2295, file: !2287, line: 16, baseType: !323, size: 32, offset: 96)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2295, file: !2287, line: 17, baseType: !323, size: 32, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2295, file: !2287, line: 18, baseType: !323, size: 32, offset: 160)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2295, file: !2287, line: 19, baseType: !323, size: 32, offset: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2295, file: !2287, line: 22, baseType: !2305, size: 640, offset: 224)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 640, elements: !138)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2295, file: !2287, line: 25, baseType: !323, size: 32, offset: 864)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2292, file: !2287, line: 306, baseType: !2308, size: 4096, align: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2287, line: 34, size: 4096, align: 128, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2329, !2330, !2331, !2335, !2337, !2341}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2308, file: !2287, line: 35, baseType: !171, size: 16)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2308, file: !2287, line: 36, baseType: !171, size: 16, offset: 16)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2308, file: !2287, line: 37, baseType: !171, size: 16, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2308, file: !2287, line: 38, baseType: !171, size: 16, offset: 48)
!2314 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !2287, line: 39, baseType: !2315, size: 128, offset: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2308, file: !2287, line: 39, size: 128, elements: !2316)
!2316 = !{!2317, !2322}
!2317 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2287, line: 40, baseType: !2318, size: 128)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2315, file: !2287, line: 40, size: 128, elements: !2319)
!2319 = !{!2320, !2321}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2318, file: !2287, line: 41, baseType: !288, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2318, file: !2287, line: 42, baseType: !288, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !2287, line: 44, baseType: !2323, size: 128)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2315, file: !2287, line: 44, size: 128, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2323, file: !2287, line: 45, baseType: !323, size: 32)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2323, file: !2287, line: 46, baseType: !323, size: 32, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2323, file: !2287, line: 47, baseType: !323, size: 32, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2323, file: !2287, line: 48, baseType: !323, size: 32, offset: 96)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2308, file: !2287, line: 51, baseType: !323, size: 32, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2308, file: !2287, line: 52, baseType: !323, size: 32, offset: 224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2308, file: !2287, line: 55, baseType: !2332, size: 1024, offset: 256)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 1024, elements: !2333)
!2333 = !{!2334}
!2334 = !DISubrange(count: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2308, file: !2287, line: 58, baseType: !2336, size: 2048, offset: 1280)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 2048, elements: !214)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2308, file: !2287, line: 60, baseType: !2338, size: 384, offset: 3328)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 384, elements: !2339)
!2339 = !{!2340}
!2340 = !DISubrange(count: 12)
!2341 = !DIDerivedType(tag: DW_TAG_member, scope: !2308, file: !2287, line: 62, baseType: !2342, size: 384, offset: 3712)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2308, file: !2287, line: 62, size: 384, elements: !2343)
!2343 = !{!2344, !2345}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2342, file: !2287, line: 63, baseType: !2338, size: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2342, file: !2287, line: 64, baseType: !2338, size: 384)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2292, file: !2287, line: 307, baseType: !2347, size: 1088)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2287, line: 79, size: 1088, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2395}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2347, file: !2287, line: 80, baseType: !323, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2347, file: !2287, line: 81, baseType: !323, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2347, file: !2287, line: 82, baseType: !323, size: 32, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2347, file: !2287, line: 83, baseType: !323, size: 32, offset: 96)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2347, file: !2287, line: 84, baseType: !323, size: 32, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2347, file: !2287, line: 85, baseType: !323, size: 32, offset: 160)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2347, file: !2287, line: 86, baseType: !323, size: 32, offset: 192)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2347, file: !2287, line: 88, baseType: !2305, size: 640, offset: 224)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2347, file: !2287, line: 89, baseType: !181, size: 8, offset: 864)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2347, file: !2287, line: 90, baseType: !181, size: 8, offset: 872)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2347, file: !2287, line: 91, baseType: !181, size: 8, offset: 880)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2347, file: !2287, line: 92, baseType: !181, size: 8, offset: 888)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2347, file: !2287, line: 93, baseType: !181, size: 8, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2347, file: !2287, line: 94, baseType: !181, size: 8, offset: 904)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2347, file: !2287, line: 95, baseType: !2364, size: 64, offset: 960)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2366, line: 11, size: 128, elements: !2367)
!2366 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2365, file: !2366, line: 12, baseType: !121, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2365, file: !2366, line: 13, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2372, line: 56, size: 1344, elements: !2373)
!2372 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2371, file: !2372, line: 61, baseType: !119, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2371, file: !2372, line: 62, baseType: !119, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2371, file: !2372, line: 63, baseType: !119, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2371, file: !2372, line: 64, baseType: !119, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2371, file: !2372, line: 65, baseType: !119, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2371, file: !2372, line: 66, baseType: !119, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2371, file: !2372, line: 68, baseType: !119, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2371, file: !2372, line: 69, baseType: !119, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2371, file: !2372, line: 70, baseType: !119, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2371, file: !2372, line: 71, baseType: !119, size: 64, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2371, file: !2372, line: 72, baseType: !119, size: 64, offset: 640)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2371, file: !2372, line: 73, baseType: !119, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2371, file: !2372, line: 74, baseType: !119, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2371, file: !2372, line: 75, baseType: !119, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2371, file: !2372, line: 76, baseType: !119, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2371, file: !2372, line: 81, baseType: !119, size: 64, offset: 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2371, file: !2372, line: 83, baseType: !119, size: 64, offset: 1024)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2371, file: !2372, line: 84, baseType: !119, size: 64, offset: 1088)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2371, file: !2372, line: 85, baseType: !119, size: 64, offset: 1152)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2371, file: !2372, line: 86, baseType: !119, size: 64, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2371, file: !2372, line: 87, baseType: !119, size: 64, offset: 1280)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2347, file: !2287, line: 96, baseType: !323, size: 32, offset: 1024)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2292, file: !2287, line: 308, baseType: !2397, size: 4608, align: 512)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2287, line: 289, size: 4608, align: 512, elements: !2398)
!2398 = !{!2399, !2400, !2407}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2397, file: !2287, line: 290, baseType: !2308, size: 4096, align: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2397, file: !2287, line: 291, baseType: !2401, size: 512, offset: 4096)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2287, line: 268, size: 512, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2401, file: !2287, line: 269, baseType: !288, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2401, file: !2287, line: 270, baseType: !288, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2401, file: !2287, line: 271, baseType: !2406, size: 384, offset: 128)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 384, elements: !1731)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2397, file: !2287, line: 292, baseType: !2408, offset: 4608)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, elements: !1829)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2292, file: !2287, line: 309, baseType: !2410, size: 32768)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 32768, elements: !2411)
!2411 = !{!2412}
!2412 = !DISubrange(count: 4096)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1322, file: !836, line: 378, baseType: !2414, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1318, file: !836, line: 384, baseType: !1608, size: 192, offset: 192)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1089, file: !836, line: 500, baseType: !365, offset: 6656)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1089, file: !836, line: 501, baseType: !2418, size: 64, offset: 6656)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !836, line: 387, flags: DIFlagFwdDecl)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1089, file: !836, line: 516, baseType: !1819, size: 64, offset: 6720)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1089, file: !836, line: 519, baseType: !478, size: 64, offset: 6784)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1089, file: !836, line: 521, baseType: !2423, size: 64, offset: 6848)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !836, line: 521, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1089, file: !836, line: 545, baseType: !860, size: 32, offset: 6912)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1089, file: !836, line: 548, baseType: !227, size: 8, offset: 6944)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1089, file: !836, line: 550, baseType: !2428, offset: 6952)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2429, line: 142, elements: !379)
!2429 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1089, file: !836, line: 554, baseType: !2063, size: 256, offset: 6976)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1089, file: !836, line: 557, baseType: !323, size: 32, offset: 7232)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1086, file: !836, line: 565, baseType: !2433, offset: 7296)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !2434)
!2434 = !{!2435}
!2435 = !DISubrange(count: -1)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1082, file: !836, line: 151, baseType: !860, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1075, file: !836, line: 156, baseType: !365, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !836, line: 159, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !836, line: 159, size: 128, elements: !2440)
!2440 = !{!2441, !2505}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2439, file: !836, line: 161, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2444)
!2444 = !{!2445, !2455, !2476, !2477, !2478, !2479, !2480, !2492, !2493, !2494}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2443, file: !31, line: 111, baseType: !2446, size: 384)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2447)
!2447 = !{!2448, !2450, !2451, !2452, !2453, !2454}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2446, file: !31, line: 20, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2446, file: !31, line: 21, baseType: !2449, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2446, file: !31, line: 22, baseType: !2449, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2446, file: !31, line: 23, baseType: !119, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2446, file: !31, line: 24, baseType: !119, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2446, file: !31, line: 25, baseType: !119, size: 64, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2443, file: !31, line: 112, baseType: !2456, size: 64, offset: 384)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2458, line: 105, size: 128, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2459 = !{!2460, !2461}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2457, file: !2458, line: 110, baseType: !119, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2457, file: !2458, line: 118, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2458, line: 95, size: 448, elements: !2464)
!2464 = !{!2465, !2466, !2471, !2472, !2473, !2474, !2475}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2463, file: !2458, line: 96, baseType: !884, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2463, file: !2458, line: 97, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2458, line: 60, baseType: !2469)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2456}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2463, file: !2458, line: 98, baseType: !2467, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2463, file: !2458, line: 99, baseType: !227, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2463, file: !2458, line: 100, baseType: !227, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2463, file: !2458, line: 101, baseType: !491, size: 128, align: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2463, file: !2458, line: 102, baseType: !2456, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2443, file: !31, line: 113, baseType: !2457, size: 128, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2443, file: !31, line: 114, baseType: !1608, size: 192, offset: 576)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2443, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2443, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2443, file: !31, line: 117, baseType: !2481, size: 64, offset: 832)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2484)
!2484 = !{!2485, !2486, !2490, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2483, file: !31, line: 73, baseType: !953, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2483, file: !31, line: 78, baseType: !2487, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{null, !2442}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2483, file: !31, line: 83, baseType: !2487, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2483, file: !31, line: 89, baseType: !1138, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2443, file: !31, line: 118, baseType: !120, size: 64, offset: 896)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2443, file: !31, line: 119, baseType: !118, size: 32, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2443, file: !31, line: 120, baseType: !2495, size: 128, offset: 1024)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2443, file: !31, line: 120, size: 128, elements: !2496)
!2496 = !{!2497, !2503}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2495, file: !31, line: 121, baseType: !2498, size: 128)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2499, line: 6, size: 128, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2498, file: !2499, line: 7, baseType: !288, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2498, file: !2499, line: 8, baseType: !288, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2495, file: !31, line: 122, baseType: !2504)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2498, elements: !1829)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2439, file: !836, line: 162, baseType: !120, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !840, file: !836, line: 176, baseType: !491, size: 128, align: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !836, line: 179, baseType: !2508, size: 32, offset: 384)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !836, line: 179, size: 32, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2508, file: !836, line: 184, baseType: !860, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2508, file: !836, line: 192, baseType: !7, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2508, file: !836, line: 194, baseType: !7, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2508, file: !836, line: 195, baseType: !118, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !835, file: !836, line: 199, baseType: !860, size: 32, offset: 416)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !770, file: !44, line: 1964, baseType: !2516, size: 64, offset: 1344)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!121, !712, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2521, line: 12, size: 256, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2522 = !{!2523, !2524, !2525, !2526, !2527}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2520, file: !2521, line: 13, baseType: !116, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2520, file: !2521, line: 16, baseType: !118, size: 32, offset: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2520, file: !2521, line: 23, baseType: !119, size: 64, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2520, file: !2521, line: 30, baseType: !119, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2520, file: !2521, line: 33, baseType: !2528, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !836, line: 27, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !770, file: !44, line: 1966, baseType: !2516, size: 64, offset: 1408)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !713, file: !44, line: 1424, baseType: !2532, size: 64, offset: 448)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2535)
!2535 = !{!2536, !2582, !2586, !2590, !2591, !2592, !2593, !2594, !2599, !2604, !2608}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2534, file: !38, line: 323, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!118, !2540}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2542)
!2542 = !{!2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2567, !2568, !2569}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2541, file: !38, line: 295, baseType: !752, size: 128)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2541, file: !38, line: 296, baseType: !240, size: 128, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2541, file: !38, line: 297, baseType: !240, size: 128, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2541, file: !38, line: 298, baseType: !240, size: 128, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2541, file: !38, line: 299, baseType: !1282, size: 192, offset: 512)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2541, file: !38, line: 300, baseType: !365, offset: 704)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2541, file: !38, line: 301, baseType: !860, size: 32, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2541, file: !38, line: 302, baseType: !712, size: 64, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2541, file: !38, line: 303, baseType: !2552, size: 64, offset: 832)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2553)
!2553 = !{!2554, !2566}
!2554 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !38, line: 69, baseType: !2555, size: 32)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !38, line: 69, size: 32, elements: !2556)
!2556 = !{!2557, !2558, !2559}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2555, file: !38, line: 70, baseType: !553, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2555, file: !38, line: 71, baseType: !561, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2555, file: !38, line: 72, baseType: !2560, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2561, line: 24, baseType: !2562)
!2561 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2561, line: 22, size: 32, elements: !2563)
!2563 = !{!2564}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2562, file: !2561, line: 23, baseType: !2565, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2561, line: 20, baseType: !559)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2552, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2541, file: !38, line: 304, baseType: !644, size: 64, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2541, file: !38, line: 305, baseType: !119, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2541, file: !38, line: 306, baseType: !2570, size: 576, offset: 1024)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2571)
!2571 = !{!2572, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2570, file: !38, line: 206, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !646)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2570, file: !38, line: 207, baseType: !2573, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2570, file: !38, line: 208, baseType: !2573, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2570, file: !38, line: 209, baseType: !2573, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2570, file: !38, line: 210, baseType: !2573, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2570, file: !38, line: 211, baseType: !2573, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2570, file: !38, line: 212, baseType: !2573, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2570, file: !38, line: 213, baseType: !652, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2570, file: !38, line: 214, baseType: !652, size: 64, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2534, file: !38, line: 324, baseType: !2583, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2540, !712, !118}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2534, file: !38, line: 325, baseType: !2587, size: 64, offset: 128)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !2540}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2534, file: !38, line: 326, baseType: !2537, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2534, file: !38, line: 327, baseType: !2537, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2534, file: !38, line: 328, baseType: !2537, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2534, file: !38, line: 329, baseType: !798, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2534, file: !38, line: 332, baseType: !2595, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!2598, !547}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2534, file: !38, line: 333, baseType: !2600, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!118, !547, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2534, file: !38, line: 335, baseType: !2605, size: 64, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!118, !547, !2598}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2534, file: !38, line: 337, baseType: !2609, size: 64, offset: 640)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!118, !712, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !713, file: !44, line: 1425, baseType: !2614, size: 64, offset: 512)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2617)
!2617 = !{!2618, !2622, !2623, !2627, !2628, !2629, !2644, !2667, !2671, !2672, !2695}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2616, file: !38, line: 429, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!118, !712, !118, !118, !662}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2616, file: !38, line: 430, baseType: !798, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2616, file: !38, line: 431, baseType: !2624, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!118, !712, !7}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2616, file: !38, line: 432, baseType: !2624, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2616, file: !38, line: 433, baseType: !798, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2616, file: !38, line: 434, baseType: !2630, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!118, !712, !118, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2634, file: !38, line: 416, baseType: !118, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2634, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2634, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2634, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2634, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2634, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2634, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2634, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2616, file: !38, line: 435, baseType: !2645, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!118, !712, !2552, !2648}
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2650)
!2650 = !{!2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2649, file: !38, line: 344, baseType: !118, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2649, file: !38, line: 345, baseType: !288, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2649, file: !38, line: 346, baseType: !288, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2649, file: !38, line: 347, baseType: !288, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2649, file: !38, line: 348, baseType: !288, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2649, file: !38, line: 349, baseType: !288, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2649, file: !38, line: 350, baseType: !288, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2649, file: !38, line: 351, baseType: !890, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2649, file: !38, line: 353, baseType: !890, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2649, file: !38, line: 354, baseType: !118, size: 32, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2649, file: !38, line: 355, baseType: !118, size: 32, offset: 608)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2649, file: !38, line: 356, baseType: !288, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2649, file: !38, line: 357, baseType: !288, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2649, file: !38, line: 358, baseType: !288, size: 64, offset: 768)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2649, file: !38, line: 359, baseType: !890, size: 64, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2649, file: !38, line: 360, baseType: !118, size: 32, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2616, file: !38, line: 436, baseType: !2668, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!118, !712, !2612, !2648}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2616, file: !38, line: 438, baseType: !2645, size: 64, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2616, file: !38, line: 439, baseType: !2673, size: 64, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!118, !712, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2678)
!2678 = !{!2679, !2680}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2677, file: !38, line: 410, baseType: !7, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2677, file: !38, line: 411, baseType: !2681, size: 1344, offset: 64)
!2681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 1344, elements: !406)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2694}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2682, file: !38, line: 396, baseType: !7, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2682, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2682, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2682, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2682, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2682, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2682, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2682, file: !38, line: 404, baseType: !290, size: 64, offset: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2682, file: !38, line: 405, baseType: !2693, size: 64, offset: 320)
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !117, line: 126, baseType: !288)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2682, file: !38, line: 406, baseType: !2693, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2616, file: !38, line: 440, baseType: !2624, size: 64, offset: 640)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !713, file: !44, line: 1426, baseType: !2697, size: 64, offset: 576)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !713, file: !44, line: 1427, baseType: !119, size: 64, offset: 640)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !713, file: !44, line: 1428, baseType: !119, size: 64, offset: 704)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !713, file: !44, line: 1429, baseType: !119, size: 64, offset: 768)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !713, file: !44, line: 1430, baseType: !508, size: 64, offset: 832)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !713, file: !44, line: 1431, baseType: !880, size: 256, offset: 896)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !713, file: !44, line: 1432, baseType: !118, size: 32, offset: 1152)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !713, file: !44, line: 1433, baseType: !860, size: 32, offset: 1184)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !713, file: !44, line: 1437, baseType: !2708, size: 64, offset: 1216)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2711)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !713, file: !44, line: 1449, baseType: !2713, size: 64, offset: 1280)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !524, line: 34, size: 64, elements: !2714)
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2713, file: !524, line: 35, baseType: !527, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !713, file: !44, line: 1450, baseType: !240, size: 128, offset: 1344)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !713, file: !44, line: 1451, baseType: !2718, size: 64, offset: 1472)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !713, file: !44, line: 1452, baseType: !2029, size: 64, offset: 1536)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !713, file: !44, line: 1453, baseType: !2722, size: 64, offset: 1600)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !713, file: !44, line: 1454, baseType: !752, size: 128, offset: 1664)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !713, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !713, file: !44, line: 1456, baseType: !2727, size: 2432, offset: 1856)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2733, !2765}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2727, file: !38, line: 519, baseType: !7, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2727, file: !38, line: 520, baseType: !880, size: 256, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2727, file: !38, line: 521, baseType: !2732, size: 192, offset: 320)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 192, elements: !406)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2727, file: !38, line: 522, baseType: !2734, size: 1728, offset: 512)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2735, size: 1728, elements: !406)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2736)
!2736 = !{!2737, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2735, file: !38, line: 223, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2740)
!2740 = !{!2741, !2742, !2755, !2756}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2739, file: !38, line: 444, baseType: !118, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2739, file: !38, line: 445, baseType: !2743, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2746)
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2745, file: !38, line: 311, baseType: !798, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2745, file: !38, line: 312, baseType: !798, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2745, file: !38, line: 313, baseType: !798, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2745, file: !38, line: 314, baseType: !798, size: 64, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2745, file: !38, line: 315, baseType: !2537, size: 64, offset: 256)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2745, file: !38, line: 316, baseType: !2537, size: 64, offset: 320)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2745, file: !38, line: 317, baseType: !2537, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2745, file: !38, line: 318, baseType: !2609, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2739, file: !38, line: 446, baseType: !113, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2739, file: !38, line: 447, baseType: !2738, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2735, file: !38, line: 224, baseType: !118, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2735, file: !38, line: 226, baseType: !240, size: 128, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2735, file: !38, line: 227, baseType: !119, size: 64, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2735, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2735, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2735, file: !38, line: 230, baseType: !2573, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2735, file: !38, line: 231, baseType: !2573, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2735, file: !38, line: 232, baseType: !120, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2727, file: !38, line: 523, baseType: !2766, size: 192, offset: 2240)
!2766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 192, elements: !406)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !713, file: !44, line: 1458, baseType: !2768, size: 2112, offset: 4288)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2769)
!2769 = !{!2770, !2771, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2768, file: !44, line: 1411, baseType: !118, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2768, file: !44, line: 1412, baseType: !1587, size: 128, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2768, file: !44, line: 1413, baseType: !2773, size: 1920, offset: 192)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2774, size: 1920, elements: !406)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2775, line: 12, size: 640, elements: !2776)
!2775 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2776 = !{!2777, !2785, !2786, !2791, !2792}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2774, file: !2775, line: 13, baseType: !2778, size: 320)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2779, line: 17, size: 320, elements: !2780)
!2779 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2780 = !{!2781, !2782, !2783, !2784}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2778, file: !2779, line: 18, baseType: !118, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2778, file: !2779, line: 19, baseType: !118, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2778, file: !2779, line: 20, baseType: !1587, size: 128, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2778, file: !2779, line: 22, baseType: !491, size: 128, align: 64, offset: 192)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2774, file: !2775, line: 14, baseType: !203, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2774, file: !2775, line: 15, baseType: !2787, size: 64, offset: 384)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2788, line: 16, size: 64, elements: !2789)
!2788 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2789 = !{!2790}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2787, file: !2788, line: 17, baseType: !1325, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2774, file: !2775, line: 16, baseType: !1587, size: 128, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2774, file: !2775, line: 17, baseType: !860, size: 32, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !713, file: !44, line: 1465, baseType: !120, size: 64, offset: 6400)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !713, file: !44, line: 1468, baseType: !323, size: 32, offset: 6464)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !713, file: !44, line: 1470, baseType: !652, size: 64, offset: 6528)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !713, file: !44, line: 1471, baseType: !652, size: 64, offset: 6592)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !713, file: !44, line: 1473, baseType: !253, size: 32, offset: 6656)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !713, file: !44, line: 1474, baseType: !2799, size: 64, offset: 6720)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !713, file: !44, line: 1477, baseType: !2802, size: 256, offset: 6784)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !2333)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !713, file: !44, line: 1478, baseType: !2804, size: 128, offset: 7040)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2805, line: 18, baseType: !2806)
!2805 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2805, line: 16, size: 128, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2806, file: !2805, line: 17, baseType: !2809, size: 128)
!2809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1841)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !713, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !713, file: !44, line: 1481, baseType: !2812, size: 32, offset: 7200)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !117, line: 150, baseType: !7)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !713, file: !44, line: 1487, baseType: !1282, size: 192, offset: 7232)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !713, file: !44, line: 1493, baseType: !147, size: 64, offset: 7424)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !713, file: !44, line: 1495, baseType: !2816, size: 64, offset: 7488)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2818)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !506, line: 135, size: 1024, align: 512, elements: !2819)
!2819 = !{!2820, !2824, !2825, !2832, !2838, !2842, !2846, !2850, !2851, !2855, !2859, !2864, !2868}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2818, file: !506, line: 136, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!118, !508, !7}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2818, file: !506, line: 137, baseType: !2821, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2818, file: !506, line: 138, baseType: !2826, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!118, !2829, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2818, file: !506, line: 139, baseType: !2833, size: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!118, !2829, !7, !147, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2818, file: !506, line: 141, baseType: !2839, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!118, !2829}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2818, file: !506, line: 142, baseType: !2843, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!118, !508}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2818, file: !506, line: 143, baseType: !2847, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !508}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2818, file: !506, line: 144, baseType: !2847, size: 64, offset: 448)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2818, file: !506, line: 145, baseType: !2852, size: 64, offset: 512)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !508, !547}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2818, file: !506, line: 146, baseType: !2856, size: 64, offset: 576)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!164, !508, !164, !118}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2818, file: !506, line: 147, baseType: !2860, size: 64, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!504, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2818, file: !506, line: 148, baseType: !2865, size: 64, offset: 704)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!118, !662, !227}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2818, file: !506, line: 149, baseType: !2869, size: 64, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!508, !508, !2872}
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !713, file: !44, line: 1500, baseType: !118, size: 32, offset: 7552)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !713, file: !44, line: 1502, baseType: !2876, size: 448, offset: 7616)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2521, line: 60, size: 448, elements: !2877)
!2877 = !{!2878, !2883, !2884, !2885, !2886, !2887, !2888}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2876, file: !2521, line: 61, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!119, !2882, !2519}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2876, file: !2521, line: 63, baseType: !2879, size: 64, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2876, file: !2521, line: 66, baseType: !121, size: 64, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2876, file: !2521, line: 67, baseType: !118, size: 32, offset: 192)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2876, file: !2521, line: 68, baseType: !7, size: 32, offset: 224)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2876, file: !2521, line: 71, baseType: !240, size: 128, offset: 256)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2876, file: !2521, line: 77, baseType: !2889, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !713, file: !44, line: 1505, baseType: !884, size: 64, offset: 8064)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !713, file: !44, line: 1508, baseType: !884, size: 64, offset: 8128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !713, file: !44, line: 1511, baseType: !118, size: 32, offset: 8192)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !713, file: !44, line: 1514, baseType: !1020, size: 32, offset: 8224)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !713, file: !44, line: 1517, baseType: !2895, size: 64, offset: 8256)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2064, line: 18, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !713, file: !44, line: 1518, baseType: !748, size: 64, offset: 8320)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !713, file: !44, line: 1525, baseType: !1819, size: 64, offset: 8384)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !713, file: !44, line: 1532, baseType: !2900, size: 64, offset: 8448)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2901, line: 52, size: 64, elements: !2902)
!2901 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2902 = !{!2903}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2900, file: !2901, line: 53, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2901, line: 40, size: 256, elements: !2906)
!2906 = !{!2907, !2908, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2905, file: !2901, line: 42, baseType: !365)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2905, file: !2901, line: 44, baseType: !2909, size: 192)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2901, line: 28, size: 192, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2909, file: !2901, line: 29, baseType: !240, size: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2909, file: !2901, line: 31, baseType: !121, size: 64, offset: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2905, file: !2901, line: 49, baseType: !121, size: 64, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !713, file: !44, line: 1533, baseType: !2900, size: 64, offset: 8512)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !713, file: !44, line: 1534, baseType: !491, size: 128, align: 64, offset: 8576)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !713, file: !44, line: 1535, baseType: !2063, size: 256, offset: 8704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !713, file: !44, line: 1537, baseType: !1282, size: 192, offset: 8960)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !713, file: !44, line: 1542, baseType: !118, size: 32, offset: 9152)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !713, file: !44, line: 1545, baseType: !365, offset: 9184)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !713, file: !44, line: 1546, baseType: !240, size: 128, offset: 9216)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !713, file: !44, line: 1548, baseType: !365, offset: 9344)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !713, file: !44, line: 1549, baseType: !240, size: 128, offset: 9344)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !548, file: !44, line: 624, baseType: !847, size: 64, offset: 256)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !548, file: !44, line: 631, baseType: !119, size: 64, offset: 320)
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !44, line: 639, baseType: !2926, size: 32, offset: 384)
!2926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !44, line: 639, size: 32, elements: !2927)
!2927 = !{!2928, !2930}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2926, file: !44, line: 640, baseType: !2929, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2926, file: !44, line: 641, baseType: !7, size: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !548, file: !44, line: 643, baseType: !626, size: 32, offset: 416)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !548, file: !44, line: 644, baseType: !644, size: 64, offset: 448)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !548, file: !44, line: 645, baseType: !648, size: 128, offset: 512)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !548, file: !44, line: 646, baseType: !648, size: 128, offset: 640)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !548, file: !44, line: 647, baseType: !648, size: 128, offset: 768)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !548, file: !44, line: 648, baseType: !365, offset: 896)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !548, file: !44, line: 649, baseType: !175, size: 16, offset: 896)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !548, file: !44, line: 650, baseType: !181, size: 8, offset: 912)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !548, file: !44, line: 651, baseType: !181, size: 8, offset: 920)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !548, file: !44, line: 652, baseType: !2693, size: 64, offset: 960)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !548, file: !44, line: 659, baseType: !119, size: 64, offset: 1024)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !548, file: !44, line: 660, baseType: !880, size: 256, offset: 1088)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !548, file: !44, line: 662, baseType: !119, size: 64, offset: 1344)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !548, file: !44, line: 663, baseType: !119, size: 64, offset: 1408)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !548, file: !44, line: 665, baseType: !752, size: 128, offset: 1472)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !548, file: !44, line: 666, baseType: !240, size: 128, offset: 1600)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !548, file: !44, line: 675, baseType: !240, size: 128, offset: 1728)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !548, file: !44, line: 676, baseType: !240, size: 128, offset: 1856)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !548, file: !44, line: 677, baseType: !240, size: 128, offset: 1984)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !44, line: 678, baseType: !2951, size: 128, offset: 2112)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !44, line: 678, size: 128, elements: !2952)
!2952 = !{!2953, !2954}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2951, file: !44, line: 679, baseType: !748, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2951, file: !44, line: 680, baseType: !491, size: 128, align: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !548, file: !44, line: 682, baseType: !886, size: 64, offset: 2240)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !548, file: !44, line: 683, baseType: !886, size: 64, offset: 2304)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !548, file: !44, line: 684, baseType: !860, size: 32, offset: 2368)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !548, file: !44, line: 685, baseType: !860, size: 32, offset: 2400)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !548, file: !44, line: 686, baseType: !860, size: 32, offset: 2432)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !548, file: !44, line: 688, baseType: !860, size: 32, offset: 2464)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !44, line: 690, baseType: !2962, size: 64, offset: 2496)
!2962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !44, line: 690, size: 64, elements: !2963)
!2963 = !{!2964, !3187}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2962, file: !44, line: 691, baseType: !2965, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2968)
!2968 = !{!2969, !2970, !2974, !2979, !2983, !2984, !2985, !2989, !3002, !3003, !3011, !3015, !3016, !3020, !3021, !3025, !3030, !3031, !3035, !3039, !3147, !3151, !3152, !3156, !3157, !3161, !3165, !3170, !3174, !3178, !3182, !3186}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2967, file: !44, line: 1823, baseType: !113, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2967, file: !44, line: 1824, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!644, !478, !644, !118}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2967, file: !44, line: 1825, baseType: !2975, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!434, !478, !164, !448, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2967, file: !44, line: 1826, baseType: !2980, size: 64, offset: 192)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!434, !478, !147, !448, !2978}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2967, file: !44, line: 1827, baseType: !957, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2967, file: !44, line: 1828, baseType: !957, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2967, file: !44, line: 1829, baseType: !2986, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!118, !960, !227}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2967, file: !44, line: 1830, baseType: !2990, size: 64, offset: 448)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!118, !478, !2993}
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2995)
!2995 = !{!2996, !3001}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2994, file: !44, line: 1777, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2998)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!118, !2993, !147, !118, !644, !288, !7}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2994, file: !44, line: 1778, baseType: !644, size: 64, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2967, file: !44, line: 1831, baseType: !2990, size: 64, offset: 512)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2967, file: !44, line: 1832, baseType: !3004, size: 64, offset: 576)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!3007, !478, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3008, line: 52, baseType: !7)
!3008 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !732, line: 27, flags: DIFlagFwdDecl)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2967, file: !44, line: 1833, baseType: !3012, size: 64, offset: 640)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!121, !478, !7, !119}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2967, file: !44, line: 1834, baseType: !3012, size: 64, offset: 704)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2967, file: !44, line: 1835, baseType: !3017, size: 64, offset: 768)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!118, !478, !1092}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2967, file: !44, line: 1836, baseType: !119, size: 64, offset: 832)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2967, file: !44, line: 1837, baseType: !3022, size: 64, offset: 896)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!118, !547, !478}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2967, file: !44, line: 1838, baseType: !3026, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!118, !478, !3029}
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !120)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2967, file: !44, line: 1839, baseType: !3022, size: 64, offset: 1024)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2967, file: !44, line: 1840, baseType: !3032, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!118, !478, !644, !644, !118}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2967, file: !44, line: 1841, baseType: !3036, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!118, !118, !478, !118}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2967, file: !44, line: 1842, baseType: !3040, size: 64, offset: 1216)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!118, !478, !118, !3043}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3045)
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3077, !3078, !3079, !3092, !3123}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3044, file: !44, line: 1063, baseType: !3043, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3044, file: !44, line: 1064, baseType: !240, size: 128, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3044, file: !44, line: 1065, baseType: !752, size: 128, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3044, file: !44, line: 1066, baseType: !240, size: 128, offset: 320)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3044, file: !44, line: 1069, baseType: !240, size: 128, offset: 448)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3044, file: !44, line: 1072, baseType: !3029, size: 64, offset: 576)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3044, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3044, file: !44, line: 1074, baseType: !183, size: 8, offset: 672)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3044, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3044, file: !44, line: 1076, baseType: !118, size: 32, offset: 736)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3044, file: !44, line: 1077, baseType: !1587, size: 128, offset: 768)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3044, file: !44, line: 1078, baseType: !478, size: 64, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3044, file: !44, line: 1079, baseType: !644, size: 64, offset: 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3044, file: !44, line: 1080, baseType: !644, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3044, file: !44, line: 1082, baseType: !3061, size: 64, offset: 1088)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3063)
!3063 = !{!3064, !3072, !3073, !3074, !3075, !3076}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3062, file: !44, line: 1315, baseType: !3065)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3066, line: 20, baseType: !3067)
!3066 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3066, line: 11, elements: !3068)
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3067, file: !3066, line: 12, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !377, line: 33, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 31, elements: !379)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3062, file: !44, line: 1316, baseType: !118, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3062, file: !44, line: 1317, baseType: !118, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3062, file: !44, line: 1318, baseType: !3061, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3062, file: !44, line: 1319, baseType: !478, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3062, file: !44, line: 1320, baseType: !491, size: 128, align: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3044, file: !44, line: 1084, baseType: !119, size: 64, offset: 1152)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3044, file: !44, line: 1085, baseType: !119, size: 64, offset: 1216)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3044, file: !44, line: 1087, baseType: !3080, size: 64, offset: 1280)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3083)
!3083 = !{!3084, !3088}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3082, file: !44, line: 1012, baseType: !3085, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !3043, !3043}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3082, file: !44, line: 1013, baseType: !3089, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3043}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3044, file: !44, line: 1088, baseType: !3093, size: 64, offset: 1344)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3096)
!3096 = !{!3097, !3101, !3105, !3106, !3110, !3114, !3118, !3122}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3095, file: !44, line: 1017, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!3029, !3029}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3095, file: !44, line: 1018, baseType: !3102, size: 64, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3029}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3095, file: !44, line: 1019, baseType: !3089, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3095, file: !44, line: 1020, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!118, !3043, !118}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3095, file: !44, line: 1021, baseType: !3111, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!227, !3043}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3095, file: !44, line: 1022, baseType: !3115, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!118, !3043, !118, !243}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3095, file: !44, line: 1023, baseType: !3119, size: 64, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{null, !3043, !934}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3095, file: !44, line: 1024, baseType: !3111, size: 64, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3044, file: !44, line: 1097, baseType: !3124, size: 256, offset: 1408)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3044, file: !44, line: 1089, size: 256, elements: !3125)
!3125 = !{!3126, !3135, !3141}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3124, file: !44, line: 1090, baseType: !3127, size: 256)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3128, line: 10, size: 256, elements: !3129)
!3128 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3129 = !{!3130, !3131, !3134}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3127, file: !3128, line: 11, baseType: !323, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3127, file: !3128, line: 12, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3128, line: 5, flags: DIFlagFwdDecl)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3127, file: !3128, line: 13, baseType: !240, size: 128, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3124, file: !44, line: 1091, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3128, line: 17, size: 64, elements: !3137)
!3137 = !{!3138}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3136, file: !3128, line: 18, baseType: !3139, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3128, line: 16, flags: DIFlagFwdDecl)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3124, file: !44, line: 1096, baseType: !3142, size: 192)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !44, line: 1092, size: 192, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3142, file: !44, line: 1093, baseType: !240, size: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3142, file: !44, line: 1094, baseType: !118, size: 32, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3142, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2967, file: !44, line: 1843, baseType: !3148, size: 64, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!434, !478, !834, !118, !448, !2978, !118}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2967, file: !44, line: 1844, baseType: !1212, size: 64, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2967, file: !44, line: 1845, baseType: !3153, size: 64, offset: 1408)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!118, !118}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2967, file: !44, line: 1846, baseType: !3040, size: 64, offset: 1472)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2967, file: !44, line: 1847, baseType: !3158, size: 64, offset: 1536)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!434, !2204, !478, !2978, !448, !7}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2967, file: !44, line: 1848, baseType: !3162, size: 64, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!434, !478, !2978, !2204, !448, !7}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2967, file: !44, line: 1849, baseType: !3166, size: 64, offset: 1664)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!118, !478, !121, !3169, !934}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2967, file: !44, line: 1850, baseType: !3171, size: 64, offset: 1728)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!121, !478, !118, !644, !644}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2967, file: !44, line: 1852, baseType: !3175, size: 64, offset: 1792)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !824, !478}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2967, file: !44, line: 1856, baseType: !3179, size: 64, offset: 1856)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!434, !478, !644, !478, !644, !448, !7}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2967, file: !44, line: 1858, baseType: !3183, size: 64, offset: 1920)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!644, !478, !644, !478, !644, !644, !7}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2967, file: !44, line: 1861, baseType: !3032, size: 64, offset: 1984)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2962, file: !44, line: 692, baseType: !777, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !548, file: !44, line: 694, baseType: !3189, size: 64, offset: 2560)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3190, file: !44, line: 1101, baseType: !365)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3190, file: !44, line: 1102, baseType: !240, size: 128)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3190, file: !44, line: 1103, baseType: !240, size: 128, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3190, file: !44, line: 1104, baseType: !240, size: 128, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !548, file: !44, line: 695, baseType: !848, size: 1216, align: 64, offset: 2624)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !548, file: !44, line: 696, baseType: !240, size: 128, offset: 3840)
!3198 = !DIDerivedType(tag: DW_TAG_member, scope: !548, file: !44, line: 697, baseType: !3199, size: 64, offset: 3968)
!3199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !548, file: !44, line: 697, size: 64, elements: !3200)
!3200 = !{!3201, !3202, !3203, !3206, !3207}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3199, file: !44, line: 698, baseType: !2204, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3199, file: !44, line: 699, baseType: !2718, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3199, file: !44, line: 700, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3199, file: !44, line: 701, baseType: !164, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3199, file: !44, line: 702, baseType: !7, size: 32)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !548, file: !44, line: 705, baseType: !253, size: 32, offset: 4032)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !548, file: !44, line: 708, baseType: !253, size: 32, offset: 4064)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !548, file: !44, line: 709, baseType: !2799, size: 64, offset: 4096)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !548, file: !44, line: 720, baseType: !120, size: 64, offset: 4160)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !509, file: !506, line: 98, baseType: !3213, size: 256, offset: 448)
!3213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !2333)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !509, file: !506, line: 101, baseType: !3215, size: 32, offset: 704)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3216, line: 25, size: 32, elements: !3217)
!3216 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3217 = !{!3218}
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !3215, file: !3216, line: 26, baseType: !3219, size: 32)
!3219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3215, file: !3216, line: 26, size: 32, elements: !3220)
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3219, file: !3216, line: 30, baseType: !3222, size: 32)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !3216, line: 30, size: 32, elements: !3223)
!3223 = !{!3224, !3225}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3222, file: !3216, line: 31, baseType: !365)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3222, file: !3216, line: 32, baseType: !118, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !509, file: !506, line: 102, baseType: !2816, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !509, file: !506, line: 103, baseType: !712, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !509, file: !506, line: 104, baseType: !119, size: 64, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !509, file: !506, line: 105, baseType: !120, size: 64, offset: 960)
!3230 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !506, line: 107, baseType: !3231, size: 128, offset: 1024)
!3231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !506, line: 107, size: 128, elements: !3232)
!3232 = !{!3233, !3234}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3231, file: !506, line: 108, baseType: !240, size: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3231, file: !506, line: 109, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !509, file: !506, line: 111, baseType: !240, size: 128, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !509, file: !506, line: 112, baseType: !240, size: 128, offset: 1280)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !509, file: !506, line: 120, baseType: !3239, size: 128, offset: 1408)
!3239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !506, line: 116, size: 128, elements: !3240)
!3240 = !{!3241, !3242, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3239, file: !506, line: 117, baseType: !752, size: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3239, file: !506, line: 118, baseType: !523, size: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3239, file: !506, line: 119, baseType: !491, size: 128, align: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !479, file: !44, line: 922, baseType: !547, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !479, file: !44, line: 923, baseType: !2965, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !479, file: !44, line: 929, baseType: !365, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !479, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !479, file: !44, line: 931, baseType: !884, size: 64, offset: 448)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !479, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !479, file: !44, line: 933, baseType: !2812, size: 32, offset: 544)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !479, file: !44, line: 934, baseType: !1282, size: 192, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !479, file: !44, line: 935, baseType: !644, size: 64, offset: 768)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !479, file: !44, line: 936, baseType: !3254, size: 192, offset: 832)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3255)
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3254, file: !44, line: 886, baseType: !3065)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3254, file: !44, line: 887, baseType: !1577, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3254, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3254, file: !44, line: 889, baseType: !553, size: 32, offset: 96)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3254, file: !44, line: 889, baseType: !553, size: 32, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3254, file: !44, line: 890, baseType: !118, size: 32, offset: 160)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !479, file: !44, line: 937, baseType: !1653, size: 64, offset: 1024)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !479, file: !44, line: 938, baseType: !3264, size: 256, offset: 1088)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3264, file: !44, line: 897, baseType: !119, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3264, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3264, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3264, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3264, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3264, file: !44, line: 904, baseType: !644, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !479, file: !44, line: 940, baseType: !288, size: 64, offset: 1344)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !479, file: !44, line: 945, baseType: !120, size: 64, offset: 1408)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !479, file: !44, line: 949, baseType: !240, size: 128, offset: 1472)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !479, file: !44, line: 950, baseType: !240, size: 128, offset: 1600)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !479, file: !44, line: 952, baseType: !847, size: 64, offset: 1728)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !479, file: !44, line: 953, baseType: !1020, size: 32, offset: 1792)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !479, file: !44, line: 954, baseType: !1020, size: 32, offset: 1824)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !469, file: !428, line: 174, baseType: !475, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !469, file: !428, line: 176, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!118, !478, !358, !468, !1092}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !457, file: !428, line: 90, baseType: !452, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !457, file: !428, line: 91, baseType: !3286, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !418, file: !353, line: 143, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!3291, !358}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3300, !3304, !3310, !3314}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3293, file: !61, line: 40, baseType: !60, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3293, file: !61, line: 41, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!227}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3293, file: !61, line: 42, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!120}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3293, file: !61, line: 43, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!2232, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3293, file: !61, line: 44, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2232}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3293, file: !61, line: 45, baseType: !166, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !418, file: !353, line: 144, baseType: !3316, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!2232, !358}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !418, file: !353, line: 145, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !358, !3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !352, file: !353, line: 70, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !732, line: 123, size: 1024, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3457, !3458, !3459, !3460, !3461}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3327, file: !732, line: 124, baseType: !860, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3327, file: !732, line: 125, baseType: !860, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3327, file: !732, line: 135, baseType: !3326, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3327, file: !732, line: 136, baseType: !147, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3327, file: !732, line: 138, baseType: !873, size: 192, align: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3327, file: !732, line: 140, baseType: !2232, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3327, file: !732, line: 141, baseType: !7, size: 32, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !732, line: 142, baseType: !3337, size: 256, offset: 512)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !732, line: 142, size: 256, elements: !3338)
!3338 = !{!3339, !3385, !3389}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3337, file: !732, line: 143, baseType: !3340, size: 192)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !732, line: 91, size: 192, elements: !3341)
!3341 = !{!3342, !3343, !3344}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3340, file: !732, line: 92, baseType: !119, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3340, file: !732, line: 94, baseType: !869, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3340, file: !732, line: 100, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !732, line: 180, size: 704, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3357, !3358, !3359, !3383, !3384}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3346, file: !732, line: 182, baseType: !3326, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3346, file: !732, line: 183, baseType: !7, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3346, file: !732, line: 186, baseType: !3351, size: 192, offset: 128)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3352, line: 19, size: 192, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3351, file: !3352, line: 20, baseType: !852, size: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3351, file: !3352, line: 21, baseType: !7, size: 32, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3351, file: !3352, line: 22, baseType: !7, size: 32, offset: 160)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3346, file: !732, line: 187, baseType: !323, size: 32, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3346, file: !732, line: 188, baseType: !323, size: 32, offset: 352)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3346, file: !732, line: 189, baseType: !3360, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !732, line: 168, size: 320, elements: !3362)
!3362 = !{!3363, !3367, !3371, !3375, !3379}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3361, file: !732, line: 169, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!118, !824, !3345}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3361, file: !732, line: 171, baseType: !3368, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!118, !3326, !147, !443}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3361, file: !732, line: 173, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!118, !3326}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3361, file: !732, line: 174, baseType: !3376, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!118, !3326, !3326, !147}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3361, file: !732, line: 176, baseType: !3380, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!118, !824, !3326, !3345}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3346, file: !732, line: 192, baseType: !240, size: 128, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3346, file: !732, line: 194, baseType: !1587, size: 128, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3337, file: !732, line: 144, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !732, line: 103, size: 64, elements: !3387)
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3386, file: !732, line: 104, baseType: !3326, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3337, file: !732, line: 145, baseType: !3390, size: 256)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !732, line: 107, size: 256, elements: !3391)
!3391 = !{!3392, !3452, !3455, !3456}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3390, file: !732, line: 108, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !732, line: 217, size: 768, elements: !3396)
!3396 = !{!3397, !3417, !3421, !3425, !3429, !3433, !3437, !3441, !3442, !3443, !3444, !3448}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3395, file: !732, line: 222, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!118, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !732, line: 197, size: 1088, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3402, file: !732, line: 199, baseType: !3326, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3402, file: !732, line: 200, baseType: !478, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3402, file: !732, line: 201, baseType: !824, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3402, file: !732, line: 202, baseType: !120, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3402, file: !732, line: 205, baseType: !1282, size: 192, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3402, file: !732, line: 206, baseType: !1282, size: 192, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3402, file: !732, line: 207, baseType: !118, size: 32, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3402, file: !732, line: 208, baseType: !240, size: 128, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3402, file: !732, line: 209, baseType: !164, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3402, file: !732, line: 211, baseType: !448, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3402, file: !732, line: 212, baseType: !227, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3402, file: !732, line: 213, baseType: !227, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3402, file: !732, line: 214, baseType: !1120, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3395, file: !732, line: 223, baseType: !3418, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3401}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3395, file: !732, line: 236, baseType: !3422, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!118, !824, !120}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3395, file: !732, line: 238, baseType: !3426, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!120, !824, !2978}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3395, file: !732, line: 239, baseType: !3430, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!120, !824, !120, !2978}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3395, file: !732, line: 240, baseType: !3434, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{null, !824, !120}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3395, file: !732, line: 242, baseType: !3438, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!434, !3401, !164, !448, !644}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3395, file: !732, line: 252, baseType: !448, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3395, file: !732, line: 259, baseType: !227, size: 8, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3395, file: !732, line: 260, baseType: !3438, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3395, file: !732, line: 263, baseType: !3445, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!3007, !3401, !3009}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3395, file: !732, line: 266, baseType: !3449, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!118, !3401, !1092}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3390, file: !732, line: 109, baseType: !3453, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !732, line: 31, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !732, line: 110, baseType: !644, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3390, file: !732, line: 111, baseType: !3326, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3327, file: !732, line: 148, baseType: !120, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3327, file: !732, line: 154, baseType: !288, size: 64, offset: 832)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !732, line: 156, baseType: !175, size: 16, offset: 896)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3327, file: !732, line: 157, baseType: !443, size: 16, offset: 912)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3327, file: !732, line: 158, baseType: !3462, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !732, line: 32, flags: DIFlagFwdDecl)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !352, file: !353, line: 71, baseType: !3465, size: 32, offset: 448)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3466, line: 19, size: 32, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3467 = !{!3468}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3465, file: !3466, line: 20, baseType: !1339, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !352, file: !353, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !352, file: !353, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !352, file: !353, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !352, file: !353, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !352, file: !353, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !349, file: !73, line: 463, baseType: !348, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !349, file: !73, line: 465, baseType: !3476, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !349, file: !73, line: 467, baseType: !147, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !73, line: 468, baseType: !3480, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3490, !3495, !3499}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !73, line: 88, baseType: !147, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !73, line: 89, baseType: !454, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3482, file: !73, line: 90, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!118, !348, !401}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3482, file: !73, line: 91, baseType: !3491, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!164, !348, !3494, !3323, !3324}
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3482, file: !73, line: 93, baseType: !3496, size: 64, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{null, !348}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !73, line: 95, baseType: !3500, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3502)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3503)
!3503 = !{!3504, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3502, file: !80, line: 279, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!118, !348}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3502, file: !80, line: 280, baseType: !3496, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3502, file: !80, line: 281, baseType: !3505, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3502, file: !80, line: 282, baseType: !3505, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3502, file: !80, line: 283, baseType: !3505, size: 64, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3502, file: !80, line: 284, baseType: !3505, size: 64, offset: 320)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3502, file: !80, line: 285, baseType: !3505, size: 64, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3502, file: !80, line: 286, baseType: !3505, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3502, file: !80, line: 287, baseType: !3505, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3502, file: !80, line: 288, baseType: !3505, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3502, file: !80, line: 289, baseType: !3505, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3502, file: !80, line: 290, baseType: !3505, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3502, file: !80, line: 291, baseType: !3505, size: 64, offset: 768)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3502, file: !80, line: 292, baseType: !3505, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3502, file: !80, line: 293, baseType: !3505, size: 64, offset: 896)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3502, file: !80, line: 294, baseType: !3505, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3502, file: !80, line: 295, baseType: !3505, size: 64, offset: 1024)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3502, file: !80, line: 296, baseType: !3505, size: 64, offset: 1088)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3502, file: !80, line: 297, baseType: !3505, size: 64, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3502, file: !80, line: 298, baseType: !3505, size: 64, offset: 1216)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3502, file: !80, line: 299, baseType: !3505, size: 64, offset: 1280)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3502, file: !80, line: 300, baseType: !3505, size: 64, offset: 1344)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3502, file: !80, line: 301, baseType: !3505, size: 64, offset: 1408)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !349, file: !73, line: 470, baseType: !3531, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3533, line: 82, size: 1408, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3540, !3541, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3614, !3617, !3618}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !3533, line: 83, baseType: !147, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3532, file: !3533, line: 84, baseType: !147, size: 64, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3532, file: !3533, line: 85, baseType: !348, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3532, file: !3533, line: 86, baseType: !454, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3532, file: !3533, line: 87, baseType: !454, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3532, file: !3533, line: 88, baseType: !454, size: 64, offset: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3532, file: !3533, line: 90, baseType: !3542, size: 64, offset: 384)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!118, !348, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3566, !3578, !3579, !3580, !3581, !3582, !3590, !3591, !3592, !3593, !3594, !3595}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3546, file: !67, line: 96, baseType: !147, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3546, file: !67, line: 97, baseType: !3531, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3546, file: !67, line: 99, baseType: !113, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3546, file: !67, line: 100, baseType: !147, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3546, file: !67, line: 102, baseType: !227, size: 8, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3546, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3546, file: !67, line: 105, baseType: !3555, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3557)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !250, line: 262, size: 1600, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3565}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !250, line: 263, baseType: !2802, size: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3557, file: !250, line: 264, baseType: !2802, size: 256, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3557, file: !250, line: 265, baseType: !3562, size: 1024, offset: 512)
!3562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !3563)
!3563 = !{!3564}
!3564 = !DISubrange(count: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3557, file: !250, line: 266, baseType: !2232, size: 64, offset: 1536)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3546, file: !67, line: 106, baseType: !3567, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3569)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !250, line: 210, size: 256, elements: !3570)
!3570 = !{!3571, !3575, !3576, !3577}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3569, file: !250, line: 211, baseType: !3572, size: 72)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 72, elements: !3573)
!3573 = !{!3574}
!3574 = !DISubrange(count: 9)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3569, file: !250, line: 212, baseType: !260, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3569, file: !250, line: 213, baseType: !253, size: 32, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3569, file: !250, line: 214, baseType: !253, size: 32, offset: 224)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3546, file: !67, line: 108, baseType: !3505, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3546, file: !67, line: 109, baseType: !3496, size: 64, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3546, file: !67, line: 110, baseType: !3505, size: 64, offset: 576)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3546, file: !67, line: 111, baseType: !3496, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3546, file: !67, line: 112, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!118, !348, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3587)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3588)
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3587, file: !80, line: 51, baseType: !118, size: 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3546, file: !67, line: 113, baseType: !3505, size: 64, offset: 768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3546, file: !67, line: 114, baseType: !454, size: 64, offset: 832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3546, file: !67, line: 115, baseType: !454, size: 64, offset: 896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3546, file: !67, line: 117, baseType: !3500, size: 64, offset: 960)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3546, file: !67, line: 118, baseType: !3496, size: 64, offset: 1024)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3546, file: !67, line: 120, baseType: !3596, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3532, file: !3533, line: 91, baseType: !3487, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3532, file: !3533, line: 92, baseType: !3505, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3532, file: !3533, line: 93, baseType: !3496, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3532, file: !3533, line: 94, baseType: !3505, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3532, file: !3533, line: 95, baseType: !3496, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3532, file: !3533, line: 97, baseType: !3505, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3532, file: !3533, line: 98, baseType: !3505, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3532, file: !3533, line: 100, baseType: !3583, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3532, file: !3533, line: 101, baseType: !3505, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3532, file: !3533, line: 103, baseType: !3505, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3532, file: !3533, line: 105, baseType: !3505, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3532, file: !3533, line: 107, baseType: !3500, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3532, file: !3533, line: 109, baseType: !3611, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3613)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3533, line: 109, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3532, file: !3533, line: 111, baseType: !3615, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3533, line: 111, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3532, file: !3533, line: 112, baseType: !758, offset: 1344)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3532, file: !3533, line: 114, baseType: !227, size: 8, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !349, file: !73, line: 471, baseType: !3545, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !349, file: !73, line: 473, baseType: !120, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !349, file: !73, line: 475, baseType: !120, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !349, file: !73, line: 480, baseType: !1282, size: 192, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !349, file: !73, line: 484, baseType: !3624, size: 576, offset: 1216)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3624, file: !73, line: 362, baseType: !240, size: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3624, file: !73, line: 363, baseType: !240, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3624, file: !73, line: 364, baseType: !240, size: 128, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3624, file: !73, line: 365, baseType: !240, size: 128, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3624, file: !73, line: 366, baseType: !227, size: 8, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3624, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !349, file: !73, line: 485, baseType: !3633, size: 2304, offset: 1792)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3730, !3734}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3633, file: !80, line: 566, baseType: !3586, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3633, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3633, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3633, file: !80, line: 569, baseType: !227, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3633, file: !80, line: 570, baseType: !227, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3633, file: !80, line: 571, baseType: !227, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3633, file: !80, line: 572, baseType: !227, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3633, file: !80, line: 573, baseType: !227, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3633, file: !80, line: 574, baseType: !227, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3633, file: !80, line: 575, baseType: !227, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3633, file: !80, line: 576, baseType: !227, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3633, file: !80, line: 577, baseType: !323, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3633, file: !80, line: 578, baseType: !365, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3633, file: !80, line: 580, baseType: !240, size: 128, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3633, file: !80, line: 581, baseType: !1608, size: 192, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3633, file: !80, line: 582, baseType: !3651, size: 64, offset: 448)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3653, line: 43, size: 1472, elements: !3654)
!3653 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3654 = !{!3655, !3656, !3657, !3658, !3659, !3662, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3652, file: !3653, line: 44, baseType: !147, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !3653, line: 45, baseType: !118, size: 32, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3652, file: !3653, line: 46, baseType: !240, size: 128, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3653, line: 47, baseType: !365, offset: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3652, file: !3653, line: 48, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3652, file: !3653, line: 49, baseType: !3663, size: 320, offset: 320)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3664, line: 11, size: 320, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !{!3666, !3667, !3668, !3673}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3663, file: !3664, line: 16, baseType: !752, size: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3663, file: !3664, line: 17, baseType: !119, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3663, file: !3664, line: 18, baseType: !3669, size: 64, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3672}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 19, baseType: !323, size: 32, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3652, file: !3653, line: 50, baseType: !119, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3652, file: !3653, line: 51, baseType: !1409, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3652, file: !3653, line: 52, baseType: !1409, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3652, file: !3653, line: 53, baseType: !1409, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3652, file: !3653, line: 54, baseType: !1409, size: 64, offset: 896)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3652, file: !3653, line: 55, baseType: !1409, size: 64, offset: 960)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3652, file: !3653, line: 56, baseType: !119, size: 64, offset: 1024)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3652, file: !3653, line: 57, baseType: !119, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3652, file: !3653, line: 58, baseType: !119, size: 64, offset: 1152)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3652, file: !3653, line: 59, baseType: !119, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3652, file: !3653, line: 60, baseType: !119, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3652, file: !3653, line: 61, baseType: !348, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3652, file: !3653, line: 62, baseType: !227, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3652, file: !3653, line: 63, baseType: !227, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3633, file: !80, line: 583, baseType: !227, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3633, file: !80, line: 584, baseType: !227, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3633, file: !80, line: 585, baseType: !227, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3633, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3633, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3633, file: !80, line: 592, baseType: !1401, size: 512, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3633, file: !80, line: 593, baseType: !288, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3633, file: !80, line: 594, baseType: !2063, size: 256, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3633, file: !80, line: 595, baseType: !1587, size: 128, offset: 1408)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3633, file: !80, line: 596, baseType: !3660, size: 64, offset: 1536)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3633, file: !80, line: 597, baseType: !860, size: 32, offset: 1600)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3633, file: !80, line: 598, baseType: !860, size: 32, offset: 1632)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3633, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3633, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3633, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3633, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3633, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3633, file: !80, line: 604, baseType: !227, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3633, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3633, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3633, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3633, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3633, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3633, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3633, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3633, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3633, file: !80, line: 613, baseType: !118, size: 32, offset: 1792)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3633, file: !80, line: 614, baseType: !118, size: 32, offset: 1824)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3633, file: !80, line: 615, baseType: !288, size: 64, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3633, file: !80, line: 616, baseType: !288, size: 64, offset: 1920)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3633, file: !80, line: 617, baseType: !288, size: 64, offset: 1984)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3633, file: !80, line: 618, baseType: !288, size: 64, offset: 2048)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3633, file: !80, line: 620, baseType: !3721, size: 64, offset: 2112)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3727}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !80, line: 537, baseType: !365)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3722, file: !80, line: 538, baseType: !7, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3722, file: !80, line: 540, baseType: !240, size: 128, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3722, file: !80, line: 543, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3633, file: !80, line: 621, baseType: !3731, size: 64, offset: 2176)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{null, !348, !1550}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3633, file: !80, line: 622, baseType: !3735, size: 64, offset: 2240)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !349, file: !73, line: 486, baseType: !3738, size: 64, offset: 4096)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3747, !3748, !3749}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !80, line: 643, baseType: !3502, size: 1472)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3739, file: !80, line: 644, baseType: !3505, size: 64, offset: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3739, file: !80, line: 645, baseType: !3744, size: 64, offset: 1536)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !348, !227}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3739, file: !80, line: 646, baseType: !3505, size: 64, offset: 1600)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3739, file: !80, line: 647, baseType: !3496, size: 64, offset: 1664)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3739, file: !80, line: 648, baseType: !3496, size: 64, offset: 1728)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !349, file: !73, line: 493, baseType: !3751, size: 64, offset: 4160)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !349, file: !73, line: 499, baseType: !240, size: 128, offset: 4224)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !349, file: !73, line: 502, baseType: !3755, size: 64, offset: 4352)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !349, file: !73, line: 504, baseType: !3759, size: 64, offset: 4416)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !349, file: !73, line: 505, baseType: !288, size: 64, offset: 4480)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !349, file: !73, line: 510, baseType: !288, size: 64, offset: 4544)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !349, file: !73, line: 511, baseType: !3763, size: 64, offset: 4608)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3765)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !349, file: !73, line: 513, baseType: !3767, size: 64, offset: 4672)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3769)
!3769 = !{!3770, !3771}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3768, file: !73, line: 293, baseType: !7, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3768, file: !73, line: 294, baseType: !119, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !349, file: !73, line: 515, baseType: !240, size: 128, offset: 4736)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !349, file: !73, line: 526, baseType: !3774, offset: 4864)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3775, line: 5, elements: !379)
!3775 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !349, file: !73, line: 528, baseType: !3777, size: 64, offset: 4864)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3779, line: 14, flags: DIFlagFwdDecl)
!3779 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !349, file: !73, line: 529, baseType: !3781, size: 64, offset: 4928)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3783, line: 17, size: 192, elements: !3784)
!3783 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3784 = !{!3785, !3786, !3869}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3782, file: !3783, line: 18, baseType: !3781, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3782, file: !3783, line: 19, baseType: !3787, size: 64, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3789)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3783, line: 110, size: 1152, elements: !3790)
!3790 = !{!3791, !3795, !3799, !3805, !3811, !3815, !3819, !3824, !3828, !3829, !3833, !3837, !3841, !3852, !3853, !3854, !3855, !3865}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3789, file: !3783, line: 111, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3781, !3781}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3789, file: !3783, line: 112, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !3781}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3789, file: !3783, line: 113, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!227, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3789, file: !3783, line: 114, baseType: !3806, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!2232, !3803, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3789, file: !3783, line: 116, baseType: !3812, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!227, !3803, !147}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3789, file: !3783, line: 118, baseType: !3816, size: 64, offset: 320)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!118, !3803, !147, !7, !120, !448}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3789, file: !3783, line: 123, baseType: !3820, size: 64, offset: 384)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!118, !3803, !147, !3823, !448}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3789, file: !3783, line: 126, baseType: !3825, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!147, !3803}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3789, file: !3783, line: 127, baseType: !3825, size: 64, offset: 512)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3789, file: !3783, line: 128, baseType: !3830, size: 64, offset: 576)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!3781, !3803}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3789, file: !3783, line: 130, baseType: !3834, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!3781, !3803, !3781}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3789, file: !3783, line: 133, baseType: !3838, size: 64, offset: 704)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3781, !3803, !147}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3789, file: !3783, line: 135, baseType: !3842, size: 64, offset: 768)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!118, !3803, !147, !147, !7, !7, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3783, line: 43, size: 640, elements: !3847)
!3847 = !{!3848, !3849, !3850}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3846, file: !3783, line: 44, baseType: !3781, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3846, file: !3783, line: 45, baseType: !7, size: 32, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3846, file: !3783, line: 46, baseType: !3851, size: 512, offset: 128)
!3851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 512, elements: !1439)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3789, file: !3783, line: 140, baseType: !3834, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3789, file: !3783, line: 143, baseType: !3830, size: 64, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3789, file: !3783, line: 145, baseType: !3792, size: 64, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3789, file: !3783, line: 146, baseType: !3856, size: 64, offset: 1024)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!118, !3803, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3783, line: 29, size: 128, elements: !3861)
!3861 = !{!3862, !3863, !3864}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3860, file: !3783, line: 30, baseType: !7, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3860, file: !3783, line: 31, baseType: !7, size: 32, offset: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3860, file: !3783, line: 32, baseType: !3803, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3789, file: !3783, line: 148, baseType: !3866, size: 64, offset: 1088)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!118, !3803, !348}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3782, file: !3783, line: 20, baseType: !348, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !349, file: !73, line: 534, baseType: !626, size: 32, offset: 4992)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !349, file: !73, line: 535, baseType: !323, size: 32, offset: 5024)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !349, file: !73, line: 537, baseType: !365, offset: 5056)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !349, file: !73, line: 538, baseType: !240, size: 128, offset: 5056)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !349, file: !73, line: 540, baseType: !3875, size: 64, offset: 5184)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3877, line: 54, size: 960, elements: !3878)
!3877 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884, !3885, !3889, !3893, !3894, !3895, !3896, !3900, !3904, !3905}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3876, file: !3877, line: 55, baseType: !147, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3876, file: !3877, line: 56, baseType: !113, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3876, file: !3877, line: 58, baseType: !454, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3876, file: !3877, line: 59, baseType: !454, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3876, file: !3877, line: 60, baseType: !358, size: 64, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3876, file: !3877, line: 62, baseType: !3487, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3876, file: !3877, line: 63, baseType: !3886, size: 64, offset: 384)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!164, !348, !3494}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3876, file: !3877, line: 65, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3875}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3876, file: !3877, line: 66, baseType: !3496, size: 64, offset: 512)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3876, file: !3877, line: 68, baseType: !3505, size: 64, offset: 576)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3876, file: !3877, line: 70, baseType: !3291, size: 64, offset: 640)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3876, file: !3877, line: 71, baseType: !3897, size: 64, offset: 704)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!2232, !348}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3876, file: !3877, line: 73, baseType: !3901, size: 64, offset: 768)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !348, !3323, !3324}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3876, file: !3877, line: 75, baseType: !3500, size: 64, offset: 832)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3876, file: !3877, line: 77, baseType: !3615, size: 64, offset: 896)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !349, file: !73, line: 541, baseType: !454, size: 64, offset: 5248)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !349, file: !73, line: 543, baseType: !3496, size: 64, offset: 5312)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !349, file: !73, line: 544, baseType: !3909, size: 64, offset: 5376)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !349, file: !73, line: 545, baseType: !3912, size: 64, offset: 5440)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !349, file: !73, line: 547, baseType: !227, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !349, file: !73, line: 548, baseType: !227, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !349, file: !73, line: 549, baseType: !227, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !349, file: !73, line: 550, baseType: !227, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !271, file: !237, line: 635, baseType: !349, size: 5568, offset: 2304)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !271, file: !237, line: 636, baseType: !468, size: 64, offset: 7872)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !271, file: !237, line: 637, baseType: !468, size: 64, offset: 7936)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !271, file: !237, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !266, file: !237, line: 312, baseType: !270, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !266, file: !237, line: 314, baseType: !120, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !266, file: !237, line: 315, baseType: !333, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !266, file: !237, line: 316, baseType: !3926, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !237, line: 69, size: 832, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3934, !3935}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3927, file: !237, line: 70, baseType: !270, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3927, file: !237, line: 71, baseType: !240, size: 128, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3927, file: !237, line: 72, baseType: !3932, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !237, line: 72, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3927, file: !237, line: 73, baseType: !183, size: 8, offset: 256)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3927, file: !237, line: 74, baseType: !352, size: 512, offset: 320)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !266, file: !237, line: 318, baseType: !7, size: 32, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !266, file: !237, line: 319, baseType: !175, size: 16, offset: 480)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !266, file: !237, line: 320, baseType: !175, size: 16, offset: 496)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !266, file: !237, line: 321, baseType: !175, size: 16, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !266, file: !237, line: 322, baseType: !175, size: 16, offset: 528)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !266, file: !237, line: 323, baseType: !7, size: 32, offset: 544)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !266, file: !237, line: 324, baseType: !181, size: 8, offset: 576)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !266, file: !237, line: 325, baseType: !181, size: 8, offset: 584)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !266, file: !237, line: 330, baseType: !181, size: 8, offset: 592)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !266, file: !237, line: 331, baseType: !181, size: 8, offset: 600)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !266, file: !237, line: 332, baseType: !181, size: 8, offset: 608)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !266, file: !237, line: 333, baseType: !181, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !266, file: !237, line: 334, baseType: !181, size: 8, offset: 624)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !266, file: !237, line: 335, baseType: !181, size: 8, offset: 632)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !266, file: !237, line: 336, baseType: !171, size: 16, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !266, file: !237, line: 337, baseType: !3952, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !266, file: !237, line: 339, baseType: !3954, size: 64, offset: 768)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !266, file: !237, line: 340, baseType: !288, size: 64, offset: 832)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !266, file: !237, line: 346, baseType: !3768, size: 128, offset: 896)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !266, file: !237, line: 348, baseType: !3958, size: 32, offset: 1024)
!3958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !237, line: 155, baseType: !118)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !266, file: !237, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !266, file: !237, line: 352, baseType: !181, size: 8, offset: 1064)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !266, file: !237, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !266, file: !237, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !266, file: !237, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !266, file: !237, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !266, file: !237, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !266, file: !237, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !266, file: !237, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !266, file: !237, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !266, file: !237, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !266, file: !237, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !266, file: !237, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !266, file: !237, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !266, file: !237, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !266, file: !237, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !266, file: !237, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !266, file: !237, line: 376, baseType: !7, size: 32, offset: 1120)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !266, file: !237, line: 377, baseType: !7, size: 32, offset: 1152)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !266, file: !237, line: 380, baseType: !3979, size: 64, offset: 1216)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !237, line: 303, flags: DIFlagFwdDecl)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !266, file: !237, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !266, file: !237, line: 383, baseType: !118, size: 32, offset: 1312)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !266, file: !237, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !266, file: !237, line: 387, baseType: !3985, size: 32, offset: 1376)
!3985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !237, line: 180, baseType: !7)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !266, file: !237, line: 388, baseType: !349, size: 5568, offset: 1408)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !266, file: !237, line: 390, baseType: !118, size: 32, offset: 6976)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !266, file: !237, line: 396, baseType: !7, size: 32, offset: 7008)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !266, file: !237, line: 397, baseType: !3990, size: 8704, offset: 7040)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 8704, elements: !3991)
!3991 = !{!3992}
!3992 = !DISubrange(count: 17)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !266, file: !237, line: 399, baseType: !227, size: 8, offset: 15744)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !266, file: !237, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !266, file: !237, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !266, file: !237, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !266, file: !237, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !266, file: !237, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !266, file: !237, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !266, file: !237, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !266, file: !237, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !266, file: !237, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !266, file: !237, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !266, file: !237, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !266, file: !237, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !266, file: !237, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !266, file: !237, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !266, file: !237, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !266, file: !237, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !266, file: !237, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !266, file: !237, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !266, file: !237, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !266, file: !237, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !266, file: !237, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !266, file: !237, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !266, file: !237, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !266, file: !237, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !266, file: !237, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !266, file: !237, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !266, file: !237, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !266, file: !237, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !266, file: !237, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !266, file: !237, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !266, file: !237, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !266, file: !237, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !266, file: !237, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !266, file: !237, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !266, file: !237, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !266, file: !237, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !266, file: !237, line: 450, baseType: !4031, size: 16, offset: 15792)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !237, line: 206, baseType: !175)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !266, file: !237, line: 451, baseType: !860, size: 32, offset: 15808)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !266, file: !237, line: 453, baseType: !4034, size: 512, offset: 15840)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 512, elements: !1841)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !266, file: !237, line: 454, baseType: !748, size: 64, offset: 16384)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !266, file: !237, line: 455, baseType: !468, size: 64, offset: 16448)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !266, file: !237, line: 456, baseType: !118, size: 32, offset: 16512)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !266, file: !237, line: 457, baseType: !4039, size: 1088, offset: 16576)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 1088, elements: !3991)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !266, file: !237, line: 458, baseType: !4039, size: 1088, offset: 17664)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !266, file: !237, line: 469, baseType: !454, size: 64, offset: 18752)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !266, file: !237, line: 471, baseType: !4043, size: 64, offset: 18816)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !237, line: 304, flags: DIFlagFwdDecl)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !237, line: 478, baseType: !4046, size: 64, offset: 18880)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !237, line: 478, size: 64, elements: !4047)
!4047 = !{!4048, !4051}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4046, file: !237, line: 479, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !237, line: 305, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4046, file: !237, line: 480, baseType: !265, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !266, file: !237, line: 482, baseType: !171, size: 16, offset: 18944)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !266, file: !237, line: 483, baseType: !181, size: 8, offset: 18960)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !266, file: !237, line: 497, baseType: !171, size: 16, offset: 18976)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !266, file: !237, line: 498, baseType: !287, size: 64, offset: 19008)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !266, file: !237, line: 499, baseType: !448, size: 64, offset: 19072)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !266, file: !237, line: 500, baseType: !164, size: 64, offset: 19136)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !266, file: !237, line: 502, baseType: !119, size: 64, offset: 19200)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !236, file: !237, line: 863, baseType: !4060, size: 64, offset: 320)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !265}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !236, file: !237, line: 864, baseType: !4064, size: 64, offset: 384)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!118, !265, !3586}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !236, file: !237, line: 865, baseType: !4068, size: 64, offset: 448)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!118, !265}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !236, file: !237, line: 866, baseType: !4060, size: 64, offset: 512)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !236, file: !237, line: 867, baseType: !4073, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!118, !265, !118}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !236, file: !237, line: 868, baseType: !4077, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4079)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !237, line: 795, size: 384, elements: !4080)
!4080 = !{!4081, !4086, !4090, !4091, !4092, !4093}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4079, file: !237, line: 797, baseType: !4082, size: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4085, !265, !3985}
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !237, line: 772, baseType: !7)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4079, file: !237, line: 801, baseType: !4087, size: 64, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!4085, !265}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4079, file: !237, line: 804, baseType: !4087, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4079, file: !237, line: 807, baseType: !4060, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4079, file: !237, line: 808, baseType: !4060, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4079, file: !237, line: 811, baseType: !4060, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !237, line: 869, baseType: !454, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !237, line: 870, baseType: !3546, size: 1152, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !236, file: !237, line: 871, baseType: !4097, size: 128, offset: 1920)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !237, line: 759, size: 128, elements: !4098)
!4098 = !{!4099, !4100}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4097, file: !237, line: 760, baseType: !365)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4097, file: !237, line: 761, baseType: !240, size: 128)
!4101 = !DIGlobalVariableExpression(var: !4102, expr: !DIExpression())
!4102 = distinct !DIGlobalVariable(name: "k10temp_id_table", scope: !2, file: !3, line: 574, type: !4103, isLocal: true, isDefinition: true)
!4103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 4608, elements: !4104)
!4104 = !{!4105}
!4105 = !DISubrange(count: 18)
!4106 = !DIGlobalVariableExpression(var: !4107, expr: !DIExpression())
!4107 = distinct !DIGlobalVariable(name: "nb_smu_ind_mutex", scope: !2, file: !3, line: 42, type: !1282, isLocal: true, isDefinition: true)
!4108 = !DIGlobalVariableExpression(var: !4109, expr: !DIExpression())
!4109 = distinct !DIGlobalVariable(name: "tctl_offset_table", scope: !2, file: !3, line: 131, type: !4110, isLocal: true, isDefinition: true)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4111, size: 1152, elements: !1731)
!4111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4112)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tctl_offset", file: !3, line: 125, size: 192, elements: !4113)
!4113 = !{!4114, !4115, !4116}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4112, file: !3, line: 126, baseType: !181, size: 8)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4112, file: !3, line: 127, baseType: !147, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4112, file: !3, line: 128, baseType: !118, size: 32, offset: 128)
!4117 = !DIGlobalVariableExpression(var: !4118, expr: !DIExpression())
!4118 = distinct !DIGlobalVariable(name: "k10temp_chip_info", scope: !2, file: !3, line: 460, type: !4119, isLocal: true, isDefinition: true)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_chip_info", file: !99, line: 429, size: 128, elements: !4121)
!4121 = !{!4122, !4144}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4120, file: !99, line: 430, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4125)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_ops", file: !99, line: 394, size: 256, elements: !4126)
!4126 = !{!4127, !4131, !4136, !4140}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !4125, file: !99, line: 395, baseType: !4128, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!443, !2232, !98, !323, !118}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4125, file: !99, line: 397, baseType: !4132, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!118, !348, !98, !323, !118, !4135}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "read_string", scope: !4125, file: !99, line: 399, baseType: !4137, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!118, !348, !98, !323, !118, !3823}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4125, file: !99, line: 401, baseType: !4141, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!118, !348, !98, !323, !118, !121}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4120, file: !99, line: 431, baseType: !4145, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwmon_channel_info", file: !99, line: 411, size: 128, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4148, file: !99, line: 412, baseType: !98, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4148, file: !99, line: 413, baseType: !4152, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(name: "k10temp_hwmon_ops", scope: !2, file: !3, line: 454, type: !4124, isLocal: true, isDefinition: true)
!4156 = !DIGlobalVariableExpression(var: !4157, expr: !DIExpression())
!4157 = distinct !DIGlobalVariable(name: "k10temp_temp_label", scope: !2, file: !3, line: 201, type: !4158, isLocal: true, isDefinition: true)
!4158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 640, elements: !4159)
!4159 = !{!4160}
!4160 = !DISubrange(count: 10)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "k10temp_in_label", scope: !2, file: !3, line: 214, type: !4163, isLocal: true, isDefinition: true)
!4163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !1675)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "k10temp_curr_label", scope: !2, file: !3, line: 219, type: !4163, isLocal: true, isDefinition: true)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "k10temp_info", scope: !2, file: !3, line: 431, type: !4168, isLocal: true, isDefinition: true)
!4168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4146, size: 256, elements: !298)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 520, elements: !4170)
!4170 = !{!4171}
!4171 = !DISubrange(count: 65)
!4172 = !{!"rsp"}
!4173 = !{i32 7, !"Dwarf Version", i32 4}
!4174 = !{i32 2, !"Debug Info Version", i32 3}
!4175 = !{i32 1, !"wchar_size", i32 2}
!4176 = !{i32 1, !"Code Model", i32 2}
!4177 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4178 = distinct !DISubprogram(name: "k10temp_driver_init", scope: !3, file: !3, line: 602, type: !4179, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!118}
!4181 = !DILocation(line: 602, column: 1, scope: !4178)
!4182 = distinct !DISubprogram(name: "k10temp_driver_exit", scope: !3, file: !3, line: 602, type: !223, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4183 = !DILocation(line: 602, column: 1, scope: !4182)
!4184 = distinct !DISubprogram(name: "k10temp_probe", scope: !3, file: !3, line: 479, type: !263, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4185 = !DILocalVariable(name: "pdev", arg: 1, scope: !4184, file: !3, line: 479, type: !265)
!4186 = !DILocation(line: 479, column: 42, scope: !4184)
!4187 = !DILocalVariable(name: "id", arg: 2, scope: !4184, file: !3, line: 479, type: !247)
!4188 = !DILocation(line: 479, column: 76, scope: !4184)
!4189 = !DILocalVariable(name: "unreliable", scope: !4184, file: !3, line: 481, type: !118)
!4190 = !DILocation(line: 481, column: 6, scope: !4184)
!4191 = !DILocation(line: 481, column: 35, scope: !4184)
!4192 = !DILocation(line: 481, column: 19, scope: !4184)
!4193 = !DILocalVariable(name: "dev", scope: !4184, file: !3, line: 482, type: !348)
!4194 = !DILocation(line: 482, column: 17, scope: !4184)
!4195 = !DILocation(line: 482, column: 24, scope: !4184)
!4196 = !DILocation(line: 482, column: 30, scope: !4184)
!4197 = !DILocalVariable(name: "data", scope: !4184, file: !3, line: 483, type: !4198)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k10temp_data", file: !3, line: 105, size: 448, elements: !4200)
!4200 = !{!4201, !4202, !4206, !4207, !4208, !4209, !4210, !4212, !4213, !4214}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "pdev", scope: !4199, file: !3, line: 106, baseType: !265, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "read_htcreg", scope: !4199, file: !3, line: 107, baseType: !4203, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{null, !265, !322}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "read_tempreg", scope: !4199, file: !3, line: 108, baseType: !4203, size: 64, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "temp_offset", scope: !4199, file: !3, line: 109, baseType: !118, size: 32, offset: 192)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "temp_adjust_mask", scope: !4199, file: !3, line: 110, baseType: !323, size: 32, offset: 224)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "show_temp", scope: !4199, file: !3, line: 111, baseType: !323, size: 32, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "svi_addr", scope: !4199, file: !3, line: 112, baseType: !4211, size: 64, offset: 288)
!4211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !1675)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_zen", scope: !4199, file: !3, line: 113, baseType: !227, size: 8, offset: 352)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "show_current", scope: !4199, file: !3, line: 114, baseType: !227, size: 8, offset: 360)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "cfactor", scope: !4199, file: !3, line: 115, baseType: !4215, size: 64, offset: 384)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !1675)
!4216 = !DILocation(line: 483, column: 23, scope: !4184)
!4217 = !DILocalVariable(name: "hwmon_dev", scope: !4184, file: !3, line: 484, type: !348)
!4218 = !DILocation(line: 484, column: 17, scope: !4184)
!4219 = !DILocalVariable(name: "i", scope: !4184, file: !3, line: 485, type: !118)
!4220 = !DILocation(line: 485, column: 6, scope: !4184)
!4221 = !DILocation(line: 487, column: 6, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 487, column: 6)
!4223 = !DILocation(line: 487, column: 6, scope: !4184)
!4224 = !DILocation(line: 488, column: 8, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 488, column: 7)
!4226 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 487, column: 18)
!4227 = !DILocation(line: 488, column: 7, scope: !4226)
!4228 = !DILocation(line: 489, column: 4, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 488, column: 15)
!4230 = !DILocation(line: 491, column: 4, scope: !4229)
!4231 = !DILocation(line: 493, column: 3, scope: !4226)
!4232 = !DILocation(line: 495, column: 2, scope: !4226)
!4233 = !DILocation(line: 497, column: 22, scope: !4184)
!4234 = !DILocation(line: 497, column: 9, scope: !4184)
!4235 = !DILocation(line: 497, column: 7, scope: !4184)
!4236 = !DILocation(line: 498, column: 7, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 498, column: 6)
!4238 = !DILocation(line: 498, column: 6, scope: !4184)
!4239 = !DILocation(line: 499, column: 3, scope: !4237)
!4240 = !DILocation(line: 501, column: 15, scope: !4184)
!4241 = !DILocation(line: 501, column: 2, scope: !4184)
!4242 = !DILocation(line: 501, column: 8, scope: !4184)
!4243 = !DILocation(line: 501, column: 13, scope: !4184)
!4244 = !DILocation(line: 502, column: 2, scope: !4184)
!4245 = !DILocation(line: 502, column: 8, scope: !4184)
!4246 = !DILocation(line: 502, column: 18, scope: !4184)
!4247 = !DILocation(line: 504, column: 20, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 504, column: 6)
!4249 = !DILocation(line: 504, column: 6, scope: !4248)
!4250 = !DILocation(line: 504, column: 24, scope: !4248)
!4251 = !DILocation(line: 504, column: 32, scope: !4248)
!4252 = !DILocation(line: 505, column: 22, scope: !4248)
!4253 = !DILocation(line: 505, column: 8, scope: !4248)
!4254 = !DILocation(line: 505, column: 32, scope: !4248)
!4255 = !DILocation(line: 505, column: 40, scope: !4248)
!4256 = !DILocation(line: 505, column: 48, scope: !4248)
!4257 = !DILocation(line: 506, column: 22, scope: !4248)
!4258 = !DILocation(line: 506, column: 8, scope: !4248)
!4259 = !DILocation(line: 506, column: 32, scope: !4248)
!4260 = !DILocation(line: 506, column: 40, scope: !4248)
!4261 = !DILocation(line: 504, column: 6, scope: !4184)
!4262 = !DILocation(line: 507, column: 3, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 506, column: 50)
!4264 = !DILocation(line: 507, column: 9, scope: !4263)
!4265 = !DILocation(line: 507, column: 21, scope: !4263)
!4266 = !DILocation(line: 508, column: 3, scope: !4263)
!4267 = !DILocation(line: 508, column: 9, scope: !4263)
!4268 = !DILocation(line: 508, column: 22, scope: !4263)
!4269 = !DILocation(line: 509, column: 2, scope: !4263)
!4270 = !DILocation(line: 509, column: 27, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 509, column: 13)
!4272 = !DILocation(line: 509, column: 13, scope: !4271)
!4273 = !DILocation(line: 509, column: 31, scope: !4271)
!4274 = !DILocation(line: 509, column: 39, scope: !4271)
!4275 = !DILocation(line: 509, column: 56, scope: !4271)
!4276 = !DILocation(line: 509, column: 42, scope: !4271)
!4277 = !DILocation(line: 509, column: 60, scope: !4271)
!4278 = !DILocation(line: 509, column: 13, scope: !4248)
!4279 = !DILocation(line: 510, column: 3, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 509, column: 69)
!4281 = !DILocation(line: 510, column: 9, scope: !4280)
!4282 = !DILocation(line: 510, column: 26, scope: !4280)
!4283 = !DILocation(line: 511, column: 3, scope: !4280)
!4284 = !DILocation(line: 511, column: 9, scope: !4280)
!4285 = !DILocation(line: 511, column: 22, scope: !4280)
!4286 = !DILocation(line: 512, column: 3, scope: !4280)
!4287 = !DILocation(line: 512, column: 9, scope: !4280)
!4288 = !DILocation(line: 512, column: 19, scope: !4280)
!4289 = !DILocation(line: 513, column: 3, scope: !4280)
!4290 = !DILocation(line: 513, column: 9, scope: !4280)
!4291 = !DILocation(line: 513, column: 16, scope: !4280)
!4292 = !DILocation(line: 515, column: 25, scope: !4280)
!4293 = !DILocation(line: 515, column: 11, scope: !4280)
!4294 = !DILocation(line: 515, column: 3, scope: !4280)
!4295 = !DILocation(line: 520, column: 26, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 515, column: 36)
!4297 = !DILocation(line: 520, column: 44, scope: !4296)
!4298 = !DILocation(line: 520, column: 48, scope: !4296)
!4299 = !DILocation(line: 520, column: 47, scope: !4296)
!4300 = !DILocation(line: 0, scope: !4296)
!4301 = !DILocation(line: 520, column: 4, scope: !4296)
!4302 = !DILocation(line: 520, column: 10, scope: !4296)
!4303 = !DILocation(line: 520, column: 23, scope: !4296)
!4304 = !DILocation(line: 521, column: 4, scope: !4296)
!4305 = !DILocation(line: 521, column: 10, scope: !4296)
!4306 = !DILocation(line: 521, column: 22, scope: !4296)
!4307 = !DILocation(line: 522, column: 4, scope: !4296)
!4308 = !DILocation(line: 522, column: 10, scope: !4296)
!4309 = !DILocation(line: 522, column: 22, scope: !4296)
!4310 = !DILocation(line: 523, column: 4, scope: !4296)
!4311 = !DILocation(line: 523, column: 10, scope: !4296)
!4312 = !DILocation(line: 523, column: 21, scope: !4296)
!4313 = !DILocation(line: 524, column: 4, scope: !4296)
!4314 = !DILocation(line: 524, column: 10, scope: !4296)
!4315 = !DILocation(line: 524, column: 21, scope: !4296)
!4316 = !DILocation(line: 525, column: 28, scope: !4296)
!4317 = !DILocation(line: 525, column: 34, scope: !4296)
!4318 = !DILocation(line: 525, column: 4, scope: !4296)
!4319 = !DILocation(line: 526, column: 4, scope: !4296)
!4320 = !DILocation(line: 529, column: 26, scope: !4296)
!4321 = !DILocation(line: 529, column: 44, scope: !4296)
!4322 = !DILocation(line: 529, column: 48, scope: !4296)
!4323 = !DILocation(line: 529, column: 47, scope: !4296)
!4324 = !DILocation(line: 529, column: 4, scope: !4296)
!4325 = !DILocation(line: 529, column: 10, scope: !4296)
!4326 = !DILocation(line: 529, column: 23, scope: !4296)
!4327 = !DILocation(line: 530, column: 4, scope: !4296)
!4328 = !DILocation(line: 530, column: 10, scope: !4296)
!4329 = !DILocation(line: 530, column: 21, scope: !4296)
!4330 = !DILocation(line: 531, column: 4, scope: !4296)
!4331 = !DILocation(line: 531, column: 10, scope: !4296)
!4332 = !DILocation(line: 531, column: 21, scope: !4296)
!4333 = !DILocation(line: 532, column: 4, scope: !4296)
!4334 = !DILocation(line: 532, column: 10, scope: !4296)
!4335 = !DILocation(line: 532, column: 22, scope: !4296)
!4336 = !DILocation(line: 533, column: 4, scope: !4296)
!4337 = !DILocation(line: 533, column: 10, scope: !4296)
!4338 = !DILocation(line: 533, column: 22, scope: !4296)
!4339 = !DILocation(line: 534, column: 28, scope: !4296)
!4340 = !DILocation(line: 534, column: 34, scope: !4296)
!4341 = !DILocation(line: 534, column: 4, scope: !4296)
!4342 = !DILocation(line: 535, column: 4, scope: !4296)
!4343 = !DILocation(line: 537, column: 2, scope: !4280)
!4344 = !DILocation(line: 537, column: 27, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 537, column: 13)
!4346 = !DILocation(line: 537, column: 13, scope: !4345)
!4347 = !DILocation(line: 537, column: 31, scope: !4345)
!4348 = !DILocation(line: 537, column: 13, scope: !4271)
!4349 = !DILocation(line: 538, column: 3, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 537, column: 40)
!4351 = !DILocation(line: 538, column: 9, scope: !4350)
!4352 = !DILocation(line: 538, column: 26, scope: !4350)
!4353 = !DILocation(line: 539, column: 3, scope: !4350)
!4354 = !DILocation(line: 539, column: 9, scope: !4350)
!4355 = !DILocation(line: 539, column: 22, scope: !4350)
!4356 = !DILocation(line: 540, column: 3, scope: !4350)
!4357 = !DILocation(line: 540, column: 9, scope: !4350)
!4358 = !DILocation(line: 540, column: 19, scope: !4350)
!4359 = !DILocation(line: 541, column: 3, scope: !4350)
!4360 = !DILocation(line: 541, column: 9, scope: !4350)
!4361 = !DILocation(line: 541, column: 16, scope: !4350)
!4362 = !DILocation(line: 543, column: 25, scope: !4350)
!4363 = !DILocation(line: 543, column: 11, scope: !4350)
!4364 = !DILocation(line: 543, column: 3, scope: !4350)
!4365 = !DILocation(line: 545, column: 4, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 543, column: 36)
!4367 = !DILocation(line: 545, column: 10, scope: !4366)
!4368 = !DILocation(line: 545, column: 23, scope: !4366)
!4369 = !DILocation(line: 546, column: 4, scope: !4366)
!4370 = !DILocation(line: 546, column: 10, scope: !4366)
!4371 = !DILocation(line: 546, column: 22, scope: !4366)
!4372 = !DILocation(line: 547, column: 4, scope: !4366)
!4373 = !DILocation(line: 547, column: 10, scope: !4366)
!4374 = !DILocation(line: 547, column: 22, scope: !4366)
!4375 = !DILocation(line: 548, column: 4, scope: !4366)
!4376 = !DILocation(line: 548, column: 10, scope: !4366)
!4377 = !DILocation(line: 548, column: 21, scope: !4366)
!4378 = !DILocation(line: 549, column: 4, scope: !4366)
!4379 = !DILocation(line: 549, column: 10, scope: !4366)
!4380 = !DILocation(line: 549, column: 21, scope: !4366)
!4381 = !DILocation(line: 550, column: 28, scope: !4366)
!4382 = !DILocation(line: 550, column: 34, scope: !4366)
!4383 = !DILocation(line: 550, column: 4, scope: !4366)
!4384 = !DILocation(line: 551, column: 4, scope: !4366)
!4385 = !DILocation(line: 553, column: 2, scope: !4350)
!4386 = !DILocation(line: 554, column: 3, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 553, column: 9)
!4388 = !DILocation(line: 554, column: 9, scope: !4387)
!4389 = !DILocation(line: 554, column: 21, scope: !4387)
!4390 = !DILocation(line: 555, column: 3, scope: !4387)
!4391 = !DILocation(line: 555, column: 9, scope: !4387)
!4392 = !DILocation(line: 555, column: 22, scope: !4387)
!4393 = !DILocation(line: 558, column: 9, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 558, column: 2)
!4395 = !DILocation(line: 558, column: 7, scope: !4394)
!4396 = !DILocation(line: 558, column: 14, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !3, line: 558, column: 2)
!4398 = !DILocation(line: 558, column: 16, scope: !4397)
!4399 = !DILocation(line: 558, column: 2, scope: !4394)
!4400 = !DILocalVariable(name: "entry", scope: !4401, file: !3, line: 559, type: !4402)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 558, column: 54)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4403 = !DILocation(line: 559, column: 29, scope: !4401)
!4404 = !DILocation(line: 559, column: 56, scope: !4401)
!4405 = !DILocation(line: 559, column: 38, scope: !4401)
!4406 = !DILocation(line: 561, column: 21, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 561, column: 7)
!4408 = !DILocation(line: 561, column: 7, scope: !4407)
!4409 = !DILocation(line: 561, column: 28, scope: !4407)
!4410 = !DILocation(line: 561, column: 35, scope: !4407)
!4411 = !DILocation(line: 561, column: 25, scope: !4407)
!4412 = !DILocation(line: 561, column: 41, scope: !4407)
!4413 = !DILocation(line: 562, column: 42, scope: !4407)
!4414 = !DILocation(line: 562, column: 49, scope: !4407)
!4415 = !DILocation(line: 562, column: 7, scope: !4407)
!4416 = !DILocation(line: 561, column: 7, scope: !4401)
!4417 = !DILocation(line: 563, column: 24, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 562, column: 54)
!4419 = !DILocation(line: 563, column: 31, scope: !4418)
!4420 = !DILocation(line: 563, column: 4, scope: !4418)
!4421 = !DILocation(line: 563, column: 10, scope: !4418)
!4422 = !DILocation(line: 563, column: 22, scope: !4418)
!4423 = !DILocation(line: 564, column: 4, scope: !4418)
!4424 = !DILocation(line: 566, column: 2, scope: !4401)
!4425 = !DILocation(line: 558, column: 50, scope: !4397)
!4426 = !DILocation(line: 558, column: 2, scope: !4397)
!4427 = distinct !{!4427, !4399, !4428}
!4428 = !DILocation(line: 566, column: 2, scope: !4394)
!4429 = !DILocation(line: 568, column: 51, scope: !4184)
!4430 = !DILocation(line: 568, column: 67, scope: !4184)
!4431 = !DILocation(line: 568, column: 14, scope: !4184)
!4432 = !DILocation(line: 568, column: 12, scope: !4184)
!4433 = !DILocation(line: 571, column: 25, scope: !4184)
!4434 = !DILocation(line: 571, column: 9, scope: !4184)
!4435 = !DILocation(line: 571, column: 2, scope: !4184)
!4436 = !DILocation(line: 572, column: 1, scope: !4184)
!4437 = distinct !DISubprogram(name: "has_erratum_319", scope: !3, file: !3, line: 397, type: !4438, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!227, !265}
!4440 = !DILocalVariable(name: "pdev", arg: 1, scope: !4437, file: !3, line: 397, type: !265)
!4441 = !DILocation(line: 397, column: 45, scope: !4437)
!4442 = !DILocalVariable(name: "pkg_type", scope: !4437, file: !3, line: 399, type: !323)
!4443 = !DILocation(line: 399, column: 6, scope: !4437)
!4444 = !DILocalVariable(name: "reg_dram_cfg", scope: !4437, file: !3, line: 399, type: !323)
!4445 = !DILocation(line: 399, column: 16, scope: !4437)
!4446 = !DILocation(line: 401, column: 20, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 401, column: 6)
!4448 = !DILocation(line: 401, column: 6, scope: !4447)
!4449 = !DILocation(line: 401, column: 24, scope: !4447)
!4450 = !DILocation(line: 401, column: 6, scope: !4437)
!4451 = !DILocation(line: 402, column: 3, scope: !4447)
!4452 = !DILocation(line: 408, column: 13, scope: !4437)
!4453 = !DILocation(line: 408, column: 35, scope: !4437)
!4454 = !DILocation(line: 408, column: 11, scope: !4437)
!4455 = !DILocation(line: 409, column: 6, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 409, column: 6)
!4457 = !DILocation(line: 409, column: 15, scope: !4456)
!4458 = !DILocation(line: 409, column: 6, scope: !4437)
!4459 = !DILocation(line: 410, column: 3, scope: !4456)
!4460 = !DILocation(line: 411, column: 6, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 411, column: 6)
!4462 = !DILocation(line: 411, column: 15, scope: !4461)
!4463 = !DILocation(line: 411, column: 6, scope: !4437)
!4464 = !DILocation(line: 412, column: 3, scope: !4461)
!4465 = !DILocation(line: 415, column: 28, scope: !4437)
!4466 = !DILocation(line: 415, column: 34, scope: !4437)
!4467 = !DILocation(line: 416, column: 7, scope: !4437)
!4468 = !DILocation(line: 415, column: 2, scope: !4437)
!4469 = !DILocation(line: 418, column: 6, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 418, column: 6)
!4471 = !DILocation(line: 418, column: 19, scope: !4470)
!4472 = !DILocation(line: 418, column: 6, scope: !4437)
!4473 = !DILocation(line: 419, column: 3, scope: !4470)
!4474 = !DILocation(line: 427, column: 23, scope: !4437)
!4475 = !DILocation(line: 427, column: 9, scope: !4437)
!4476 = !DILocation(line: 427, column: 33, scope: !4437)
!4477 = !DILocation(line: 427, column: 37, scope: !4437)
!4478 = !DILocation(line: 428, column: 24, scope: !4437)
!4479 = !DILocation(line: 428, column: 10, scope: !4437)
!4480 = !DILocation(line: 428, column: 34, scope: !4437)
!4481 = !DILocation(line: 428, column: 39, scope: !4437)
!4482 = !DILocation(line: 428, column: 56, scope: !4437)
!4483 = !DILocation(line: 428, column: 42, scope: !4437)
!4484 = !DILocation(line: 428, column: 69, scope: !4437)
!4485 = !DILocation(line: 0, scope: !4437)
!4486 = !DILocation(line: 427, column: 2, scope: !4437)
!4487 = !DILocation(line: 429, column: 1, scope: !4437)
!4488 = distinct !DISubprogram(name: "devm_kzalloc", scope: !73, file: !73, line: 215, type: !4489, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!120, !348, !448, !116}
!4491 = !DILocalVariable(name: "dev", arg: 1, scope: !4488, file: !73, line: 215, type: !348)
!4492 = !DILocation(line: 215, column: 49, scope: !4488)
!4493 = !DILocalVariable(name: "size", arg: 2, scope: !4488, file: !73, line: 215, type: !448)
!4494 = !DILocation(line: 215, column: 61, scope: !4488)
!4495 = !DILocalVariable(name: "gfp", arg: 3, scope: !4488, file: !73, line: 215, type: !116)
!4496 = !DILocation(line: 215, column: 73, scope: !4488)
!4497 = !DILocation(line: 217, column: 22, scope: !4488)
!4498 = !DILocation(line: 217, column: 27, scope: !4488)
!4499 = !DILocation(line: 217, column: 33, scope: !4488)
!4500 = !DILocation(line: 217, column: 37, scope: !4488)
!4501 = !DILocation(line: 217, column: 9, scope: !4488)
!4502 = !DILocation(line: 217, column: 2, scope: !4488)
!4503 = distinct !DISubprogram(name: "read_htcreg_nb_f15", scope: !3, file: !3, line: 171, type: !4204, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4504 = !DILocalVariable(name: "pdev", arg: 1, scope: !4503, file: !3, line: 171, type: !265)
!4505 = !DILocation(line: 171, column: 48, scope: !4503)
!4506 = !DILocalVariable(name: "regval", arg: 2, scope: !4503, file: !3, line: 171, type: !322)
!4507 = !DILocation(line: 171, column: 59, scope: !4503)
!4508 = !DILocation(line: 173, column: 20, scope: !4503)
!4509 = !DILocation(line: 174, column: 43, scope: !4503)
!4510 = !DILocation(line: 173, column: 2, scope: !4503)
!4511 = !DILocation(line: 175, column: 1, scope: !4503)
!4512 = distinct !DISubprogram(name: "read_tempreg_nb_f15", scope: !3, file: !3, line: 177, type: !4204, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4513 = !DILocalVariable(name: "pdev", arg: 1, scope: !4512, file: !3, line: 177, type: !265)
!4514 = !DILocation(line: 177, column: 49, scope: !4512)
!4515 = !DILocalVariable(name: "regval", arg: 2, scope: !4512, file: !3, line: 177, type: !322)
!4516 = !DILocation(line: 177, column: 60, scope: !4512)
!4517 = !DILocation(line: 179, column: 20, scope: !4512)
!4518 = !DILocation(line: 180, column: 43, scope: !4512)
!4519 = !DILocation(line: 179, column: 2, scope: !4512)
!4520 = !DILocation(line: 181, column: 1, scope: !4512)
!4521 = distinct !DISubprogram(name: "read_tempreg_nb_zen", scope: !3, file: !3, line: 183, type: !4204, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4522 = !DILocalVariable(name: "pdev", arg: 1, scope: !4521, file: !3, line: 183, type: !265)
!4523 = !DILocation(line: 183, column: 49, scope: !4521)
!4524 = !DILocalVariable(name: "regval", arg: 2, scope: !4521, file: !3, line: 183, type: !322)
!4525 = !DILocation(line: 183, column: 60, scope: !4521)
!4526 = !DILocation(line: 185, column: 38, scope: !4521)
!4527 = !DILocation(line: 185, column: 15, scope: !4521)
!4528 = !DILocation(line: 186, column: 39, scope: !4521)
!4529 = !DILocation(line: 185, column: 2, scope: !4521)
!4530 = !DILocation(line: 187, column: 1, scope: !4521)
!4531 = distinct !DISubprogram(name: "is_threadripper", scope: !3, file: !3, line: 140, type: !3298, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4532 = !DILocation(line: 142, column: 9, scope: !4531)
!4533 = !DILocation(line: 142, column: 2, scope: !4531)
!4534 = distinct !DISubprogram(name: "is_epyc", scope: !3, file: !3, line: 145, type: !3298, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4535 = !DILocation(line: 147, column: 9, scope: !4534)
!4536 = !DILocation(line: 147, column: 2, scope: !4534)
!4537 = distinct !DISubprogram(name: "k10temp_get_ccd_support", scope: !3, file: !3, line: 465, type: !4538, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !265, !4198, !118}
!4540 = !DILocalVariable(name: "pdev", arg: 1, scope: !4537, file: !3, line: 465, type: !265)
!4541 = !DILocation(line: 465, column: 53, scope: !4537)
!4542 = !DILocalVariable(name: "data", arg: 2, scope: !4537, file: !3, line: 466, type: !4198)
!4543 = !DILocation(line: 466, column: 30, scope: !4537)
!4544 = !DILocalVariable(name: "limit", arg: 3, scope: !4537, file: !3, line: 466, type: !118)
!4545 = !DILocation(line: 466, column: 40, scope: !4537)
!4546 = !DILocalVariable(name: "regval", scope: !4537, file: !3, line: 468, type: !323)
!4547 = !DILocation(line: 468, column: 6, scope: !4537)
!4548 = !DILocalVariable(name: "i", scope: !4537, file: !3, line: 469, type: !118)
!4549 = !DILocation(line: 469, column: 6, scope: !4537)
!4550 = !DILocation(line: 471, column: 9, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4537, file: !3, line: 471, column: 2)
!4552 = !DILocation(line: 471, column: 7, scope: !4551)
!4553 = !DILocation(line: 471, column: 14, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 471, column: 2)
!4555 = !DILocation(line: 471, column: 18, scope: !4554)
!4556 = !DILocation(line: 471, column: 16, scope: !4554)
!4557 = !DILocation(line: 471, column: 2, scope: !4551)
!4558 = !DILocation(line: 472, column: 39, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 471, column: 30)
!4560 = !DILocation(line: 472, column: 16, scope: !4559)
!4561 = !DILocation(line: 473, column: 9, scope: !4559)
!4562 = !DILocation(line: 472, column: 3, scope: !4559)
!4563 = !DILocation(line: 474, column: 7, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 474, column: 7)
!4565 = !DILocation(line: 474, column: 14, scope: !4564)
!4566 = !DILocation(line: 474, column: 7, scope: !4559)
!4567 = !DILocation(line: 475, column: 23, scope: !4564)
!4568 = !DILocation(line: 475, column: 4, scope: !4564)
!4569 = !DILocation(line: 475, column: 10, scope: !4564)
!4570 = !DILocation(line: 475, column: 20, scope: !4564)
!4571 = !DILocation(line: 476, column: 2, scope: !4559)
!4572 = !DILocation(line: 471, column: 26, scope: !4554)
!4573 = !DILocation(line: 471, column: 2, scope: !4554)
!4574 = distinct !{!4574, !4557, !4575}
!4575 = !DILocation(line: 476, column: 2, scope: !4551)
!4576 = !DILocation(line: 477, column: 1, scope: !4537)
!4577 = distinct !DISubprogram(name: "read_htcreg_pci", scope: !3, file: !3, line: 150, type: !4204, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4578 = !DILocalVariable(name: "pdev", arg: 1, scope: !4577, file: !3, line: 150, type: !265)
!4579 = !DILocation(line: 150, column: 45, scope: !4577)
!4580 = !DILocalVariable(name: "regval", arg: 2, scope: !4577, file: !3, line: 150, type: !322)
!4581 = !DILocation(line: 150, column: 56, scope: !4577)
!4582 = !DILocation(line: 152, column: 24, scope: !4577)
!4583 = !DILocation(line: 152, column: 60, scope: !4577)
!4584 = !DILocation(line: 152, column: 2, scope: !4577)
!4585 = !DILocation(line: 153, column: 1, scope: !4577)
!4586 = distinct !DISubprogram(name: "read_tempreg_pci", scope: !3, file: !3, line: 155, type: !4204, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4587 = !DILocalVariable(name: "pdev", arg: 1, scope: !4586, file: !3, line: 155, type: !265)
!4588 = !DILocation(line: 155, column: 46, scope: !4586)
!4589 = !DILocalVariable(name: "regval", arg: 2, scope: !4586, file: !3, line: 155, type: !322)
!4590 = !DILocation(line: 155, column: 57, scope: !4586)
!4591 = !DILocation(line: 157, column: 24, scope: !4586)
!4592 = !DILocation(line: 157, column: 56, scope: !4586)
!4593 = !DILocation(line: 157, column: 2, scope: !4586)
!4594 = !DILocation(line: 158, column: 1, scope: !4586)
!4595 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !4596, file: !4596, line: 57, type: !4597, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4596 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!118, !2232}
!4599 = !DILocalVariable(name: "ptr", arg: 1, scope: !4595, file: !4596, line: 57, type: !2232)
!4600 = !DILocation(line: 57, column: 68, scope: !4595)
!4601 = !DILocation(line: 59, column: 13, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4595, file: !4596, line: 59, column: 6)
!4603 = !DILocation(line: 59, column: 6, scope: !4602)
!4604 = !DILocation(line: 59, column: 6, scope: !4595)
!4605 = !DILocation(line: 60, column: 18, scope: !4602)
!4606 = !DILocation(line: 60, column: 10, scope: !4602)
!4607 = !DILocation(line: 60, column: 3, scope: !4602)
!4608 = !DILocation(line: 62, column: 3, scope: !4602)
!4609 = !DILocation(line: 63, column: 1, scope: !4595)
!4610 = distinct !DISubprogram(name: "cpuid_ebx", scope: !2244, file: !2244, line: 646, type: !4611, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!7, !7}
!4613 = !DILocalVariable(name: "op", arg: 1, scope: !4610, file: !2244, line: 646, type: !7)
!4614 = !DILocation(line: 646, column: 51, scope: !4610)
!4615 = !DILocalVariable(name: "eax", scope: !4610, file: !2244, line: 648, type: !7)
!4616 = !DILocation(line: 648, column: 15, scope: !4610)
!4617 = !DILocalVariable(name: "ebx", scope: !4610, file: !2244, line: 648, type: !7)
!4618 = !DILocation(line: 648, column: 20, scope: !4610)
!4619 = !DILocalVariable(name: "ecx", scope: !4610, file: !2244, line: 648, type: !7)
!4620 = !DILocation(line: 648, column: 25, scope: !4610)
!4621 = !DILocalVariable(name: "edx", scope: !4610, file: !2244, line: 648, type: !7)
!4622 = !DILocation(line: 648, column: 30, scope: !4610)
!4623 = !DILocation(line: 650, column: 8, scope: !4610)
!4624 = !DILocation(line: 650, column: 2, scope: !4610)
!4625 = !DILocation(line: 652, column: 9, scope: !4610)
!4626 = !DILocation(line: 652, column: 2, scope: !4610)
!4627 = distinct !DISubprogram(name: "cpuid", scope: !2244, file: !2244, line: 615, type: !4628, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !7, !203, !203, !203, !203}
!4630 = !DILocalVariable(name: "op", arg: 1, scope: !4627, file: !2244, line: 615, type: !7)
!4631 = !DILocation(line: 615, column: 39, scope: !4627)
!4632 = !DILocalVariable(name: "eax", arg: 2, scope: !4627, file: !2244, line: 616, type: !203)
!4633 = !DILocation(line: 616, column: 19, scope: !4627)
!4634 = !DILocalVariable(name: "ebx", arg: 3, scope: !4627, file: !2244, line: 616, type: !203)
!4635 = !DILocation(line: 616, column: 38, scope: !4627)
!4636 = !DILocalVariable(name: "ecx", arg: 4, scope: !4627, file: !2244, line: 617, type: !203)
!4637 = !DILocation(line: 617, column: 19, scope: !4627)
!4638 = !DILocalVariable(name: "edx", arg: 5, scope: !4627, file: !2244, line: 617, type: !203)
!4639 = !DILocation(line: 617, column: 38, scope: !4627)
!4640 = !DILocation(line: 619, column: 9, scope: !4627)
!4641 = !DILocation(line: 619, column: 3, scope: !4627)
!4642 = !DILocation(line: 619, column: 7, scope: !4627)
!4643 = !DILocation(line: 620, column: 3, scope: !4627)
!4644 = !DILocation(line: 620, column: 7, scope: !4627)
!4645 = !DILocation(line: 621, column: 10, scope: !4627)
!4646 = !DILocation(line: 621, column: 15, scope: !4627)
!4647 = !DILocation(line: 621, column: 20, scope: !4627)
!4648 = !DILocation(line: 621, column: 25, scope: !4627)
!4649 = !DILocation(line: 621, column: 2, scope: !4627)
!4650 = !DILocation(line: 622, column: 1, scope: !4627)
!4651 = distinct !DISubprogram(name: "__cpuid", scope: !4652, file: !4652, line: 94, type: !4653, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4652 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !203, !203, !203, !203}
!4655 = !DILocalVariable(name: "eax", arg: 1, scope: !4651, file: !4652, line: 94, type: !203)
!4656 = !DILocation(line: 94, column: 42, scope: !4651)
!4657 = !DILocalVariable(name: "ebx", arg: 2, scope: !4651, file: !4652, line: 94, type: !203)
!4658 = !DILocation(line: 94, column: 61, scope: !4651)
!4659 = !DILocalVariable(name: "ecx", arg: 3, scope: !4651, file: !4652, line: 95, type: !203)
!4660 = !DILocation(line: 95, column: 21, scope: !4651)
!4661 = !DILocalVariable(name: "edx", arg: 4, scope: !4651, file: !4652, line: 95, type: !203)
!4662 = !DILocation(line: 95, column: 40, scope: !4651)
!4663 = !DILocalVariable(name: "__edi", scope: !4664, file: !4652, line: 97, type: !119)
!4664 = distinct !DILexicalBlock(scope: !4651, file: !4652, line: 97, column: 2)
!4665 = !DILocation(line: 97, column: 2, scope: !4664)
!4666 = !DILocalVariable(name: "__esi", scope: !4664, file: !4652, line: 97, type: !119)
!4667 = !DILocalVariable(name: "__edx", scope: !4664, file: !4652, line: 97, type: !119)
!4668 = !DILocalVariable(name: "__ecx", scope: !4664, file: !4652, line: 97, type: !119)
!4669 = !DILocalVariable(name: "__eax", scope: !4664, file: !4652, line: 97, type: !119)
!4670 = !{i32 -2146003964, i32 -2146002984, i32 -2146002750, i32 -2146002699, i32 -2146002671, i32 -2146002646, i32 -2146002962, i32 -2146002949, i32 -2146002511, i32 -2146002392, i32 -2146002857, i32 -2146002830, i32 -2146002802, i32 -2146002772}
!4671 = !DILocation(line: 98, column: 1, scope: !4651)
!4672 = distinct !DISubprogram(name: "amd_nb_index_read", scope: !3, file: !3, line: 160, type: !4673, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !265, !7, !7, !118, !322}
!4675 = !DILocalVariable(name: "pdev", arg: 1, scope: !4672, file: !3, line: 160, type: !265)
!4676 = !DILocation(line: 160, column: 47, scope: !4672)
!4677 = !DILocalVariable(name: "devfn", arg: 2, scope: !4672, file: !3, line: 160, type: !7)
!4678 = !DILocation(line: 160, column: 66, scope: !4672)
!4679 = !DILocalVariable(name: "base", arg: 3, scope: !4672, file: !3, line: 161, type: !7)
!4680 = !DILocation(line: 161, column: 23, scope: !4672)
!4681 = !DILocalVariable(name: "offset", arg: 4, scope: !4672, file: !3, line: 161, type: !118)
!4682 = !DILocation(line: 161, column: 33, scope: !4672)
!4683 = !DILocalVariable(name: "val", arg: 5, scope: !4672, file: !3, line: 161, type: !322)
!4684 = !DILocation(line: 161, column: 46, scope: !4672)
!4685 = !DILocation(line: 163, column: 2, scope: !4672)
!4686 = !DILocation(line: 164, column: 29, scope: !4672)
!4687 = !DILocation(line: 164, column: 35, scope: !4672)
!4688 = !DILocation(line: 164, column: 40, scope: !4672)
!4689 = !DILocation(line: 165, column: 8, scope: !4672)
!4690 = !DILocation(line: 165, column: 14, scope: !4672)
!4691 = !DILocation(line: 164, column: 2, scope: !4672)
!4692 = !DILocation(line: 166, column: 28, scope: !4672)
!4693 = !DILocation(line: 166, column: 34, scope: !4672)
!4694 = !DILocation(line: 166, column: 39, scope: !4672)
!4695 = !DILocation(line: 167, column: 7, scope: !4672)
!4696 = !DILocation(line: 167, column: 12, scope: !4672)
!4697 = !DILocation(line: 167, column: 17, scope: !4672)
!4698 = !DILocation(line: 166, column: 2, scope: !4672)
!4699 = !DILocation(line: 168, column: 2, scope: !4672)
!4700 = !DILocation(line: 169, column: 1, scope: !4672)
!4701 = distinct !DISubprogram(name: "amd_pci_dev_to_node_id", scope: !4702, file: !4702, line: 87, type: !4703, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4702 = !DIFile(filename: "./arch/x86/include/asm/amd_nb.h", directory: "/home/lizy2001/genbc/linux")
!4703 = !DISubroutineType(types: !4704)
!4704 = !{!171, !265}
!4705 = !DILocalVariable(name: "pdev", arg: 1, scope: !4701, file: !4702, line: 87, type: !265)
!4706 = !DILocation(line: 87, column: 58, scope: !4701)
!4707 = !DILocalVariable(name: "misc", scope: !4701, file: !4702, line: 89, type: !265)
!4708 = !DILocation(line: 89, column: 18, scope: !4701)
!4709 = !DILocalVariable(name: "i", scope: !4701, file: !4702, line: 90, type: !118)
!4710 = !DILocation(line: 90, column: 6, scope: !4701)
!4711 = !DILocation(line: 92, column: 9, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4701, file: !4702, line: 92, column: 2)
!4713 = !DILocation(line: 92, column: 7, scope: !4712)
!4714 = !DILocation(line: 92, column: 14, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4712, file: !4702, line: 92, column: 2)
!4716 = !DILocation(line: 92, column: 19, scope: !4715)
!4717 = !DILocation(line: 92, column: 16, scope: !4715)
!4718 = !DILocation(line: 92, column: 2, scope: !4712)
!4719 = !DILocation(line: 93, column: 25, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4715, file: !4702, line: 92, column: 38)
!4721 = !DILocation(line: 93, column: 10, scope: !4720)
!4722 = !DILocation(line: 93, column: 29, scope: !4720)
!4723 = !DILocation(line: 93, column: 8, scope: !4720)
!4724 = !DILocation(line: 95, column: 21, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4720, file: !4702, line: 95, column: 7)
!4726 = !DILocation(line: 95, column: 27, scope: !4725)
!4727 = !DILocation(line: 95, column: 7, scope: !4725)
!4728 = !DILocation(line: 95, column: 49, scope: !4725)
!4729 = !DILocation(line: 95, column: 55, scope: !4725)
!4730 = !DILocation(line: 95, column: 35, scope: !4725)
!4731 = !DILocation(line: 95, column: 32, scope: !4725)
!4732 = !DILocation(line: 95, column: 60, scope: !4725)
!4733 = !DILocation(line: 96, column: 7, scope: !4725)
!4734 = !DILocation(line: 96, column: 32, scope: !4725)
!4735 = !DILocation(line: 96, column: 29, scope: !4725)
!4736 = !DILocation(line: 95, column: 7, scope: !4720)
!4737 = !DILocation(line: 97, column: 11, scope: !4725)
!4738 = !DILocation(line: 97, column: 4, scope: !4725)
!4739 = !DILocation(line: 98, column: 2, scope: !4720)
!4740 = !DILocation(line: 92, column: 34, scope: !4715)
!4741 = !DILocation(line: 92, column: 2, scope: !4715)
!4742 = distinct !{!4742, !4718, !4743}
!4743 = !DILocation(line: 98, column: 2, scope: !4712)
!4744 = !DILocalVariable(name: "__ret_warn_on", scope: !4745, file: !4702, line: 100, type: !118)
!4745 = distinct !DILexicalBlock(scope: !4701, file: !4702, line: 100, column: 2)
!4746 = !DILocation(line: 100, column: 2, scope: !4745)
!4747 = !DILocation(line: 100, column: 2, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !4702, line: 100, column: 2)
!4749 = !DILocation(line: 100, column: 2, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4748, file: !4702, line: 100, column: 2)
!4751 = !DILocation(line: 100, column: 2, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4750, file: !4702, line: 100, column: 2)
!4753 = !DILocation(line: 100, column: 2, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4750, file: !4702, line: 100, column: 2)
!4755 = !DILocation(line: 100, column: 2, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4754, file: !4702, line: 100, column: 2)
!4757 = !DILocation(line: 100, column: 2, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !4702, line: 100, column: 2)
!4759 = !{i32 -2141721345, i32 -2141721316, i32 -2141721270, i32 -2141721212, i32 -2141721158, i32 -2141721104, i32 -2141721049, i32 -2141721018}
!4760 = !DILocation(line: 100, column: 2, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4754, file: !4702, line: 100, column: 2)
!4762 = !{i32 -2141720596, i32 -2141720589, i32 -2141720537, i32 -2141720506, i32 -2141720476}
!4763 = !DILocation(line: 100, column: 2, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4754, file: !4702, line: 100, column: 2)
!4765 = !DILocation(line: 100, column: 2, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4750, file: !4702, line: 100, column: 2)
!4767 = !DILocation(line: 101, column: 2, scope: !4701)
!4768 = !DILocation(line: 102, column: 1, scope: !4701)
!4769 = distinct !DISubprogram(name: "pci_domain_nr", scope: !4770, file: !4770, line: 44, type: !308, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4770 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/lizy2001/genbc/linux")
!4771 = !DILocalVariable(name: "bus", arg: 1, scope: !4769, file: !4770, line: 44, type: !270)
!4772 = !DILocation(line: 44, column: 49, scope: !4769)
!4773 = !DILocation(line: 46, column: 24, scope: !4769)
!4774 = !DILocation(line: 46, column: 9, scope: !4769)
!4775 = !DILocation(line: 46, column: 30, scope: !4769)
!4776 = !DILocation(line: 46, column: 2, scope: !4769)
!4777 = distinct !DISubprogram(name: "pci_name", scope: !237, file: !237, line: 1875, type: !4778, scopeLine: 1876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!147, !4780}
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!4782 = !DILocalVariable(name: "pdev", arg: 1, scope: !4777, file: !237, line: 1875, type: !4780)
!4783 = !DILocation(line: 1875, column: 58, scope: !4777)
!4784 = !DILocation(line: 1877, column: 19, scope: !4777)
!4785 = !DILocation(line: 1877, column: 25, scope: !4777)
!4786 = !DILocation(line: 1877, column: 9, scope: !4777)
!4787 = !DILocation(line: 1877, column: 2, scope: !4777)
!4788 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !4770, file: !4770, line: 36, type: !4789, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!4791, !4802}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !4770, line: 15, size: 320, elements: !4793)
!4793 = !{!4794, !4795, !4796, !4799, !4800, !4801}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4792, file: !4770, line: 16, baseType: !118, size: 32)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4792, file: !4770, line: 17, baseType: !118, size: 32, offset: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !4792, file: !4770, line: 19, baseType: !4797, size: 64, offset: 64)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3533, line: 228, flags: DIFlagFwdDecl)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4792, file: !4770, line: 22, baseType: !120, size: 64, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4792, file: !4770, line: 25, baseType: !120, size: 64, offset: 192)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "vmd_dev", scope: !4792, file: !4770, line: 28, baseType: !265, size: 64, offset: 256)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!4804 = !DILocalVariable(name: "bus", arg: 1, scope: !4788, file: !4770, line: 36, type: !4802)
!4805 = !DILocation(line: 36, column: 72, scope: !4788)
!4806 = !DILocation(line: 38, column: 9, scope: !4788)
!4807 = !DILocation(line: 38, column: 14, scope: !4788)
!4808 = !DILocation(line: 38, column: 2, scope: !4788)
!4809 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4810, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!147, !3809}
!4812 = !DILocalVariable(name: "dev", arg: 1, scope: !4809, file: !73, line: 609, type: !3809)
!4813 = !DILocation(line: 609, column: 57, scope: !4809)
!4814 = !DILocation(line: 612, column: 6, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4809, file: !73, line: 612, column: 6)
!4816 = !DILocation(line: 612, column: 11, scope: !4815)
!4817 = !DILocation(line: 612, column: 6, scope: !4809)
!4818 = !DILocation(line: 613, column: 10, scope: !4815)
!4819 = !DILocation(line: 613, column: 15, scope: !4815)
!4820 = !DILocation(line: 613, column: 3, scope: !4815)
!4821 = !DILocation(line: 615, column: 23, scope: !4809)
!4822 = !DILocation(line: 615, column: 28, scope: !4809)
!4823 = !DILocation(line: 615, column: 9, scope: !4809)
!4824 = !DILocation(line: 615, column: 2, scope: !4809)
!4825 = !DILocation(line: 616, column: 1, scope: !4809)
!4826 = distinct !DISubprogram(name: "kobject_name", scope: !353, file: !353, line: 88, type: !4827, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4827 = !DISubroutineType(types: !4828)
!4828 = !{!147, !4829}
!4829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4830, size: 64)
!4830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!4831 = !DILocalVariable(name: "kobj", arg: 1, scope: !4826, file: !353, line: 88, type: !4829)
!4832 = !DILocation(line: 88, column: 62, scope: !4826)
!4833 = !DILocation(line: 90, column: 9, scope: !4826)
!4834 = !DILocation(line: 90, column: 15, scope: !4826)
!4835 = !DILocation(line: 90, column: 2, scope: !4826)
!4836 = distinct !DISubprogram(name: "k10temp_is_visible", scope: !3, file: !3, line: 343, type: !4129, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4837 = !DILocalVariable(name: "_data", arg: 1, scope: !4836, file: !3, line: 343, type: !2232)
!4838 = !DILocation(line: 343, column: 47, scope: !4836)
!4839 = !DILocalVariable(name: "type", arg: 2, scope: !4836, file: !3, line: 344, type: !98)
!4840 = !DILocation(line: 344, column: 31, scope: !4836)
!4841 = !DILocalVariable(name: "attr", arg: 3, scope: !4836, file: !3, line: 345, type: !323)
!4842 = !DILocation(line: 345, column: 11, scope: !4836)
!4843 = !DILocalVariable(name: "channel", arg: 4, scope: !4836, file: !3, line: 345, type: !118)
!4844 = !DILocation(line: 345, column: 21, scope: !4836)
!4845 = !DILocalVariable(name: "data", scope: !4836, file: !3, line: 347, type: !4846)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4848 = !DILocation(line: 347, column: 29, scope: !4836)
!4849 = !DILocation(line: 347, column: 36, scope: !4836)
!4850 = !DILocalVariable(name: "pdev", scope: !4836, file: !3, line: 348, type: !265)
!4851 = !DILocation(line: 348, column: 18, scope: !4836)
!4852 = !DILocation(line: 348, column: 25, scope: !4836)
!4853 = !DILocation(line: 348, column: 31, scope: !4836)
!4854 = !DILocalVariable(name: "reg", scope: !4836, file: !3, line: 349, type: !323)
!4855 = !DILocation(line: 349, column: 6, scope: !4836)
!4856 = !DILocation(line: 351, column: 10, scope: !4836)
!4857 = !DILocation(line: 351, column: 2, scope: !4836)
!4858 = !DILocation(line: 353, column: 11, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4836, file: !3, line: 351, column: 16)
!4860 = !DILocation(line: 353, column: 3, scope: !4859)
!4861 = !DILocation(line: 355, column: 9, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 355, column: 8)
!4863 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 353, column: 17)
!4864 = !DILocation(line: 355, column: 8, scope: !4863)
!4865 = !DILocation(line: 356, column: 5, scope: !4862)
!4866 = !DILocation(line: 357, column: 4, scope: !4863)
!4867 = !DILocation(line: 359, column: 8, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 359, column: 8)
!4869 = !DILocation(line: 359, column: 16, scope: !4868)
!4870 = !DILocation(line: 359, column: 19, scope: !4868)
!4871 = !DILocation(line: 359, column: 25, scope: !4868)
!4872 = !DILocation(line: 359, column: 8, scope: !4863)
!4873 = !DILocation(line: 360, column: 5, scope: !4868)
!4874 = !DILocation(line: 361, column: 4, scope: !4863)
!4875 = !DILocation(line: 364, column: 8, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 364, column: 8)
!4877 = !DILocation(line: 364, column: 16, scope: !4876)
!4878 = !DILocation(line: 364, column: 20, scope: !4876)
!4879 = !DILocation(line: 364, column: 26, scope: !4876)
!4880 = !DILocation(line: 364, column: 8, scope: !4863)
!4881 = !DILocation(line: 365, column: 5, scope: !4876)
!4882 = !DILocation(line: 367, column: 26, scope: !4863)
!4883 = !DILocation(line: 367, column: 4, scope: !4863)
!4884 = !DILocation(line: 370, column: 10, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 370, column: 8)
!4886 = !DILocation(line: 370, column: 14, scope: !4885)
!4887 = !DILocation(line: 370, column: 8, scope: !4863)
!4888 = !DILocation(line: 371, column: 5, scope: !4885)
!4889 = !DILocation(line: 373, column: 4, scope: !4863)
!4890 = !DILocation(line: 373, column: 10, scope: !4863)
!4891 = !DILocation(line: 373, column: 22, scope: !4863)
!4892 = !DILocation(line: 373, column: 28, scope: !4863)
!4893 = !DILocation(line: 374, column: 10, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 374, column: 8)
!4895 = !DILocation(line: 374, column: 14, scope: !4894)
!4896 = !DILocation(line: 374, column: 8, scope: !4863)
!4897 = !DILocation(line: 375, column: 5, scope: !4894)
!4898 = !DILocation(line: 376, column: 4, scope: !4863)
!4899 = !DILocation(line: 379, column: 9, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 379, column: 8)
!4901 = !DILocation(line: 379, column: 15, scope: !4900)
!4902 = !DILocation(line: 379, column: 22, scope: !4900)
!4903 = !DILocation(line: 379, column: 26, scope: !4900)
!4904 = !DILocation(line: 379, column: 8, scope: !4863)
!4905 = !DILocation(line: 380, column: 5, scope: !4900)
!4906 = !DILocation(line: 381, column: 4, scope: !4863)
!4907 = !DILocation(line: 383, column: 4, scope: !4863)
!4908 = !DILocation(line: 385, column: 3, scope: !4859)
!4909 = !DILocation(line: 388, column: 8, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 388, column: 7)
!4911 = !DILocation(line: 388, column: 14, scope: !4910)
!4912 = !DILocation(line: 388, column: 7, scope: !4859)
!4913 = !DILocation(line: 389, column: 4, scope: !4910)
!4914 = !DILocation(line: 390, column: 3, scope: !4859)
!4915 = !DILocation(line: 392, column: 3, scope: !4859)
!4916 = !DILocation(line: 394, column: 2, scope: !4836)
!4917 = !DILocation(line: 395, column: 1, scope: !4836)
!4918 = distinct !DISubprogram(name: "k10temp_read", scope: !3, file: !3, line: 328, type: !4133, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4919 = !DILocalVariable(name: "dev", arg: 1, scope: !4918, file: !3, line: 328, type: !348)
!4920 = !DILocation(line: 328, column: 40, scope: !4918)
!4921 = !DILocalVariable(name: "type", arg: 2, scope: !4918, file: !3, line: 328, type: !98)
!4922 = !DILocation(line: 328, column: 69, scope: !4918)
!4923 = !DILocalVariable(name: "attr", arg: 3, scope: !4918, file: !3, line: 329, type: !323)
!4924 = !DILocation(line: 329, column: 8, scope: !4918)
!4925 = !DILocalVariable(name: "channel", arg: 4, scope: !4918, file: !3, line: 329, type: !118)
!4926 = !DILocation(line: 329, column: 18, scope: !4918)
!4927 = !DILocalVariable(name: "val", arg: 5, scope: !4918, file: !3, line: 329, type: !4135)
!4928 = !DILocation(line: 329, column: 33, scope: !4918)
!4929 = !DILocation(line: 331, column: 10, scope: !4918)
!4930 = !DILocation(line: 331, column: 2, scope: !4918)
!4931 = !DILocation(line: 333, column: 28, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 331, column: 16)
!4933 = !DILocation(line: 333, column: 33, scope: !4932)
!4934 = !DILocation(line: 333, column: 39, scope: !4932)
!4935 = !DILocation(line: 333, column: 48, scope: !4932)
!4936 = !DILocation(line: 333, column: 10, scope: !4932)
!4937 = !DILocation(line: 333, column: 3, scope: !4932)
!4938 = !DILocation(line: 335, column: 26, scope: !4932)
!4939 = !DILocation(line: 335, column: 31, scope: !4932)
!4940 = !DILocation(line: 335, column: 37, scope: !4932)
!4941 = !DILocation(line: 335, column: 46, scope: !4932)
!4942 = !DILocation(line: 335, column: 10, scope: !4932)
!4943 = !DILocation(line: 335, column: 3, scope: !4932)
!4944 = !DILocation(line: 337, column: 28, scope: !4932)
!4945 = !DILocation(line: 337, column: 33, scope: !4932)
!4946 = !DILocation(line: 337, column: 39, scope: !4932)
!4947 = !DILocation(line: 337, column: 48, scope: !4932)
!4948 = !DILocation(line: 337, column: 10, scope: !4932)
!4949 = !DILocation(line: 337, column: 3, scope: !4932)
!4950 = !DILocation(line: 339, column: 3, scope: !4932)
!4951 = !DILocation(line: 341, column: 1, scope: !4918)
!4952 = distinct !DISubprogram(name: "k10temp_read_labels", scope: !3, file: !3, line: 224, type: !4138, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4953 = !DILocalVariable(name: "dev", arg: 1, scope: !4952, file: !3, line: 224, type: !348)
!4954 = !DILocation(line: 224, column: 47, scope: !4952)
!4955 = !DILocalVariable(name: "type", arg: 2, scope: !4952, file: !3, line: 225, type: !98)
!4956 = !DILocation(line: 225, column: 35, scope: !4952)
!4957 = !DILocalVariable(name: "attr", arg: 3, scope: !4952, file: !3, line: 226, type: !323)
!4958 = !DILocation(line: 226, column: 15, scope: !4952)
!4959 = !DILocalVariable(name: "channel", arg: 4, scope: !4952, file: !3, line: 226, type: !118)
!4960 = !DILocation(line: 226, column: 25, scope: !4952)
!4961 = !DILocalVariable(name: "str", arg: 5, scope: !4952, file: !3, line: 226, type: !3823)
!4962 = !DILocation(line: 226, column: 47, scope: !4952)
!4963 = !DILocation(line: 228, column: 10, scope: !4952)
!4964 = !DILocation(line: 228, column: 2, scope: !4952)
!4965 = !DILocation(line: 230, column: 29, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 228, column: 16)
!4967 = !DILocation(line: 230, column: 10, scope: !4966)
!4968 = !DILocation(line: 230, column: 4, scope: !4966)
!4969 = !DILocation(line: 230, column: 8, scope: !4966)
!4970 = !DILocation(line: 231, column: 3, scope: !4966)
!4971 = !DILocation(line: 233, column: 27, scope: !4966)
!4972 = !DILocation(line: 233, column: 10, scope: !4966)
!4973 = !DILocation(line: 233, column: 4, scope: !4966)
!4974 = !DILocation(line: 233, column: 8, scope: !4966)
!4975 = !DILocation(line: 234, column: 3, scope: !4966)
!4976 = !DILocation(line: 236, column: 29, scope: !4966)
!4977 = !DILocation(line: 236, column: 10, scope: !4966)
!4978 = !DILocation(line: 236, column: 4, scope: !4966)
!4979 = !DILocation(line: 236, column: 8, scope: !4966)
!4980 = !DILocation(line: 237, column: 3, scope: !4966)
!4981 = !DILocation(line: 239, column: 3, scope: !4966)
!4982 = !DILocation(line: 241, column: 2, scope: !4952)
!4983 = !DILocation(line: 242, column: 1, scope: !4952)
!4984 = distinct !DISubprogram(name: "k10temp_read_temp", scope: !3, file: !3, line: 282, type: !4985, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{!118, !348, !323, !118, !4135}
!4987 = !DILocalVariable(name: "dev", arg: 1, scope: !4984, file: !3, line: 282, type: !348)
!4988 = !DILocation(line: 282, column: 45, scope: !4984)
!4989 = !DILocalVariable(name: "attr", arg: 2, scope: !4984, file: !3, line: 282, type: !323)
!4990 = !DILocation(line: 282, column: 54, scope: !4984)
!4991 = !DILocalVariable(name: "channel", arg: 3, scope: !4984, file: !3, line: 282, type: !118)
!4992 = !DILocation(line: 282, column: 64, scope: !4984)
!4993 = !DILocalVariable(name: "val", arg: 4, scope: !4984, file: !3, line: 283, type: !4135)
!4994 = !DILocation(line: 283, column: 15, scope: !4984)
!4995 = !DILocalVariable(name: "data", scope: !4984, file: !3, line: 285, type: !4198)
!4996 = !DILocation(line: 285, column: 23, scope: !4984)
!4997 = !DILocation(line: 285, column: 46, scope: !4984)
!4998 = !DILocation(line: 285, column: 30, scope: !4984)
!4999 = !DILocalVariable(name: "regval", scope: !4984, file: !3, line: 286, type: !323)
!5000 = !DILocation(line: 286, column: 6, scope: !4984)
!5001 = !DILocation(line: 288, column: 10, scope: !4984)
!5002 = !DILocation(line: 288, column: 2, scope: !4984)
!5003 = !DILocation(line: 290, column: 11, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 288, column: 16)
!5005 = !DILocation(line: 290, column: 3, scope: !5004)
!5006 = !DILocation(line: 292, column: 24, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 290, column: 20)
!5008 = !DILocation(line: 292, column: 11, scope: !5007)
!5009 = !DILocation(line: 292, column: 5, scope: !5007)
!5010 = !DILocation(line: 292, column: 9, scope: !5007)
!5011 = !DILocation(line: 293, column: 9, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 293, column: 8)
!5013 = !DILocation(line: 293, column: 8, scope: !5012)
!5014 = !DILocation(line: 293, column: 13, scope: !5012)
!5015 = !DILocation(line: 293, column: 8, scope: !5007)
!5016 = !DILocation(line: 294, column: 6, scope: !5012)
!5017 = !DILocation(line: 294, column: 10, scope: !5012)
!5018 = !DILocation(line: 294, column: 5, scope: !5012)
!5019 = !DILocation(line: 295, column: 4, scope: !5007)
!5020 = !DILocation(line: 297, column: 24, scope: !5007)
!5021 = !DILocation(line: 297, column: 11, scope: !5007)
!5022 = !DILocation(line: 297, column: 32, scope: !5007)
!5023 = !DILocation(line: 297, column: 38, scope: !5007)
!5024 = !DILocation(line: 297, column: 30, scope: !5007)
!5025 = !DILocation(line: 297, column: 5, scope: !5007)
!5026 = !DILocation(line: 297, column: 9, scope: !5007)
!5027 = !DILocation(line: 298, column: 9, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 298, column: 8)
!5029 = !DILocation(line: 298, column: 8, scope: !5028)
!5030 = !DILocation(line: 298, column: 13, scope: !5028)
!5031 = !DILocation(line: 298, column: 8, scope: !5007)
!5032 = !DILocation(line: 299, column: 6, scope: !5028)
!5033 = !DILocation(line: 299, column: 10, scope: !5028)
!5034 = !DILocation(line: 299, column: 5, scope: !5028)
!5035 = !DILocation(line: 300, column: 4, scope: !5007)
!5036 = !DILocation(line: 302, column: 40, scope: !5007)
!5037 = !DILocation(line: 302, column: 46, scope: !5007)
!5038 = !DILocation(line: 302, column: 17, scope: !5007)
!5039 = !DILocation(line: 303, column: 10, scope: !5007)
!5040 = !DILocation(line: 302, column: 4, scope: !5007)
!5041 = !DILocation(line: 304, column: 12, scope: !5007)
!5042 = !DILocation(line: 304, column: 19, scope: !5007)
!5043 = !DILocation(line: 304, column: 40, scope: !5007)
!5044 = !DILocation(line: 304, column: 46, scope: !5007)
!5045 = !DILocation(line: 304, column: 5, scope: !5007)
!5046 = !DILocation(line: 304, column: 9, scope: !5007)
!5047 = !DILocation(line: 305, column: 4, scope: !5007)
!5048 = !DILocation(line: 307, column: 4, scope: !5007)
!5049 = !DILocation(line: 309, column: 3, scope: !5004)
!5050 = !DILocation(line: 311, column: 4, scope: !5004)
!5051 = !DILocation(line: 311, column: 8, scope: !5004)
!5052 = !DILocation(line: 312, column: 3, scope: !5004)
!5053 = !DILocation(line: 314, column: 3, scope: !5004)
!5054 = !DILocation(line: 314, column: 9, scope: !5004)
!5055 = !DILocation(line: 314, column: 21, scope: !5004)
!5056 = !DILocation(line: 314, column: 27, scope: !5004)
!5057 = !DILocation(line: 315, column: 12, scope: !5004)
!5058 = !DILocation(line: 315, column: 19, scope: !5004)
!5059 = !DILocation(line: 315, column: 26, scope: !5004)
!5060 = !DILocation(line: 315, column: 34, scope: !5004)
!5061 = !DILocation(line: 315, column: 40, scope: !5004)
!5062 = !DILocation(line: 315, column: 10, scope: !5004)
!5063 = !DILocation(line: 315, column: 4, scope: !5004)
!5064 = !DILocation(line: 315, column: 8, scope: !5004)
!5065 = !DILocation(line: 316, column: 3, scope: !5004)
!5066 = !DILocation(line: 318, column: 3, scope: !5004)
!5067 = !DILocation(line: 318, column: 9, scope: !5004)
!5068 = !DILocation(line: 318, column: 21, scope: !5004)
!5069 = !DILocation(line: 318, column: 27, scope: !5004)
!5070 = !DILocation(line: 319, column: 13, scope: !5004)
!5071 = !DILocation(line: 319, column: 20, scope: !5004)
!5072 = !DILocation(line: 319, column: 27, scope: !5004)
!5073 = !DILocation(line: 320, column: 8, scope: !5004)
!5074 = !DILocation(line: 320, column: 15, scope: !5004)
!5075 = !DILocation(line: 320, column: 22, scope: !5004)
!5076 = !DILocation(line: 320, column: 4, scope: !5004)
!5077 = !DILocation(line: 320, column: 30, scope: !5004)
!5078 = !DILocation(line: 320, column: 36, scope: !5004)
!5079 = !DILocation(line: 319, column: 10, scope: !5004)
!5080 = !DILocation(line: 319, column: 4, scope: !5004)
!5081 = !DILocation(line: 319, column: 8, scope: !5004)
!5082 = !DILocation(line: 321, column: 3, scope: !5004)
!5083 = !DILocation(line: 323, column: 3, scope: !5004)
!5084 = !DILocation(line: 325, column: 2, scope: !4984)
!5085 = !DILocation(line: 326, column: 1, scope: !4984)
!5086 = distinct !DISubprogram(name: "k10temp_read_in", scope: !3, file: !3, line: 264, type: !4985, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5087 = !DILocalVariable(name: "dev", arg: 1, scope: !5086, file: !3, line: 264, type: !348)
!5088 = !DILocation(line: 264, column: 43, scope: !5086)
!5089 = !DILocalVariable(name: "attr", arg: 2, scope: !5086, file: !3, line: 264, type: !323)
!5090 = !DILocation(line: 264, column: 52, scope: !5086)
!5091 = !DILocalVariable(name: "channel", arg: 3, scope: !5086, file: !3, line: 264, type: !118)
!5092 = !DILocation(line: 264, column: 62, scope: !5086)
!5093 = !DILocalVariable(name: "val", arg: 4, scope: !5086, file: !3, line: 264, type: !4135)
!5094 = !DILocation(line: 264, column: 77, scope: !5086)
!5095 = !DILocalVariable(name: "data", scope: !5086, file: !3, line: 266, type: !4198)
!5096 = !DILocation(line: 266, column: 23, scope: !5086)
!5097 = !DILocation(line: 266, column: 46, scope: !5086)
!5098 = !DILocation(line: 266, column: 30, scope: !5086)
!5099 = !DILocalVariable(name: "regval", scope: !5086, file: !3, line: 267, type: !323)
!5100 = !DILocation(line: 267, column: 6, scope: !5086)
!5101 = !DILocation(line: 269, column: 10, scope: !5086)
!5102 = !DILocation(line: 269, column: 2, scope: !5086)
!5103 = !DILocation(line: 271, column: 39, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 269, column: 16)
!5105 = !DILocation(line: 271, column: 45, scope: !5104)
!5106 = !DILocation(line: 271, column: 16, scope: !5104)
!5107 = !DILocation(line: 272, column: 9, scope: !5104)
!5108 = !DILocation(line: 272, column: 15, scope: !5104)
!5109 = !DILocation(line: 272, column: 24, scope: !5104)
!5110 = !DILocation(line: 271, column: 3, scope: !5104)
!5111 = !DILocation(line: 273, column: 13, scope: !5104)
!5112 = !DILocation(line: 273, column: 20, scope: !5104)
!5113 = !DILocation(line: 273, column: 27, scope: !5104)
!5114 = !DILocation(line: 273, column: 10, scope: !5104)
!5115 = !DILocalVariable(name: "__x", scope: !5116, file: !3, line: 274, type: !7)
!5116 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 274, column: 10)
!5117 = !DILocation(line: 274, column: 10, scope: !5116)
!5118 = !DILocalVariable(name: "__d", scope: !5116, file: !3, line: 274, type: !118)
!5119 = !DILocation(line: 274, column: 10, scope: !5104)
!5120 = !DILocation(line: 274, column: 4, scope: !5104)
!5121 = !DILocation(line: 274, column: 8, scope: !5104)
!5122 = !DILocation(line: 275, column: 3, scope: !5104)
!5123 = !DILocation(line: 277, column: 3, scope: !5104)
!5124 = !DILocation(line: 279, column: 2, scope: !5086)
!5125 = !DILocation(line: 280, column: 1, scope: !5086)
!5126 = distinct !DISubprogram(name: "k10temp_read_curr", scope: !3, file: !3, line: 244, type: !4985, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5127 = !DILocalVariable(name: "dev", arg: 1, scope: !5126, file: !3, line: 244, type: !348)
!5128 = !DILocation(line: 244, column: 45, scope: !5126)
!5129 = !DILocalVariable(name: "attr", arg: 2, scope: !5126, file: !3, line: 244, type: !323)
!5130 = !DILocation(line: 244, column: 54, scope: !5126)
!5131 = !DILocalVariable(name: "channel", arg: 3, scope: !5126, file: !3, line: 244, type: !118)
!5132 = !DILocation(line: 244, column: 64, scope: !5126)
!5133 = !DILocalVariable(name: "val", arg: 4, scope: !5126, file: !3, line: 245, type: !4135)
!5134 = !DILocation(line: 245, column: 15, scope: !5126)
!5135 = !DILocalVariable(name: "data", scope: !5126, file: !3, line: 247, type: !4198)
!5136 = !DILocation(line: 247, column: 23, scope: !5126)
!5137 = !DILocation(line: 247, column: 46, scope: !5126)
!5138 = !DILocation(line: 247, column: 30, scope: !5126)
!5139 = !DILocalVariable(name: "regval", scope: !5126, file: !3, line: 248, type: !323)
!5140 = !DILocation(line: 248, column: 6, scope: !5126)
!5141 = !DILocation(line: 250, column: 10, scope: !5126)
!5142 = !DILocation(line: 250, column: 2, scope: !5126)
!5143 = !DILocation(line: 252, column: 39, scope: !5144)
!5144 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 250, column: 16)
!5145 = !DILocation(line: 252, column: 45, scope: !5144)
!5146 = !DILocation(line: 252, column: 16, scope: !5144)
!5147 = !DILocation(line: 253, column: 9, scope: !5144)
!5148 = !DILocation(line: 253, column: 15, scope: !5144)
!5149 = !DILocation(line: 253, column: 24, scope: !5144)
!5150 = !DILocation(line: 252, column: 3, scope: !5144)
!5151 = !DILocalVariable(name: "__x", scope: !5152, file: !3, line: 254, type: !7)
!5152 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 254, column: 10)
!5153 = !DILocation(line: 254, column: 10, scope: !5152)
!5154 = !DILocalVariable(name: "__d", scope: !5152, file: !3, line: 254, type: !118)
!5155 = !DILocation(line: 254, column: 10, scope: !5144)
!5156 = !DILocation(line: 254, column: 4, scope: !5144)
!5157 = !DILocation(line: 254, column: 8, scope: !5144)
!5158 = !DILocation(line: 257, column: 3, scope: !5144)
!5159 = !DILocation(line: 259, column: 3, scope: !5144)
!5160 = !DILocation(line: 261, column: 2, scope: !5126)
!5161 = !DILocation(line: 262, column: 1, scope: !5126)
!5162 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5163, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!120, !3809}
!5165 = !DILocalVariable(name: "dev", arg: 1, scope: !5162, file: !73, line: 655, type: !3809)
!5166 = !DILocation(line: 655, column: 58, scope: !5162)
!5167 = !DILocation(line: 657, column: 9, scope: !5162)
!5168 = !DILocation(line: 657, column: 14, scope: !5162)
!5169 = !DILocation(line: 657, column: 2, scope: !5162)
!5170 = distinct !DISubprogram(name: "get_raw_temp", scope: !3, file: !3, line: 189, type: !5171, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!121, !4198}
!5173 = !DILocalVariable(name: "data", arg: 1, scope: !5170, file: !3, line: 189, type: !4198)
!5174 = !DILocation(line: 189, column: 47, scope: !5170)
!5175 = !DILocalVariable(name: "regval", scope: !5170, file: !3, line: 191, type: !323)
!5176 = !DILocation(line: 191, column: 6, scope: !5170)
!5177 = !DILocalVariable(name: "temp", scope: !5170, file: !3, line: 192, type: !121)
!5178 = !DILocation(line: 192, column: 7, scope: !5170)
!5179 = !DILocation(line: 194, column: 2, scope: !5170)
!5180 = !DILocation(line: 194, column: 8, scope: !5170)
!5181 = !DILocation(line: 194, column: 21, scope: !5170)
!5182 = !DILocation(line: 194, column: 27, scope: !5170)
!5183 = !DILocation(line: 195, column: 10, scope: !5170)
!5184 = !DILocation(line: 195, column: 17, scope: !5170)
!5185 = !DILocation(line: 195, column: 40, scope: !5170)
!5186 = !DILocation(line: 195, column: 9, scope: !5170)
!5187 = !DILocation(line: 195, column: 7, scope: !5170)
!5188 = !DILocation(line: 196, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 196, column: 6)
!5190 = !DILocation(line: 196, column: 15, scope: !5189)
!5191 = !DILocation(line: 196, column: 21, scope: !5189)
!5192 = !DILocation(line: 196, column: 13, scope: !5189)
!5193 = !DILocation(line: 196, column: 6, scope: !5170)
!5194 = !DILocation(line: 197, column: 8, scope: !5189)
!5195 = !DILocation(line: 197, column: 3, scope: !5189)
!5196 = !DILocation(line: 198, column: 9, scope: !5170)
!5197 = !DILocation(line: 198, column: 2, scope: !5170)
!5198 = distinct !DISubprogram(name: "IS_ERR", scope: !4596, file: !4596, line: 34, type: !5199, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!227, !2232}
!5201 = !DILocalVariable(name: "ptr", arg: 1, scope: !5198, file: !4596, line: 34, type: !2232)
!5202 = !DILocation(line: 34, column: 60, scope: !5198)
!5203 = !DILocation(line: 36, column: 9, scope: !5198)
!5204 = !DILocation(line: 36, column: 2, scope: !5198)
!5205 = distinct !DISubprogram(name: "PTR_ERR", scope: !4596, file: !4596, line: 29, type: !5206, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !379)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!121, !2232}
!5208 = !DILocalVariable(name: "ptr", arg: 1, scope: !5205, file: !4596, line: 29, type: !2232)
!5209 = !DILocation(line: 29, column: 61, scope: !5205)
!5210 = !DILocation(line: 31, column: 16, scope: !5205)
!5211 = !DILocation(line: 31, column: 9, scope: !5205)
!5212 = !DILocation(line: 31, column: 2, scope: !5205)
